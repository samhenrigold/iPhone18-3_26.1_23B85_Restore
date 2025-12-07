uint64_t AnimatedValueTrack.appending(track:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A>, a2);
  return AnimatedValueTrackSource.combined<A>(with:)(a1, v7, a2, v8, WitnessTable, a3);
}

uint64_t AnimatedValueTrack.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v6 = type metadata accessor for EmptyAnimatedValueTrackSource(0, a1, v4, v5);
  *(a2 + 24) = v6;
  result = swift_getWitnessTable(protocol conformance descriptor for EmptyAnimatedValueTrackSource<A>, v6);
  *(a2 + 32) = result;
  return result;
}

uint64_t AnimatedValueTrack.init<A>(source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnimatedValueTrack.duration.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t AnimatedValueTrack.update(value:mix:at:)(uint64_t a1, double a2, double a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 24))(a1, v7, v8, a2, a3);
}

uint64_t AnimatedValueTrack.update(value:at:)(uint64_t a1, double a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 24))(a1, v5, v6, 1.0, a2);
}

uint64_t AnimatedValueTrack.init(track:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for AnimatedValueTrack(0, a3, a3, a4);
  a2[3] = v6;
  a2[4] = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A>, v6);
  *a2 = swift_allocObject();
  return a1();
}

uint64_t AnimatedValueTrack.init<A>(path:velocity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v9 = MEMORY[0x1E69E7CC0];
  Path.forEach(_:)();
  v6 = specialized AnimatedValueTrack<A>.VectorPath.arcLength.getter(v9) / a3;
  type metadata accessor for AnimatedValueTrack<CGPoint><A>.PacedPathSource(0);
  *(a2 + 24) = v7;
  *(a2 + 32) = _sSo7CGPointVAB7SwiftUI10AnimatableACWlTm_0(&lazy protocol witness table cache variable for type AnimatedValueTrack<CGPoint><A>.PacedPathSource and conformance AnimatedValueTrack<A><A>.PacedPathSource, type metadata accessor for AnimatedValueTrack<CGPoint><A>.PacedPathSource, protocol conformance descriptor for AnimatedValueTrack<A><A>.PacedPathSource);
  result = outlined destroy of Path(a1);
  *a2 = v9;
  *(a2 + 8) = v6;
  return result;
}

void type metadata accessor for AnimatedValueTrack<CGPoint><A>.PacedPathSource(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatedValueTrack<CGPoint><A>.PacedPathSource)
  {
    type metadata accessor for CGPoint(255);
    v3 = v2;
    v4 = _sSo7CGPointVAB7SwiftUI10AnimatableACWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint, MEMORY[0x1E6982040]);
    v6 = type metadata accessor for AnimatedValueTrack<A>.PacedPathSource(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AnimatedValueTrack<CGPoint><A>.PacedPathSource);
    }
  }
}

uint64_t AnimatedValueTrack.update(velocity:mix:at:)(uint64_t a1, double a2, double a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 32))(a1, v7, v8, a2, a3);
}

uint64_t static AnimatedValueTrack.== infix(_:_:)(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v8);

  return static AnimatedValueTrack.areSourcesEqual<A, B>(_:_:)(v7, v9, a3, v5, v8, v6);
}

uint64_t static AnimatedValueTrack.areSourcesEqual<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[1] = a6;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v15, a2, a5, v18);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v12, 0, 1, a4);
    (*(v16 + 32))(v20, v12, a4);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v16 + 8))(v20, a4);
  }

  else
  {
    v23(v12, 1, 1, a4);
    (*(v10 + 8))(v12, v9);
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t AnimatedValueTrack.keyPath<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  AnimatedValueTrackSource.keyPath<A>(_:)(a1, v5, v6, v16);
  v15 = v17;
  v7 = v17;
  v8 = __swift_project_boxed_opaque_existential_1(v16, v17);
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  *(a2 + 24) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v9 + 32))(boxed_opaque_existential_1, v12, v7);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t AnimatedValueTrack.update(velocity:at:)(uint64_t a1, double a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 32))(a1, v5, v6, 1.0, a2);
}

uint64_t AnimatedValueTrack<A>.init(duration:interpolation:constantVelocity:keyframes:)@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  if (a2)
  {
    v18 = *a1;
    v10 = AnimatedValueTrack<A>.PacedPathSource.init(duration:keyframes:interpolation:)(a3, &v18, a4, a5);
    v12 = v11;
    v14 = type metadata accessor for AnimatedValueTrack<A>.PacedPathSource(0, a4, a5, v13);
    a6[3] = v14;
    result = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A><A>.PacedPathSource, v14);
    a6[1] = v12;
  }

  else
  {
    v19 = *a1;
    v10 = AnimatedValueTrack<A>.VectorPath.init(duration:keyframes:interpolation:)(a3, &v19, a4, a5, a7);
    v17 = type metadata accessor for AnimatedValueTrack<A>.VectorPath(0, a4, a5, v16);
    a6[3] = v17;
    result = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A><A>.VectorPath, v17);
  }

  a6[4] = result;
  *a6 = v10;
  return result;
}

uint64_t AnimatedValueTrack<A>.init(duration:interpolation:constantVelocity:values:)@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v21 = *a1;
  v20[6] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v12 = type metadata accessor for Array();
  v15 = type metadata accessor for AnimatedValueKeyframe(0, a4, v13, v14);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v12);
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in AnimatedValueTrack<A>.init(duration:interpolation:constantVelocity:values:), v20, v12, v15, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v17);

  return AnimatedValueTrack<A>.init(duration:interpolation:constantVelocity:keyframes:)(&v21, a2, v18, a4, a5, a6, a7);
}

uint64_t closure #1 in AnimatedValueTrack<A>.init(duration:interpolation:constantVelocity:values:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, a2, v12);
  static AnimatedValueKeyframe.InterpolationParameters.automatic.getter(a2, v16, v17, v10);
  memset(v19, 0, sizeof(v19));
  v20 = 1;
  return AnimatedValueKeyframe.init(value:interpolation:incomingTimingCurve:)(v14, v10, v19, a2, a5);
}

uint64_t AnimatedValueTrack<A>.init(interpolation:keyframes:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v12 = *a1;
  v8 = AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:)(a2, &v12, a3, a4);
  v10 = type metadata accessor for AnimatedValueTrack<A>.VectorPath(0, a3, a4, v9);
  a5[3] = v10;
  result = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A><A>.VectorPath, v10);
  a5[4] = result;
  *a5 = v8;
  return result;
}

uint64_t AnimatedValueTrack<A>.init(interpolation:values:)@<X0>(char *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  type metadata accessor for AnimatedValueKeyframe(0, a3, a3, a4);
  v8 = Dictionary.mapValues<A>(_:)();

  return AnimatedValueTrack<A>.init(interpolation:keyframes:)(&v10, v8, a3, a4, a5);
}

uint64_t AnimatedValueTrack<A>.init(duration:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v25 - v12;
  v26 = AnimatedValueTrack<A>.VectorPath.init()(a2, a3, v14, v15);
  (*(a3 + 24))(a2, a3);
  v17 = type metadata accessor for AnimatedValueTrack<A>.VectorPath(0, a2, a3, v16);
  AnimatedValueTrack<A>.VectorPath.move(to:)(v13, v17, v18, v19);
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  AnimatedValueTrack<A>.VectorPath.hold(for:)(v17, a5, v20, v21, v22);
  v23 = v26;
  a4[3] = v17;
  a4[4] = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A><A>.VectorPath, v17);
  *a4 = v23;
  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t AnimatedValueTrack<A>.init(discreteValues:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v55 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  i = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v55 - v6;
  v62 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = type metadata accessor for Optional();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v55 - v13);
  v72 = AnimatedValueTrack<A>.VectorPath.init()(a2, a3, v15, v16);
  v69 = a2;
  v70 = a3;
  v71[0] = Dictionary.filter(_:)();
  v67 = a2;
  v68 = a3;
  v17 = type metadata accessor for Dictionary();
  swift_getWitnessTable(MEMORY[0x1E69E5E50], v17);
  v18 = Sequence.sorted(by:)();

  v19 = 0;
  v63 += 4;
  v61 = (v62 + 32);
  v57 = a3 + 24;
  v56 = (i + 8);
  v20 = 0.0;
  v60 = (v62 + 8);
  v62 = a3;
  for (i = v18; ; v18 = i)
  {
    if (v19 == MEMORY[0x18D00CDE0](v18, TupleTypeMetadata2))
    {
      v28 = *(TupleTypeMetadata2 - 8);
      v29 = v66;
      (*(v28 + 56))(v66, 1, 1, TupleTypeMetadata2);
      goto LABEL_9;
    }

    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    v29 = v66;
    if (IsNativeType)
    {
      v31 = *(TupleTypeMetadata2 - 8);
      (*(v31 + 16))(v66, v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v19, TupleTypeMetadata2);
      v32 = __OFADD__(v19++, 1);
      if (v32)
      {
        break;
      }

      goto LABEL_8;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    v31 = *(TupleTypeMetadata2 - 8);
    if (*(v31 + 64) != 8)
    {
      __break(1u);
      return result;
    }

    v71[0] = result;
    (*(v31 + 16))(v29, v71, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    v32 = __OFADD__(v19++, 1);
    if (v32)
    {
      break;
    }

LABEL_8:
    v28 = v31;
    (*(v31 + 56))(v29, 0, 1, TupleTypeMetadata2);
LABEL_9:
    (*v63)(v14, v29, v65);
    if ((*(v28 + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_16;
    }

    v33 = *v14;
    (*v61)(v9, v14 + *(TupleTypeMetadata2 + 48), a2);
    v36 = v9;
    if (AnimatedValueTrack<A>.VectorPath.isEmpty.getter(v72, a2, a3, v34))
    {
      v37 = v58;
      (*(a3 + 24))(a2, a3);
      v39 = type metadata accessor for AnimatedValueTrack<A>.VectorPath(0, a2, a3, v38);
      AnimatedValueTrack<A>.VectorPath.move(to:)(v37, v39, v40, v41);
      (*v56)(v37, AssociatedTypeWitness);
      AnimatedValueTrack<A>.VectorPath.hold(for:)(v39, v33 - v20, v42, v43, v44);
    }

    else
    {
      v21 = type metadata accessor for AnimatedValueTrack<A>.VectorPath(0, a2, a3, v35);
      AnimatedValueTrack<A>.VectorPath.hold(for:)(v21, v33 - v20, v22, v23, v24);
      v25 = v58;
      (*(a3 + 24))(a2, a3);
      AnimatedValueTrack<A>.VectorPath.move(to:)(v25, v21, v26, v27);
      (*v56)(v25, AssociatedTypeWitness);
    }

    (*v60)(v36, a2);
    v20 = v33;
    v9 = v36;
    a3 = v62;
  }

  __break(1u);
LABEL_16:

  if (v20 < 1.0)
  {
    v47 = type metadata accessor for AnimatedValueTrack<A>.VectorPath(0, a2, a3, v46);
    AnimatedValueTrack<A>.VectorPath.hold(for:)(v47, 1.0 - v20, v48, v49, v50);
  }

  v71[0] = v72;
  v51 = type metadata accessor for AnimatedValueTrack<A>.VectorPath(0, a2, a3, v46);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A><A>.VectorPath, v51);
  v53 = v55;
  v55[3] = v51;
  v53[4] = WitnessTable;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  return (*(*(v51 - 8) + 32))(boxed_opaque_existential_1, v71, v51);
}

BOOL closure #1 in AnimatedValueTrack<A>.init(discreteValues:)(double *a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v14 - v9;
  v11 = *a1;
  *(&v14 - v9) = *a1;
  (*(*(a3 - 8) + 16))(&v14 + *(v12 + 48) - v9, a2, a3, v8);
  (*(v7 + 8))(v10, TupleTypeMetadata2);
  return v11 <= 1.0 && v11 >= 0.0;
}

uint64_t AnimatedValueTrack<A>.init(discreteValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v38 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v47 = a1;
  v17 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v17);
  if (Collection.isEmpty.getter())
  {

    return AnimatedValueTrack.init()(a2, a4);
  }

  v19 = MEMORY[0x18D00CD40](a1, a2);
  if (v19 < 2)
  {
LABEL_14:
    Array.subscript.getter();

    return AnimatedValueTrack<A>.init(duration:value:)(v13, a2, a3, a4, 1.0);
  }

  v22 = v19;
  v23 = AnimatedValueTrack<A>.VectorPath.init()(a2, a3, v20, v21);
  v47 = v23;
  if (MEMORY[0x18D00CDE0](a1, a2))
  {
    v38 = a4;
    v13 = 0;
    v24 = 1.0 / v22;
    v44 = a3;
    v41 = *(a3 + 24);
    v42 = a3 + 24;
    v43 = (v10 + 16);
    ++v40;
    a4 = (v10 + 8);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v10 + 16))(v16, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v13, a2);
        a3 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v39 != 8)
        {
          __break(1u);
          return result;
        }

        v46 = result;
        (*v43)(v16, &v46, a2);
        swift_unknownObjectRelease();
        a3 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      v26 = v44;
      v41(a2, v44);
      v28 = type metadata accessor for AnimatedValueTrack<A>.VectorPath(0, a2, v26, v27);
      AnimatedValueTrack<A>.VectorPath.move(to:)(v9, v28, v29, v30);
      (*v40)(v9, AssociatedTypeWitness);
      AnimatedValueTrack<A>.VectorPath.hold(for:)(v28, v24, v31, v32, v33);
      (*a4)(v16, a2);
      ++v13;
      if (a3 == MEMORY[0x18D00CDE0](a1, a2))
      {

        v23 = v47;
        a4 = v38;
        a3 = v44;
        goto LABEL_16;
      }
    }
  }

LABEL_16:
  v46 = v23;
  v35 = type metadata accessor for AnimatedValueTrack<A>.VectorPath(0, a2, a3, v34);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A><A>.VectorPath, v35);
  a4[3] = v35;
  a4[4] = WitnessTable;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  return (*(*(v35 - 8) + 32))(boxed_opaque_existential_1, &v46, v35);
}

uint64_t instantiation function for generic protocol witness table for AnimatedValueTrack<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t _sSo7CGPointVAB7SwiftUI10AnimatableACWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t ToolbarContent.modifier<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ToolbarModifiedContent.init(content:modifier:)(v14, v10, a2, a3, a4);
}

uint64_t ToolbarModifiedContent.init(content:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for ToolbarModifiedContent(0, a3, a4, v9);
  v11 = *(*(a4 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a4);
}

double static ToolbarModifiedContent<>._makeToolbar(content:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a2[3];
  v17[2] = a2[2];
  v18[0] = v11;
  *(v18 + 12) = *(a2 + 60);
  v12 = a2[1];
  v17[0] = *a2;
  v17[1] = v12;
  v16 = v10;
  type metadata accessor for ToolbarModifiedContent(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = v10;
  (*(a6 + 32))(v15, v17, partial apply for closure #2 in static ToolbarModifiedContent<>._makeToolbar(content:inputs:), v13, a4, a6);

  return result;
}

uint64_t closure #2 in static ToolbarModifiedContent<>._makeToolbar(content:inputs:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2[3];
  v14[2] = a2[2];
  v15[0] = v9;
  *(v15 + 12) = *(a2 + 60);
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v13 = a3;
  type metadata accessor for ToolbarModifiedContent(255, a4, a5, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a6 + 32))(v12, v14, a4, a6);
}

double static ToolbarModifiedContent<>._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = a2[3];
  v22[2] = a2[2];
  v23[0] = v15;
  *(v23 + 12) = *(a2 + 60);
  v16 = a2[1];
  v22[0] = *a2;
  v22[1] = v16;
  v21 = v14;
  type metadata accessor for ToolbarModifiedContent(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  *(v17 + 48) = v14;
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;
  v18 = *(a8 + 32);

  v18(v20, v22, partial apply for closure #2 in static ToolbarModifiedContent<>._makeToolbar(content:inputs:body:), v17, a6, a8);

  return result;
}

uint64_t closure #1 in static ToolbarModifiedContent<>._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for ToolbarModifiedContent(0, a2, a3, a4);
  v10 = *(v9 + 36);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, a6, v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v14[5];
}

uint64_t closure #2 in static ToolbarModifiedContent<>._makeToolbar(content:inputs:body:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a2[3];
  v18[2] = a2[2];
  v19[0] = v13;
  *(v19 + 12) = *(a2 + 60);
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v17 = a3;
  type metadata accessor for ToolbarModifiedContent(255, a6, a7, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a8 + 32))(v16, v18, a4, a5, a6, a8);
}

uint64_t closure #1 in closure #2 in static ToolbarModifiedContent<>._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = type metadata accessor for ToolbarModifiedContent(0, a2, a3, a4);
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t static ToolbarModifier_Content._makeToolbar(content:inputs:)@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = a1[1];
  v6 = a1[3];
  v35 = a1[2];
  *v36 = v6;
  *&v36[12] = *(a1 + 60);
  v7 = a1[1];
  v34[0] = *a1;
  v34[1] = v7;
  v8 = a1[3];
  v32 = v35;
  v33[0] = v8;
  *(v33 + 12) = *(a1 + 60);
  v30 = v34[0];
  v31 = v5;
  v9 = type metadata accessor for ToolbarModifier_Content.BodyInput(0, a2, a3, a3);
  outlined init with copy of _ToolbarInputs(v34, &v24);
  type metadata accessor for (_:_:)();
  swift_getWitnessTable(protocol conformance descriptor for ToolbarModifier_Content<A>.BodyInput, v9);
  _GraphInputs.popLast<A, B>(_:)();
  v10 = v28;
  if (v28)
  {
    v11 = v29;
    v20[2] = v32;
    v21[0] = v33[0];
    *(v21 + 12) = *(v33 + 12);
    v20[0] = v30;
    v20[1] = v31;
    v18 = v32;
    v19[0] = v33[0];
    *(v19 + 12) = *(v33 + 12);
    v16 = v30;
    v17 = v31;
    v12 = outlined init with copy of _ToolbarInputs(v20, &v24);
    v10(v12, &v16);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10, v11);
    v22[2] = v18;
    v23[0] = v19[0];
    *(v23 + 12) = *(v19 + 12);
    v22[0] = v16;
    v22[1] = v17;
    outlined destroy of _ToolbarInputs(v22);
    v26 = v32;
    v27[0] = v33[0];
    *(v27 + 12) = *(v33 + 12);
    v24 = v30;
    v25 = v31;
    return outlined destroy of _ToolbarInputs(&v24);
  }

  else
  {
    v14 = *&v36[16];
    PreferencesOutputs.init()();
    v26 = v32;
    v27[0] = v33[0];
    *(v27 + 12) = *(v33 + 12);
    v24 = v30;
    v25 = v31;
    result = outlined destroy of _ToolbarInputs(&v24);
    v15 = DWORD2(v22[0]);
    *a4 = *&v22[0];
    *(a4 + 8) = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t static ToolbarModifier_Content.BodyInput.defaultValue.getter()
{
  v0 = type metadata accessor for (_:_:)();

  return MEMORY[0x1EEDE4450](v0);
}

uint64_t instantiation function for generic protocol witness table for <> ToolbarModifiedContent<A, B>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ToolbarModifiedContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> ToolbarModifiedContent<A, B>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[1];
  v6[0] = *(*a3 + 8);
  v6[1] = v4;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ToolbarModifiedContent<A, B>, a2, v6);
  *(a1 + 8) = result;
  return result;
}

void specialized ToolbarContentModifier.toolbarBodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void (*EnvironmentValues.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  EnvironmentValues.getBridgedValue<A>(for:)(a2, a3, a4, v16);
  return EnvironmentValues.subscript.modify;
}

void EnvironmentValues.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    v10 = EnvironmentValues.setBridgedValue<A>(value:for:)(v3, v9, v8, v7);
    v11 = *(v6 + 8);
    v11(v3, v5, v10);
    (v11)(v4, v5);
  }

  else
  {
    v12 = EnvironmentValues.setBridgedValue<A>(value:for:)((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5, v12);
  }

  free(v4);
  free(v3);

  free(v2);
}

double RecognizerBox.__deallocating_deinit()
{
  MEMORY[0x18D011290](v0 + 16);
  MEMORY[0x18D011290](v0 + 24);

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata completion function for DefaultGestureRecognizerRepresentableCoordinator(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for UIGestureRecognizerRepresentableContext(319, result, *(a1 + 88), v3);
    if (v5 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t static GestureRecognizerModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v57 = a6;
  v83 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = &v50[-v13];
  v56 = a5;
  v15 = type metadata accessor for GestureRecognizerRepresentableChild(0, a4, a5, v14);
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v50[-v16];
  v17 = a2[3];
  v18 = a2[1];
  v79 = a2[2];
  v80 = v17;
  v19 = a2[3];
  v81 = a2[4];
  v20 = a2[1];
  v77 = *a2;
  v78 = v20;
  v72 = v79;
  v73 = v19;
  v74 = a2[4];
  v21 = *a1;
  v82 = *(a2 + 20);
  LODWORD(v75) = *(a2 + 20);
  v70 = v77;
  v71 = v18;
  a3(&v58);
  *&v70 = v80;
  DWORD2(v70) = DWORD2(v80);
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((result & 1) == 0)
  {
    goto LABEL_4;
  }

  v64 = v79;
  v65 = v80;
  v66 = v81;
  v67 = v82;
  v62 = v77;
  v63 = v78;
  MEMORY[0x1EEE9AC00](result);
  v52 = v15;
  v23 = v56;
  WitnessTable = a4;
  v49 = v56;
  LODWORD(v59[0]) = v21;
  outlined init with copy of _ViewInputs(&v77, &v70);
  type metadata accessor for GestureRecognizerModifier(255, a4, v23, v24);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v25 = v70;
  static DynamicPropertyCache.fields(of:)();
  v59[0] = v70;
  LOBYTE(v59[1]) = v71;
  DWORD1(v59[1]) = DWORD1(v71);
  v61 = v25;
  _DynamicPropertyBuffer.init<A>(fields:container:inputs:)();
  v26 = *&v68[0];
  type metadata accessor for _GraphValue();
  v27 = *(&v68[0] + 1);
  LODWORD(v68[0]) = v25;
  v51 = _GraphValue.value.getter();
  v28 = DWORD2(v63);
  *&v59[0] = v26;
  *(&v59[0] + 1) = v27;
  v29 = v53;
  (*(*(AssociatedTypeWitness - 8) + 56))(v53, 1, 1, AssociatedTypeWitness);
  v72 = v79;
  v73 = v80;
  v74 = v81;
  v30 = DWORD2(v81);
  LODWORD(v75) = v82;
  v70 = v77;
  v71 = v78;
  v31 = _ViewInputs.position.getter();
  LODWORD(v26) = HIDWORD(v80);
  v32 = v78;
  swift_beginAccess();
  v33 = *(v32 + 16);
  v34 = v54;
  v35 = GestureRecognizerRepresentableChild.init(representable:phase:links:coordinator:defaultCoordinator:recognizer:recognizerBox:size:position:transform:environment:safeAreaInsets:)(v51, v28, v59, v29, 0, 0, 0, v30, v54, v31, v26, v33, SHIDWORD(v81), a4, v23);
  MEMORY[0x1EEE9AC00](v35);
  v37 = type metadata accessor for ConcreteRecognizer(0, a4, v23, v36);
  v38 = v52;
  v47[0] = v37;
  v47[1] = v52;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for GestureRecognizerRepresentableChild<A>, v52);
  v39 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v34, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, &v50[-48], v38, MEMORY[0x1E69E73E0], v39, MEMORY[0x1E69E7410], v40);
  (*(v55 + 8))(v34, v38);
  v41 = v70;
  v70 = v58;

  v42 = _ViewOutputs.viewResponders()();

  v68[2] = v64;
  v68[3] = v65;
  v68[4] = v66;
  v69 = v67;
  v68[0] = v62;
  v68[1] = v63;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(&v59[2] + 8) = v64;
    *(&v59[3] + 8) = v65;
    *(&v59[4] + 8) = v66;
    *(v59 + 8) = v62;
    DWORD2(v59[5]) = v67;
    *(&v59[1] + 8) = v63;
    *&v59[0] = __PAIR64__(v42, v41);
    *&v60 = 0;
    *(&v60 + 1) = result;
    MEMORY[0x1EEE9AC00](result);
    v44 = type metadata accessor for GestureRecognizerRepresentableResponderUpdater(0, a4, v56, v43);
    WitnessTable = v44;
    v49 = swift_getWitnessTable(protocol conformance descriptor for GestureRecognizerRepresentableResponderUpdater<A>, v44);
    outlined init with copy of _ViewInputs(v68, &v70);
    type metadata accessor for _ContiguousArrayStorage<EventBindingSource>(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v59, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_9, v47, v44, MEMORY[0x1E69E73E0], v45, MEMORY[0x1E69E7410], v46);
    v74 = v59[4];
    v75 = v59[5];
    v76 = v60;
    v70 = v59[0];
    v71 = v59[1];
    v72 = v59[2];
    v73 = v59[3];
    (*(*(v44 - 8) + 8))(&v70, v44);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter();
    v59[2] = v64;
    v59[3] = v65;
    v59[4] = v66;
    LODWORD(v59[5]) = v67;
    v59[0] = v62;
    v59[1] = v63;
    result = outlined destroy of _ViewInputs(v59);
LABEL_4:
    *v57 = v58;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static GestureRecognizerModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for GestureRecognizerModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t GestureRecognizerRepresentableChild.init(representable:phase:links:coordinator:defaultCoordinator:recognizer:recognizerBox:size:position:transform:environment:safeAreaInsets:)@<X0>(int a1@<W0>, int a2@<W1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, int a10, int a11, int a12, int a13, uint64_t a14, uint64_t a15)
{
  v19 = *a3;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = v19;
  *(a9 + 16) = a3[1];
  v20 = type metadata accessor for GestureRecognizerRepresentableChild(0, a14, a15, a4);
  v21 = v20[11];
  swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for Optional();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a4, v22);
  *(a9 + v20[12]) = a5;
  *(a9 + v20[13]) = a6;
  *(a9 + v20[14]) = a7;
  *(a9 + v20[15]) = a8;
  *(a9 + v20[16]) = a10;
  *(a9 + v20[17]) = a11;
  *(a9 + v20[18]) = a12;
  *(a9 + v20[19]) = a13;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GestureRecognizerModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for GestureRecognizerModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t *DefaultGestureRecognizerRepresentableCoordinator.init(representable:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  (*(*(v5 - 8) + 32))(v2 + *(*v2 + 96), a1, v5);
  v6 = *(*v2 + 104);
  v8 = type metadata accessor for UIGestureRecognizerRepresentableContext(0, v5, *(v4 + 88), v7);
  (*(*(v8 - 8) + 32))(v2 + v6, a2, v8);
  return v2;
}

double DefaultGestureRecognizerRepresentableCoordinator.dispatch(target:)(void *a1)
{
  v2 = [a1 state];
  if (v2 != 1)
  {
    v2 = [a1 state] == 2;
  }

  MEMORY[0x1EEE9AC00](v2);
  Transaction.tracksVelocity.setter();
  withTransaction<A>(_:_:)();

  return result;
}

uint64_t closure #1 in DefaultGestureRecognizerRepresentableCoordinator.dispatch(target:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 88);
  v8 = type metadata accessor for UIGestureRecognizerRepresentableContext(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = *(v5 + 96);
  swift_beginAccess();
  (*(v12 + 16))(v15, &a1[v16], v6);
  v17 = *(*a1 + 104);
  swift_beginAccess();
  (*(v9 + 16))(v11, &a1[v17], v8);
  (*(v7 + 56))(v20, v11, v6, v7);
  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v6);
}

double @objc DefaultGestureRecognizerRepresentableCoordinator.dispatch(target:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  DefaultGestureRecognizerRepresentableCoordinator.dispatch(target:)(v3);

  return result;
}

uint64_t *DefaultGestureRecognizerRepresentableCoordinator.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  v3 = *(*v0 + 104);
  v5 = type metadata accessor for UIGestureRecognizerRepresentableContext(0, v2, *(v1 + 88), v4);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  return v0;
}

double DefaultGestureRecognizerRepresentableCoordinator.__deallocating_deinit()
{
  DefaultGestureRecognizerRepresentableCoordinator.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t GestureRecognizerRepresentableChild.recognizerBox.getter(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v1 + v2))
  {
    v3 = *(v1 + v2);
  }

  else
  {
    v4 = v1;
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    type metadata accessor for ViewGraph();
    v5 = swift_dynamicCastClassUnconditional();
    type metadata accessor for RecognizerBox();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 208);
      ObjectType = swift_getObjectType();
      v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      (*(v6 + 16))(&v11, v8, v8, ObjectType, v6);

      swift_unknownObjectRelease();
      v9 = v11;
    }

    else
    {

      v9 = 0;
    }

    swift_unknownObjectWeakAssign();

    *(v4 + v2) = v3;
  }

  return v3;
}

uint64_t GestureRecognizerRepresentableChild.updateValue()(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v136 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = type metadata accessor for ConcreteRecognizer(0, v9, v8, a5);
  v104 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v103 = v98 - v11;
  v108 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v107 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for UIGestureRecognizerRepresentableContext(0, v9, v8, v14);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v102 = v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v123 = v98 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = type metadata accessor for Optional();
  v18 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v106 = v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v112 = v98 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v109 = v98 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v98 - v25;
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v101 = v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v98 - v31;
  Value = AGGraphGetValue();
  v35 = v34;
  v113 = v27;
  v36 = *(v27 + 16);
  v100 = v27 + 16;
  v99 = v36;
  v36(v32, Value, v9);
  v37 = AGGraphGetValue();
  v39 = v38;
  v40 = *v37;
  v129 = v9;
  v130 = v8;
  v124 = v8;
  v131 = v6;
  v132 = v40;
  v122 = v32;
  v116 = v9;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v32, partial apply for closure #1 in GestureRecognizerRepresentableChild.updateValue(), v128, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v41);
  v105 = v10;
  if (v126)
  {
    v42 = 1;
LABEL_3:
    v43 = v121;
    goto LABEL_8;
  }

  OutputValue = AGGraphGetOutputValue();
  v42 = 1;
  if (!OutputValue)
  {
    goto LABEL_3;
  }

  v43 = v121;
  if ((v35 & 1) == 0 && (v39 & 1) == 0)
  {
    v42 = AGGraphCurrentAttributeWasModified();
  }

LABEL_8:
  LODWORD(v111) = v42;
  v127[0] = *(v6 + *(a1 + 76)) == *MEMORY[0x1E698D3F8];
  GeometryProxy.init(owner:size:environment:transform:position:safeAreaInsets:seed:)();
  *v127 = GestureRecognizerRepresentableChild.recognizerBox.getter(a1);
  *&v127[8] = v133;
  *&v127[24] = v134;
  *&v127[40] = *v135;
  *&v127[56] = *&v135[16];
  v45 = *(a1 + 44);
  v46 = *(v18 + 16);
  v120 = v18 + 16;
  v119 = v46;
  v46(v26, &v45[v6], v43);
  v47 = AssociatedTypeWitness;
  v48 = *(AssociatedTypeWitness - 8);
  v49 = *(v48 + 48);
  v118 = v48 + 48;
  v117 = v49;
  v50 = v49(v26, 1, AssociatedTypeWitness);
  v51 = (*(v18 + 8))(v26, v43);
  v110 = a1;
  if (v50 == 1)
  {
    v98[1] = v98;
    v52 = MEMORY[0x1EEE9AC00](v51);
    v53 = v124;
    v98[-4] = v116;
    v98[-3] = v53;
    v98[-2] = v122;
    v98[-1] = v127;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for GestureRecognizerRepresentableChild<A>, a1, v52);
    MEMORY[0x18D000B40](a1, AssociatedTypeWitness, WitnessTable);
    v55 = v43;
    v56 = v109;
    v47 = AssociatedTypeWitness;
    StatefulRule.withObservation<A>(observationCenter:do:)();

    (*(v48 + 56))(v56, 0, 1, v47);
    (*(v18 + 40))(&v45[v6], v56, v55);
    v57 = v55;
  }

  else
  {
    v57 = v43;
  }

  v58 = v123;
  v59 = v112;
  v109 = v45;
  v119(v112, &v45[v6], v57);
  if (v117(v59, 1, v47) == 1)
  {
    __break(1u);
  }

  v133 = *v127;
  v134 = *&v127[16];
  *v135 = *&v127[32];
  *&v135[12] = *&v127[44];
  v60 = v116;
  v61 = v124;
  UIGestureRecognizerRepresentableContext.init(coordinator:converter:)(v59, &v133, v116, v124, v58);
  v63 = v110;
  v64 = *(v110 + 52);
  if (*(v6 + v64))
  {
    outlined init with copy of UIGestureRecognizerRepresentableCoordinateSpaceConverter(v127, &v133);
    v65 = v122;
  }

  else
  {
    v112 = *(v110 + 52);
    MEMORY[0x1EEE9AC00](v62);
    v98[-4] = v60;
    v98[-3] = v61;
    v65 = v122;
    v98[-2] = v122;
    v98[-1] = v58;
    outlined init with copy of UIGestureRecognizerRepresentableCoordinateSpaceConverter(v127, &v133);
    v66 = swift_getAssociatedTypeWitness();
    v67 = swift_getWitnessTable(protocol conformance descriptor for GestureRecognizerRepresentableChild<A>, v63);
    MEMORY[0x18D000B40](v63, v66, v67);
    StatefulRule.withObservation<A>(observationCenter:do:)();

    v64 = v112;
    v68 = v133;
    *(v6 + v112) = v133;
    v69 = v68;
    GestureRecognizerRepresentableChild.recognizerBox.getter(v63);
    swift_unknownObjectWeakAssign();

    v71 = *(v63 + 48);
    if (*(v6 + v71))
    {
      v61 = v124;
      v58 = v123;
    }

    else
    {
      type metadata accessor for DefaultGestureRecognizerRepresentableCoordinator(0, v60, v124, v70);
      v72 = v101;
      v99(v101, v65, v60);
      v73 = *(v114 + 16);
      v74 = v102;
      v100 = 0;
      v75 = v123;
      v73(v102, v123, v115);
      swift_allocObject();
      v76 = v72;
      v64 = v112;
      v77 = DefaultGestureRecognizerRepresentableCoordinator.init(representable:context:)(v76, v74);
      [v69 addTarget:v77 action:sel_dispatchWithTarget_];
      *(v6 + v71) = v77;
      v61 = v124;
      v58 = v75;
    }
  }

  if (!v111)
  {
    outlined destroy of UIGestureRecognizerRepresentableCoordinateSpaceConverter(v127);
    goto LABEL_24;
  }

  v112 = v64;
  v78 = *(v6 + *(v63 + 48));
  if (v78)
  {
    v79 = *(*v78 + 96);
    swift_beginAccess();
    v80 = *(v113 + 24);

    v80(v78 + v79, v65, v60);
    v61 = v124;
    swift_endAccess();
    v81 = *(*v78 + 104);
    swift_beginAccess();
    v82 = v78 + v81;
    v58 = v123;
    (*(v114 + 24))(v82, v123, v115);
    swift_endAccess();
  }

  v83 = v65;
  v84 = v108;
  v85 = v107;
  v86 = (*(v108 + 16))(v107, v6, v63);
  v111 = v98;
  v87 = MEMORY[0x1EEE9AC00](v86);
  v98[-6] = v60;
  v98[-5] = v61;
  v98[-4] = v83;
  v98[-3] = v6;
  v98[-2] = v58;
  v88 = swift_getWitnessTable(protocol conformance descriptor for GestureRecognizerRepresentableChild<A>, v63, v87);
  v89 = MEMORY[0x1E69E7CA8];
  MEMORY[0x18D000B40](v63, MEMORY[0x1E69E7CA8] + 8, v88);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  result = (*(v84 + 8))(v85, v63);
  v91 = *(v6 + v112);
  if (v91)
  {
    v92 = v106;
    v119(v106, &v109[v6], v121);
    result = (v117)(v92, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v93 = v103;
      v94 = ConcreteRecognizer.init(recognizer:coordinator:)(v91, v92, v60, v124, v103);
      MEMORY[0x1EEE9AC00](v94);
      v98[-2] = v63;
      v98[-1] = v88;
      v95 = v91;
      v96 = v105;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v93, partial apply for closure #1 in StatefulRule.value.setter, &v98[-4], v105, MEMORY[0x1E69E73E0], v89 + 8, MEMORY[0x1E69E7410], v97);
      outlined destroy of UIGestureRecognizerRepresentableCoordinateSpaceConverter(v127);
      (*(v104 + 8))(v93, v96);
      v58 = v123;
      v65 = v122;
LABEL_24:
      (*(v114 + 8))(v58, v115);
      return (*(v113 + 8))(v65, v60);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in GestureRecognizerRepresentableChild.updateValue()(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = a2[1];
  v13[0] = *a2;
  v13[1] = v11;
  v14[0] = a2[2];
  *(v14 + 12) = *(a2 + 44);
  (*(a4 + 32))(v13, a3, a4);
  return (*(v7 + 8))(v10, a3);
}

uint64_t closure #3 in GestureRecognizerRepresentableChild.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = (*(a4 + 40))(a2, a3, a4);
  result = (*(v9 + 8))(v12, a3);
  *a5 = v13;
  return result;
}

uint64_t closure #4 in GestureRecognizerRepresentableChild.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  result = type metadata accessor for GestureRecognizerRepresentableChild(0, a4, a5, v12);
  v14 = *(a2 + *(result + 52));
  if (v14)
  {
    v15 = *(a5 + 48);
    v16 = v14;
    v15();

    return (*(v8 + 8))(v11, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConcreteRecognizer.init(recognizer:coordinator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v8 = *(type metadata accessor for ConcreteRecognizer(0, a3, a4, a4) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 32);

  return v10(&a5[v8], a2, AssociatedTypeWitness);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance GestureRecognizerRepresentableChild<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v5 = type metadata accessor for ConcreteRecognizer(0, *(a1 + 16), *(a1 + 24), x3_0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

uint64_t GestureRecognizerRepresentableResponderUpdater.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(v4 + 12);
  if (!v5)
  {
    type metadata accessor for GestureRecognizerRepresentableResponder(0, *(a1 + 16), *(a1 + 24), a4);
    v6 = *v4;
    v7 = *(v4 + 14);
    v23[2] = *(v4 + 10);
    v23[3] = v7;
    v23[4] = *(v4 + 18);
    v24 = v4[22];
    v8 = *(v4 + 6);
    v23[0] = *(v4 + 2);
    v23[1] = v8;
    v19 = *(v4 + 10);
    v20 = *(v4 + 14);
    v21 = *(v4 + 18);
    v22 = v4[22];
    v17 = *(v4 + 2);
    v18 = *(v4 + 6);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    v10 = CurrentAttribute;
    v11 = *(v4 + 13);
    outlined init with copy of _ViewInputs(v23, v25);
    v12 = swift_allocObject();
    v13 = v11;
    v25[2] = v19;
    v25[3] = v20;
    v25[4] = v21;
    v26 = v22;
    v25[0] = v17;
    v25[1] = v18;
    *(v12 + 224) = 0;
    *(v12 + 216) = v6;
    *(v12 + 220) = v10;
    v5 = DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
    *(v4 + 12) = v5;
  }

  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v14)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18CD69590;
    *(v16 + 32) = v5;
    *&v25[0] = v16;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t GestureRecognizerRepresentableResponder.__allocating_init(representable:inputs:context:viewSubgraph:)(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 224) = 0;
  *(v6 + 216) = a1;
  *(v6 + 220) = a3;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

uint64_t GestureRecognizerRepresentableResponder.gestureContainer.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[28];
  if (!v3)
  {
    v4 = v2;
    if (AGSubgraphIsValid())
    {
      v5 = *(v1 + 17);
      v14[2] = *(v1 + 15);
      v14[3] = v5;
      v14[4] = *(v1 + 19);
      v15 = *(v1 + 42);
      v6 = *(v1 + 13);
      v14[0] = *(v1 + 11);
      v14[1] = v6;
      v10 = *(v1 + 15);
      v11 = *(v1 + 17);
      v12 = *(v1 + 19);
      v13 = *(v1 + 42);
      v8 = *(v1 + 11);
      v9 = *(v1 + 13);
      swift_getWitnessTable(protocol conformance descriptor for GestureRecognizerRepresentableResponder<A>, v4);
      outlined init with copy of _ViewInputs(v14, v16);
      v3 = _ViewInputs.makeGestureContainer(responder:)();
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v12;
      v17 = v13;
      v16[0] = v8;
      v16[1] = v9;
      outlined destroy of _ViewInputs(v16);
      v1[28] = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0;
    }
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t GestureRecognizerRepresentableResponder.recognizerSource.getter(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ConcreteRecognizer(0, *(*v5 + class metadata base offset for GestureRecognizerRepresentableResponder), *(*v5 + class metadata base offset for GestureRecognizerRepresentableResponder + 8), a5);
  v6 = *AGGraphGetInputValue();
  type metadata accessor for EventBindingSourceAdaptor();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = v6;
  return v7;
}

uint64_t GestureRecognizerRepresentableResponder.isValid.getter()
{
  if (!*(v0 + 224))
  {
    return 0;
  }

  v1 = AGGraphGetAttributeSubgraph();
  IsValid = AGSubgraphIsValid();

  return IsValid;
}

uint64_t GestureRecognizerRepresentableResponder.eventSources.getter()
{
  type metadata accessor for _ContiguousArrayStorage<EventBindingSource>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventBindingSource>, type metadata accessor for EventBindingSource, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18CD63400;
  v4 = GestureRecognizerRepresentableResponder.recognizerSource.getter(COERCE_DOUBLE(1), v0, v1, v2, v3);
  v5 = lazy protocol witness table accessor for type EventBindingSourceAdaptor and conformance EventBindingSourceAdaptor();
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  return v0;
}

double GestureRecognizerRepresentableResponder.detachContainer()()
{
  *(v0 + 224) = 0;
  swift_unknownObjectRelease();
  return result;
}

double GestureRecognizerRepresentableResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();
  swift_unknownObjectRelease();

  swift_deallocClassInstance();
  return result;
}

uint64_t EventBindingSourceAdaptor.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer, 0x1E69DCA60);
  if (result == a1)
  {
    v10 = *(v3 + 16);
    v9 = *(a2 - 8);
    if (*(v9 + 64) == 8)
    {
      (*(v9 + 16))(a3, &v10, a2);
      return (*(v9 + 56))(a3, 0, 1, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *(*(a2 - 8) + 56);

    return v8(a3, 1, 1, a2);
  }

  return result;
}

uint64_t type metadata completion function for ConcreteRecognizer(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char **initializeBufferWithCopyOfBuffer for ConcreteRecognizer(char **a1, char **a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && (*(v6 + 80) & 0x100000) == 0 && ((-9 - v7) | v7) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = AssociatedTypeWitness;
    v12 = *a2;
    *a1 = *a2;
    v13 = *(v6 + 16);
    v14 = v12;
    v13((a1 + v7 + 8) & ~v7, (a2 + v7 + 8) & ~v7, v11);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v7 & 0xF8 ^ 0x1F8) & (v7 + 16)];
  }

  return a1;
}

uint64_t destroy for ConcreteRecognizer(id *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6, AssociatedTypeWitness);
}

void **initializeWithCopy for ConcreteRecognizer(void **a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 16);
  v9 = *(v7 + 80);
  v10 = v5;
  v8((a1 + v9 + 8) & ~v9, (a2 + v9 + 8) & ~v9, AssociatedTypeWitness);
  return a1;
}

void **assignWithCopy for ConcreteRecognizer(void **a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a1;
  *a1 = *a2;
  v7 = v5;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 24))((a1 + *(v9 + 80) + 8) & ~*(v9 + 80), (a2 + *(v9 + 80) + 8) & ~*(v9 + 80), AssociatedTypeWitness);
  return a1;
}

void *initializeWithTake for ConcreteRecognizer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 32))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

void **assignWithTake for ConcreteRecognizer(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 40))((a1 + *(v7 + 80) + 8) & ~*(v7 + 80), (a2 + *(v7 + 80) + 8) & ~*(v7 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConcreteRecognizer(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v11 = ((v9 + 8) & ~v9) + v10;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 48);

        return v18((a1 + v9 + 8) & ~v9);
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_15:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for ConcreteRecognizer(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 8) & ~v9) + *(v7 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_47:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
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
  if ((v8 & 0x80000000) != 0)
  {
    v19 = *(v7 + 56);

    v19(&a1[v9 + 8] & ~v9, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v18 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v18 = (a2 - 1);
    }

    *a1 = v18;
  }
}

unint64_t lazy protocol witness table accessor for type EventBindingSourceAdaptor and conformance EventBindingSourceAdaptor()
{
  result = lazy protocol witness table cache variable for type EventBindingSourceAdaptor and conformance EventBindingSourceAdaptor;
  if (!lazy protocol witness table cache variable for type EventBindingSourceAdaptor and conformance EventBindingSourceAdaptor)
  {
    v3 = type metadata accessor for EventBindingSourceAdaptor();
    result = swift_getWitnessTable(protocol conformance descriptor for EventBindingSourceAdaptor, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EventBindingSourceAdaptor and conformance EventBindingSourceAdaptor);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<EventBindingSource>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void destroy for GestureRecognizerRepresentableResponderUpdater(uint64_t a1)
{

  v2 = *(a1 + 104);
}

uint64_t initializeWithCopy for GestureRecognizerRepresentableResponderUpdater(uint64_t a1, uint64_t a2)
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
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for GestureRecognizerRepresentableResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
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

  v4 = *(a2 + 104);
  v5 = *(a1 + 104);
  *(a1 + 104) = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for GestureRecognizerRepresentableResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  v4 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t type metadata completion function for GestureRecognizerRepresentableChild(uint64_t a1)
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

_DWORD *initializeBufferWithCopyOfBuffer for GestureRecognizerRepresentableChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  v9 = v7 <= 7u && (v7 & 0x100000) == 0;
  if (v9 && ((((((((((((v8 + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4) <= 0x18)
  {
    v10 = AssociatedTypeWitness;
    *a1 = *a2;
    v11 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v12 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v11 = *v12;
    v13 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    if ((*(v6 + 48))(v14 + 1, 1, AssociatedTypeWitness))
    {
      memcpy(v13 + 1, v14 + 1, v8);
    }

    else
    {
      (*(v6 + 16))(v13 + 1, v14 + 1, v10);
      (*(v6 + 56))(v13 + 1, 0, 1, v10);
    }

    v16 = ((v13 + v8 + 23) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((v14 + v8 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = *v19;
    *v18 = *v19;
    v21 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = ((v21 + 11) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v22 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    v23[1] = v24[1];
    v25 = ((v23 + 11) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v25[1] = v26[1];
    *((v25 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v26 + 11) & 0xFFFFFFFFFFFFFFF8);

    v27 = v20;
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v7 & 0xF8 ^ 0x1F8u) & (v7 + 16)));
  }

  return a1;
}

double destroy for GestureRecognizerRepresentableChild(uint64_t a1, uint64_t a2)
{
  v2 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (v2 + *(v4 + 80) + 16) & ~*(v4 + 80);
  if (!(*(v4 + 48))(v5, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v5, AssociatedTypeWitness);
  }

  v6 = v5 + *(v4 + 64);
  if (!*(v4 + 84))
  {
    ++v6;
  }

  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15;

  return result;
}

_DWORD *initializeWithCopy for GestureRecognizerRepresentableChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 11) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v5 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 16) & ~v10);
  v12 = ((v7 + v10 + 16) & ~v10);
  if ((*(v9 + 48))(v12, 1, AssociatedTypeWitness))
  {
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
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
    (*(v9 + 16))(v11, v12, AssociatedTypeWitness);
    v17 = *(v9 + 56);
    v16 = v9 + 56;
    v17(v11, 0, 1, AssociatedTypeWitness);
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

  v19 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = *v22;
  *v21 = *v22;
  v24 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
  v28 = v27 + 11;
  *v26 = *v27;
  v26[1] = v27[1];
  v29 = ((v26 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *(v28 & 0xFFFFFFFFFFFFFFF8);
  v29[1] = *((v28 & 0xFFFFFFFFFFFFFFF8) + 4);
  *((v29 + 11) & 0xFFFFFFFFFFFFFFF8) = *(((v28 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);

  v30 = v23;

  return a1;
}

_DWORD *assignWithCopy for GestureRecognizerRepresentableChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = (v4 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v6 = *v7;
  *(v6 + 8) = *(v7 + 8);
  *(v6 + 12) = *(v7 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v10 + 16 + v6) & ~v10);
  v12 = ((v10 + 16 + v7) & ~v10);
  v13 = *(v9 + 48);
  v14 = v13(v11, 1, AssociatedTypeWitness);
  v15 = v13(v12, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v15)
    {
      (*(v9 + 16))(v11, v12, AssociatedTypeWitness);
      (*(v9 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v16 = *(v9 + 84);
    v17 = *(v9 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v9 + 24))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v16 = *(v9 + 84);
    v17 = *(v9 + 64);
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
  if (*(v9 + 84))
  {
    v19 = *(v9 + 64);
  }

  else
  {
    v19 = *(v9 + 64) + 1;
  }

  v20 = v11 + v19 + 7;
  v21 = v12 + v19 + 7;
  v22 = (v21 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v20 & 0xFFFFFFFFFFFFFFF8) = *(v21 & 0xFFFFFFFFFFFFFFF8);
  v23 = (v20 & 0xFFFFFFFFFFFFFFF8) + 15;

  v24 = v23 & 0xFFFFFFFFFFFFFFF8;
  v26 = (v22 & 0xFFFFFFFFFFFFFFF8) + 15;
  v25 = *(v22 & 0xFFFFFFFFFFFFFFF8);
  v27 = *v24;
  *v24 = v25;
  v24 += 15;
  v28 = v25;

  v26 &= 0xFFFFFFFFFFFFFFF8;
  v29 = *v26;
  v26 += 11;
  *(v24 & 0xFFFFFFFFFFFFFFF8) = v29;
  v30 = (v24 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v30 & 0xFFFFFFFFFFFFFFF8) = *(v26 & 0xFFFFFFFFFFFFFFF8);
  *((v30 & 0xFFFFFFFFFFFFFFF8) + 4) = *((v26 & 0xFFFFFFFFFFFFFFF8) + 4);
  v31 = (((v26 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v32 = (((v30 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v31;
  v32[1] = v31[1];
  *((v32 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v31 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *initializeWithTake for GestureRecognizerRepresentableChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 11) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v5 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v6 + v10 + 16) & ~v10);
  v12 = ((v7 + v10 + 16) & ~v10);
  if ((*(v9 + 48))(v12, 1, AssociatedTypeWitness))
  {
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
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
    (*(v9 + 32))(v11, v12, AssociatedTypeWitness);
    v17 = *(v9 + 56);
    v16 = v9 + 56;
    v17(v11, 0, 1, AssociatedTypeWitness);
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

  v19 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + 11) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = v26 + 11;
  *v25 = *v26;
  v25[1] = v26[1];
  v28 = ((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *(v27 & 0xFFFFFFFFFFFFFFF8);
  v28[1] = *((v27 & 0xFFFFFFFFFFFFFFF8) + 4);
  *((v28 + 11) & 0xFFFFFFFFFFFFFFF8) = *(((v27 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for GestureRecognizerRepresentableChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = (v4 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v6 = *v7;
  *(v6 + 8) = *(v7 + 8);
  *(v6 + 12) = *(v7 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ((v10 + 16 + v6) & ~v10);
  v12 = ((v10 + 16 + v7) & ~v10);
  v13 = *(v9 + 48);
  v14 = v13(v11, 1, AssociatedTypeWitness);
  v15 = v13(v12, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v15)
    {
      (*(v9 + 32))(v11, v12, AssociatedTypeWitness);
      (*(v9 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v16 = *(v9 + 84);
    v17 = *(v9 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v9 + 40))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v16 = *(v9 + 84);
    v17 = *(v9 + 64);
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
  if (*(v9 + 84))
  {
    v19 = *(v9 + 64);
  }

  else
  {
    v19 = *(v9 + 64) + 1;
  }

  v20 = v11 + v19 + 7;
  v21 = ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  *(v20 & 0xFFFFFFFFFFFFFFF8) = *v21;
  v22 = (v20 & 0xFFFFFFFFFFFFFFF8) + 15;

  v22 &= 0xFFFFFFFFFFFFFFF8;
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = *v22;
  *v22 = *v23;

  v25 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  v26 += 11;
  *v25 = v27;
  v25 += 11;

  *(v25 & 0xFFFFFFFFFFFFFFF8) = *(v26 & 0xFFFFFFFFFFFFFFF8);
  *((v25 & 0xFFFFFFFFFFFFFFF8) + 4) = *((v26 & 0xFFFFFFFFFFFFFFF8) + 4);
  v28 = (((v26 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v29 = (((v25 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v28;
  v29[1] = v28[1];
  *((v29 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for GestureRecognizerRepresentableChild(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  if (!v7)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v11 + 7;
  if (v9 < a2 && *(a1 + ((((((((((((v12 + ((v10 + 24) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v9 + *a1 + 1;
  }

  v14 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;
  if (v8 < 0x7FFFFFFE)
  {
    v16 = *((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    if ((v16 + 1) >= 2)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = (*(v6 + 48))(v14);
    if (v15 >= 2)
    {
      return v15 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for GestureRecognizerRepresentableChild(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v9;
  }

  v12 = (v10 + 24) & ~v10;
  if (v8)
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = *(v7 + 64) + 1;
  }

  v14 = (((((((((((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v11 >= a2)
  {
    if (v11 < a3)
    {
      *(a1 + v14) = 0;
    }

    if (a2)
    {
      v15 = ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
      if (v9 < 0x7FFFFFFE)
      {
        v19 = (&v15[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else if (v9 >= a2)
      {
        v20 = *(v7 + 56);

        v20(v15, a2 + 1);
      }

      else
      {
        if (v13 <= 3)
        {
          v16 = ~(-1 << (8 * v13));
        }

        else
        {
          v16 = -1;
        }

        if (v13)
        {
          v17 = v16 & (~v9 + a2);
          if (v13 <= 3)
          {
            v18 = v13;
          }

          else
          {
            v18 = 4;
          }

          bzero(v15, v13);
          if (v18 > 2)
          {
            if (v18 == 3)
            {
              *v15 = v17;
              v15[2] = BYTE2(v17);
            }

            else
            {
              *v15 = v17;
            }
          }

          else if (v18 == 1)
          {
            *v15 = v17;
          }

          else
          {
            *v15 = v17;
          }
        }
      }
    }
  }

  else
  {
    bzero(a1, (((((((((((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4);
    *a1 = ~v11 + a2;
    if (v11 < a3)
    {
      *(a1 + v14) = 1;
    }
  }
}

uint64_t partial apply for closure #1 in GestureRecognizerRepresentableChild.updateValue()@<X0>(_BYTE *a2@<X8>)
{
  result = _DynamicPropertyBuffer.update(container:phase:)();
  *a2 = result & 1;
  return result;
}

void *initializeBufferWithCopyOfBuffer for InsettableGroupedListBodyRule(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-43 - v5) | v5) - *(*(*(a3 + 24) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v9 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
    v10 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
    v11 = *v10;
    v12 = *(v10 + 16);
    *(v9 + 32) = *(v10 + 32);
    *v9 = v11;
    *(v9 + 16) = v12;
    (*(v4 + 16))((v9 + v5 + 34) & ~v5, (v10 + v5 + 34) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

_DWORD *initializeWithCopy for InsettableGroupedListBodyRule(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 16);
  *(v4 + 32) = *(v5 + 32);
  *v4 = v6;
  *(v4 + 16) = v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 16))((*(v8 + 80) + 34 + v4) & ~*(v8 + 80), (*(v8 + 80) + 34 + v5) & ~*(v8 + 80));
  return a1;
}

_DWORD *assignWithCopy for InsettableGroupedListBodyRule(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 16);
  *(v4 + 32) = *(v5 + 32);
  *v4 = v6;
  *(v4 + 16) = v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 24))((*(v8 + 80) + 34 + v4) & ~*(v8 + 80), (*(v8 + 80) + 34 + v5) & ~*(v8 + 80));
  return a1;
}

_DWORD *initializeWithTake for InsettableGroupedListBodyRule(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 16);
  *(v4 + 32) = *(v5 + 32);
  *v4 = v6;
  *(v4 + 16) = v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 32))((*(v8 + 80) + 34 + v4) & ~*(v8 + 80), (*(v8 + 80) + 34 + v5) & ~*(v8 + 80));
  return a1;
}

_DWORD *assignWithTake for InsettableGroupedListBodyRule(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 16);
  *(v4 + 32) = *(v5 + 32);
  *v4 = v6;
  *(v4 + 16) = v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 40))((*(v8 + 80) + 34 + v4) & ~*(v8 + 80), (*(v8 + 80) + 34 + v5) & ~*(v8 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for InsettableGroupedListBodyRule(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v6 + 34) & ~v6);
  }

  v8 = ((v6 + 42) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v6 + 34) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for InsettableGroupedListBodyRule(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 42) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v8 + 34) & ~v8;

  v18(v19);
}

uint64_t *initializeBufferWithCopyOfBuffer for InsettableGroupedListBody(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(v6 - 8);
  v11 = *(v10 + 80);
  if ((v11 | v8) <= 7 && ((*(v10 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((-35 - v11 - ((v9 + 7) & 0xFFFFFFFFFFFFFFF8)) | v11) - *(*(v6 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v7 + 84) & 0x80000000) != 0)
    {
      v17 = ~v11;
      if ((*(v7 + 48))(v15 + 1))
      {
LABEL_13:
        memcpy(__dst, __src, v9);
LABEL_16:
        v21 = (__dst + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
        v22 = (__src + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
        v23 = *v22;
        v24 = *(v22 + 16);
        *(v21 + 32) = *(v22 + 32);
        *v21 = v23;
        *(v21 + 16) = v24;
        (*(v10 + 16))((v21 + v11 + 34) & v17, (v22 + v11 + 34) & v17, v6);
        return __dst;
      }
    }

    else
    {
      v16 = *v15;
      if (*v15 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      v17 = ~v11;
      if (v16 != -1)
      {
        goto LABEL_13;
      }
    }

    *__dst = *__src;
    v26 = v6;
    v18 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v15;
    v19 = *(v7 + 16);

    v20 = v18 + 1;
    v6 = v26;
    v19(v20, v15 + 1, v5);
    goto LABEL_16;
  }

  v14 = *__src;
  *__dst = *__src;
  __dst = (v14 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));

  return __dst;
}

uint64_t *assignWithCopy for InsettableGroupedListBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = ~v9;
  if ((v8 & 0x80000000) != 0)
  {
    v28 = ((v9 + 16) & ~v9) + v10;
    v26 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(v7 + 48);
    v25 = v17((v12 + v9 + 8) & ~v9, v8, v6);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = v28;
    v12 = v26;
    v15 = v17((v13 + v9 + 8) & ~v9, v8, v6);
    v4 = a2;
    v5 = a1;
    v3 = a3;
    if (!v25)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *v4;

        *v12 = *v13;

        (*(v7 + 24))((v12 + v9 + 8) & v30, (v13 + v9 + 8) & v30, v6);
        goto LABEL_12;
      }

      (*(v7 + 8))((v12 + v9 + 8) & v30, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v12 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *v4;
    *v12 = *v13;
    v18 = *(v7 + 16);

    v18((v12 + v9 + 8) & v30, (v13 + v9 + 8) & v30, v6);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, v4, v11);
LABEL_12:
  v19 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  v22 = *(v20 + 16);
  *(v19 + 32) = *(v20 + 32);
  *v19 = v21;
  *(v19 + 16) = v22;
  v23 = *(*(v3 + 16) - 8);
  (*(v23 + 24))((*(v23 + 80) + 34 + v19) & ~*(v23 + 80), (*(v23 + 80) + 34 + v20) & ~*(v23 + 80));
  return v5;
}

void *initializeWithTake for InsettableGroupedListBody(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    (*(v7 + 32))((v15 + v8 + 8) & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v16 = (__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  v19 = *(v17 + 16);
  *(v16 + 32) = *(v17 + 32);
  *v16 = v18;
  *(v16 + 16) = v19;
  v20 = *(*(a3 + 16) - 8);
  (*(v20 + 32))((*(v20 + 80) + 34 + v16) & ~*(v20 + 80), (*(v20 + 80) + 34 + v17) & ~*(v20 + 80));
  return __dst;
}

void *assignWithTake for InsettableGroupedListBody(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v8 + 16) & ~v8) + v9;
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ~v8;
  if ((v7 & 0x80000000) != 0)
  {
    v30 = ((v8 + 16) & ~v8) + v9;
    v16 = *(v6 + 48);
    v17 = *(a3 + 24);
    v18 = v16((v11 + v8 + 8) & ~v8, v7, v17);
    v19 = v16;
    v28 = v18;
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = v7;
    v12 = v17;
    v21 = v17;
    v5 = a1;
    v10 = v30;
    v15 = v19((v13 + v8 + 8) & ~v8, v20, v21);
    v3 = a3;
    if (!v28)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *a2;

        *v11 = *v13;

        (*(v6 + 40))((v11 + v8 + 8) & v32, (v13 + v8 + 8) & v32, v12);
        goto LABEL_12;
      }

      (*(v6 + 8))((v11 + v8 + 8) & v32, v12);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *(a3 + 24);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v11 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *a2;
    *v11 = *v13;
    (*(v6 + 32))((v11 + v8 + 8) & v32, (v13 + v8 + 8) & v32, v12);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, a2, v10);
LABEL_12:
  v22 = (v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  v25 = *(v23 + 16);
  *(v22 + 32) = *(v23 + 32);
  *v22 = v24;
  *(v22 + 16) = v25;
  v26 = *(*(v3 + 16) - 8);
  (*(v26 + 40))((*(v26 + 80) + 34 + v22) & ~*(v26 + 80), (*(v26 + 80) + 34 + v23) & ~*(v26 + 80));
  return v5;
}

uint64_t getEnumTagSinglePayload for InsettableGroupedListBody(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v5 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a3 + 24) - 8) + 64);
  v16 = v13 + 34;
  v17 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v18 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(*(v9 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v8 >= v11)
      {
        v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v6 & 0x80000000) != 0)
        {
          v31 = (*(v5 + 48))((v29 + v12 + 8) & ~v12);
        }

        else
        {
          v30 = *v29;
          if (v30 >= 0xFFFFFFFF)
          {
            LODWORD(v30) = -1;
          }

          v31 = v30 + 1;
        }

        if (v31 >= 2)
        {
          return v31 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v26 = ~v13;
        v27 = *(v10 + 48);
        v28 = (v16 + ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & v26;

        return v27(v28, v11, v9);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for InsettableGroupedListBody(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(a4 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v9 + 80);
  v13 = v8 - 1;
  if (v10 <= v8 - 1)
  {
    v14 = v8 - 1;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = ((v11 + 16) & ~v11) + *(*(*(a4 + 24) - 8) + 64);
  v16 = ((v12 + 34 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + *(v9 + 64);
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v21 = (v20 >> (8 * v16)) + 1;
    if (v16)
    {
      v24 = v20 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v24;
          if (v19 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v20;
          if (v19 > 1)
          {
LABEL_14:
            if (v19 == 2)
            {
              *&a1[v16] = v21;
            }

            else
            {
              *&a1[v16] = v21;
            }

            return;
          }
        }

LABEL_60:
        if (v19)
        {
          a1[v16] = v21;
        }

        return;
      }

      *a1 = v24;
      a1[2] = BYTE2(v24);
    }

    if (v19 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v19)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v13 < v10)
  {
    v25 = *(v9 + 56);

    v25((v12 + 34 + (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v12);
    return;
  }

  if (v13 < a2)
  {
    if (v15 <= 3)
    {
      v26 = ~(-1 << (8 * v15));
    }

    else
    {
      v26 = -1;
    }

    if (!v15)
    {
      return;
    }

    v27 = v26 & (a2 - v8);
    if (v15 <= 3)
    {
      v28 = v15;
    }

    else
    {
      v28 = 4;
    }

    bzero(a1, v15);
    if (v28 <= 2)
    {
      if (v28 == 1)
      {
LABEL_49:
        *a1 = v27;
        return;
      }

LABEL_74:
      *a1 = v27;
      return;
    }

    goto LABEL_75;
  }

  if (a2 >= v8)
  {
    if (v15 <= 3)
    {
      v30 = ~(-1 << (8 * v15));
    }

    else
    {
      v30 = -1;
    }

    if (!v15)
    {
      return;
    }

    v27 = v30 & (a2 - v8);
    if (v15 <= 3)
    {
      v28 = v15;
    }

    else
    {
      v28 = 4;
    }

    bzero(a1, v15);
    if (v28 <= 2)
    {
      if (v28 == 1)
      {
        goto LABEL_49;
      }

      goto LABEL_74;
    }

LABEL_75:
    if (v28 == 3)
    {
      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    else
    {
      *a1 = v27;
    }

    return;
  }

  v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v31 = *(v6 + 56);
    v32 = a2 + 1;

    v31((v29 + v11 + 8) & ~v11, v32);
  }

  else if (((a2 + 1) & 0x80000000) != 0)
  {
    *v29 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v29 = a2;
  }
}

uint64_t EnvironmentValues.uiKitCellState.getter()
{
  if (*(v0 + 8))
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance InsettableGroupedListBodyRule<A, B, C>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StyleContextWriter();
  v5 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for SelectionManagerBox(255, a1[4], a1[7], v6);
  v11[0] = &protocol witness table for ListStyleContent;
  v11[1] = swift_getWitnessTable(MEMORY[0x1E697F4D0], v4);
  v10[0] = v5;
  v10[1] = v7;
  v10[2] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v11);
  v10[3] = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v7);
  v8 = type metadata accessor for InsettableGroupedListBody(0, v10);
  return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
}

uint64_t InsettableGroupedListBody.TableViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v6 = *(a2 + 24);
  type metadata accessor for Binding();
  v43 = type metadata accessor for Optional();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v36 = &AssociatedConformanceWitness - v7;
  v8 = *(a2 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = v6;
  v40 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for TableViewListDataSource(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v38 = v11;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableViewListDataSource<A>, v11);
  v52[0] = v11;
  v52[1] = v6;
  v52[2] = WitnessTable;
  v52[3] = v8;
  v12 = type metadata accessor for TableViewListCore(0, v52);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &AssociatedConformanceWitness - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &AssociatedConformanceWitness - v16;
  outlined init with copy of _VariadicView_Children(a1, v51);
  if (*(v3 + *(a2 + 64) + 33) == 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8) | (*(v3 + 9) << 8));
  v21 = v20;
  v22 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24) | (*(v3 + 25) << 8)));
  if (v23)
  {
    v22 = 35.0;
  }

  TableViewListDataSource.init(_:style:minRowHeight:minHeaderHeight:)(v51, v18, v19, v21 & 1, v52, v22);
  v24 = v36;
  (*(v41 + 16))(v36, v3 + *(a2 + 60), v43);
  v25 = v3 + *(a2 + 64);
  v26 = *(v25 + 16);
  v53[0] = *v25;
  v53[1] = v26;
  v54 = *(v25 + 32);
  v27 = *(v3 + 80);
  v57 = *(v3 + 64);
  v58 = v27;
  v59 = *(v3 + 96);
  v28 = *(v3 + 48);
  v55 = *(v3 + 32);
  v56 = v28;
  specialized Environment.wrappedValue.getter(v48);
  v46[0] = *&v48[8];
  v46[1] = v49;
  v47[0] = v50[0];
  *(v47 + 9) = *(v50 + 9);
  v30 = v38;
  v29 = v39;
  v31 = WitnessTable;
  v32 = v40;
  TableViewListCore.Configuration.init(insetMode:padding:)(v53, v46, v45);
  TableViewListCore.init(dataSource:selection:configuration:)(v52, v24, v45, v30, v29, v31, v32, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  v33 = *(v42 + 8);
  v33(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v33)(v17, v12);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance InsettableGroupedListBody<A, B>.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for InsettableGroupedListBody<A, B>.TableViewRoot, a5);

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SectionInsetMode()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  Hasher.init(_seed:)();
  if (v6 == 1)
  {
    if (v4 | v2 | v1 | v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 13;
    }

    MEMORY[0x18D00F6F0](v8);
  }

  else
  {
    MEMORY[0x18D00F6F0](31);
    if ((v5 & 1) == 0)
    {
      EdgeInsets.hash(into:)();
    }
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SectionInsetMode(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (*(v1 + 33) == 1)
  {
    if (*(v1 + 16) | *(v1 + 8) | *v1 | *(v1 + 24))
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 == 0;
    }

    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 13;
    }

    return MEMORY[0x18D00F6F0](v4);
  }

  else
  {
    result = MEMORY[0x18D00F6F0](31);
    if ((v2 & 1) == 0)
    {

      return EdgeInsets.hash(into:)();
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SectionInsetMode(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  Hasher.init(_seed:)();
  if (v7 == 1)
  {
    if (v5 | v3 | v2 | v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6 == 0;
    }

    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 13;
    }

    MEMORY[0x18D00F6F0](v9);
  }

  else
  {
    MEMORY[0x18D00F6F0](31);
    if ((v6 & 1) == 0)
    {
      EdgeInsets.hash(into:)();
    }
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SectionInsetMode(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 32);
  result = *(a2 + 33);
  if (v7 != 1)
  {
    if ((result & 1) == 0)
    {
      if (v6)
      {
        if (v12)
        {
          return 1;
        }
      }

      else if (v12 & 1) == 0 && (static EdgeInsets.== infix(_:_:)())
      {
        return 1;
      }
    }

    return 0;
  }

  if (v5 | v3 | v2 | v4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v6 == 0;
  }

  if (!v14)
  {
    if (result)
    {
      if (v11 | v9 | v8 | v10)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == 0;
      }

      return !v15;
    }

    return 0;
  }

  if (*(a2 + 33))
  {
    return !(v11 | v9 | v8 | v10) && v12 == 0;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContentConfigurationBasedRootEnvironment(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ContentConfigurationBasedRootEnvironment(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance CollectionViewGroupedListsEnabled(uint64_t *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  PropertyList.subscript.getter();
  if (v3 == 1 && (static InterfaceIdiomPredicate.evaluate(inputs:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature();
    v1 = static UserDefaultKeyedFeature.isEnabled.getter() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance DisableCollectionViewGroupedListsFeature(uint64_t a1)
{
  lazy protocol witness table accessor for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance DisableCollectionViewGroupedListsFeature@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature();
  result = (*(v4 + 16))(a1, v4);
  *a2 = result & 1;
  return result;
}

void EnvironmentValues.prominentHeaderStyling.getter()
{
  if (*(v1 + 8))
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((v5 + 16) & ~v5) + *(v4 + 64) + (((v5 | 7) + 98) & ~(v5 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 34 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8 + ((v5 + 16) & ~(v5 | 7));
  }

  else
  {
    v51 = *(*(a3 + 24) - 8);
    __n = ((v5 + 16) & ~v5) + *(v4 + 64);
    v53 = *(a3 + 24);
    v10 = *a2;
    v11 = *(a2 + 9);
    v12 = *(a2 + 8);
    v50 = *(v4 + 84);
    outlined copy of Environment<CGFloat?>.Content(*a2, v12, v11);
    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 9) = v11;
    v54 = a1;
    v14 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
    v16 = *v15;
    v17 = *(v15 + 9);
    v18 = *(v15 + 8);
    outlined copy of Environment<CGFloat?>.Content(*v15, v18, v17);
    *v14 = v16;
    *(v14 + 8) = v18;
    *(v14 + 9) = v17;
    v19 = (v14 + 17) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v15 + 17) & 0xFFFFFFFFFFFFFFF8;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    v26 = *(v20 + 40);
    v27 = *(v20 + 48);
    v28 = *(v20 + 56);
    v49 = *(v20 + 65);
    v29 = outlined copy of Environment<ListPadding>.Content(*v20, v22, v23, v24, v25, v26, v27, v28, *(v20 + 64), v49);
    *v19 = v21;
    *(v19 + 8) = v22;
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;
    *(v19 + 32) = v25;
    *(v19 + 40) = v26;
    *(v19 + 48) = v27;
    *(v19 + 56) = v28;
    v30 = v19 + 73;
    v31 = v20 + 73;
    *(v19 + 64) = v48;
    v32 = ((v20 + 73) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v19 + 65) = v49;
    if (v50 < 0)
    {
      v37 = v51;
      v36 = v53;
      v35 = (*(v51 + 48))(v33 + 1, v29);
    }

    else
    {
      v34 = *v33;
      if (*v33 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      v35 = v34 + 1;
      v36 = v53;
      v37 = v51;
    }

    v38 = (v30 & 0xFFFFFFFFFFFFFFF8);
    v9 = v54;
    if (v35)
    {
      v39 = ((v20 + 73) & 0xFFFFFFFFFFFFFFF8);
      v40 = __n;
      memcpy(v38, v39, __n);
    }

    else
    {
      *v38 = *v32;
      v41 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v41 = *v33;
      v42 = *(v37 + 16);

      v42(v41 + 1, v33 + 1, v36);
      v40 = __n;
    }

    v43 = ((v31 | 7) + v40) & 0xFFFFFFFFFFFFFFF8;
    v44 = *v43;
    v45 = *(v43 + 16);
    v46 = ((v30 | 7) + v40) & 0xFFFFFFFFFFFFFFF8;
    *(v46 + 32) = *(v43 + 32);
    *v46 = v44;
    *(v46 + 16) = v45;
  }

  return v9;
}

uint64_t assignWithCopy for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 9);
  v7 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v7, v6);
  v8 = *a1;
  v9 = *(a1 + 9);
  *a1 = v5;
  v10 = *(a1 + 8);
  *(a1 + 8) = v7;
  *(a1 + 9) = v6;
  outlined consume of Environment<CGFloat?>.Content(v8, v10, v9);
  v72 = a1;
  v11 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  LOBYTE(v5) = *(v12 + 9);
  v14 = *(v12 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v12, v14, v5);
  v15 = *v11;
  v16 = *(v11 + 9);
  *v11 = v13;
  v17 = *(v11 + 8);
  *(v11 + 8) = v14;
  *(v11 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v68 = *(v18 + 8);
  v69 = *v18;
  v19 = (v11 + 17) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v18 + 16);
  v21 = *(v18 + 24);
  v22 = *(v18 + 32);
  v23 = *(v18 + 40);
  v24 = *(v18 + 48);
  v25 = *(v18 + 56);
  LOBYTE(v13) = *(v18 + 64);
  LOBYTE(v5) = *(v18 + 65);
  outlined copy of Environment<ListPadding>.Content(*v18, v68, v20, v21, v22, v23, v24, v25, v13, v5);
  v26 = *v19;
  v27 = *(v19 + 8);
  v28 = *(v19 + 16);
  v29 = *(v19 + 24);
  v30 = *(v19 + 32);
  v31 = *(v19 + 40);
  v32 = *(v19 + 48);
  v33 = *(v19 + 56);
  v34 = *(v19 + 64);
  v35 = *(v19 + 65);
  *v19 = v69;
  *(v19 + 8) = v68;
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = v22;
  *(v19 + 40) = v23;
  *(v19 + 48) = v24;
  *(v19 + 56) = v25;
  *(v19 + 64) = v13;
  *(v19 + 65) = v5;
  v36.n128_f64[0] = outlined consume of Environment<ListPadding>.Content(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v37 = *(a3 + 24);
  v38 = *(v37 - 8);
  v39 = *(v38 + 80);
  v40 = (v39 | 7) + 66;
  v41 = ((v40 + v19) & ~(v39 | 7));
  v42 = v40 + v18;
  v43 = (v42 & ~(v39 | 7));
  v44 = *(v38 + 84);
  v45 = ~v39;
  v46 = *(v38 + 64);
  v47 = ((v39 + 16) & ~v39) + v46;
  v48 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v44 & 0x80000000) != 0)
  {
    v70 = ((v39 + 16) & ~v39) + v46;
    v53 = v42 & ~(v39 | 7);
    v54 = *(v38 + 48);
    v55 = (v48 + v39 + 8) & v45;
    v56 = *(a3 + 24);
    v67 = v54(v55, v44, v37, v36);
    v49 = ((v53 + 15) & 0xFFFFFFFFFFFFFFF8);
    v51 = (v54)((v49 + v39 + 8) & ~v39, v44, v56);
    v43 = v53;
    v47 = v70;
    v37 = v56;
    v45 = ~v39;
    if (!v67)
    {
LABEL_5:
      v52 = v37;
      if (!v51)
      {
        *v41 = *v43;

        *v48 = *v49;

        (*(v38 + 24))((v48 + v39 + 8) & v45, (v49 + v39 + 8) & v45, v52);
        goto LABEL_12;
      }

      (*(v38 + 8))((v48 + v39 + 8) & v45, v52);
      goto LABEL_9;
    }
  }

  else
  {
    v49 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
    v50 = *v49;
    if (*v49 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v50) = -1;
    }

    v51 = v50 + 1;
    if (*v48 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v51)
  {
    *v41 = *v43;
    *v48 = *v49;
    v57 = v48 + v39 + 8;
    v58 = v49 + v39 + 8;
    v59 = *(v38 + 16);
    v60 = v45;
    v61 = v37;

    v59(v57 & v60, v58 & v60, v61);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v41, v43, v47);
LABEL_12:
  v62 = (v43 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v41 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = *v62;
  v65 = *(v62 + 16);
  *(v63 + 32) = *(v62 + 32);
  *v63 = v64;
  *(v63 + 16) = v65;
  return v72;
}

uint64_t initializeWithTake for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v5 + 17) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 32);
  v9 = *(v8 + 48);
  v11 = *(v8 + 16);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 32) = v10;
  *(v7 + 48) = v9;
  *(v7 + 16) = v11;
  *v7 = *v8;
  v12 = *(a3 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = (v14 | 7) + 66;
  v16 = ((v15 + v7) & ~(v14 | 7));
  v17 = ((v15 + v8) & ~(v14 | 7));
  v18 = ~v14;
  v19 = (v14 + 16) & ~v14;
  v20 = *(v13 + 64);
  v21 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v13 + 84) & 0x80000000) == 0)
  {
    v22 = *v21;
    if (*v21 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    v23 = v19 + v20;
    if (v22 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v16 = *v17;
    v24 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v21;
    (*(v13 + 32))((v24 + v14 + 8) & v18, (v21 + v14 + 8) & v18, v12);
    goto LABEL_8;
  }

  v23 = v19 + v20;
  if (!(*(v13 + 48))((v21 + v14 + 8) & v18))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v16, v17, v23);
LABEL_8:
  v25 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v25;
  v28 = *(v25 + 16);
  *(v26 + 32) = *(v25 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  return a1;
}

uint64_t assignWithTake for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *a1;
  v9 = *(a1 + 9);
  *a1 = *a2;
  v10 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = v7;
  outlined consume of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  v14 = *(v12 + 9);
  v15 = *v11;
  v16 = *(v11 + 9);
  *v11 = *v12;
  v17 = *(v11 + 8);
  *(v11 + 8) = v13;
  *(v11 + 9) = v14;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 64);
  v20 = *(v18 + 65);
  v21 = (v11 + 17) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);
  v26 = *(v21 + 32);
  v27 = *(v21 + 40);
  v28 = *(v21 + 48);
  v29 = *(v21 + 56);
  v30 = *(v21 + 64);
  v31 = *(v21 + 65);
  v32 = *(v18 + 16);
  v33 = *(v18 + 32);
  v34 = *(v18 + 48);
  *v21 = *v18;
  *(v21 + 16) = v32;
  *(v21 + 32) = v33;
  *(v21 + 48) = v34;
  *(v21 + 64) = v19;
  *(v21 + 65) = v20;
  v35.n128_f64[0] = outlined consume of Environment<ListPadding>.Content(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v36 = *(a3 + 24);
  v37 = *(v36 - 8);
  v38 = *(v37 + 80);
  v39 = (v38 | 7) + 66;
  v40 = ((v39 + v21) & ~(v38 | 7));
  __src = ((v39 + v18) & ~(v38 | 7));
  v41 = *(v37 + 84);
  v42 = *(v37 + 64);
  v43 = ((v38 + 16) & ~v38) + v42;
  v44 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v58 = ~v38;
  if ((v41 & 0x80000000) != 0)
  {
    v57 = ((v38 + 16) & ~v38) + v42;
    v48 = *(v37 + 48);
    v49 = v48((v44 + v38 + 8) & ~v38, v41, v36, v35);
    v50 = v48;
    v56 = v49;
    v45 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    v43 = v57;
    v47 = v50((v45 + v38 + 8) & ~v38, v41, v36);
    if (!v56)
    {
LABEL_5:
      if (!v47)
      {
        *v40 = *__src;

        *v44 = *v45;

        (*(v37 + 40))((v44 + v38 + 8) & v58, (v45 + v38 + 8) & v58, v36);
        goto LABEL_12;
      }

      (*(v37 + 8))((v44 + v38 + 8) & v58, v36);
      goto LABEL_9;
    }
  }

  else
  {
    v45 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    v46 = *v45;
    if (*v45 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v46) = -1;
    }

    v47 = v46 + 1;
    if (*v44 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v47)
  {
    *v40 = *__src;
    *v44 = *v45;
    (*(v37 + 32))((v44 + v38 + 8) & v58, (v45 + v38 + 8) & v58, v36);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v40, __src, v43);
LABEL_12:
  v51 = (__src + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v40 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = *v51;
  v54 = *(v51 + 16);
  *(v52 + 32) = *(v51 + 32);
  *v52 = v53;
  *(v52 + 16) = v54;
  return a1;
}

uint64_t getEnumTagSinglePayload for InsettableGroupedListBody.TableViewRoot(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = v6 | 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((*(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-99 - v8) | v8) + 5) & 0xFFFFFFFFFFFFFFF8) + 34;
  v10 = (a2 - v7 + 0x10000) >> 16;
  if (v9 <= 3)
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

  if (v13 <= 1)
  {
    if (!v13)
    {
      goto LABEL_28;
    }

    v14 = *(a1 + v9);
    if (!*(a1 + v9))
    {
      goto LABEL_28;
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v9);
    if (v9 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return (v17 | v16) + v7;
  }

  if (v13 == 2)
  {
    v14 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = *(a1 + v9);
    if (v14)
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  v18 = ((((((((a1 + 17) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + v8 + 66) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v5 & 0x80000000) != 0)
  {
    v20 = (*(v4 + 48))((v18 + v6 + 8) & ~v6);
  }

  else
  {
    v19 = *v18;
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 + 1;
  }

  if (v20 >= 2)
  {
    return v20 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for InsettableGroupedListBody.TableViewRoot(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((((v10 + 16) & ~v10) + *(*(*(a4 + 24) - 8) + 64) + (((v10 | 7) + 98) & ~(v10 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 34;
  if (v8 - 1 >= a3)
  {
    v15 = 0;
    if (v9 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 0x10000) >> 16;
    if (v11 <= 3)
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
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v9 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v19 = ((((((((a1 + 17) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + (v10 | 7) + 66) & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v21 = *(v6 + 56);
        v22 = a2 + 1;

        v21((v19 + v10 + 8) & ~v10, v22);
      }

      else
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v20 = a2;
        }

        *v19 = v20;
      }

      return;
    }
  }

  v16 = a2 - v8;
  v17 = (a2 - v8) >> 16;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v18;
      }

      else
      {
        *&a1[v11] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v18;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v4 - 8);
  v9 = *(v8 + 80);
  if ((v7 | 7 | v9) == 7 && ((*(v8 + 80) | *(v6 + 80)) & 0x100000) == 0 && ((((((-99 - (v7 | 7)) | v7 | 7) - (((v7 + 16) & ~v7) + *(*(v5 - 8) + 64)) - 7) | 7) - v9 - 34) | v9) - *(*(v4 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v69 = *(v8 + 80);
    v63 = *(v5 - 8);
    __n = ((v7 + 16) & ~v7) + *(v63 + 64);
    v65 = v5;
    v66 = *(v4 - 8);
    v67 = v4;
    v61 = ~v7;
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = a2;
    v62 = *(v6 + 84);
    outlined copy of Environment<Bool>.Content();
    *a1 = v14;
    *(a1 + 8) = v15;
    v68 = a1;
    v17 = a1 & 0xFFFFFFFFFFFFFFF8;
    v16 &= 0xFFFFFFFFFFFFFFF8;
    v18 = *(v16 + 16);
    v19 = *(v16 + 25);
    v20 = *(v16 + 24);
    outlined copy of Environment<CGFloat?>.Content(v18, v20, v19);
    *(v17 + 16) = v18;
    *(v17 + 24) = v20;
    *(v17 + 25) = v19;
    v21 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
    v60 = v7;
    v22 = (v16 + 33) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    v28 = *(v22 + 32);
    v27 = *(v22 + 40);
    v29 = *(v22 + 48);
    v30 = *(v22 + 56);
    v58 = *(v22 + 64);
    v59 = *(v22 + 65);
    v31 = outlined copy of Environment<ListPadding>.Content(*v22, v24, v25, v26, v28, v27, v29, v30, v58, v59);
    *v21 = v23;
    *(v21 + 8) = v24;
    *(v21 + 16) = v25;
    *(v21 + 24) = v26;
    *(v21 + 32) = v28;
    *(v21 + 40) = v27;
    *(v21 + 48) = v29;
    *(v21 + 56) = v30;
    v32 = v21 + 73;
    v33 = v22 + 73;
    *(v21 + 64) = v58;
    v34 = ((v22 + 73) & 0xFFFFFFFFFFFFFFF8);
    v35 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v21 + 65) = v59;
    if (v62 < 0)
    {
      v39 = v63;
      v38 = v65;
      v37 = (*(v63 + 48))((v35 + v60 + 8) & v61, v31);
      v40 = v69;
      v41 = v60;
      v42 = v61;
    }

    else
    {
      v36 = *v35;
      if (*v35 >= 0xFFFFFFFF)
      {
        LODWORD(v36) = -1;
      }

      v37 = v36 + 1;
      v38 = v65;
      v39 = v63;
      v40 = v69;
      v41 = v60;
      v42 = v61;
    }

    v43 = ~v40;
    v44 = (v32 & 0xFFFFFFFFFFFFFFF8);
    if (v37)
    {
      v45 = __n;
      memcpy((v32 & 0xFFFFFFFFFFFFFFF8), v34, __n);
    }

    else
    {
      *v44 = *v34;
      v46 = ((v44 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v46 = *v35;
      v47 = v46 + v41;
      v48 = v35 + v41;
      v49 = v42;
      v50 = v47 + 8;
      v51 = v48 + 8;
      v52 = *(v39 + 16);

      v40 = v69;

      v52(v50 & v49, v51 & v49, v38);
      v45 = __n;
    }

    v53 = ((v32 | 7) + v45) & 0xFFFFFFFFFFFFFFF8;
    v54 = ((v33 | 7) + v45) & 0xFFFFFFFFFFFFFFF8;
    v55 = *v54;
    v56 = *(v54 + 16);
    *(v53 + 32) = *(v54 + 32);
    *v53 = v55;
    *(v53 + 16) = v56;
    (*(v66 + 16))((v53 + v40 + 34) & v43, (v54 + v40 + 34) & v43, v67);
    return v68;
  }

  else
  {
    v12 = *a2;
    *a1 = *a2;
    v13 = v12 + (((v7 | 7 | v9) + 16) & ~(v7 | 7 | v9));
  }

  return v13;
}

uint64_t assignWithCopy for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v6;
  outlined consume of Environment<Bool>.Content(v7, v8);
  v69 = a1;
  a1 &= 0xFFFFFFFFFFFFFFF8;
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v9 + 25);
  v11 = *(v9 + 24);
  outlined copy of Environment<CGFloat?>.Content(v10, v11, v5);
  v12 = *(a1 + 16);
  v13 = *(a1 + 25);
  *(a1 + 16) = v10;
  v14 = *(a1 + 24);
  *(a1 + 24) = v11;
  *(a1 + 25) = v5;
  outlined consume of Environment<CGFloat?>.Content(v12, v14, v13);
  v15 = a1 + 33;
  v16 = (v9 + 33) & 0xFFFFFFFFFFFFFFF8;
  v65 = *(v16 + 8);
  v67 = *v16;
  v17 = v15 & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v16 + 16);
  v19 = *(v16 + 24);
  v20 = *(v16 + 32);
  v21 = *(v16 + 40);
  v22 = *(v16 + 48);
  v23 = *(v16 + 56);
  LOBYTE(v10) = *(v16 + 64);
  LOBYTE(v5) = *(v16 + 65);
  outlined copy of Environment<ListPadding>.Content(*v16, v65, v18, v19, v20, v21, v22, v23, v10, v5);
  v24 = *v17;
  v25 = *(v17 + 8);
  v26 = *(v17 + 16);
  v27 = *(v17 + 24);
  v28 = *(v17 + 32);
  v29 = *(v17 + 40);
  v30 = *(v17 + 48);
  v31 = *(v17 + 56);
  v32 = *(v17 + 64);
  v33 = *(v17 + 65);
  *v17 = v67;
  *(v17 + 8) = v65;
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v20;
  *(v17 + 40) = v21;
  v34 = a3;
  *(v17 + 48) = v22;
  *(v17 + 56) = v23;
  *(v17 + 64) = v10;
  *(v17 + 65) = v5;
  v35.n128_f64[0] = outlined consume of Environment<ListPadding>.Content(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v36 = *(a3 + 24);
  v37 = *(v36 - 8);
  v38 = *(v37 + 80);
  v39 = (v38 | 7) + 66;
  v40 = ((v39 + v17) & ~(v38 | 7));
  v41 = ((v39 + v16) & ~(v38 | 7));
  v42 = *(v37 + 84);
  v43 = *(v37 + 64);
  v44 = ((v38 + 16) & ~v38) + v43;
  v45 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v68 = ~v38;
  if ((v42 & 0x80000000) != 0)
  {
    v64 = ((v38 + 16) & ~v38) + v43;
    v49 = *(v37 + 48);
    v50 = *(a3 + 24);
    v63 = v49((v45 + v38 + 8) & ~v38, v42, v36, v35);
    v46 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
    v48 = (v49)((v46 + v38 + 8) & ~v38, v42, v50);
    v36 = v50;
    v44 = v64;
    v34 = a3;
    if (!v63)
    {
LABEL_5:
      v66 = v36;
      if (!v48)
      {
        *v40 = *v41;

        *v45 = *v46;

        (*(v37 + 24))((v45 + v38 + 8) & v68, (v46 + v38 + 8) & v68, v66);
        goto LABEL_12;
      }

      (*(v37 + 8))((v45 + v38 + 8) & v68, v66);
      goto LABEL_9;
    }
  }

  else
  {
    v46 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
    v47 = *v46;
    if (*v46 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v47) = -1;
    }

    v48 = v47 + 1;
    if (*v45 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v48)
  {
    *v40 = *v41;
    *v45 = *v46;
    v51 = v45 + v38 + 8;
    v52 = v46 + v38 + 8;
    v53 = *(v37 + 16);
    v54 = v44;
    v55 = v36;

    v56 = v55;
    v44 = v54;
    v53(v51 & v68, v52 & v68, v56);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v40, v41, v44);
LABEL_12:
  v57 = (v40 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v41 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = *v58;
  v60 = *(v58 + 16);
  *(v57 + 32) = *(v58 + 32);
  *v57 = v59;
  *(v57 + 16) = v60;
  v61 = *(*(v34 + 16) - 8);
  (*(v61 + 24))((*(v61 + 80) + 34 + v57) & ~*(v61 + 80), (*(v61 + 80) + 34 + v58) & ~*(v61 + 80));
  return v69;
}

uint64_t initializeWithTake for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v4 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v4 + 16) = v5;
  v6 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v7 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 32);
  v8 = *(v7 + 48);
  v10 = *(v7 + 16);
  *(v6 + 64) = *(v7 + 64);
  *(v6 + 32) = v9;
  *(v6 + 48) = v8;
  *(v6 + 16) = v10;
  *v6 = *v7;
  v11 = *(a3 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = (v13 | 7) + 66;
  v15 = ((v14 + v6) & ~(v13 | 7));
  v16 = ((v14 + v7) & ~(v13 | 7));
  v17 = ~v13;
  v18 = (v13 + 16) & ~v13;
  v19 = *(v12 + 64);
  v20 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v12 + 84) & 0x80000000) == 0)
  {
    v21 = *v20;
    if (*v20 >= 0xFFFFFFFF)
    {
      LODWORD(v21) = -1;
    }

    v22 = v18 + v19;
    if (v21 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v15 = *v16;
    v23 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v20;
    (*(v12 + 32))((v23 + v13 + 8) & v17, (v20 + v13 + 8) & v17, v11);
    goto LABEL_8;
  }

  v22 = v18 + v19;
  if (!(*(v12 + 48))((v20 + v13 + 8) & v17))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v15, v16, v22);
LABEL_8:
  v24 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = *(*(a3 + 16) - 8);
  (*(v28 + 32))((*(v28 + 80) + 34 + v24) & ~*(v28 + 80), (*(v28 + 80) + 34 + v25) & ~*(v28 + 80));
  return a1;
}

uint64_t assignWithTake for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 &= 0xFFFFFFFFFFFFFFF8;
  v11 = *(v4 + 24);
  v12 = *(v4 + 25);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 25);
  *(v10 + 16) = *(v4 + 16);
  v15 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 24) = v11;
  *(v10 + 25) = v12;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = (v4 + 33) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 64);
  v18 = *(v16 + 65);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v24 = *(v19 + 32);
  v25 = *(v19 + 40);
  v26 = *(v19 + 48);
  v27 = *(v19 + 56);
  v28 = *(v19 + 64);
  v29 = *(v19 + 65);
  v30 = *(v16 + 16);
  v31 = *(v16 + 32);
  v32 = *(v16 + 48);
  *v19 = *v16;
  *(v19 + 16) = v30;
  *(v19 + 32) = v31;
  *(v19 + 48) = v32;
  *(v19 + 64) = v17;
  *(v19 + 65) = v18;
  v33.n128_f64[0] = outlined consume of Environment<ListPadding>.Content(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v34 = *(a3 + 24);
  v35 = *(v34 - 8);
  v36 = *(v35 + 80);
  v37 = (v36 | 7) + 66;
  v38 = ((v37 + v19) & ~(v36 | 7));
  v39 = ((v37 + v16) & ~(v36 | 7));
  v40 = *(v35 + 84);
  v55 = ~v36;
  __n = ((v36 + 16) & ~v36) + *(v35 + 64);
  v41 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v40 & 0x80000000) != 0)
  {
    v54 = v39;
    v45 = *(v35 + 48);
    v53 = v45((v41 + v36 + 8) & ~v36, v40, v34, v33);
    v42 = ((v54 + 15) & 0xFFFFFFFFFFFFFFF8);
    v44 = (v45)((v42 + v36 + 8) & ~v36, v40, v34);
    v39 = v54;
    if (!v53)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v44)
    {
      goto LABEL_9;
    }

    *v38 = *v39;
    *v41 = *v42;
    (*(v35 + 32))((v41 + v36 + 8) & v55, (v42 + v36 + 8) & v55, v34);
LABEL_12:
    v46 = __n;
    goto LABEL_13;
  }

  v42 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  v43 = *v42;
  if (*v42 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v43) = -1;
  }

  v44 = v43 + 1;
  if (*v41 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v44)
  {
    *v38 = *v39;

    *v41 = *v42;

    (*(v35 + 40))((v41 + v36 + 8) & v55, (v42 + v36 + 8) & v55, v34);
    goto LABEL_12;
  }

  (*(v35 + 8))((v41 + v36 + 8) & v55, v34);
LABEL_9:
  v46 = __n;
  memcpy(v38, v39, __n);
LABEL_13:
  v47 = (v38 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v39 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = *v48;
  v50 = *(v48 + 16);
  *(v47 + 32) = *(v48 + 32);
  *v47 = v49;
  *(v47 + 16) = v50;
  v51 = *(*(a3 + 16) - 8);
  (*(v51 + 40))((*(v51 + 80) + 34 + v47) & ~*(v51 + 80), (*(v51 + 80) + 34 + v48) & ~*(v51 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for InsettableGroupedListBody.CollectionViewBody(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v5 + 80);
  v13 = *(v10 + 80);
  if (v8 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 | 7;
  v16 = ((v12 + 16) & ~v12) + *(*(*(a3 + 24) - 8) + 64) + 7;
  v17 = v13 + 34;
  v18 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v19 = ((v17 + ((v16 + ((v15 + 98) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(*(v9 - 8) + 64);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 < 2)
    {
LABEL_31:
      v27 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + v15 + 66) & ~v15;
      if (v8 >= v11)
      {
        v30 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v6 & 0x80000000) != 0)
        {
          v32 = (*(v5 + 48))((v30 + v12 + 8) & ~v12);
        }

        else
        {
          v31 = *v30;
          if (v31 >= 0xFFFFFFFF)
          {
            LODWORD(v31) = -1;
          }

          v32 = v31 + 1;
        }

        if (v32 >= 2)
        {
          return v32 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v28 = ~v13;
        v29 = *(v10 + 48);

        return v29((v17 + ((v16 + v27) & 0xFFFFFFFFFFFFFFF8)) & v28, v11, v9);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_31;
  }

LABEL_18:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
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

  return v14 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for InsettableGroupedListBody.CollectionViewBody(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v10 + 80);
  v14 = v8 - 1;
  if (v8 - 1 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v8 - 1;
  }

  v16 = v12 | 7;
  v17 = ((v12 + 16) & ~v12) + *(*(*(a4 + 24) - 8) + 64);
  v18 = ((v13 + 34 + ((v17 + 7 + (((v12 | 7) + 98) & ~(v12 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(*(v9 - 8) + 64);
  v19 = a3 >= v15;
  v20 = a3 - v15;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v24 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v21 = v25;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v15 < a2)
  {
    v22 = ~v15 + a2;
    if (v18 >= 4)
    {
      bzero(a1, v18);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v23 = (v22 >> (8 * v18)) + 1;
    if (v18)
    {
      v26 = v22 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v26;
          if (v21 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v22;
          if (v21 > 1)
          {
LABEL_14:
            if (v21 == 2)
            {
              *(a1 + v18) = v23;
            }

            else
            {
              *(a1 + v18) = v23;
            }

            return;
          }
        }

LABEL_60:
        if (v21)
        {
          *(a1 + v18) = v23;
        }

        return;
      }

      *a1 = v26;
      *(a1 + 2) = BYTE2(v26);
    }

    if (v21 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v18) = 0;
  }

  else if (v21)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  v27 = ~v16;
  v28 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + v16 + 66;
  v29 = (v28 & v27);
  if (v14 < v11)
  {
    v30 = *(v10 + 56);

    v30((v13 + 34 + (&v29[v17 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v13);
    return;
  }

  if (v14 < a2)
  {
    if (v17 <= 3)
    {
      v31 = ~(-1 << (8 * v17));
    }

    else
    {
      v31 = -1;
    }

    if (!v17)
    {
      return;
    }

    v32 = v31 & (a2 - v8);
    if (v17 <= 3)
    {
      v33 = v17;
    }

    else
    {
      v33 = 4;
    }

    bzero((v28 & v27), v17);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
LABEL_49:
        *v29 = v32;
        return;
      }

LABEL_74:
      *v29 = v32;
      return;
    }

    goto LABEL_75;
  }

  if (a2 >= v8)
  {
    if (v17 <= 3)
    {
      v35 = ~(-1 << (8 * v17));
    }

    else
    {
      v35 = -1;
    }

    if (!v17)
    {
      return;
    }

    v32 = v35 & (a2 - v8);
    if (v17 <= 3)
    {
      v33 = v17;
    }

    else
    {
      v33 = 4;
    }

    bzero(v29, v17);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_49;
      }

      goto LABEL_74;
    }

LABEL_75:
    if (v33 == 3)
    {
      *v29 = v32;
      v29[2] = BYTE2(v32);
    }

    else
    {
      *v29 = v32;
    }

    return;
  }

  v34 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v36 = *(v6 + 56);
    v37 = a2 + 1;

    v36((v34 + v12 + 8) & ~v12, v37);
  }

  else if (((a2 + 1) & 0x80000000) != 0)
  {
    *v34 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v34 = a2;
  }
}

_OWORD *initializeBufferWithCopyOfBuffer for ContentConfigurationBasedRootEnvironment(_OWORD *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v7;
    v8 = a2[5];
    *(v4 + 4) = a2[4];
    *(v4 + 5) = v8;
    *(v4 + 6) = a2[6];
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 8) = a2[8];
    v10 = a2 + 9;
    v9 = a2[9];

    if (v9 == 1)
    {
      *(v4 + 9) = *v10;
      *(v4 + 80) = *(a2 + 80);
    }

    else
    {
      *(v4 + 9) = v9;
      *(v4 + 80) = *(a2 + 80);
    }

    *(v4 + 81) = *(a2 + 81);
    v12 = *(a3 + 24);
    v13 = type metadata accessor for UICellConfigurationState();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      type metadata accessor for UICellConfigurationState?(0);
      memcpy(v4 + v12, a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(v4 + v12, a2 + v12, v13);
      (*(v14 + 56))(v4 + v12, 0, 1, v13);
    }
  }

  return v4;
}

uint64_t initializeWithTake for ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t assignWithTake for ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 72);
  v8 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  if (v8 == 1)
  {
    goto LABEL_4;
  }

  if (v7 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
LABEL_4:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_6;
  }

  *(a1 + 72) = v7;

  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  *(a1 + 81) = *(a2 + 81);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for UICellConfigurationState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_11;
  }

  if (v14)
  {
LABEL_11:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v9), (a2 + v9), *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v11 + 32))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

uint64_t assignWithCopy for ListContentStyling(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v4 = (a1 + 72);
  v5 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v7 = (a2 + 72);
  v6 = *(a2 + 72);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      *(a1 + 80) = *(a2 + 80);
      *v4 = v8;
    }

    else
    {
      *(a1 + 72) = v6;
      *(a1 + 80) = *(a2 + 80);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
    v9 = *(a2 + 80);
    *v4 = *v7;
    *(a1 + 80) = v9;
  }

  else
  {
    *(a1 + 72) = v6;

    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

uint64_t assignWithTake for ListContentStyling(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v5 = *(a2 + 72);
  v6 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  if (v6 != 1)
  {
    if (v5 != 1)
    {
      *(a1 + 72) = v5;

      *(a1 + 80) = *(a2 + 80);
      return a1;
    }

    outlined destroy of ListItemTint(a1 + 72);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for SectionInsetMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SectionInsetMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 34) = v3;
  return result;
}

uint64_t getEnumTag for SectionInsetMode(uint64_t a1)
{
  if (*(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for SectionInsetMode(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
    *(result + 33) = 1;
  }

  else
  {
    *(result + 33) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SectionInsetMode and conformance SectionInsetMode()
{
  result = lazy protocol witness table cache variable for type SectionInsetMode and conformance SectionInsetMode;
  if (!lazy protocol witness table cache variable for type SectionInsetMode and conformance SectionInsetMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionInsetMode, &type metadata for SectionInsetMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionInsetMode and conformance SectionInsetMode);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for InsettableGroupedListBody<A, B>.TableViewRoot(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for InsettableGroupedListBody<A, B>.TableViewRoot);
  *(a1 + 8) = result;
  return result;
}

void one-time initialization function for defaultValue(uint64_t a1)
{
  static EdgeInsets.zero.getter();
  unk_1EAA38218 = 0;
  xmmword_1EAA38208 = 0uLL;
  byte_1EAA38220 = 0;
  *&xmmword_1EAA38228 = 0x4024000000000000;
  *(&xmmword_1EAA38228 + 1) = 1;
  byte_1EAA38238 = 0;
  *&static ProminentHeaderStylingKey.defaultValue = v1;
  *(&static ProminentHeaderStylingKey.defaultValue + 1) = v2;
  qword_1EAA381F8 = v3;
  unk_1EAA38200 = v4;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ProminentHeaderStylingKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = xmmword_1EAA38208;
  v2 = xmmword_1EAA38228;
  v9[3] = unk_1EAA38218;
  v9[4] = xmmword_1EAA38228;
  v3 = byte_1EAA38238;
  v10 = byte_1EAA38238;
  v4 = static ProminentHeaderStylingKey.defaultValue;
  v5 = *&qword_1EAA381F8;
  v9[0] = static ProminentHeaderStylingKey.defaultValue;
  v9[1] = *&qword_1EAA381F8;
  v9[2] = xmmword_1EAA38208;
  *(a1 + 48) = unk_1EAA38218;
  *(a1 + 64) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v1;
  *(a1 + 80) = v3;
  *a1 = v4;
  return outlined init with copy of ListContentStyling(v9, v8);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance DisableCollectionViewGroupedListsFeature(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

uint64_t closure #2 in FallbackLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 25) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t assignWithCopy for ResolvedFallbackLabel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 9);
  v5 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v5, v4);
  v6 = *a1;
  v7 = *(a1 + 9);
  *a1 = v3;
  v8 = *(a1 + 8);
  *(a1 + 8) = v5;
  *(a1 + 9) = v4;
  outlined consume of Environment<CGFloat?>.Content(v6, v8, v7);
  return a1;
}

uint64_t assignWithTake for ResolvedFallbackLabel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  v5 = *a1;
  v6 = *(a1 + 9);
  *a1 = *a2;
  v7 = *(a1 + 8);
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  outlined consume of Environment<CGFloat?>.Content(v5, v7, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedFallbackLabel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
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

uint64_t storeEnumTagSinglePayload for ResolvedFallbackLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput();
    v5[1] = lazy protocol witness table accessor for type ResolvedFallbackLabel and conformance ResolvedFallbackLabel();
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, type metadata accessor for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>, MEMORY[0x1E697E830]);
    type metadata accessor for LabelStyleWritingModifier<TitleOnlyLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle, &type metadata for TitleAndIconLabelStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for LabelStyleWritingModifier<TitleOnlyLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleOnlyLabelStyle>, lazy protocol witness table accessor for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, &type metadata for TitleOnlyLabelStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle()
{
  result = lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle;
  if (!lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TitleOnlyLabelStyle, &type metadata for TitleOnlyLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle, &type metadata for TitleAndIconLabelStyle);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, type metadata accessor for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel();
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleOnlyLabelStyle>, lazy protocol witness table accessor for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, &type metadata for TitleOnlyLabelStyle);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel()
{
  result = lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsDefaultButtonLabel, &type metadata for IsDefaultButtonLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsDefaultButtonLabel, &type metadata for IsDefaultButtonLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsDefaultButtonLabel, &type metadata for IsDefaultButtonLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsDefaultButtonLabel, &type metadata for IsDefaultButtonLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsDefaultButtonLabel, &type metadata for IsDefaultButtonLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel);
  }

  return result;
}

uint64_t ResolvedFallbackLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8) | (*(v1 + 9) << 8), &v7);
  if (v7 > 2)
  {
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  if (v3 == 1)
  {
    KeyPath = 0;
    v5 = 0;
    result = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = swift_getKeyPath();
    result = swift_getKeyPath();
  }

  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  *(a1 + 42) = v3 ^ 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>, type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, type metadata accessor for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)
  {
    type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>();
    type metadata accessor for LabelStyleWritingModifier<TitleOnlyLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>, lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, &type metadata for IconOnlyLabelStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>);
    }
  }
}

void type metadata accessor for LabelStyleWritingModifier<TitleOnlyLabelStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for LabelStyleWritingModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>();
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>, lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, &type metadata for IconOnlyLabelStyle);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t AnyRowSource.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for RowSourceFormula(0, a2, a3, a4);
  AGCreateWeakAttribute();
  return v4;
}

uint64_t AnyColumnSource.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ColumnSourceFormula(0, a2, a3, a4);
  AGCreateWeakAttribute();
  return v4;
}

uint64_t View.tableStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TableStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t static TableStyleConfiguration.RowsAlias._makeRows(content:inputs:)(int *a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(a2 + 80);
  v50 = *(a2 + 96);
  v51 = v3;
  v5 = *(a2 + 112);
  v52 = *(a2 + 128);
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v46 = *(a2 + 32);
  v47 = v6;
  v8 = *(a2 + 48);
  v9 = *(a2 + 80);
  v48 = *(a2 + 64);
  v49 = v9;
  v10 = *(a2 + 16);
  v45[0] = *a2;
  v45[1] = v10;
  v41 = v50;
  v42 = v5;
  v43 = *(a2 + 128);
  v37 = v46;
  v38 = v8;
  v39 = v48;
  v40 = v4;
  v11 = *a1;
  v53 = *(a2 + 144);
  v44 = *(a2 + 144);
  v35 = v45[0];
  v36 = v7;
  outlined init with copy of _TableRowInputs(v45, v33);
  lazy protocol witness table accessor for type RowSourceInput and conformance RowSourceInput();
  PropertyList.subscript.getter();
  if (!*&v31[0])
  {
    *&v33[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v12 = *(*&v31[0] + 16);
  v13 = *(*&v31[0] + 24);
  v14 = *(*&v31[0] + 32);
  v15 = *(*&v31[0] + 40);

  *&v31[0] = v15;
  *&v33[0] = v15;
  PropertyList.subscript.setter();
  if (!v12)
  {
LABEL_5:
    PreferencesOutputs.init()();
    goto LABEL_6;
  }

  v29[6] = v41;
  v29[7] = v42;
  v29[8] = v43;
  v29[2] = v37;
  v29[3] = v38;
  v29[4] = v39;
  v29[5] = v40;
  v29[0] = v35;
  v29[1] = v36;
  v24 = v41;
  v25 = v42;
  v26 = v43;
  v20 = v37;
  v21 = v38;
  v22 = v39;
  v23 = v40;
  v28 = v11;
  v30 = v44;
  v27 = v44;
  v18 = v35;
  v19 = v36;
  v16 = *(v13 + 8);
  outlined init with copy of _TableRowInputs(v29, v33);
  v16(&v28, v12, v13, v14, &v18, v12, v13);
  v31[6] = v24;
  v31[7] = v25;
  v31[8] = v26;
  v32 = v27;
  v31[2] = v20;
  v31[3] = v21;
  v31[4] = v22;
  v31[5] = v23;
  v31[0] = v18;
  v31[1] = v19;
  outlined destroy of _TableRowInputs(v31);
LABEL_6:
  v33[6] = v41;
  v33[7] = v42;
  v33[8] = v43;
  v34 = v44;
  v33[2] = v37;
  v33[3] = v38;
  v33[4] = v39;
  v33[5] = v40;
  v33[0] = v35;
  v33[1] = v36;
  return outlined destroy of _TableRowInputs(v33);
}

uint64_t static TableStyleConfiguration.ColumnsAlias._makeContent(content:inputs:)(int *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v43 = *(a2 + 32);
  v44 = v4;
  v6 = *(a2 + 48);
  v45 = *(a2 + 64);
  v7 = *(a2 + 16);
  v42[0] = *a2;
  v42[1] = v7;
  v38 = v43;
  v39 = v6;
  v40 = *(a2 + 64);
  v8 = *a1;
  v46 = *(a2 + 80);
  v41 = *(a2 + 80);
  v36 = v42[0];
  v37 = v5;
  v47[1] = v5;
  v47[2] = v43;
  v47[0] = v42[0];
  v34 = v5;
  v35 = v43;
  v33 = v42[0];
  outlined init with copy of _TableColumnInputs(v42, &v26);
  outlined init with copy of _GraphInputs(v47, &v26);
  lazy protocol witness table accessor for type ColumnSourceInput and conformance ColumnSourceInput();
  PropertyList.subscript.getter();
  if (v32)
  {
    v9 = v32[2];
    v10 = v32[3];
    v12 = v32[4];
    v11 = v32[5];

    v32 = v11;
  }

  else
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
  }

  *&v26 = v11;
  PropertyList.subscript.setter();
  v13 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v13;
  v25[2] = *(a2 + 32);
  outlined destroy of _GraphInputs(v25);
  v36 = v33;
  v37 = v34;
  v38 = v35;
  if (v9)
  {
    v22 = v8;
    v23[2] = v38;
    v23[3] = v39;
    v23[4] = v40;
    v24 = v41;
    v23[0] = v36;
    v23[1] = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v16 = v36;
    v17 = v37;
    v14 = *(v10 + 8);
    outlined init with copy of _TableColumnInputs(v23, &v26);
    v14(&v22, v9, v10, v12, &v16, v9, v10);
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v26 = v16;
    v27 = v17;
    outlined destroy of _TableColumnInputs(&v26);
  }

  else
  {
    PreferencesOutputs.init()();
  }

  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v26 = v36;
  v27 = v37;
  return outlined destroy of _TableColumnInputs(&v26);
}

uint64_t outlined destroy of Binding<AnySelectionManager>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI7BindingVyAA19AnySelectionManagerVGMaTm_0(0, a2, a3, MEMORY[0x1E6981948]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t destroy for TableStyleConfiguration(void *a1)
{
  result = a1[1];
  if (result)
  {

    result = __swift_destroy_boxed_opaque_existential_1(a1 + 2);
  }

  if (a1[8])
  {
  }

  if (a1[11])
  {
  }

  return result;
}

uint64_t initializeWithCopy for TableStyleConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = v4;
    v5 = *(a2 + 5);
    *(a1 + 40) = v5;
    v6 = v5;
    v7 = **(v5 - 8);

    v7(a1 + 16, a2 + 2, v6);
    v8 = a2[8];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = a2[9];
    v9 = a2[11];
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = *(a2 + 6);
    *(a1 + 80) = *(a2 + 5);
    *(a1 + 96) = v13;
    return a1;
  }

  v12 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 16) = v12;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = a2[6];
  v8 = a2[8];
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v8;
  *(a1 + 72) = a2[9];

  v9 = a2[11];
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v9;
  v11 = a2[12];
  v10 = a2[13];
  *(a1 + 96) = v11;
  *(a1 + 104) = v10;

  return a1;
}

uint64_t assignWithCopy for TableStyleConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (*(a1 + 8))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = a2[1];

      __swift_assign_boxed_opaque_existential_1((a1 + 16), a2 + 2);
    }

    else
    {
      outlined destroy of Binding<AnySelectionManager>(a1, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      v9 = *a2;
      *(a1 + 48) = a2[6];
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
      *a1 = v9;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    v5 = a2[5];
    *(a1 + 40) = v5;
    *(a1 + 48) = a2[6];
    v6 = **(v5 - 8);

    v6(a1 + 16, a2 + 2, v5);
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    *(a1 + 48) = a2[6];
    *(a1 + 16) = v11;
    *(a1 + 32) = v12;
    *a1 = v10;
  }

  v13 = a2[8];
  if (*(a1 + 64))
  {
    if (v13)
    {
      *(a1 + 56) = a2[7];

      *(a1 + 64) = a2[8];

      *(a1 + 72) = a2[9];
    }

    else
    {
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1 + 56);
      v14 = a2[9];
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 72) = v14;
    }
  }

  else if (v13)
  {
    *(a1 + 56) = a2[7];
    *(a1 + 64) = a2[8];
    *(a1 + 72) = a2[9];
  }

  else
  {
    v15 = *(a2 + 7);
    *(a1 + 72) = a2[9];
    *(a1 + 56) = v15;
  }

  v16 = a2[11];
  if (*(a1 + 88))
  {
    if (v16)
    {
      *(a1 + 80) = a2[10];

      *(a1 + 88) = a2[11];

      *(a1 + 96) = a2[12];

      *(a1 + 104) = a2[13];
    }

    else
    {
      outlined destroy of Binding<AnySelectionManager>(a1 + 80, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
      v17 = *(a2 + 6);
      *(a1 + 80) = *(a2 + 5);
      *(a1 + 96) = v17;
    }
  }

  else if (v16)
  {
    *(a1 + 80) = a2[10];
    *(a1 + 88) = a2[11];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = a2[13];
  }

  else
  {
    v18 = *(a2 + 6);
    *(a1 + 80) = *(a2 + 5);
    *(a1 + 96) = v18;
  }

  return a1;
}

uint64_t assignWithTake for TableStyleConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = v4;

      __swift_destroy_boxed_opaque_existential_1((a1 + 16));
      v5 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }

    outlined destroy of Binding<AnySelectionManager>(a1, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
  }

  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
LABEL_6:
  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 64))
  {
    v7 = *(a2 + 64);
    if (v7)
    {
      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = v7;

      *(a1 + 72) = *(a2 + 72);

      if (!*(a1 + 88))
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1 + 56);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  if (!*(a1 + 88))
  {
LABEL_15:
    v9 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v9;
    return a1;
  }

LABEL_12:
  v8 = *(a2 + 88);
  if (!v8)
  {
    outlined destroy of Binding<AnySelectionManager>(a1 + 80, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
    goto LABEL_15;
  }

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = v8;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for TableStyleConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for TableStyleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedTableStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedTableStyle and conformance ResolvedTableStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedTableStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedTableStyle and conformance ResolvedTableStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t TableStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v12, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TableStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TableStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance RowSourceInput(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance RowSourceInput(a1, a2, a3, a4, &lazy cache variable for type metadata for Stack<AnyRowSource>, &type metadata for AnyRowSource);
}

void *static RowSourceFormula.makeRows(content:source:inputs:)(void x0_0, void x1_0, void x2_0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {

    return PreferencesOutputs.init()();
  }

  else
  {
    _GraphValue.init(_:)();
    v9 = *(a2 + 112);
    v13[6] = *(a2 + 96);
    v13[7] = v9;
    v13[8] = *(a2 + 128);
    v14 = *(a2 + 144);
    v10 = *(a2 + 48);
    v13[2] = *(a2 + 32);
    v13[3] = v10;
    v11 = *(a2 + 80);
    v13[4] = *(a2 + 64);
    v13[5] = v11;
    v12 = *(a2 + 16);
    v13[0] = *a2;
    v13[1] = v12;
    return (*(a4 + 48))(v15, v13, a3, a4);
  }
}

uint64_t static RowSourceFormula.tableRowCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a3 + 56))(v8);
}

uint64_t static RowSourceFormula.containsOutlineSymbol(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a3 + 64))(v8) & 1;
}

unint64_t lazy protocol witness table accessor for type TableStyleModifier<AutomaticTableStyle> and conformance TableStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type TableStyleModifier<AutomaticTableStyle> and conformance TableStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type TableStyleModifier<AutomaticTableStyle> and conformance TableStyleModifier<A>)
  {
    type metadata accessor for TableStyleModifier<AutomaticTableStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for TableStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableStyleModifier<AutomaticTableStyle> and conformance TableStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for TableStyleModifier<AutomaticTableStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TableStyleModifier<AutomaticTableStyle>)
  {
    v2 = lazy protocol witness table accessor for type AutomaticTableStyle and conformance AutomaticTableStyle();
    v4 = type metadata accessor for TableStyleModifier(a1, &type metadata for AutomaticTableStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TableStyleModifier<AutomaticTableStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticTableStyle and conformance AutomaticTableStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticTableStyle and conformance AutomaticTableStyle;
  if (!lazy protocol witness table cache variable for type AutomaticTableStyle and conformance AutomaticTableStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomaticTableStyle, &type metadata for AutomaticTableStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticTableStyle and conformance AutomaticTableStyle);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance ColumnSourceInput(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance RowSourceInput(a1, a2, a3, a4, &lazy cache variable for type metadata for Stack<AnyColumnSource>, &type metadata for AnyColumnSource);
}

void _s7SwiftUI7BindingVyAA19AnySelectionManagerVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *static ColumnSourceFormula.makeColumns(content:source:inputs:)(void x0_0, void x1_0, void x2_0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {

    return PreferencesOutputs.init()();
  }

  else
  {
    _GraphValue.init(_:)();
    v9 = *(a2 + 48);
    v11[2] = *(a2 + 32);
    v11[3] = v9;
    v11[4] = *(a2 + 64);
    v12 = *(a2 + 80);
    v10 = *(a2 + 16);
    v11[0] = *a2;
    v11[1] = v10;
    return (*(a4 + 64))(v13, v11, a3, a4);
  }
}

uint64_t static ColumnSourceFormula.tableColumnCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v7 = *(a1 + 80);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return (*(a3 + 72))(v6);
}

uint64_t specialized static TableStyleConfiguration.ColumnsAlias._tableColumnCount(inputs:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v39 = *(a1 + 32);
  v40 = v2;
  v4 = *(a1 + 48);
  v41 = *(a1 + 64);
  v5 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v5;
  v34 = v39;
  v35 = v4;
  v36 = *(a1 + 64);
  v42 = *(a1 + 80);
  v37 = *(a1 + 80);
  v32 = v38[0];
  v33 = v3;
  v43[1] = v3;
  v43[2] = v39;
  v43[0] = v38[0];
  v30 = v3;
  v31 = v39;
  v29 = v38[0];
  outlined init with copy of _TableColumnInputs(v38, &v22);
  outlined init with copy of _GraphInputs(v43, &v22);
  lazy protocol witness table accessor for type ColumnSourceInput and conformance ColumnSourceInput();
  PropertyList.subscript.getter();
  if (v28)
  {
    v6 = v28[5];
    v7 = v28[2];
    v8 = v28[3];

    v28 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *&v22 = v6;
  PropertyList.subscript.setter();
  v9 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v9;
  v21[2] = *(a1 + 32);
  outlined destroy of _GraphInputs(v21);
  v32 = v29;
  v33 = v30;
  v34 = v31;
  if (v7)
  {
    v19[2] = v34;
    v19[3] = v35;
    v19[4] = v36;
    v20 = v37;
    v19[0] = v32;
    v19[1] = v33;
    v15 = v34;
    v16 = v35;
    v17 = v36;
    v18 = v37;
    v13 = v32;
    v14 = v33;
    v10 = *(v8 + 16);
    outlined init with copy of _TableColumnInputs(v19, &v22);
    v11 = v10(&v13, v7, v8);
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v22 = v13;
    v23 = v14;
    outlined destroy of _TableColumnInputs(&v22);
  }

  else
  {
    v11 = 0;
  }

  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v22 = v32;
  v23 = v33;
  outlined destroy of _TableColumnInputs(&v22);
  return v11;
}

uint64_t specialized static TableStyleConfiguration.RowsAlias._tableRowCount(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 80);
  v54 = *(a1 + 96);
  v55 = v1;
  v3 = *(a1 + 112);
  v56 = *(a1 + 128);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v50 = *(a1 + 32);
  v51 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v52 = *(a1 + 64);
  v53 = v7;
  v8 = *(a1 + 16);
  v49[0] = *a1;
  v49[1] = v8;
  v45 = v54;
  v46 = v3;
  v47 = *(a1 + 128);
  v41 = v50;
  v42 = v6;
  v43 = v52;
  v44 = v2;
  v57 = *(a1 + 144);
  v48 = *(a1 + 144);
  v39 = v49[0];
  v40 = v5;
  outlined init with copy of _TableRowInputs(v49, &v29);
  lazy protocol witness table accessor for type RowSourceInput and conformance RowSourceInput();
  PropertyList.subscript.getter();
  if (*&v27[0])
  {
    v9 = *(*&v27[0] + 40);
    v10 = *(*&v27[0] + 16);
    v11 = *(*&v27[0] + 24);

    *&v27[0] = v9;
    *&v29 = v9;
    PropertyList.subscript.setter();
    if (v10)
    {
      v25[6] = v45;
      v25[7] = v46;
      v25[8] = v47;
      v25[2] = v41;
      v25[3] = v42;
      v25[4] = v43;
      v25[5] = v44;
      v25[0] = v39;
      v25[1] = v40;
      v21 = v45;
      v22 = v46;
      v23 = v47;
      v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v44;
      v26 = v48;
      v24 = v48;
      v15 = v39;
      v16 = v40;
      v12 = *(v11 + 16);
      outlined init with copy of _TableRowInputs(v25, &v29);
      v13 = v12(&v15, v10, v11);
      v27[6] = v21;
      v27[7] = v22;
      v27[8] = v23;
      v28 = v24;
      v27[2] = v17;
      v27[3] = v18;
      v27[4] = v19;
      v27[5] = v20;
      v27[0] = v15;
      v27[1] = v16;
      outlined destroy of _TableRowInputs(v27);
      v35 = v45;
      v36 = v46;
      v37 = v47;
      v38 = v48;
      v31 = v41;
      v32 = v42;
      v33 = v43;
      v34 = v44;
      v29 = v39;
      v30 = v40;
      outlined destroy of _TableRowInputs(&v29);
      return v13;
    }
  }

  else
  {
    *&v29 = 0;
    PropertyList.subscript.setter();
  }

  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v29 = v39;
  v30 = v40;
  outlined destroy of _TableRowInputs(&v29);
  return 0;
}

uint64_t specialized static TableStyleConfiguration.RowsAlias._containsOutlineSymbol(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 80);
  v54 = *(a1 + 96);
  v55 = v1;
  v3 = *(a1 + 112);
  v56 = *(a1 + 128);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v50 = *(a1 + 32);
  v51 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v52 = *(a1 + 64);
  v53 = v7;
  v8 = *(a1 + 16);
  v49[0] = *a1;
  v49[1] = v8;
  v45 = v54;
  v46 = v3;
  v47 = *(a1 + 128);
  v41 = v50;
  v42 = v6;
  v43 = v52;
  v44 = v2;
  v57 = *(a1 + 144);
  v48 = *(a1 + 144);
  v39 = v49[0];
  v40 = v5;
  outlined init with copy of _TableRowInputs(v49, &v29);
  lazy protocol witness table accessor for type RowSourceInput and conformance RowSourceInput();
  PropertyList.subscript.getter();
  if (!*&v27[0])
  {
    *&v29 = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v9 = *(*&v27[0] + 40);
  v10 = *(*&v27[0] + 16);
  v11 = *(*&v27[0] + 24);

  *&v27[0] = v9;
  *&v29 = v9;
  PropertyList.subscript.setter();
  if (!v10)
  {
LABEL_5:
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v29 = v39;
    v30 = v40;
    outlined destroy of _TableRowInputs(&v29);
    v13 = 0;
    return v13 & 1;
  }

  v25[6] = v45;
  v25[7] = v46;
  v25[8] = v47;
  v25[2] = v41;
  v25[3] = v42;
  v25[4] = v43;
  v25[5] = v44;
  v25[0] = v39;
  v25[1] = v40;
  v21 = v45;
  v22 = v46;
  v23 = v47;
  v17 = v41;
  v18 = v42;
  v19 = v43;
  v20 = v44;
  v26 = v48;
  v24 = v48;
  v15 = v39;
  v16 = v40;
  v12 = *(v11 + 24);
  outlined init with copy of _TableRowInputs(v25, &v29);
  v13 = v12(&v15, v10, v11);
  v27[6] = v21;
  v27[7] = v22;
  v27[8] = v23;
  v28 = v24;
  v27[2] = v17;
  v27[3] = v18;
  v27[4] = v19;
  v27[5] = v20;
  v27[0] = v15;
  v27[1] = v16;
  outlined destroy of _TableRowInputs(v27);
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v29 = v39;
  v30 = v40;
  outlined destroy of _TableRowInputs(&v29);
  return v13 & 1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ModifierKeyAlternateModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ModifierKeyAlternateModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t specialized Sequence.reversed()(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = __CocoaSet.count.getter();
    if (v19)
    {
      v20 = v19;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5();
      specialized Array._copyContents(initializing:)(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = __CocoaSet.count.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x18D00E9C0]();
          v11 = MEMORY[0x18D00E9C0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

char *specialized Sequence.reversed()(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);

  v6 = *(v4 + 2);
  if (v6 < 2)
  {
    return v4;
  }

  v7 = 0;
  v8 = v6 >> 1;
  v9 = v6 - 1;
  v10 = 88 * v6 - 56;
  for (i = 32; ; i += 88)
  {
    if (v7 == v9)
    {
      goto LABEL_5;
    }

    v12 = *(v4 + 2);
    if (v7 >= v12)
    {
      break;
    }

    result = outlined init with copy of NavigationViewDestinationView(&v4[i], v14);
    if (v9 >= v12)
    {
      goto LABEL_14;
    }

    outlined init with copy of NavigationViewDestinationView(&v4[v10], v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    result = outlined assign with take of NavigationViewDestinationView(v13, &v4[i]);
    if (v9 >= *(v4 + 2))
    {
      goto LABEL_15;
    }

    result = outlined assign with take of NavigationViewDestinationView(v14, &v4[v10]);
LABEL_5:
    ++v7;
    --v9;
    v10 -= 88;
    if (v8 == v7)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void specialized Sequence.reversed()(void *a1, double a2)
{
  v3 = type metadata accessor for IntelligenceElement();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v30 = v24 - v9;
  v10 = a1[2];
  if (v10 < 2)
  {
    return;
  }

  v11 = 0;
  v12 = v10 >> 1;
  v13 = v10 - 1;
  v25 = v10 >> 1;
  v26 = v7;
  v24[1] = v7 + 16;
  v27 = (v7 + 40);
  while (1)
  {
    if (v11 == v13)
    {
      goto LABEL_5;
    }

    v14 = a1[2];
    if (v11 >= v14)
    {
      break;
    }

    v15 = v5;
    v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = a1 + v29;
    v17 = *(v7 + 72);
    v18 = a1;
    v19 = *(v7 + 16);
    v28 = v17 * v11;
    v19(v30, v16 + v17 * v11, v3, v8);
    if (v13 >= v14)
    {
      goto LABEL_14;
    }

    v20 = v17 * v13;
    v21 = v16 + v17 * v13;
    v5 = v15;
    (v19)(v15, v21, v3);
    a1 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
    }

    v22 = a1 + v29;
    v23 = *v27;
    (*v27)(a1 + v29 + v28, v5, v3);
    if (v13 >= a1[2])
    {
      goto LABEL_15;
    }

    v23(v22 + v20, v30, v3);
    v12 = v25;
    v7 = v26;
LABEL_5:
    ++v11;
    --v13;
    if (v12 == v11)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

char *specialized Sequence.reversed()(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 48 * v2 - 16;
  for (i = 32; ; i += 48)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = *(v1 + 2);
    if (v3 >= v8)
    {
      break;
    }

    result = outlined init with copy of AnyAccessibilityAction(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    outlined init with copy of AnyAccessibilityAction(&v1[v6], v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    result = outlined assign with take of AnyAccessibilityAction(v9, &v1[i]);
    if (v5 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    result = outlined assign with take of AnyAccessibilityAction(v10, &v1[v6]);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 48;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t AccessibilityAction.matches<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v40 - v10;
  v46 = *(v9 - 8);
  v12 = v46;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 16))(&v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v22);
  v25 = swift_dynamicCast();
  v26 = v7;
  v27 = *(v7 + 56);
  v27(v20, v25 ^ 1u, 1, a2);
  (*(v26 + 16))(v17, v48, a2);
  v27(v17, 0, 1, a2);
  v28 = *(TupleTypeMetadata2 + 48);
  v47 = v20;
  v48 = v12;
  v29 = v12;
  v30 = v9;
  v31 = *(v29 + 16);
  v31(v11, v20, v30);
  v31(&v11[v28], v17, v30);
  v44 = v26;
  v32 = *(v26 + 48);
  if (v32(v11, 1, a2) != 1)
  {
    v31(v45, v11, v30);
    if (v32(&v11[v28], 1, a2) != 1)
    {
      v35 = v44;
      v36 = v41;
      (*(v44 + 32))(v41, &v11[v28], a2);
      v37 = v45;
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v35 + 8);
      v38(v36, a2);
      v33 = *(v46 + 8);
      v33(v17, v30);
      v38(v37, a2);
      v33(v11, v30);
      goto LABEL_8;
    }

    v33 = *(v46 + 8);
    v33(v17, v30);
    (*(v44 + 8))(v45, a2);
    goto LABEL_6;
  }

  v33 = *(v46 + 8);
  v33(v17, v30);
  if (v32(&v11[v28], 1, a2) != 1)
  {
LABEL_6:
    (*(v43 + 8))(v11, TupleTypeMetadata2);
    v34 = 0;
    goto LABEL_8;
  }

  v33(v11, v30);
  v34 = 1;
LABEL_8:
  v33(v47, v30);
  return v34 & 1;
}

uint64_t AccessibilityActionResult.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t AnyAccessibilityAction.matches<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 80))(a1, a2, a3, v7, v8) & 1;
}

char *specialized AccessibilityNode.sendAction<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v22 = *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v23 = v6;

  v7 = EnvironmentValues.isEnabled.getter();

  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  AccessibilityNode.attachment.getter(&v22);
  outlined init with copy of AccessibilityProperties(&v22, v26);
  outlined destroy of AccessibilityAttachment(&v22);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  if (a4 == 1)
  {
    outlined destroy of AccessibilityProperties(v26);
    result = specialized Sequence.reversed()(v22);
    v9 = result;
  }

  else
  {
    result = outlined destroy of AccessibilityProperties(v26);
    v9 = v22;
  }

  v17 = *(v9 + 2);
  if (!v17)
  {
LABEL_13:

LABEL_14:
    v15 = 0;
    return (v15 & 1);
  }

  v16 = 0;
  v10 = 0;
  v11 = (v9 + 32);
  do
  {
    if (v10 >= *(v9 + 2))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v11, &v22);
    v26[0] = a1;
    v26[1] = a2;
    v26[2] = a3;
    v26[3] = a4;
    v12 = a4;
    v13 = v25;
    __swift_project_boxed_opaque_existential_1(&v22, v24);
    v14 = *(v13 + 40);
    lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();
    v14(&v21, v26);
    result = outlined destroy of AnyAccessibilityAction(&v22);
    if (v21 == 3)
    {
      v16 = 1;
    }

    else
    {
      if (v21 == 2)
      {

        v15 = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return (v15 & 1);
        }

        goto LABEL_20;
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    ++v10;
    v11 += 48;
    a4 = v12;
  }

  while (v17 != v10);

  v15 = v16;
  if ((v16 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
LABEL_20:
    swift_getObjectType();
    v22 = 0;
    LOBYTE(v23) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  return (v15 & 1);
}

uint64_t specialized AccessibilityNode.sendAction<A>(_:value:)(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v17 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v18 = v3;

  v4 = EnvironmentValues.isEnabled.getter();

  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  AccessibilityNode.attachment.getter(&v17);
  outlined init with copy of AccessibilityProperties(&v17, v21);
  outlined destroy of AccessibilityAttachment(&v17);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  result = outlined destroy of AccessibilityProperties(v21);
  v6 = v17;
  v7 = *(v17 + 16);
  if (!v7)
  {
LABEL_10:

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  v15 = 0;
  v8 = 0;
  v9 = v17 + 32;
  do
  {
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v9, &v17);
    v16 = a1;
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v17, v19);
    v12 = *(v11 + 40);
    v13 = lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction();
    v12(v21, v13, &v16, &type metadata for AccessibilityScrollAction, v13, v10, v11);
    result = outlined destroy of AnyAccessibilityAction(&v17);
    if (LOBYTE(v21[0]) == 3)
    {
      v15 = 1;
    }

    else
    {
      if (LOBYTE(v21[0]) == 2)
      {

        v14 = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return v14 & 1;
        }

        goto LABEL_17;
      }

      if ((v21[0] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    ++v8;
    v9 += 48;
  }

  while (v7 != v8);

  v14 = v15;
  if ((v15 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
LABEL_17:
    swift_getObjectType();
    v17 = 0;
    LOBYTE(v18) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  return v14 & 1;
}

uint64_t specialized AccessibilityNode.sendAction<A>(_:value:)(char a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v21 = *(v2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v22 = v4;

  v5 = EnvironmentValues.isEnabled.getter();

  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  AccessibilityNode.attachment.getter(&v21);
  outlined init with copy of AccessibilityProperties(&v21, v25);
  outlined destroy of AccessibilityAttachment(&v21);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  result = outlined destroy of AccessibilityProperties(v25);
  v7 = v21;
  v8 = *(v21 + 16);
  if (!v8)
  {
LABEL_10:

LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  v17 = 0;
  v9 = 0;
  v10 = v21 + 32;
  v11 = a2 & 1;
  do
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v10, &v21);
    v20 = a1;
    v19 = v11;
    v13 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(&v21, v23);
    v14 = *(v12 + 40);
    v15 = lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction();
    v14(v25, &v20, &v19, &type metadata for AccessibilityAdjustableAction, v15, v13, v12);
    result = outlined destroy of AnyAccessibilityAction(&v21);
    if (LOBYTE(v25[0]) == 3)
    {
      v17 = 1;
    }

    else
    {
      if (LOBYTE(v25[0]) == 2)
      {

        v16 = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return v16 & 1;
        }

        goto LABEL_17;
      }

      if ((v25[0] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    ++v9;
    v10 += 48;
  }

  while (v8 != v9);

  v16 = v17;
  if ((v17 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
LABEL_17:
    swift_getObjectType();
    v21 = 0;
    LOBYTE(v22) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  return v16 & 1;
}

uint64_t specialized AccessibilityNode.sendAction<A>(_:value:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v18 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v19 = v3;

  v4 = EnvironmentValues.isEnabled.getter();

  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  AccessibilityNode.attachment.getter(&v18);
  outlined init with copy of AccessibilityProperties(&v18, v22);
  outlined destroy of AccessibilityAttachment(&v18);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  result = outlined destroy of AccessibilityProperties(v22);
  v6 = v18;
  v16 = *(v18 + 16);
  if (!v16)
  {
LABEL_10:

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  v7 = 0;
  v15 = 0;
  v8 = v18 + 32;
  do
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v8, &v18);
    v9 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v9;
    v23 = *(a1 + 32);
    v11 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v12 = *(v10 + 40);
    v13 = lazy protocol witness table accessor for type AccessibilityZoomAction and conformance AccessibilityZoomAction();
    v12(&v17, v13, v22, &type metadata for AccessibilityZoomAction, v13, v11, v10);
    result = outlined destroy of AnyAccessibilityAction(&v18);
    if (v17 == 3)
    {
      v15 = 1;
    }

    else
    {
      if (v17 == 2)
      {

        v14 = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return v14 & 1;
        }

        goto LABEL_17;
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    ++v7;
    v8 += 48;
  }

  while (v16 != v7);

  v14 = v15;
  if ((v15 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
LABEL_17:
    swift_getObjectType();
    v18 = 0;
    LOBYTE(v19) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  return v14 & 1;
}

uint64_t AnyAccessibilityAction.perform<A>(action:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  return (*(v10 + 40))(a1, a2, a3, a4, v9, v10);
}

BOOL protocol witness for AccessibilityAction.impliedRole(for:) in conformance AccessibilityAppIntentHandler(__int128 *a1)
{
  v2 = v1[1];
  v3 = v1[3];
  v15 = v1[2];
  v16 = v3;
  v4 = v1[3];
  v17 = v1[4];
  v5 = v1[1];
  v14[0] = *v1;
  v14[1] = v5;
  v11 = v15;
  v12 = v4;
  v13 = v1[4];
  v9 = v14[0];
  v10 = v2;
  v8 = *a1;
  outlined init with copy of AccessibilityAppIntentAction(v14, v18);
  v6 = AccessibilityAppIntentAction.impliedRole(for:)(&v8);
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  v18[0] = v9;
  v18[1] = v10;
  outlined destroy of AccessibilityAppIntentAction(v18);
  return v6;
}

uint64_t AccessibilityActionHandler.impliedRole(for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v17 - v9;
  v12 = *a1;
  v11 = a1[1];
  (*(a3 + 32))(a2, a3, v8);
  v17[0] = v12;
  v17[1] = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 24))(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v14;
}

_BYTE *protocol witness for ExpressibleByBooleanLiteral.init(BOOLeanLiteral:) in conformance AccessibilityActionResult@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t assignWithCopy for AnyAccessibilityAction(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for AnyAccessibilityAction(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyAccessibilityAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for AnyAccessibilityAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AccessibilityActionHandler.name.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(a2 + 32))(a1, a2, v5);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for AccessibilityKindActionProvider, &protocol descriptor for AccessibilityKindActionProvider);
  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v16, v19);
    v6 = v20;
    v7 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v7 + 8))(&v16, v6, v7);
    v8 = v16;
    v9 = v17;
    if (*(&v17 + 1) >= 5uLL)
    {
      v11 = *(a2 + 48);

      outlined copy of Text.Storage(v8, *(&v8 + 1), v9 & 1);
      v12 = v11(a1, a2);
      v14 = v13;
      v15 = v8;
      outlined consume of AccessibilityActionKind.ActionKind(v8, *(&v8 + 1), v9, *(&v9 + 1));
      if (v14)
      {
        outlined consume of Text.Storage(v8, *(&v8 + 1), v9 & 1);

        v15 = v12;
      }

      __swift_destroy_boxed_opaque_existential_1(v19);
      return v15;
    }

    else
    {
      outlined consume of AccessibilityActionKind.ActionKind(v16, *(&v16 + 1), v17, *(&v17 + 1));
      __swift_destroy_boxed_opaque_existential_1(v19);
      return 0;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    outlined destroy of IndexingIterator<_ArchivedViewStates>(&v16, type metadata accessor for AccessibilityKindActionProvider?);
    return (*(a2 + 48))(a1, a2);
  }
}

double AccessibilityActionHandler.asCombinedAction(name:properties:child:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double AccessibilityActionStorage.asCustomAction(category:fallbackLabel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  LOBYTE(v11) = a4;
  v45 = a3;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v18 = *v16;
  v17 = v16[1];
  v19 = v16[2];
  v43 = v16[3];
  v44 = v19;
  (*(v20 + 16))(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v21, v14);
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_0(0, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityVoidAction>, lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction, &type metadata for AccessibilityVoidAction, type metadata accessor for AccessibilityActionStorage);
  if (swift_dynamicCast())
  {
    v50 = v56;
    v51 = v57;
    *v52 = v58[0];
    *(&v52[1] + 4) = *(v58 + 12);
    v46 = *&v52[5];
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v22 = *(&v53 + 1);
    v42 = v18;
    if (*(&v53 + 1) >= 5uLL)
    {
      LOBYTE(v11) = v47;
      v45 = *(&v46 + 1);
      v41 = v46;
      outlined copy of Text.Storage(v46, *(&v46 + 1), v47 & 1);

      goto LABEL_6;
    }

    v23 = (v8 + *(a6 + 40));
    v22 = v23[3];
    if (v22)
    {
      v24 = v23[1];
      v11 = v23[2];
      v41 = *v23;
      v45 = v24;
      outlined copy of Text?(v41, v24, v11, v22);
LABEL_6:
      v40 = v22;
LABEL_7:
      v25 = v11 & 1;
      v26 = *(v8 + *(a6 + 44));
      v27 = v52[2];
      v38 = v25;
      v39 = v52[1];
      v28 = AccessibilityActionHandlerSeed++;
      type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(0);
      *(a7 + 24) = v29;
      *(a7 + 32) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
      v30 = swift_allocObject();
      *a7 = v30;
      v32 = v42;
      v31 = v43;
      v33 = v44;
      outlined copy of AccessibilityActionCategory?(v42, v17, v44, v43);

      outlined destroy of IndexingIterator<TableColumnCollection>(&v46, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityVoidAction>, lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction, &type metadata for AccessibilityVoidAction, type metadata accessor for AccessibilityActionStorage);
      v34 = v45;
      *(v30 + 16) = v41;
      *(v30 + 24) = v34;
      v35 = v39;
      v36 = v40;
      *(v30 + 32) = v38;
      *(v30 + 40) = v36;
      *(v30 + 48) = v32;
      *(v30 + 56) = v17;
      *(v30 + 64) = v33;
      *(v30 + 72) = v31;
      result = 0.0;
      *(v30 + 80) = 0u;
      *(v30 + 96) = 0u;
      *(v30 + 112) = v26;
      *(v30 + 120) = v35;
      *(v30 + 128) = v27;
      *(v30 + 136) = v28;
      *(a7 + 40) = 0;
      return result;
    }

    if (a5)
    {
      v40 = a5;
      v41 = a2;
      outlined copy of Text?(a2, v45, v11, a5);
      goto LABEL_7;
    }

    outlined destroy of IndexingIterator<TableColumnCollection>(&v46, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityVoidAction>, lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction, &type metadata for AccessibilityVoidAction, type metadata accessor for AccessibilityActionStorage);
  }

  result = 0.0;
  *(a7 + 25) = 0u;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

BOOL static AccessibilityActionStorage.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccessibilityActionStorage(0, a3, a4, a4);
  if (*(a1 + *(v6 + 52)) != *(a2 + *(v6 + 52)))
  {
    return 0;
  }

  v7 = v6;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = v7[9];
  v10 = *(a1 + v8);
  v9 = *(a1 + v8 + 8);
  v11 = *(a1 + v8 + 16);
  v12 = *(a1 + v8 + 24);
  v13 = (a2 + v8);
  v14 = *v13;
  v15 = v13[1];
  v17 = v13[2];
  v16 = v13[3];
  v52 = v17;
  if (v12 == 2)
  {
    v18 = v10;
    v19 = v10;
    v20 = v9;
    v21 = v9;
    v22 = v11;
    v23 = v16;
    outlined copy of AccessibilityActionCategory?(v19, v21, v11, 2uLL);
    if (v23 == 2)
    {
      v12 = 2;
      outlined copy of AccessibilityActionCategory?(v14, v15, v52, 2uLL);
LABEL_16:
      outlined consume of AccessibilityActionCategory?(v18, v20, v22, v12);
      goto LABEL_17;
    }

    v28 = v23;
    v27 = v52;
    v26 = v28;
    outlined copy of AccessibilityActionCategory?(v14, v15, v52, v28);
    goto LABEL_9;
  }

  if (v16 == 2)
  {
    v24 = v10;
    v25 = v9;
    v18 = v10;
    v20 = v9;
    v22 = v11;
    v26 = 2;
    outlined copy of AccessibilityActionCategory?(v24, v25, v11, v12);
    v27 = v52;
    outlined copy of AccessibilityActionCategory?(v14, v15, v52, 2uLL);
    outlined copy of AccessibilityActionCategory?(v18, v20, v22, v12);
    outlined consume of AccessibilityActionCategory.Category(v18, v20, v22, v12);
LABEL_9:
    outlined consume of AccessibilityActionCategory?(v18, v20, v22, v12);
    v29 = v14;
    v30 = v15;
    v31 = v27;
    v32 = v26;
LABEL_28:
    outlined consume of AccessibilityActionCategory?(v29, v30, v31, v32);
    return 0;
  }

  v51 = v11;
  if (!v12)
  {
    v34 = v16;
    outlined copy of AccessibilityActionCategory?(v10, v9, v11, 0);
    v33 = 0;
    if (!v34)
    {
      goto LABEL_15;
    }

LABEL_27:
    outlined copy of AccessibilityActionCategory?(v14, v15, v52, v34);
    outlined copy of AccessibilityActionCategory?(v10, v9, v51, v33);
    outlined consume of AccessibilityActionCategory?(v14, v15, v52, v34);
    outlined consume of AccessibilityActionCategory.Category(v10, v9, v51, v12);
    v29 = v10;
    v30 = v9;
    v31 = v51;
    v32 = v12;
    goto LABEL_28;
  }

  if (v12 == 1)
  {
    v33 = 1;
    v34 = v16;
    outlined copy of AccessibilityActionCategory?(v10, v9, v11, 1uLL);
    if (v34 != 1)
    {
      goto LABEL_27;
    }

LABEL_15:
    outlined copy of AccessibilityActionCategory?(v14, v15, v52, v12);
    outlined copy of AccessibilityActionCategory?(v10, v9, v51, v12);
    outlined consume of AccessibilityActionCategory?(v14, v15, v52, v12);
    v18 = v10;
    v35 = v10;
    v20 = v9;
    v36 = v9;
    v22 = v51;
    outlined consume of AccessibilityActionCategory.Category(v35, v36, v51, v12);
    goto LABEL_16;
  }

  v34 = v16;
  if (v16 < 2)
  {
    outlined copy of AccessibilityActionCategory?(v10, v9, v11, v12);
    v33 = v12;
    goto LABEL_27;
  }

  outlined copy of AccessibilityActionCategory?(v10, v9, v11, v12);
  outlined copy of AccessibilityActionCategory?(v14, v15, v52, v34);
  outlined copy of AccessibilityActionCategory?(v10, v9, v51, v12);
  v50 = static Text.== infix(_:_:)();
  outlined consume of AccessibilityActionCategory?(v14, v15, v52, v34);
  outlined consume of AccessibilityActionCategory.Category(v10, v9, v51, v12);
  outlined consume of AccessibilityActionCategory?(v10, v9, v51, v12);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v37 = v7[10];
  v38 = *(a1 + v37 + 24);
  v39 = (a2 + v37);
  v40 = v39[3];
  if (!v38)
  {
    if (!v40)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v40)
  {
    return 0;
  }

  v41 = *v39;
  v42 = v39[1];
  v43 = v39[2];
  outlined copy of Text.Storage(*v39, v42, v39[2] & 1);

  v44 = static Text.== infix(_:_:)();
  outlined consume of Text.Storage(v41, v42, v43 & 1);

  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v45 = v7[11];
  v46 = *(a1 + v45);
  v47 = *(a2 + v45);
  result = (v46 | v47) == 0;
  if (v46)
  {
    if (v47)
    {

      v49 = static Image.== infix(_:_:)();

      return v49 & 1;
    }
  }

  return result;
}

uint64_t AccessibilityActionReference.image.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  if (!v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      AccessibilityNode.attachment.getter(v7);

      outlined init with copy of AccessibilityProperties(v7, v8);
      outlined destroy of AccessibilityAttachment(v7);
      v5 = AccessibilityProperties.images.getter();
      outlined destroy of AccessibilityProperties(v8);
      if (*(v5 + 16))
      {
        v2 = *(v5 + 32);
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void AccessibilityActionReference.init<A>(_:_:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for AccessibilityActionReference(0, a3, AssociatedConformanceWitness, v12);
  swift_unknownObjectWeakInit();
  (*(a5 + 32))(a4, a5);
  (*(a5 + 40))(v23, a4, a5);
  v14 = (a6 + v13[9]);
  v15 = v23[1];
  *v14 = v23[0];
  v14[1] = v15;
  v16 = (*(a5 + 48))(a4, a5);
  v17 = (a6 + v13[10]);
  *v17 = v16;
  v17[1] = v18;
  v17[2] = v19;
  v17[3] = v20;
  v21 = (*(a5 + 56))(a4, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  *(a6 + v13[11]) = v21;
  swift_unknownObjectWeakAssign();
}

void AccessibilityActionReference.perform(value:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, v9 = AccessibilityNode.sendAction<A>(_:value:)(v3, a1, *(a2 + 16), *(a2 + 24)), v8, (v9 & 1) != 0))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *a3 = v10;
}

BOOL static AccessibilityActionReference.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for AccessibilityActionReference(0, a3, a4, v8);
  v10 = *(v9 + 36);
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v14 = *(a1 + v10 + 24);
  v15 = (a2 + v10);
  v17 = *v15;
  v16 = v15[1];
  v19 = v15[2];
  v18 = v15[3];
  if (v14 == 2)
  {
    v43 = v9;
    outlined copy of AccessibilityActionCategory?(v12, v11, v13, 2uLL);
    if (v18 == 2)
    {
      v14 = 2;
      outlined copy of AccessibilityActionCategory?(v17, v16, v19, 2uLL);
LABEL_15:
      outlined consume of AccessibilityActionCategory?(v12, v11, v13, v14);
      goto LABEL_16;
    }

    outlined copy of AccessibilityActionCategory?(v17, v16, v19, v18);
    goto LABEL_8;
  }

  if (v18 == 2)
  {
    outlined copy of AccessibilityActionCategory?(v12, v11, v13, v14);
    outlined copy of AccessibilityActionCategory?(v17, v16, v19, 2uLL);
    outlined copy of AccessibilityActionCategory?(v12, v11, v13, v14);
    outlined consume of AccessibilityActionCategory.Category(v12, v11, v13, v14);
LABEL_8:
    outlined consume of AccessibilityActionCategory?(v12, v11, v13, v14);
    v20 = v17;
    v21 = v16;
    v22 = v19;
    v23 = v18;
LABEL_28:
    outlined consume of AccessibilityActionCategory?(v20, v21, v22, v23);
    return 0;
  }

  if (!v14)
  {
    v43 = v9;
    outlined copy of AccessibilityActionCategory?(v12, v11, v13, 0);
    v41 = 0;
    if (!v18)
    {
      goto LABEL_14;
    }

LABEL_27:
    outlined copy of AccessibilityActionCategory?(v17, v16, v19, v18);
    outlined copy of AccessibilityActionCategory?(v12, v11, v13, v41);
    outlined consume of AccessibilityActionCategory?(v17, v16, v19, v18);
    outlined consume of AccessibilityActionCategory.Category(v12, v11, v13, v14);
    v20 = v12;
    v21 = v11;
    v22 = v13;
    v23 = v14;
    goto LABEL_28;
  }

  if (v14 == 1)
  {
    v41 = 1;
    v43 = v9;
    outlined copy of AccessibilityActionCategory?(v12, v11, v13, 1uLL);
    if (v18 != 1)
    {
      goto LABEL_27;
    }

LABEL_14:
    outlined copy of AccessibilityActionCategory?(v17, v16, v19, v14);
    outlined copy of AccessibilityActionCategory?(v12, v11, v13, v14);
    outlined consume of AccessibilityActionCategory?(v17, v16, v19, v14);
    outlined consume of AccessibilityActionCategory.Category(v12, v11, v13, v14);
    goto LABEL_15;
  }

  if (v18 < 2)
  {
    outlined copy of AccessibilityActionCategory?(v12, v11, v13, v14);
    v41 = v14;
    goto LABEL_27;
  }

  v43 = v9;
  outlined copy of AccessibilityActionCategory?(v12, v11, v13, v14);
  outlined copy of AccessibilityActionCategory?(v17, v16, v19, v18);
  outlined copy of AccessibilityActionCategory?(v12, v11, v13, v14);
  v42 = static Text.== infix(_:_:)();
  outlined consume of AccessibilityActionCategory?(v17, v16, v19, v18);
  outlined consume of AccessibilityActionCategory.Category(v12, v11, v13, v14);
  outlined consume of AccessibilityActionCategory?(v12, v11, v13, v14);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v24 = v43;
  v25 = *(v43 + 40);
  v26 = *(a1 + v25 + 24);
  v27 = (a2 + v25);
  v28 = v27[3];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = *v27;
    v30 = v27[1];
    v31 = v27[2];
    outlined copy of Text.Storage(*v27, v30, v27[2] & 1);

    v32 = static Text.== infix(_:_:)();
    outlined consume of Text.Storage(v29, v30, v31 & 1);

    v24 = v43;
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = *(v24 + 44);
  v34 = *(a2 + v33);
  if (*(a1 + v33))
  {
    if (!v34)
    {
      return 0;
    }

    v35 = static Image.== infix(_:_:)();

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v38 = swift_unknownObjectWeakLoadStrong();
  v39 = v38;
  if (Strong)
  {
    if (v38)
    {
      type metadata accessor for AccessibilityNode();
      v40 = static NSObject.== infix(_:_:)();

      return (v40 & 1) != 0;
    }

    v39 = Strong;
LABEL_40:

    return 0;
  }

  if (v38)
  {
    goto LABEL_40;
  }

  return 1;
}

double protocol witness for AccessibilityActionHandler.category.getter in conformance AccessibilityActionStorage<A>@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return outlined copy of AccessibilityActionCategory?(v4, v5, v6, v7);
}

uint64_t protocol witness for AccessibilityActionHandler.label.getter in conformance AccessibilityActionStorage<A>(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  outlined copy of Text?(*v2, v2[1], v2[2], v2[3]);
  return v3;
}

uint64_t AnyAccessibilityAction.ConcreteBase.perform(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-v10];
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20[-v14];
  outlined init with copy of Any(a1, v20);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    (*(v5 + 64))(v15, v6, v5);
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v17(v11, 1, 1, AssociatedTypeWitness);
    result = (*(v9 + 8))(v11, v8);
    *a3 = 1;
  }

  return result;
}