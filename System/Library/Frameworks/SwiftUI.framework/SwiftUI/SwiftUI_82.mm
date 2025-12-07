uint64_t specialized GesturePhase.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v21 = a2;
  v22 = a1;
  type metadata accessor for (DragGesture.Value, DragGesture.Value)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E697DE58];
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  outlined init with copy of RotateGesture.Value?(v4, &v21 - v14, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), v11, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of (DragGesture.Value, DragGesture.Value)(v15, v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
      v22(v10);
      outlined destroy of DragGesture.Value(v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    }

    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
  }

  else if (EnumCaseMultiPayload)
  {
    outlined init with take of (DragGesture.Value, DragGesture.Value)(v15, v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v22(v10);
    outlined destroy of DragGesture.Value(v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
  }

  else
  {
    if ((*(v8 + 48))(v15, 1, v7) == 1)
    {
      v17 = type metadata accessor for RotateGesture.Value(0);
      (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
      type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
      swift_storeEnumTagMultiPayload();
      return outlined destroy of RotateGesture.Value?(v15, &lazy cache variable for type metadata for (DragGesture.Value, DragGesture.Value)?, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E69E6720], v18);
    }

    outlined init with take of (DragGesture.Value, DragGesture.Value)(v15, v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v22(v10);
    outlined destroy of DragGesture.Value(v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v20 = type metadata accessor for RotateGesture.Value(0);
    (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
  }

  return swift_storeEnumTagMultiPayload();
}

void specialized VelocitySampler.addSample(_:time:)(double a1, double a2, double a3)
{
  if (*(v3 + 104))
  {
    goto LABEL_2;
  }

  v4 = *(v3 + 96);
  if (v4 > a3)
  {
    _StringGuts.grow(_:)(18);
    MEMORY[0x18D00C9B0](0x2064696C61766E49, 0xEF20656C706D6173);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    _StringGuts.grow(_:)(27);
    MEMORY[0x18D00C9B0](0x6D69742068746977, 0xEA00000000002065);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](0x207473616C203E20, 0xED000020656D6974);
    _print_unlocked<A, B>(_:_:)();

    MEMORY[0x18D00C9B0](0, 0xE000000000000000);

    MEMORY[0x18D009810](0, 0xE000000000000000);

    return;
  }

  if (a3 - v4 >= 2.22044605e-16)
  {
LABEL_2:
    *(v3 + 96) = a3;
    *(v3 + 104) = 0;
    if (*(v3 + 88))
    {
      if (*(v3 + 56))
      {
        if (*(v3 + 24))
        {
LABEL_5:
          *v3 = a1;
          *(v3 + 8) = a2;
          *(v3 + 16) = a3;
          *(v3 + 24) = 0;
          return;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v5 = *(v3 + 48);
      v6 = *(v3 + 56);
      *v3 = *(v3 + 32);
      *(v3 + 16) = v5;
      *(v3 + 24) = v6;
      v7 = *(v3 + 80);
      *(v3 + 32) = *(v3 + 64);
      *(v3 + 48) = v7;
      *(v3 + 56) = 0;
    }

LABEL_9:
    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
    *(v3 + 80) = a3;
    *(v3 + 88) = 0;
    return;
  }

  if ((*(v3 + 88) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v3 + 56))
  {
    goto LABEL_5;
  }

LABEL_13:
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 56) = 0;
}

uint64_t specialized VelocitySampler.addSample(_:time:)(double a1, double a2)
{
  if (*(v2 + 80))
  {
    goto LABEL_2;
  }

  v4 = *(v2 + 72);
  if (v4 > a2)
  {
    _StringGuts.grow(_:)(18);
    MEMORY[0x18D00C9B0](0x2064696C61766E49, 0xEF20656C706D6173);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    _StringGuts.grow(_:)(27);
    MEMORY[0x18D00C9B0](0x6D69742068746977, 0xEA00000000002065);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](0x207473616C203E20, 0xED000020656D6974);
    _print_unlocked<A, B>(_:_:)();

    MEMORY[0x18D00C9B0](0, 0xE000000000000000);

    MEMORY[0x18D009810](0, 0xE000000000000000);
  }

  if (a2 - v4 >= 2.22044605e-16)
  {
LABEL_2:
    *(v2 + 72) = a2;
    *(v2 + 80) = 0;
    v3 = *(v2 + 40);
    if (*(v2 + 64))
    {
      if (*(v2 + 40))
      {
        if (*(v2 + 16))
        {
LABEL_5:
          *v2 = a1;
          *(v2 + 8) = a2;
          *(v2 + 16) = 0;
          return result;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *v2 = *(v2 + 24);
      *(v2 + 16) = v3;
      *(v2 + 24) = *(v2 + 48);
      *(v2 + 40) = 0;
    }

LABEL_9:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
    *(v2 + 64) = 0;
    return result;
  }

  if ((*(v2 + 64) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v2 + 40))
  {
    goto LABEL_5;
  }

LABEL_13:
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  *(v2 + 40) = 0;
  return result;
}

{
  if (*(v2 + 80))
  {
    goto LABEL_2;
  }

  v4 = *(v2 + 72);
  if (v4 > a2)
  {
    _StringGuts.grow(_:)(18);
    MEMORY[0x18D00C9B0](0x2064696C61766E49, 0xEF20656C706D6173);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    _StringGuts.grow(_:)(27);
    MEMORY[0x18D00C9B0](0x6D69742068746977, 0xEA00000000002065);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](0x207473616C203E20, 0xED000020656D6974);
    _print_unlocked<A, B>(_:_:)();

    MEMORY[0x18D00C9B0](0, 0xE000000000000000);

    MEMORY[0x18D009810](0, 0xE000000000000000);
  }

  if (a2 - v4 >= 2.22044605e-16)
  {
LABEL_2:
    *(v2 + 72) = a2;
    *(v2 + 80) = 0;
    v3 = *(v2 + 40);
    if (*(v2 + 64))
    {
      if (*(v2 + 40))
      {
        if (*(v2 + 16))
        {
LABEL_5:
          *v2 = a1;
          *(v2 + 8) = a2;
          *(v2 + 16) = 0;
          return result;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *v2 = *(v2 + 24);
      *(v2 + 16) = v3;
      *(v2 + 24) = *(v2 + 48);
      *(v2 + 40) = 0;
    }

LABEL_9:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
    *(v2 + 64) = 0;
    return result;
  }

  if ((*(v2 + 64) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v2 + 40))
  {
    goto LABEL_5;
  }

LABEL_13:
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  *(v2 + 40) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type RotationGesture and conformance RotationGesture()
{
  result = lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture;
  if (!lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RotationGesture, &type metadata for RotationGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture;
  if (!lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RotationGesture, &type metadata for RotationGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture);
  }

  return result;
}

__n128 RotationGesture.internalBody.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for RotateGesture.Value(0);
  MapGesture.init(_:)();
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

double specialized implicit closure #1 in RotationGesture.internalBody.getter@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + *(type metadata accessor for RotateGesture.Value(0) + 20));
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for RotateGesture.Value(uint64_t a1)
{
  result = type metadata singleton initialization cache for RotateGesture.Value;
  if (!type metadata singleton initialization cache for RotateGesture.Value)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 protocol witness for PubliclyPrimitiveGesture.internalBody.getter in conformance RotationGesture@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for RotateGesture.Value(0);
  MapGesture.init(_:)();
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t RotateGesture.Value.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RotateGesture.Value.time.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RotateGesture.Value.rotation.setter(double a1)
{
  result = type metadata accessor for RotateGesture.Value(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t RotateGesture.Value.velocity.setter(double a1)
{
  result = type metadata accessor for RotateGesture.Value(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t RotateGesture.Value.startAnchor.setter(double a1, double a2)
{
  result = type metadata accessor for RotateGesture.Value(0);
  v6 = (v2 + *(result + 28));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t RotateGesture.Value.startLocation.setter(double a1, double a2)
{
  result = type metadata accessor for RotateGesture.Value(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

void *static RotateGesture._makeGesture(gesture:inputs:)()
{
  _GestureInputs.size.getter();
  _GestureInputs.position.getter();
  _GestureInputs.transform.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>>(0, v3);
  lazy protocol witness table accessor for type RotateGesture.Child and conformance RotateGesture.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>>, MEMORY[0x1E697E860]);
  return static Gesture.makeDebuggableGesture(gesture:inputs:)();
}

__n128 RotateGesture.Child.value.getter@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  v5 = HIDWORD(a1);
  v6 = HIDWORD(a2);
  v7 = *AGGraphGetValue();
  type metadata accessor for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>(0, &lazy cache variable for type metadata for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>.Value, MEMORY[0x1E697F810]);
  type metadata accessor for RotateGesture.Value(0);
  MapGesture.init(_:)();
  result = v9;
  a3->n128_u64[0] = v7;
  a3->n128_u32[2] = v5;
  a3->n128_u32[3] = v6;
  a3[1].n128_u32[0] = v3;
  a3[1].n128_u64[1] = v7;
  a3[2].n128_u32[0] = v5;
  a3[2].n128_u32[1] = v6;
  a3[2].n128_u32[2] = v3;
  a3[3] = v9;
  a3[4].n128_u64[0] = 2;
  a3[4].n128_u8[8] = 0;
  return result;
}

uint64_t closure #1 in RotateGesture.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x1E69E6720];
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for RotateGesture.Value?, type metadata accessor for RotateGesture.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  outlined init with copy of RotateGesture.Value?(a1, &v19 - v11, &lazy cache variable for type metadata for RotateGesture.Value?, type metadata accessor for RotateGesture.Value, v5, v10);
  v13 = type metadata accessor for RotateGesture.Value(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) != 1)
  {
    return outlined init with take of (DragGesture.Value, DragGesture.Value)(v12, a2, type metadata accessor for RotateGesture.Value);
  }

  type metadata accessor for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>(0, &lazy cache variable for type metadata for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>.Value, MEMORY[0x1E697F810]);
  outlined init with copy of RotateGesture.Value?(a1 + *(v15 + 52), v8, &lazy cache variable for type metadata for RotateGesture.Value?, type metadata accessor for RotateGesture.Value, MEMORY[0x1E69E6720], v16);
  result = (v14)(v8, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    outlined init with take of (DragGesture.Value, DragGesture.Value)(v8, a2, type metadata accessor for RotateGesture.Value);
    result = (v14)(v12, 1, v13);
    if (result != 1)
    {
      return outlined destroy of RotateGesture.Value?(v12, &lazy cache variable for type metadata for RotateGesture.Value?, type metadata accessor for RotateGesture.Value, MEMORY[0x1E69E6720], v18);
    }
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance RotateGesture.Child@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 57) = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void protocol witness for GestureStateProtocol.init() in conformance TransformBasedRotationGesture.StateType(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0x3FE8000000000000;
}

uint64_t closure #1 in TransformBasedRotationGesture.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, unint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  if ((*a1 & 1) == 0)
  {
    if (*(a2 + 88) > 1u)
    {
      if (v11 == 2)
      {
LABEL_7:
        v12 = a5;
        v13 = a4;
        v14 = a6;
        v15 = a2;
        v16 = a1;
        specialized VelocitySampler.addSample(_:time:)((v9 * 128.0 + v10 * 128.0) * 0.0078125 * 128.0, *a2);
        a1 = v16;
        a2 = v15;
        a6 = v14;
        a4 = v13;
        a5 = v12;
      }
    }

    else
    {
      if (!*(a2 + 88))
      {
        if (v7 == 1)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      if (a1[2])
      {
        a1[1] = v9;
        *(a1 + 16) = 0;
      }

      else
      {
        v17 = a1[1];
        v18 = (v9 * 128.0 + v10 * 128.0) * 0.0078125;
        v20 = a5;
        v21 = a4;
        v22 = a6;
        v23 = a2;
        v24 = a1;
        specialized VelocitySampler.addSample(_:time:)(v18 * 128.0, *a2);
        a1 = v24;
        a2 = v23;
        a6 = v22;
        a4 = v21;
        a5 = v20;
        if (vabdd_f64(v18, v17) > a3)
        {
          *v24 = 1;
        }
      }
    }
  }

LABEL_12:
  v25 = *(a1 + 5);
  v36[4] = *(a1 + 4);
  v36[5] = v25;
  v36[6] = *(a1 + 6);
  v37 = *(a1 + 14);
  v26 = *(a1 + 1);
  v36[0] = *a1;
  v36[1] = v26;
  v27 = *(a1 + 3);
  v36[2] = *(a1 + 2);
  v36[3] = v27;
  *v29 = v6;
  v29[1] = v8;
  v29[2] = v7;
  v30 = *(a2 + 24);
  v31 = *(a2 + 40);
  v32 = *(a2 + 56);
  v33 = v9;
  v34 = v10;
  v35 = v11;
  return TransformBasedRotationGesture.phase(state:childPhase:)(v36, v29, a4, a5, a6);
}

uint64_t TransformBasedRotationGesture.phase(state:childPhase:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 80);
  v55[4] = *(a1 + 64);
  v55[5] = v7;
  v55[6] = *(a1 + 96);
  v56 = *(a1 + 112);
  v8 = *(a1 + 16);
  v55[0] = *a1;
  v55[1] = v8;
  v9 = *(a1 + 48);
  v55[2] = *(a1 + 32);
  v55[3] = v9;
  v10 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v15 = a2[4];
  v14 = a2[5];
  v17 = a2[6];
  v16 = a2[7];
  v19 = a2[8];
  v18 = a2[9];
  v20 = a2[10];
  v21 = *(a2 + 88);
  if (v21 == 3 && !(v11 | v10 | v13 | v12 | v15 | v14 | v17 | v16 | v19 | v18 | v20))
  {
    goto LABEL_14;
  }

  if (v55[0])
  {
    if (v21 <= 1)
    {
      if (v21)
      {
        *&v31 = v10;
        *(&v31 + 1) = v11;
        *&v32 = v13;
        *(&v32 + 1) = v12;
        *&v33 = v15;
        *(&v33 + 1) = v14;
        *&v34 = v17;
        *(&v34 + 1) = v16;
        *&v35 = v19;
        *(&v35 + 1) = v18;
        v36 = v20;
        v37 = v10;
        v38 = v11;
        v39 = v13;
        v40 = v12;
        v41 = v15;
        v42 = v14;
        v43 = v17;
        v44 = v16;
        v45 = v19;
        v46 = v18;
        v47 = v20;
        v48 = 1;
        outlined init with copy of TransformEvent(&v37, &v49);
        closure #1 in TransformBasedRotationGesture.phase(state:childPhase:)(&v31, a3, a4, v55, a5);
        v51 = v33;
        v52 = v34;
        v53 = v35;
        v54 = v36;
        v49 = v31;
        v50 = v32;
        outlined destroy of TransformEvent(&v49);
        type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
        return swift_storeEnumTagMultiPayload();
      }

      if (v13 != 1)
      {
        *&v31 = v10;
        *(&v31 + 1) = v11;
        *&v32 = v13;
        *(&v32 + 1) = v12;
        *&v33 = v15;
        *(&v33 + 1) = v14;
        *&v34 = v17;
        *(&v34 + 1) = v16;
        *&v35 = v19;
        *(&v35 + 1) = v18;
        v36 = v20;
        v37 = v10;
        v38 = v11;
        v39 = v13;
        v40 = v12;
        v41 = v15;
        v42 = v14;
        v43 = v17;
        v44 = v16;
        v45 = v19;
        v46 = v18;
        v47 = v20;
        v48 = 0;
        outlined init with copy of TransformEvent?(&v37, &v49);
        closure #1 in TransformBasedRotationGesture.phase(state:childPhase:)(&v31, a3, a4, v55, a5);
        v51 = v33;
        v52 = v34;
        v53 = v35;
        v54 = v36;
        v49 = v31;
        v50 = v32;
        outlined destroy of TransformEvent(&v49);
        v24 = type metadata accessor for RotateGesture.Value(0);
        (*(*(v24 - 8) + 56))(a5, 0, 1, v24);
        type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_11;
    }

    if (v21 == 2)
    {
      *&v31 = v10;
      *(&v31 + 1) = v11;
      *&v32 = v13;
      *(&v32 + 1) = v12;
      *&v33 = v15;
      *(&v33 + 1) = v14;
      *&v34 = v17;
      *(&v34 + 1) = v16;
      *&v35 = v19;
      *(&v35 + 1) = v18;
      v36 = v20;
      v37 = v10;
      v38 = v11;
      v39 = v13;
      v40 = v12;
      v41 = v15;
      v42 = v14;
      v43 = v17;
      v44 = v16;
      v45 = v19;
      v46 = v18;
      v47 = v20;
      v48 = 2;
      outlined init with copy of TransformEvent(&v37, &v49);
      closure #1 in TransformBasedRotationGesture.phase(state:childPhase:)(&v31, a3, a4, v55, a5);
      v51 = v33;
      v52 = v34;
      v53 = v35;
      v54 = v36;
      v49 = v31;
      v50 = v32;
      outlined destroy of TransformEvent(&v49);
      type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_14:
    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
    goto LABEL_15;
  }

  if (v21 == 2 || v21 == 3 && !(v11 | v10 | v13 | v12 | v15 | v14 | v17 | v16 | v19 | v18 | v20))
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = type metadata accessor for RotateGesture.Value(0);
  (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
LABEL_15:

  return swift_storeEnumTagMultiPayload();
}

int *closure #1 in TransformBasedRotationGesture.phase(state:childPhase:)@<X0>(double *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[9];
  v15 = a1[10];
  v16 = TransformGestureAnchorHelper.startPoints(_:)(a2, a3, a1[3], a1[4]);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = Date.init(timeIntervalSinceReferenceDate:)();
  if (*(a4 + 16))
  {
    __break(1u);
  }

  else
  {
    v24 = 0.0;
    if ((*(a4 + 40) & 1) == 0 && (*(a4 + 64) & 1) == 0)
    {
      v25 = *(a4 + 48);
      v26 = *(a4 + 56);
      v24 = (v25 - *(a4 + 24)) * (1.0 / (v26 - *(a4 + 32)));
      if ((*(a4 + 88) & 1) == 0)
      {
        v24 = (*(a4 + 72) - v25) * (1.0 / (*(a4 + 80) - v26)) + *(a4 + 112) * (v24 - (*(a4 + 72) - v25) * (1.0 / (*(a4 + 80) - v26)));
      }
    }

    v27 = ((v14 * 128.0 + v15 * 128.0) * 0.0078125 * 128.0 - *(a4 + 8) * 128.0) * 0.0078125;
    v28 = v24 * 0.0078125;
    (*(v11 + 32))(a5, v13, v10);
    result = type metadata accessor for RotateGesture.Value(0);
    *(a5 + result[5]) = v27;
    *(a5 + result[6]) = v28;
    v29 = (a5 + result[7]);
    *v29 = v16;
    *(v29 + 1) = v18;
    v30 = (a5 + result[8]);
    *v30 = v20;
    v30[1] = v22;
  }

  return result;
}

double protocol witness for Gesture.body.getter in conformance TransformBasedRotationGesture@<D0>(uint64_t a1@<X8>)
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
  *(a1 + 56) = partial apply for closure #1 in TransformBasedRotationGesture.body.getter;
  *(a1 + 64) = v5;
  return result;
}

double protocol witness for GestureStateProtocol.init() in conformance TouchBasedRotationGesture.StateType@<D0>(uint64_t a1@<X8>)
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
  *(a1 + 136) = 0;
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 144) = 1;
  return result;
}

uint64_t TouchBasedRotationGesture.body.getter@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
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
  *(a3 + 128) = partial apply for closure #2 in TouchBasedRotationGesture.body.getter;
  *(a3 + 136) = result;
  return result;
}

uint64_t closure #1 in TouchBasedRotationGesture.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (DragGesture.Value, DragGesture.Value)(0);
  v8 = *(v7 + 48);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1, a2, type metadata accessor for DragGesture.Value);
  type metadata accessor for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>(0);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1 + *(v9 + 44), v6, type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>);
  return outlined init with take of (DragGesture.Value, DragGesture.Value)(v6, a2 + v8, type metadata accessor for DragGesture.Value);
}

uint64_t TouchBasedRotationGesture.phase(state:childPhase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v116 = a4;
  v115 = a3;
  v128 = a1;
  v131 = a5;
  v130 = type metadata accessor for Date();
  v126 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v124 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v108 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v108 - v12;
  v13 = MEMORY[0x1E697DE58];
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v108 - v15;
  type metadata accessor for (DragGesture.Value, DragGesture.Value)(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v122 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v108 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v108 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v108 - v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v108 - v30;
  v117 = a2;
  outlined init with copy of RotateGesture.Value?(a2, v16, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), v13, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    v111 = a6;
    outlined init with take of (DragGesture.Value, DragGesture.Value)(v16, v31, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v31, v27, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v33 = *(v18 + 48);
    v34 = type metadata accessor for DragGesture.Value(0);
    v35 = &v27[*(v34 + 24)];
    v36 = *v35;
    v37 = v35[1];
    outlined destroy of DragGesture.Value(v27, type metadata accessor for DragGesture.Value);
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v31, v24, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v38 = &v24[*(v18 + 48)];
    v39 = (v38 + *(v34 + 24));
    v40 = *v39;
    v41 = v39[1];
    outlined destroy of DragGesture.Value(v38, type metadata accessor for DragGesture.Value);
    v125 = v24;
    outlined destroy of DragGesture.Value(v24, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(&v27[v33], type metadata accessor for DragGesture.Value);
    v42 = v40;
    v43 = v41;
    v44 = v36;
    v45 = v37;
    if ((*(v128 + 144) & 1) == 0)
    {
      v42 = *(v128 + 128);
      v43 = *(v128 + 136);
      v44 = *(v128 + 112);
      v45 = *(v128 + 120);
    }

    v108 = v44;
    v109 = v43;
    v110 = v42;
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v31, v27, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v46 = *(v18 + 48);
    v47 = &v27[*(v34 + 20)];
    *&v48 = *v47;
    v121 = v48;
    *&v48 = *(v47 + 1);
    v120 = v48;
    outlined destroy of DragGesture.Value(v27, type metadata accessor for DragGesture.Value);
    v49 = v125;
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v31, v125, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v50 = v49 + *(v18 + 48);
    v113 = v34;
    v51 = (v50 + *(v34 + 20));
    *&v52 = *v51;
    v119 = v52;
    *&v52 = v51[1];
    v118 = v52;
    outlined destroy of DragGesture.Value(v50, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v49, type metadata accessor for DragGesture.Value);
    v112 = v27;
    outlined destroy of DragGesture.Value(&v27[v46], type metadata accessor for DragGesture.Value);
    v53 = v127;
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v31, v127, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v54 = v126;
    v55 = *(v126 + 16);
    v56 = v123;
    v57 = v130;
    v55(v123, v53, v130);
    outlined destroy of DragGesture.Value(v53, type metadata accessor for DragGesture.Value);
    v114 = v31;
    v58 = v122;
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v31, v122, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v59 = *(v18 + 48);
    v60 = v124;
    v55(v124, v58 + v59, v57);
    outlined destroy of DragGesture.Value(v58 + v59, type metadata accessor for DragGesture.Value);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v61 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v62 = *(v54 + 8);
    v63 = (v61 & 1) == 0;
    if (v61)
    {
      v64 = v56;
    }

    else
    {
      v64 = v60;
    }

    if (v63)
    {
      v65 = v56;
    }

    else
    {
      v65 = v60;
    }

    v124 = *(v54 + 8);
    v62(v64, v57);
    (*(v54 + 32))(v129, v65, v57);
    v126 = v18;
    v66 = *(v18 + 48);
    outlined destroy of DragGesture.Value(v58, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v127 + v66, type metadata accessor for DragGesture.Value);
    Date.timeIntervalSinceReferenceDate.getter();
    v68 = v67;
    static Semantics.v6.getter();
    v69 = isLinkedOnOrAfter(_:)();
    v70 = *&v120 - *&v118;
    v71 = *&v121 - *&v119;
    if (v69)
    {
      v72 = (v45 - v109) / (v108 - v110);
      v73 = v70 / v71;
      v74 = v72 * (v70 / v71);
      v75 = v128;
      if (v74 == -1.0)
      {
        v76 = v125;
        v77 = v114;
        if (v73 >= v72)
        {
          v85 = v72 < v73;
          v78 = -1.57079633;
          if (!v85)
          {
            v78 = 0.0;
          }
        }

        else
        {
          v78 = 1.57079633;
        }
      }

      else
      {
        v78 = -atan((v72 - v73) / (v74 + 1.0));
        v76 = v125;
        v77 = v114;
      }

      v84 = (v78 * 128.0 + *(v75 + 104) * 128.0) * 0.0078125;
      *(v75 + 104) = v84;
    }

    else
    {
      v83 = atan2(v37 - v41, v36 - v40);
      v84 = atan2(v70, v71) - v83;
      v75 = v128;
      *(v128 + 104) = v84;
      v76 = v125;
      v77 = v114;
    }

    *&v86 = v121;
    *(&v86 + 1) = v120;
    *&v87 = v119;
    *(&v87 + 1) = v118;
    *(v75 + 112) = v86;
    *(v75 + 128) = v87;
    *(v75 + 144) = 0;
    specialized VelocitySampler.addSample(_:time:)(v84 * 128.0, v68);
    if ((*v75 & 1) == 0)
    {
      if (fabs(v84) < v111)
      {
        outlined destroy of DragGesture.Value(v77, type metadata accessor for (DragGesture.Value, DragGesture.Value));
        v88 = type metadata accessor for RotateGesture.Value(0);
        (*(*(v88 - 8) + 56))(v131, 1, 1, v88);
        type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
        swift_storeEnumTagMultiPayload();
        v89 = v129;
        return (v124)(v89, v130);
      }

      *v75 = 1;
    }

    v90 = v112;
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v77, v112, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v91 = v75;
    v92 = v126;
    v93 = *(v126 + 48);
    v94 = v113;
    v95 = *(v90 + *(v113 + 24));
    outlined destroy of DragGesture.Value(v90, type metadata accessor for DragGesture.Value);
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v77, v76, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v96 = v76 + *(v92 + 48);
    v97 = *(v96 + *(v94 + 24));
    outlined destroy of DragGesture.Value(v96, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v76, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v90 + v93, type metadata accessor for DragGesture.Value);
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v77, v90, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v98 = *(v92 + 48);
    v99 = *(v90 + *(v94 + 24) + 8);
    outlined destroy of DragGesture.Value(v90, type metadata accessor for DragGesture.Value);
    outlined init with take of (DragGesture.Value, DragGesture.Value)(v77, v76, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v100 = v76 + *(v92 + 48);
    v101 = *(v100 + *(v94 + 24) + 8);
    outlined destroy of DragGesture.Value(v100, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v76, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v90 + v98, type metadata accessor for DragGesture.Value);
    TransformGestureAnchorHelper.startPoints(_:)(v115, v116, (v95 + v97) * 0.5, (v99 + v101) * 0.5);
    v103 = MEMORY[0x1EEE9AC00](v102);
    v104 = v129;
    *(&v108 - 6) = v129;
    *(&v108 - 5) = v91;
    *(&v108 - 4) = v103;
    *(&v108 - 3) = v105;
    *(&v108 - 2) = v106;
    *(&v108 - 1) = v107;
    specialized GesturePhase.map<A>(_:)(partial apply for closure #1 in TouchBasedRotationGesture.phase(state:childPhase:), (&v108 - 8), v131);
    v89 = v104;
    return (v124)(v89, v130);
  }

  if (EnumCaseMultiPayload)
  {
    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v79 = type metadata accessor for RotateGesture.Value(0);
    (*(*(v79 - 8) + 56))(v131, 1, 1, v79);
    v80 = MEMORY[0x1E697DE58];
    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
    swift_storeEnumTagMultiPayload();
    return outlined destroy of RotateGesture.Value?(v16, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), v80, v81);
  }
}

int *closure #1 in TouchBasedRotationGesture.phase(state:childPhase:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = *(a2 + 104);
  v20 = 0.0;
  if ((*(a2 + 24) & 1) == 0 && (*(a2 + 48) & 1) == 0)
  {
    v22 = *(a2 + 32);
    v21 = *(a2 + 40);
    v20 = (v22 - *(a2 + 8)) * (1.0 / (v21 - *(a2 + 16)));
    if ((*(a2 + 72) & 1) == 0)
    {
      v20 = (*(a2 + 56) - v22) * (1.0 / (*(a2 + 64) - v21)) + *(a2 + 96) * (v20 - (*(a2 + 56) - v22) * (1.0 / (*(a2 + 64) - v21)));
    }
  }

  v23 = v20 * 0.0078125;
  (*(v15 + 32))(a3, v18, v14);
  result = type metadata accessor for RotateGesture.Value(0);
  *(a3 + result[5]) = v19;
  *(a3 + result[6]) = v23;
  v25 = (a3 + result[7]);
  *v25 = a4;
  v25[1] = a5;
  v26 = (a3 + result[8]);
  *v26 = a6;
  v26[1] = a7;
  return result;
}

BOOL specialized static RotateGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RotateGesture.Value(0);
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

void type metadata accessor for ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>>)
  {
    type metadata accessor for CategoryGesture<RotateGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697E628]);
    type metadata accessor for _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>(255);
    lazy protocol witness table accessor for type CategoryGesture<RotateGesture.Value> and conformance CategoryGesture<A>(v2);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value> and conformance _MapGesture<A, B>, type metadata accessor for _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>, MEMORY[0x1E697DDD8]);
    v3 = type metadata accessor for ModifierGesture();
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>>);
    }
  }
}

void type metadata accessor for _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>)
  {
    type metadata accessor for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>(255, &lazy cache variable for type metadata for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, MEMORY[0x1E697F818]);
    type metadata accessor for RotateGesture.Value(255);
    lazy protocol witness table accessor for type SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture> and conformance SimultaneousGesture<A, B>();
    v1 = type metadata accessor for _MapGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransformBasedRotationGesture and conformance TransformBasedRotationGesture()
{
  result = lazy protocol witness table cache variable for type TransformBasedRotationGesture and conformance TransformBasedRotationGesture;
  if (!lazy protocol witness table cache variable for type TransformBasedRotationGesture and conformance TransformBasedRotationGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransformBasedRotationGesture, &type metadata for TransformBasedRotationGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransformBasedRotationGesture and conformance TransformBasedRotationGesture);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TouchBasedRotationGesture and conformance TouchBasedRotationGesture()
{
  result = lazy protocol witness table cache variable for type TouchBasedRotationGesture and conformance TouchBasedRotationGesture;
  if (!lazy protocol witness table cache variable for type TouchBasedRotationGesture and conformance TouchBasedRotationGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TouchBasedRotationGesture, &type metadata for TouchBasedRotationGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TouchBasedRotationGesture and conformance TouchBasedRotationGesture);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture> and conformance SimultaneousGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture> and conformance SimultaneousGesture<A, B>;
  if (!lazy protocol witness table cache variable for type SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture> and conformance SimultaneousGesture<A, B>)
  {
    type metadata accessor for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>(255, &lazy cache variable for type metadata for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, MEMORY[0x1E697F818]);
    result = swift_getWitnessTable(MEMORY[0x1E697F820], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture> and conformance SimultaneousGesture<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CategoryGesture<RotateGesture.Value> and conformance CategoryGesture<A>(double a1)
{
  result = lazy protocol witness table cache variable for type CategoryGesture<RotateGesture.Value> and conformance CategoryGesture<A>;
  if (!lazy protocol witness table cache variable for type CategoryGesture<RotateGesture.Value> and conformance CategoryGesture<A>)
  {
    type metadata accessor for CategoryGesture<RotateGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697E628]);
    result = swift_getWitnessTable(MEMORY[0x1E697E630], v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type CategoryGesture<RotateGesture.Value> and conformance CategoryGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RotateGesture.Child and conformance RotateGesture.Child()
{
  result = lazy protocol witness table cache variable for type RotateGesture.Child and conformance RotateGesture.Child;
  if (!lazy protocol witness table cache variable for type RotateGesture.Child and conformance RotateGesture.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RotateGesture.Child, &unk_1EFFB0888, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RotateGesture.Child and conformance RotateGesture.Child);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RotateGesture.Value(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    v9 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + v9) = *(a2 + v9);
  }

  return a1;
}

uint64_t initializeWithCopy for RotateGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t assignWithCopy for RotateGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v7 = a3[7];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = a3[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  *v11 = *v12;
  v11[1] = v12[1];
  return a1;
}

uint64_t initializeWithTake for RotateGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t assignWithTake for RotateGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t type metadata completion function for RotateGesture.Value(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for _MapGesture<RotateGesture, Angle>()
{
  if (!lazy cache variable for type metadata for _MapGesture<RotateGesture, Angle>)
  {
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<RotateGesture, Angle>);
    }
  }
}

uint64_t outlined init with copy of TransformEvent?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TransformEvent?(0, &lazy cache variable for type metadata for TransformEvent?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>)
  {
    v2 = type metadata accessor for DragGesture.Value(255);
    type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type Tuple<DragGesture.Value, EmptyTuple> and conformance Tuple<A, B>, type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>, protocol conformance descriptor for Tuple<A, B>);
    v6 = type metadata accessor for Tuple(a1, v2, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>);
    }
  }
}

void type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Tuple<DragGesture.Value, EmptyTuple>)
  {
    v2 = type metadata accessor for DragGesture.Value(255);
    v3 = type metadata accessor for Tuple(a1, v2, &type metadata for EmptyTuple, &protocol witness table for EmptyTuple);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for Tuple<DragGesture.Value, EmptyTuple>);
    }
  }
}

void type metadata accessor for (DragGesture.Value, DragGesture.Value)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (DragGesture.Value, DragGesture.Value))
  {
    type metadata accessor for DragGesture.Value(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DragGesture.Value, DragGesture.Value));
    }
  }
}

uint64_t outlined init with copy of RotateGesture.Value?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t), double a6)
{
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DragGesture.Value(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of RotateGesture.Value?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), double a5)
{
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for AnimatablePair<CGFloat, CGFloat>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v1 = type metadata accessor for AnimatablePair();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AnimatablePair<CGFloat, CGFloat>);
    }
  }
}

void type metadata accessor for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TransformBasedRotationGesture;
    v8[1] = &type metadata for TouchBasedRotationGesture;
    v8[2] = lazy protocol witness table accessor for type TransformBasedRotationGesture and conformance TransformBasedRotationGesture();
    v8[3] = lazy protocol witness table accessor for type TouchBasedRotationGesture and conformance TouchBasedRotationGesture();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for CategoryGesture<RotateGesture.Value>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with take of (DragGesture.Value, DragGesture.Value)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for TransformBasedRotationGesture.StateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[120])
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

uint64_t storeEnumTagSinglePayload for TransformBasedRotationGesture.StateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TouchBasedRotationGesture.StateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[145])
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

uint64_t storeEnumTagSinglePayload for TouchBasedRotationGesture.StateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifierGesture<StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>>)
  {
    type metadata accessor for StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>(255);
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>(255);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>, MEMORY[0x1E697FCE8]);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>, MEMORY[0x1E697E860]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>)
  {
    type metadata accessor for RotateGesture.Value(255);
    lazy protocol witness table accessor for type TransformBasedRotationGesture.StateType and conformance TransformBasedRotationGesture.StateType();
    v1 = type metadata accessor for StateContainerGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransformBasedRotationGesture.StateType and conformance TransformBasedRotationGesture.StateType()
{
  result = lazy protocol witness table cache variable for type TransformBasedRotationGesture.StateType and conformance TransformBasedRotationGesture.StateType;
  if (!lazy protocol witness table cache variable for type TransformBasedRotationGesture.StateType and conformance TransformBasedRotationGesture.StateType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransformBasedRotationGesture.StateType, &unk_1EFFB0A60, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransformBasedRotationGesture.StateType and conformance TransformBasedRotationGesture.StateType);
  }

  return result;
}

void type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>)
  {
    type metadata accessor for TransformEvent?(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<TransformEvent>, MEMORY[0x1E697FE18]);
    type metadata accessor for EventListener<TransformEvent>(255);
    lazy protocol witness table accessor for type CoordinateSpaceGesture<TransformEvent> and conformance CoordinateSpaceGesture<A>();
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<TransformEvent> and conformance EventListener<A>, type metadata accessor for EventListener<TransformEvent>, MEMORY[0x1E697E128]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>);
    }
  }
}

void type metadata accessor for TransformEvent?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for TransformEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for EventListener<TransformEvent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EventListener<TransformEvent>)
  {
    lazy protocol witness table accessor for type TransformEvent and conformance TransformEvent();
    v1 = type metadata accessor for EventListener();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EventListener<TransformEvent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransformEvent and conformance TransformEvent()
{
  result = lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent;
  if (!lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransformEvent, &type metadata for TransformEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent;
  if (!lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransformEvent, &type metadata for TransformEvent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CoordinateSpaceGesture<TransformEvent> and conformance CoordinateSpaceGesture<A>()
{
  result = lazy protocol witness table cache variable for type CoordinateSpaceGesture<TransformEvent> and conformance CoordinateSpaceGesture<A>;
  if (!lazy protocol witness table cache variable for type CoordinateSpaceGesture<TransformEvent> and conformance CoordinateSpaceGesture<A>)
  {
    type metadata accessor for TransformEvent?(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<TransformEvent>, MEMORY[0x1E697FE18]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE20], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpaceGesture<TransformEvent> and conformance CoordinateSpaceGesture<A>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>)
  {
    type metadata accessor for StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>(255);
    type metadata accessor for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>(255);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>, MEMORY[0x1E697FCE8]);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>, type metadata accessor for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>, MEMORY[0x1E697DDD8]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>)
  {
    type metadata accessor for (DragGesture.Value, DragGesture.Value)(255);
    type metadata accessor for RotateGesture.Value(255);
    lazy protocol witness table accessor for type TouchBasedRotationGesture.StateType and conformance TouchBasedRotationGesture.StateType();
    v1 = type metadata accessor for StateContainerGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TouchBasedRotationGesture.StateType and conformance TouchBasedRotationGesture.StateType()
{
  result = lazy protocol witness table cache variable for type TouchBasedRotationGesture.StateType and conformance TouchBasedRotationGesture.StateType;
  if (!lazy protocol witness table cache variable for type TouchBasedRotationGesture.StateType and conformance TouchBasedRotationGesture.StateType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TouchBasedRotationGesture.StateType, &unk_1EFFB0AE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TouchBasedRotationGesture.StateType and conformance TouchBasedRotationGesture.StateType);
  }

  return result;
}

void type metadata accessor for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>)
  {
    type metadata accessor for TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>(255);
    type metadata accessor for (DragGesture.Value, DragGesture.Value)(255);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>> and conformance TupleGesture<A, B>, type metadata accessor for TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, protocol conformance descriptor for TupleGesture<A, B>);
    v1 = type metadata accessor for _MapGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>);
    }
  }
}

void type metadata accessor for TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>)
  {
    type metadata accessor for TupleGesture<DragGesture, EmptyTupleGesture>();
    v5[0] = &type metadata for DragGesture;
    v5[1] = v2;
    v5[2] = &protocol witness table for DragGesture;
    v5[3] = lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type TupleGesture<DragGesture, EmptyTupleGesture> and conformance TupleGesture<A, B>, type metadata accessor for TupleGesture<DragGesture, EmptyTupleGesture>, protocol conformance descriptor for TupleGesture<A, B>);
    v5[4] = lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type Tuple<DragGesture.Value, EmptyTuple> and conformance Tuple<A, B>, type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>, protocol conformance descriptor for Tuple<A, B>);
    v3 = type metadata accessor for TupleGesture(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>);
    }
  }
}

void type metadata accessor for TupleGesture<DragGesture, EmptyTupleGesture>()
{
  if (!lazy cache variable for type metadata for TupleGesture<DragGesture, EmptyTupleGesture>)
  {
    v4[5] = v0;
    v4[6] = v1;
    v4[0] = &type metadata for DragGesture;
    v4[1] = &type metadata for EmptyTupleGesture;
    v4[2] = &protocol witness table for DragGesture;
    v4[3] = &protocol witness table for EmptyTupleGesture;
    v4[4] = &protocol witness table for EmptyTuple;
    v2 = type metadata accessor for TupleGesture(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for TupleGesture<DragGesture, EmptyTupleGesture>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t TextField.init<A>(_:format:prompt:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = a2;
  v30 = a8;
  v32 = a7;
  v33 = a6;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v37 = a1;
  v31 = a9;
  v28 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(v41, a1, a2, a11, a13);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v39[2] = v41[2];
  v39[3] = v41[3];
  v40[0] = v42[0];
  *(v40 + 12) = *(v42 + 12);
  v39[0] = v41[0];
  v39[1] = v41[1];
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  outlined init with copy of TextFieldState(v41, &v38);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(v39, v18, v20, v22, v24, 0, v35, v36, v31, v34, v33, 0, v17, v32, v30, v28, a12);
  outlined destroy of TextFieldState(v41);
  (*(*(a11 - 8) + 8))(v29, a11);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v26 = type metadata accessor for Binding();
  return (*(*(v26 - 8) + 8))(v37, v26);
}

{
  v29 = a2;
  v30 = a8;
  v32 = a7;
  v33 = a6;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v37 = a1;
  v31 = a9;
  v28 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(v41, a1, a2, a11, a13);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v39[2] = v41[2];
  v39[3] = v41[3];
  v40[0] = v42[0];
  *(v40 + 12) = *(v42 + 12);
  v39[0] = v41[0];
  v39[1] = v41[1];
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  outlined init with copy of TextFieldState(v41, &v38);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(v39, v18, v20, v22, v24, 0, v35, v36, v31, v34, v33, 0, v17, v32, v30, v28, a12);
  outlined destroy of TextFieldState(v41);
  (*(*(a11 - 8) + 8))(v29, a11);
  swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for Binding();
  return (*(*(v26 - 8) + 8))(v37, v26);
}

uint64_t TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v50 = a8;
  v45 = a6;
  v46 = a5;
  v47 = a3;
  v48 = a4;
  v44 = a9;
  v42 = a16;
  v41 = a14;
  v40 = a13;
  v43 = a12;
  v49 = a11;
  v51 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (a7 && v51)
  {
    v23 = v50;
    outlined copy of AppIntentExecutor?(a7, v50);
    v24 = v51;
    v25 = v49;
    outlined copy of AppIntentExecutor?(v51, v49);
    v22 = a7;
  }

  v26 = static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(v55, a1, a2, v22, v23, v24, v25, a15);
  v36 = v27;
  v37 = a7;
  v28 = v26;
  v38 = a15;
  v39 = a1;
  v30 = v29;
  v32 = v31;
  v53[2] = v55[2];
  v53[3] = v55[3];
  v54[0] = v56[0];
  *(v54 + 12) = *(v56 + 12);
  v53[0] = v55[0];
  v53[1] = v55[1];
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  outlined init with copy of TextFieldState(v55, &v52);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(v53, v28, v36, v30, v32, 0, v47, v48, v44, v46, v45, 0, v21, v43, v40, v41, v42);
  outlined consume of TextFieldState.FormatActions?(v22, v23, v24, v25);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v51, v49);
  outlined destroy of TextFieldState(v55);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v37, v50);
  v34 = type metadata accessor for Binding();
  return (*(*(v34 - 8) + 8))(v39, v34);
}

uint64_t TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void (*a14)(uint64_t), uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = type metadata accessor for TextField(0, a16, a17, a4);
  v23 = (a9 + v22[12]);
  v24 = v22[14];
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v25 - 8) + 56))(a9 + v24, 1, 1, v25);
  *v36 = *(a1 + 76);
  v26 = a1[3];
  v27 = a9 + v22[13];
  *(v27 + 64) = a1[4];
  *(v27 + 80) = *&v36[4];
  v28 = a1[1];
  v35 = a1[2];
  *v27 = *a1;
  *(v27 + 16) = v28;
  *(v27 + 32) = v35;
  *(v27 + 48) = v26;
  *(v27 + 96) = 0;
  *(v27 + 108) = 0;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *v23 = a7;
  v23[1] = a8;
  v23[2] = a10;
  v23[3] = a11;
  *(a9 + v22[11]) = a12 & 1;

  outlined copy of Text?(a7, a8, a10, a11);
  v29 = outlined assign with copy of Binding<TextSelection?>?(a13, a9 + v24);
  a14(v29);
  outlined consume of Text?(a7, a8, a10, a11);

  return outlined destroy of ResolvedTextFieldStyle(a13, type metadata accessor for Binding<TextSelection?>?);
}

uint64_t static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v31 = a2;
  v9 = *(a4 - 8);
  v32 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OptionalFormatInputToString(0, v12, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v28 = *(v9 + 16);
  v28(v11, a3, a4, v16);
  v30 = a5;
  OptionalFormatInputToString.init(format:)(v11, a4, v18);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  swift_getWitnessTable(protocol conformance descriptor for OptionalFormatInputToString<A>, v14);
  Binding.projecting<A>(_:)();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  v31 = v35;
  v20 = v36;
  v21 = v37;
  (v28)(v11, v29, a4);
  v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v24 = v30;
  *(v23 + 16) = a4;
  *(v23 + 24) = v24;
  (*(v9 + 32))(v23 + v22, v11, a4);
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 1;
  *(a1 + 89) = 2;
  *(a1 + 91) = 0;
  v34 = v19;
  v35 = v31;
  v36 = v20;
  v37 = v21;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v33);
  v25 = v33[1];
  *a1 = v33[0];
  *(a1 + 8) = v25;
  *(a1 + 16) = protocol witness for static PreferenceKey._isReadableByHost.getter in conformance AccessibilityLargeContentViewTree.Key;
  *(a1 + 24) = 0;
  *(a1 + 32) = partial apply for closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:);
  *(a1 + 40) = v23;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return v19;
}

{
  v52 = a3;
  v54 = a2;
  swift_getAssociatedTypeWitness();
  v53 = type metadata accessor for Binding();
  v50 = *(v53 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v39 - v8;
  v55 = *(a4 - 8);
  v9 = v55;
  v47 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v42 = a5;
  v16 = type metadata accessor for FormatInputToString(0, a4, a5, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  v21 = *(v9 + 16);
  v22 = v52;
  v21(v14, v52, a4, v18);
  v40 = v21;
  FormatInputToString.init(format:)(v14, a4, v20);
  swift_getWitnessTable(protocol conformance descriptor for FormatInputToString<A>, v16);
  Binding.projecting<A>(_:)();
  (*(v17 + 8))(v20, v16);
  v45 = v58;
  v46 = v57;
  v43 = v60;
  v44 = v59;
  (v21)(v14, v22, a4);
  v23 = v55;
  v24 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v25 = v24 + v47;
  v26 = swift_allocObject();
  v47 = v26;
  v27 = v42;
  *(v26 + 16) = a4;
  *(v26 + 24) = v27;
  v28 = *(v23 + 32);
  v55 = v23 + 32;
  v41 = v28;
  v28(v26 + v24, v14, a4);
  v29 = v48;
  v40(v48, v52, a4);
  v30 = v49;
  v31 = v50;
  v32 = v53;
  (*(v50 + 16))(v49, v54, v53);
  v33 = (v25 + *(v31 + 80)) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v34 + 24) = v27;
  v41(v34 + v24, v29, a4);
  (*(v31 + 32))(v34 + v33, v30, v32);
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 1;
  *(a1 + 89) = 2;
  *(a1 + 91) = 0;
  v35 = v46;
  v57 = v46;
  v58 = v45;
  v59 = v44;
  v60 = v43;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v56);
  v36 = v56[1];
  *a1 = v56[0];
  *(a1 + 8) = v36;
  v37 = v47;
  *(a1 + 16) = partial apply for closure #1 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:);
  *(a1 + 24) = v37;
  *(a1 + 32) = partial apply for closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:);
  *(a1 + 40) = v34;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return v35;
}

uint64_t static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a6;
  v42 = a7;
  v39 = a4;
  v40 = a5;
  v38 = a8;
  v12 = type metadata accessor for Binding();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v19 = type metadata accessor for AnyToFormattedString(0, a8, v17, v18);
  v20 = a3;
  v43[0] = AnyToFormattedString.__allocating_init(_:)(v20);
  swift_getWitnessTable(protocol conformance descriptor for AnyToFormattedString<A>, v19);
  Binding.projecting<A>(_:)();

  v21 = v46;
  v22 = v48;
  v36 = v47;
  v37 = v45;
  (*(v13 + 16))(v16, a2, v12);
  v23 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v38;
  (*(v13 + 32))(v24 + v23, v16, v12);
  *(v24 + ((v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v44 = 1;
  v25 = v37;
  v45 = v37;
  v46 = v21;
  v47 = v36;
  v48 = v22;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  v27 = v26;
  v28 = v20;
  MEMORY[0x18D00ACC0](v43, v27);
  v29 = v43[1];
  v30 = v44;
  *a1 = v43[0];
  *(a1 + 8) = v29;
  *(a1 + 16) = closure #1 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:);
  *(a1 + 24) = 0;
  *(a1 + 32) = partial apply for closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:);
  *(a1 + 40) = v24;
  v31 = v39;
  v32 = v40;
  *(a1 + 48) = v39;
  *(a1 + 56) = v32;
  v33 = v41;
  v34 = v42;
  *(a1 + 64) = v41;
  *(a1 + 72) = v34;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = v30;
  *(a1 + 89) = 2;
  *(a1 + 91) = 0;
  outlined copy of TextFieldState.FormatActions?(v31, v32, v33, v34);
  return v25;
}

uint64_t protocol witness for Projection.get(base:) in conformance TextFieldStateTextProjection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v16[0] = *a1;
  v5 = v16[0];
  v16[1] = v4;
  v16[2] = v7;
  v16[3] = v6;
  v8 = *(a1 + 5);
  v19 = *(a1 + 4);
  v20[0] = v8;
  *(v20 + 12) = *(a1 + 92);
  v9 = *(a1 + 3);
  v17 = *(a1 + 2);
  v18 = v9;
  if (__PAIR128__(v4, v16[0]) == __PAIR128__(v6, v7) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of Binding<TextSelection?>(v16, v15, type metadata accessor for (String, TextFieldState));

    *a2 = v7;
    *(a2 + 8) = v6;
    v11 = *(a1 + 5);
    *(a2 + 48) = *(a1 + 4);
    *(a2 + 64) = v11;
    *(a2 + 76) = *(a1 + 92);
    v12 = *(a1 + 3);
    *(a2 + 16) = *(a1 + 2);
    *(a2 + 32) = v12;
  }

  else
  {
    outlined init with copy of Binding<TextSelection?>(v16, v15, type metadata accessor for (String, TextFieldState));

    v13 = *(a1 + 5);
    *(a2 + 48) = *(a1 + 4);
    *(a2 + 64) = v13;
    *(a2 + 76) = *(a1 + 92);
    v14 = *(a1 + 3);
    *(a2 + 16) = *(a1 + 2);
    *(a2 + 32) = v14;

    *a2 = v5;
    *(a2 + 8) = v4;
  }

  return result;
}

double protocol witness for Projection.set(base:newValue:) in conformance TextFieldStateTextProjection(_OWORD *a1, __int128 *a2)
{
  v3 = a2[1];
  v17 = *a2;
  v18 = v3;
  v4 = a2[3];
  v19 = a2[2];
  v20 = v4;
  *v21 = a2[4];
  *&v21[12] = *(a2 + 76);
  v5 = v17;
  if (v18)
  {
    v6 = *(&v18 + 1);
    v7 = swift_allocObject();
    *(v7 + 16) = v18;
    *(v7 + 24) = v6;

    v8 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
  }

  else
  {
    v8 = protocol witness for static StatefulRule.initialValue.getter in conformance LimitedAvailabilityTableColumnContent<A, B>.IndirectOutputs;
  }

  v15[0] = v5;

  (v8)(v14, v15);

  if ((v14[0] & 1) != 0 || v21[16] == 1)
  {

    *a1 = v5;
  }

  else
  {
  }

  v9 = a1[4];
  v15[2] = a1[3];
  v15[3] = v9;
  v16[0] = a1[5];
  *(v16 + 12) = *(a1 + 92);
  v10 = a1[2];
  v15[0] = a1[1];
  v15[1] = v10;
  outlined init with copy of TextFieldState(&v17, v14);
  outlined destroy of TextFieldState(v15);
  v11 = v20;
  a1[3] = v19;
  a1[4] = v11;
  a1[5] = *v21;
  *(a1 + 92) = *&v21[12];
  result = *&v17;
  v13 = v18;
  a1[1] = v17;
  a1[2] = v13;
  return result;
}

uint64_t closure #1 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v17 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  dispatch thunk of ParseableFormatStyle.parseStrategy.getter();
  v18 = v16;
  v19 = v17;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ParseStrategy.parse(_:)();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  (*(*(v9 - 8) + 56))(v13, 0, 1, v9);
  (*(v11 + 8))(v13, v10);
  return 1;
}

uint64_t closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[3] = a4;
  v22 = a1;
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v21 - v9;
  v25 = *(a6 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v21[1] = *(v12 - 8);
  v21[2] = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v21 - v18;
  v26 = a3;
  dispatch thunk of ParseableFormatStyle.parseStrategy.getter();
  v27 = v22;
  v28 = v23;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ParseStrategy.parse(_:)();
  (*(v24 + 8))(v10, AssociatedTypeWitness);
  (*(v15 + 56))(v14, 0, 1, v11);
  (*(v15 + 32))(v19, v14, v11);
  dispatch thunk of FormatStyle.format(_:)();
  (*(v15 + 8))(v19, v11);
  return v27;
}

uint64_t closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v20 - v9;
  v20[1] = *(a5 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v20[3] = *(v12 - 8);
  v20[4] = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v20 - v17;
  v20[2] = a3;
  dispatch thunk of ParseableFormatStyle.parseStrategy.getter();
  v23 = v21;
  v24 = v22;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ParseStrategy.parse(_:)();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  (*(v15 + 56))(v14, 0, 1, v11);
  (*(v15 + 32))(v18, v14, v11);
  dispatch thunk of FormatStyle.format(_:)();
  (*(v15 + 8))(v18, v11);
  return v23;
}

uint64_t closure #1 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(uint64_t a1)
{
  static Semantics.v3.getter();

  return isLinkedOnOrAfter(_:)();
}

uint64_t closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v12);
  type metadata accessor for AnyToFormattedString(0, a5, v13, v14);
  static AnyToFormattedString.applyFormatting(to:string:formatter:)(v11, a1, a2, a4);
  v15 = [a4 stringForObjectValue_];
  swift_unknownObjectRelease();
  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = 0;
  }

  (*(v9 + 8))(v11, a5);
  return v16;
}

uint64_t TextField<>.init(_:text:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v35 = a5;
  v36 = a7;
  v41 = a4;
  v40 = a3;
  v38 = a1;
  v39 = a2;
  v37 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 1;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v42);
  v18 = v42[0];
  v19 = v42[1];
  HIDWORD(v34) = v47;
  type metadata accessor for Binding<TextSelection?>(0);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v22(v17, 1, 1, v20);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v24 = *(v23 + 56);
  v22((a9 + v24), 1, 1, v21);
  LOBYTE(v43) = 0;
  *(a9 + 112) = v18;
  *(a9 + 120) = v19;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = BYTE4(v34);
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v25 = v36;
  *a9 = v35;
  *(a9 + 8) = a6;
  *(a9 + 16) = v25;
  *(a9 + 24) = a8;
  *(a9 + 32) = 0;
  LOBYTE(v25) = v37 & 1;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 72) = v25;

  outlined assign with copy of Binding<TextSelection?>?(v17, a9 + v24);
  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  result = outlined destroy of ResolvedTextFieldStyle(v17, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v26;
  *(a9 + 48) = v28;
  *(a9 + 56) = v30 & 1;
  *(a9 + 64) = v32;
  return result;
}

uint64_t TextField.init(text:prompt:axis:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v24 = a8;
  v25 = a7;
  v26 = a5;
  v27 = a6;
  v23 = a11;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 1;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  *&v29 = a3;
  *(&v29 + 1) = a4;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v38);
  v28 = v38;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v34 = 0;
  v35 = v39;
  v36 = 2;
  v37 = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  return TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(&v28, a1, a2, a3, a4, 0, v26, v27, a9, v25, v24, a10 & 1, v20, v23, *(&v23 + 1), a12, a13);
}

uint64_t TextField<>.init(_:text:prompt:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v54 = a4;
  v55 = a5;
  v53 = a3;
  v51 = a1;
  v52 = a2;
  v50 = a14;
  v48 = a12;
  v49 = a13;
  v47 = a11;
  v45 = a7;
  v46 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v21;
  v61 = 1;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v56);
  v22 = v56[0];
  v23 = v56[1];
  v24 = v61;
  type metadata accessor for Binding<TextSelection?>(0);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v27(v21, 1, 1, v25);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v29 = *(v28 + 56);
  v27((a9 + v29), 1, 1, v26);
  LOBYTE(v57) = 0;
  *(a9 + 112) = v22;
  *(a9 + 120) = v23;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v24;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  *a9 = v55;
  *(a9 + 8) = a6;
  v43[2] = a6;
  *(a9 + 16) = v45;
  *(a9 + 24) = a8;
  v43[1] = a8;
  *(a9 + 32) = 0;
  v31 = v46;
  v30 = v47;
  *(a9 + 80) = v46;
  *(a9 + 88) = v30;
  LOBYTE(a6) = v48;
  v32 = v49;
  *(a9 + 96) = v48;
  *(a9 + 104) = v32;
  *(a9 + 72) = v50 & 1;

  v33 = v32;
  outlined copy of Text?(v31, v30, a6, v32);
  v34 = a9 + v29;
  v35 = v44;
  outlined assign with copy of Binding<TextSelection?>?(v44, v34);
  v36 = Text.init(_:tableName:bundle:comment:)();
  v38 = v37;
  LOBYTE(v22) = v39;
  v41 = v40;
  outlined consume of Text?(v31, v30, a6, v33);

  result = outlined destroy of ResolvedTextFieldStyle(v35, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v36;
  *(a9 + 48) = v38;
  *(a9 + 56) = v22 & 1;
  *(a9 + 64) = v41;
  return result;
}

uint64_t TextField<>.init<A>(_:text:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a7;
  v34 = a8;
  v31 = a6;
  v29 = a2;
  v30 = a4;
  v32 = a1;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v35);
  v18 = v35[0];
  v17 = v35[1];
  HIDWORD(v28) = v40;
  type metadata accessor for Binding<TextSelection?>(0);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v21(v16, 1, 1, v19);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v23 = *(v22 + 56);
  v21((a9 + v23), 1, 1, v20);
  LOBYTE(v36) = 0;
  *(a9 + 112) = v18;
  *(a9 + 120) = v17;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = BYTE4(v28);
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v24 = v30;
  *a9 = v29;
  *(a9 + 8) = a3;
  *(a9 + 16) = v24;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  LOBYTE(v24) = v31 & 1;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 72) = v24;

  outlined assign with copy of Binding<TextSelection?>?(v16, a9 + v23);
  v25 = v32;
  v26 = v33;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v32, a9 + 40);

  outlined destroy of ResolvedTextFieldStyle(v16, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v26 - 8) + 8))(v25, v26);
}

uint64_t TextField<>.init<A>(_:text:prompt:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v47 = a7;
  v48 = a8;
  v46 = a6;
  v51 = a1;
  v52 = a2;
  v49 = a12;
  v50 = a13;
  v45 = a11;
  v43 = a4;
  v44 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v20;
  v58 = 1;
  v54 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v53);
  v21 = v53[0];
  v22 = v53[1];
  v23 = v58;
  type metadata accessor for Binding<TextSelection?>(0);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v26(v20, 1, 1, v24);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v28 = *(v27 + 56);
  v26((a9 + v28), 1, 1, v25);
  LOBYTE(v54) = 0;
  *(a9 + 112) = v21;
  *(a9 + 120) = v22;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v23;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  *a9 = v52;
  *(a9 + 8) = a3;
  v29 = v44;
  *(a9 + 16) = v43;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  v31 = v46;
  v30 = v47;
  *(a9 + 80) = v46;
  *(a9 + 88) = v30;
  LOBYTE(v25) = v48;
  *(a9 + 96) = v48;
  *(a9 + 104) = v29;
  *(a9 + 72) = v45 & 1;

  v32 = v31;
  v33 = v31;
  v34 = v30;
  v35 = v30;
  LOBYTE(v30) = v25;
  outlined copy of Text?(v32, v34, v25, v29);
  v36 = a9 + v28;
  v37 = v42;
  outlined assign with copy of Binding<TextSelection?>?(v42, v36);
  v38 = v51;
  v39 = v49;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v51, a9 + 40);
  outlined consume of Text?(v33, v35, v30, v29);

  outlined destroy of ResolvedTextFieldStyle(v37, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v39 - 8) + 8))(v38, v39);
}

uint64_t TextField<>.init(_:text:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a4;
  v54 = a5;
  v52 = a3;
  v50 = a1;
  v51 = a2;
  v48 = a12;
  v49 = a13;
  v47 = a11;
  v45 = a7;
  v46 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v20;
  v60 = 1;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v55);
  v21 = v55[0];
  v22 = v55[1];
  v23 = v60;
  type metadata accessor for Binding<TextSelection?>(0);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v26(v20, 1, 1, v24);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v28 = *(v27 + 56);
  v26((a9 + v28), 1, 1, v25);
  LOBYTE(v56) = 0;
  *(a9 + 112) = v21;
  *(a9 + 120) = v22;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v23;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  *a9 = v54;
  *(a9 + 8) = a6;
  v43[0] = a8;
  v43[1] = a6;
  v29 = v46;
  *(a9 + 16) = v45;
  *(a9 + 24) = a8;
  *(a9 + 32) = 0;
  v31 = v47;
  v30 = v48;
  *(a9 + 80) = v29;
  *(a9 + 88) = v31;
  v32 = v49;
  *(a9 + 96) = v30;
  *(a9 + 104) = v32;
  *(a9 + 72) = 0;

  v33 = v32;
  outlined copy of Text?(v29, v31, v30, v32);
  v34 = a9 + v28;
  v35 = v44;
  outlined assign with copy of Binding<TextSelection?>?(v44, v34);
  v36 = Text.init(_:tableName:bundle:comment:)();
  v38 = v37;
  LOBYTE(v22) = v39;
  v41 = v40;
  outlined consume of Text?(v29, v31, v30, v33);

  result = outlined destroy of ResolvedTextFieldStyle(v35, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v36;
  *(a9 + 48) = v38;
  *(a9 + 56) = v22 & 1;
  *(a9 + 64) = v41;
  return result;
}

uint64_t TextField.init(text:prompt:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v24 = a7;
  v25 = a5;
  v26 = a6;
  v23 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 1;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  *&v28 = a3;
  *(&v28 + 1) = a4;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v37);
  v27 = v37;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v33 = 0;
  v34 = v38;
  v35 = 2;
  v36 = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  return TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(&v27, a1, a2, a3, a4, 0, v25, v26, a9, v24, a8, 0, v20, v23, *(&v23 + 1), a11, a12);
}

uint64_t TextField<>.init<A>(_:text:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a7;
  v45 = a8;
  v41 = a4;
  v47 = a12;
  v48 = a1;
  v46 = a11;
  v42 = a10;
  v43 = a6;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v19;
  v54 = 1;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v49);
  v20 = v49[0];
  v21 = v49[1];
  v39 = v54;
  type metadata accessor for Binding<TextSelection?>(0);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v24(v19, 1, 1, v22);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v26 = *(v25 + 56);
  v24((a9 + v26), 1, 1, v23);
  LOBYTE(v50) = 0;
  *(a9 + 112) = v20;
  *(a9 + 120) = v21;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v39;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v38[1] = a2;
  *a9 = a2;
  *(a9 + 8) = a3;
  v27 = v42;
  *(a9 + 16) = v41;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  v29 = v43;
  v28 = v44;
  *(a9 + 80) = v43;
  *(a9 + 88) = v28;
  LOBYTE(v24) = v45;
  *(a9 + 96) = v45;
  *(a9 + 104) = v27;
  *(a9 + 72) = 0;

  v30 = v29;
  v31 = v29;
  v32 = v28;
  LOBYTE(v29) = v24;
  outlined copy of Text?(v30, v28, v24, v27);
  v33 = a9 + v26;
  v34 = v40;
  outlined assign with copy of Binding<TextSelection?>?(v40, v33);
  v35 = v48;
  v36 = v46;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v48, a9 + 40);
  outlined consume of Text?(v31, v32, v29, v27);

  outlined destroy of ResolvedTextFieldStyle(v34, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v36 - 8) + 8))(v35, v36);
}

uint64_t TextField<>.init(_:text:selection:prompt:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{
  v57 = a5;
  v58 = a6;
  v56 = a4;
  v55 = a3;
  v53 = a1;
  v54 = a2;
  v51 = a15;
  v49 = a13;
  v50 = a14;
  v48 = a12;
  v46 = a7;
  v47 = a11;
  v52 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = 1;
  v60 = a5;
  v61 = a6;
  v62 = a7;
  v63 = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v59);
  v24 = v59[0];
  v23 = v59[1];
  v25 = v64;
  outlined init with copy of Binding<TextSelection?>(a10, v22, type metadata accessor for Binding<TextSelection?>);
  type metadata accessor for Binding<TextSelection?>(0);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = v22;
  v45 = v22;
  v28(v22, 0, 1, v26);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v31 = *(v30 + 56);
  v28((a9 + v31), 1, 1, v27);
  LOBYTE(v60) = 0;
  *(a9 + 112) = v24;
  *(a9 + 120) = v23;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v25;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v32 = v58;
  *a9 = v57;
  *(a9 + 8) = v32;
  v33 = v47;
  *(a9 + 16) = v46;
  *(a9 + 24) = a8;
  *(a9 + 32) = 0;
  v35 = v48;
  v34 = v49;
  *(a9 + 80) = v33;
  *(a9 + 88) = v35;
  v36 = v50;
  *(a9 + 96) = v34;
  *(a9 + 104) = v36;
  *(a9 + 72) = v51 & 1;

  outlined copy of Text?(v33, v35, v34, v36);
  outlined assign with copy of Binding<TextSelection?>?(v29, a9 + v31);
  v37 = Text.init(_:tableName:bundle:comment:)();
  v39 = v38;
  LOBYTE(a8) = v40;
  v42 = v41;
  outlined consume of Text?(v33, v35, v34, v36);

  outlined destroy of ResolvedTextFieldStyle(v52, type metadata accessor for Binding<TextSelection?>);
  result = outlined destroy of ResolvedTextFieldStyle(v45, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v37;
  *(a9 + 48) = v39;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = v42;
  return result;
}

{
  v53 = a4;
  v52 = a3;
  v50 = a1;
  v51 = a2;
  v49 = a15;
  v47 = a13;
  v48 = a14;
  v46 = a12;
  v54 = a10;
  v55 = a5;
  v44 = a7;
  v45 = a11;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v22;
  v61 = 1;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v56);
  v23 = v56[0];
  v24 = v56[1];
  v25 = v61;
  type metadata accessor for Binding<TextSelection?>(0);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v28(v22, 1, 1, v26);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v30 = *(v29 + 56);
  v28((a9 + v30), 1, 1, v27);
  LOBYTE(v57) = 0;
  *(a9 + 112) = v23;
  *(a9 + 120) = v24;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v25;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  *a9 = v55;
  *(a9 + 8) = a6;
  v42[1] = a6;
  *(a9 + 16) = v44;
  *(a9 + 24) = a8;
  v42[0] = a8;
  *(a9 + 32) = 0;
  v31 = v45;
  v32 = v46;
  *(a9 + 80) = v45;
  *(a9 + 88) = v32;
  LOBYTE(v23) = v47;
  v33 = v48;
  *(a9 + 96) = v47;
  *(a9 + 104) = v33;
  *(a9 + 72) = v49 & 1;

  outlined copy of Text?(v31, v32, v23, v33);
  v34 = v43;
  outlined assign with copy of Binding<TextSelection?>?(v43, a9 + v30);
  v35 = Text.init(_:tableName:bundle:comment:)();
  v37 = v36;
  LOBYTE(a8) = v38;
  v40 = v39;
  outlined consume of Text?(v31, v32, v23, v33);

  outlined destroy of ResolvedTextFieldStyle(v54, type metadata accessor for Binding<TextSelection>);
  result = outlined destroy of ResolvedTextFieldStyle(v34, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v35;
  *(a9 + 48) = v37;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = v40;
  return result;
}

uint64_t TextField<>.init<A>(_:text:selection:prompt:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v49 = a7;
  v50 = a8;
  v51 = a13;
  v52 = a14;
  v53 = a1;
  v48 = a12;
  v46 = a11;
  v47 = a6;
  v44 = a4;
  v45 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v22;
  v59 = 1;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v54);
  v24 = v54[0];
  v23 = v54[1];
  v42 = v59;
  outlined init with copy of Binding<TextSelection?>(a6, v22, type metadata accessor for Binding<TextSelection?>);
  type metadata accessor for Binding<TextSelection?>(0);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v27(v22, 0, 1, v25);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v29 = *(v28 + 56);
  v27((a9 + v29), 1, 1, v26);
  LOBYTE(v55) = 0;
  *(a9 + 112) = v24;
  *(a9 + 120) = v23;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v42;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v41[1] = a2;
  *a9 = a2;
  *(a9 + 8) = a3;
  v30 = v45;
  *(a9 + 16) = v44;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  v32 = v49;
  v31 = v50;
  *(a9 + 80) = v49;
  *(a9 + 88) = v31;
  v33 = v46;
  *(a9 + 96) = v30;
  *(a9 + 104) = v33;
  *(a9 + 72) = v48 & 1;

  v34 = v32;
  v35 = v31;
  outlined copy of Text?(v32, v31, v30, v33);
  v36 = a9 + v29;
  v37 = v43;
  outlined assign with copy of Binding<TextSelection?>?(v43, v36);
  v38 = v53;
  v39 = v51;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v53, a9 + 40);
  outlined consume of Text?(v34, v35, v30, v33);

  outlined destroy of ResolvedTextFieldStyle(v47, type metadata accessor for Binding<TextSelection?>);
  outlined destroy of ResolvedTextFieldStyle(v37, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v39 - 8) + 8))(v38, v39);
}

{
  v47 = a7;
  v48 = a8;
  v52 = a6;
  v53 = a2;
  v49 = a13;
  v50 = a14;
  v51 = a1;
  v46 = a12;
  v45 = a11;
  v43 = a4;
  v44 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v21;
  v59 = 1;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v54);
  v22 = v54[0];
  v23 = v54[1];
  v24 = v59;
  type metadata accessor for Binding<TextSelection?>(0);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v27(v21, 1, 1, v25);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v29 = *(v28 + 56);
  v27((a9 + v29), 1, 1, v26);
  LOBYTE(v55) = 0;
  *(a9 + 112) = v22;
  *(a9 + 120) = v23;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v24;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  *a9 = v53;
  *(a9 + 8) = a3;
  v30 = v44;
  *(a9 + 16) = v43;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  v32 = v47;
  v31 = v48;
  *(a9 + 80) = v47;
  *(a9 + 88) = v31;
  v33 = v45;
  *(a9 + 96) = v30;
  *(a9 + 104) = v33;
  *(a9 + 72) = v46 & 1;

  v34 = v32;
  v35 = v32;
  v36 = v31;
  outlined copy of Text?(v34, v31, v30, v33);
  v37 = a9 + v29;
  v38 = v42;
  outlined assign with copy of Binding<TextSelection?>?(v42, v37);
  v39 = v51;
  v40 = v49;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v51, a9 + 40);
  outlined consume of Text?(v35, v36, v30, v33);

  outlined destroy of ResolvedTextFieldStyle(v52, type metadata accessor for Binding<TextSelection>);
  outlined destroy of ResolvedTextFieldStyle(v38, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v40 - 8) + 8))(v39, v40);
}

uint64_t TextField.init(text:selection:prompt:axis:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v27 = a8;
  v28 = a6;
  v29 = a7;
  v26 = a9;
  v25 = a10;
  v24 = a12;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 1;
  *&v30 = a1;
  *(&v30 + 1) = a2;
  *&v31 = a3;
  *(&v31 + 1) = a4;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v40);
  v30 = v40;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v36 = 0;
  v37 = v41;
  v38 = 2;
  v39 = 0;
  outlined init with copy of Binding<TextSelection?>(a5, v21, type metadata accessor for Binding<TextSelection?>);
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(&v30, a1, a2, a3, a4, 0, v28, v29, v26, v27, v25, a11 & 1, v21, v24, *(&v24 + 1), a13, a14);
  return outlined destroy of ResolvedTextFieldStyle(a5, type metadata accessor for Binding<TextSelection?>);
}

{
  v25 = a8;
  v26 = a6;
  v27 = a7;
  v28 = a5;
  v24 = a9;
  v23 = a12;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 1;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v39);
  v29 = v39;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v35 = 0;
  v36 = v40;
  v37 = 2;
  v38 = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(&v29, a1, a2, a3, a4, 0, v26, v27, v24, v25, a10, a11 & 1, v20, v23, *(&v23 + 1), a13, a14);
  return outlined destroy of ResolvedTextFieldStyle(v28, type metadata accessor for Binding<TextSelection>);
}

uint64_t TextField<>.init(_:text:onEditingChanged:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v47 = a5;
  v48 = a7;
  v46 = a6;
  v54 = a4;
  v53 = a3;
  v51 = a1;
  v52 = a2;
  v44 = a12;
  v50 = a13;
  v43 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v20;
  v55[0] = 1;
  *&v62 = a5;
  *(&v62 + 1) = a6;
  *&v63 = a7;
  *(&v63 + 1) = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  v22 = v21;
  v49 = a11;

  MEMORY[0x18D00ACC0](&v56, v22);
  v57 = 0u;
  v58 = 0u;
  *&v59 = v43;
  *(&v59 + 1) = a11;
  *v60 = v44;
  *&v60[8] = a13;
  v60[16] = 0;
  *&v60[17] = v62;
  v60[19] = BYTE2(v62);
  *&v60[20] = 0;
  v60[24] = v55[0];
  *&v60[25] = 2;
  v60[27] = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v25(v20, 1, 1, v23);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v27 = *(v26 + 56);
  v25((a9 + v27), 1, 1, v24);
  v28 = v59;
  v65 = v59;
  v66[0] = *v60;
  *(v66 + 12) = *&v60[12];
  v30 = v56;
  v29 = v57;
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v61 = 0;
  *(a9 + 144) = v58;
  *(a9 + 160) = v28;
  *(a9 + 112) = v30;
  *(a9 + 128) = v29;
  v31 = v66[1];
  *(a9 + 176) = v66[0];
  *(a9 + 192) = v31;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v32 = v46;
  *a9 = v47;
  *(a9 + 8) = v32;
  *(a9 + 16) = v48;
  *(a9 + 24) = a8;
  *(a9 + 32) = 0;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  outlined init with copy of TextFieldState(&v56, v55);

  v33 = a9 + v27;
  v34 = v45;
  outlined assign with copy of Binding<TextSelection?>?(v45, v33);
  v35 = Text.init(_:tableName:bundle:comment:)();
  v37 = v36;
  LOBYTE(v32) = v38;
  v40 = v39;
  outlined destroy of TextFieldState(&v56);

  result = outlined destroy of ResolvedTextFieldStyle(v34, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v35;
  *(a9 + 48) = v37;
  *(a9 + 56) = v32 & 1;
  *(a9 + 64) = v40;
  return result;
}

uint64_t TextField<>.init(_:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a5;
  v41 = a4;
  v45 = a1;
  v11 = type metadata accessor for LocalizedStringResource();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v42 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = 1;
  *&v53 = a2;
  *(&v53 + 1) = a3;
  *&v54 = a4;
  *(&v54 + 1) = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v47);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  memset(v51, 0, 17);
  *&v51[17] = v53;
  v51[19] = BYTE2(v53);
  *&v51[20] = 0;
  v51[24] = v46[0];
  *&v51[25] = 2;
  v51[27] = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v38 = v15;
  v18(v15, 1, 1, v16);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v20 = *(v19 + 56);
  v18((a6 + v20), 1, 1, v17);
  v21 = v50;
  v56 = v50;
  *v57 = *v51;
  *&v57[12] = *&v51[12];
  v23 = v47;
  v22 = v48;
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v52 = 0;
  *(a6 + 144) = v49;
  *(a6 + 160) = v21;
  *(a6 + 112) = v23;
  *(a6 + 128) = v22;
  v24 = *&v57[16];
  *(a6 + 176) = *v57;
  *(a6 + 192) = v24;
  *(a6 + 208) = 0;
  *(a6 + 220) = 0;
  v39 = a2;
  *a6 = a2;
  *(a6 + 8) = a3;
  v37[1] = a3;
  v25 = v40;
  *(a6 + 16) = v41;
  *(a6 + 24) = v25;
  *(a6 + 32) = 0;
  *(a6 + 72) = 0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  outlined init with copy of TextFieldState(&v47, v46);

  outlined assign with copy of Binding<TextSelection?>?(v15, a6 + v20);
  v26 = v43;
  v28 = v44;
  v27 = v45;
  (*(v43 + 16))(v42, v45, v44);
  v29 = Text.init(_:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  outlined destroy of TextFieldState(&v47);

  (*(v26 + 8))(v27, v28);
  result = outlined destroy of ResolvedTextFieldStyle(v38, type metadata accessor for Binding<TextSelection?>?);
  *(a6 + 40) = v29;
  *(a6 + 48) = v31;
  *(a6 + 56) = v33 & 1;
  *(a6 + 64) = v35;
  return result;
}

uint64_t TextField<>.init<A>(_:text:onEditingChanged:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = a8;
  v39 = a7;
  v37 = a6;
  v40 = a2;
  v41 = a4;
  v45 = a1;
  v44 = a12;
  v43 = a11;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = 1;
  *&v53 = a2;
  *(&v53 + 1) = a3;
  *&v54 = a4;
  *(&v54 + 1) = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  v22 = v21;

  v42 = a10;

  MEMORY[0x18D00ACC0](&v47, v22);
  v48 = 0u;
  v49 = 0u;
  *&v50 = v37;
  *(&v50 + 1) = a7;
  *v51 = v38;
  *&v51[8] = a10;
  v51[16] = 0;
  *&v51[17] = v53;
  v51[19] = BYTE2(v53);
  *&v51[20] = 0;
  v51[24] = v46[0];
  *&v51[25] = 2;
  v51[27] = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v25(v20, 1, 1, v23);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v27 = *(v26 + 56);
  v25((a9 + v27), 1, 1, v24);
  v28 = v50;
  v56 = v50;
  *v57 = *v51;
  *&v57[12] = *&v51[12];
  v30 = v47;
  v29 = v48;
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v52 = 0;
  *(a9 + 144) = v49;
  *(a9 + 160) = v28;
  *(a9 + 112) = v30;
  *(a9 + 128) = v29;
  v31 = *&v57[16];
  *(a9 + 176) = *v57;
  *(a9 + 192) = v31;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v32 = v41;
  *a9 = v40;
  *(a9 + 8) = a3;
  *(a9 + 16) = v32;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  outlined init with copy of TextFieldState(&v47, v46);

  outlined assign with copy of Binding<TextSelection?>?(v20, a9 + v27);
  v33 = v45;
  v34 = v43;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v45, a9 + 40);

  outlined destroy of TextFieldState(&v47);
  outlined destroy of ResolvedTextFieldStyle(v20, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v34 - 8) + 8))(v33, v34);
}

uint64_t closure #1 in TextField<>.init<A>(_:text:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TextField(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 & 0xF8 | 7;
  if (*(v10 + 64) <= 0x10uLL)
  {
    v13 = 16;
  }

  else
  {
    v13 = *(v10 + 64);
  }

  v14 = (((v11 & 0xF8) + 23) & ~v12) + v13 + 2;
  v15 = v12 | v7;
  v16 = (v11 | v7) & 0x100000;
  v17 = ((-110 - v12 - ((((((v7 + 33) & ~v7) + v8) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) | v12) - v14;
  v18 = *a2;
  *a1 = *a2;
  if (v15 == 7 && v16 == 0 && v17 >= 0xFFFFFFFFFFFFFFE7)
  {
    v64 = v13 + 2;
    __n = v14;
    v62 = v10;
    v63 = v9;
    v21 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v21;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    v22 = a2 + v7;
    v23 = (a1 + v7 + 33) & ~v7;
    v24 = (v22 + 33) & ~v7;
    v25 = *(v6 + 16);

    v25(v23, v24, v5);
    *(v23 + v8) = *(v24 + v8);
    v26 = (v23 + v8) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v24 + v8) & 0xFFFFFFFFFFFFFFF8;
    if (*(v27 + 32) < 0xFFFFFFFFuLL)
    {
      v31 = *(v27 + 8);
      *(v26 + 24) = *(v27 + 24);
      *(v26 + 8) = v31;
    }

    else
    {
      v28 = *(v27 + 8);
      v29 = *(v27 + 16);
      v30 = *(v27 + 24);
      outlined copy of Text.Storage(v28, v29, v30);
      *(v26 + 8) = v28;
      *(v26 + 16) = v29;
      *(v26 + 24) = v30;
      *(v26 + 32) = *(v27 + 32);
    }

    v32 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v27 + 47) & 0xFFFFFFFFFFFFFFF8;
    v34 = *(v33 + 108);
    v35 = v13;
    if (v34 >= 2)
    {
      v34 = *v33 + 2;
    }

    if (v34 == 1)
    {
      *v32 = *v33;
      *(v32 + 8) = *(v33 + 8);
      *(v32 + 16) = *(v33 + 16);
      *(v32 + 24) = *(v33 + 24);
      v36 = *(v33 + 32);

      if (v36)
      {
        v37 = *(v33 + 40);
        *(v32 + 32) = v36;
        *(v32 + 40) = v37;
        v38 = *(v33 + 56);
        *(v32 + 48) = *(v33 + 48);
        *(v32 + 56) = v38;
      }

      else
      {
        v42 = *(v33 + 48);
        *(v32 + 32) = *(v33 + 32);
        *(v32 + 48) = v42;
      }

      v43 = *(v33 + 64);
      if (v43)
      {
        v44 = *(v33 + 72);
        *(v32 + 64) = v43;
        *(v32 + 72) = v44;
        v45 = *(v33 + 88);
        *(v32 + 80) = *(v33 + 80);
        *(v32 + 88) = v45;
      }

      else
      {
        v50 = *(v33 + 80);
        *(v32 + 64) = *(v33 + 64);
        *(v32 + 80) = v50;
      }

      *(v32 + 96) = *(v33 + 96);
      v51 = *(v33 + 100);
      *(v32 + 104) = *(v33 + 104);
      *(v32 + 100) = v51;
      *(v32 + 105) = *(v33 + 105);
      *(v32 + 106) = *(v33 + 106);
      *(v32 + 107) = *(v33 + 107);
      *(v32 + 108) = 1;
    }

    else
    {
      *v32 = *v33;
      *(v32 + 8) = *(v33 + 8);
      v39 = *(v33 + 16);

      if (v39)
      {
        v40 = *(v33 + 24);
        *(v32 + 16) = v39;
        *(v32 + 24) = v40;
        v41 = *(v33 + 40);
        *(v32 + 32) = *(v33 + 32);
        *(v32 + 40) = v41;
      }

      else
      {
        v46 = *(v33 + 32);
        *(v32 + 16) = *(v33 + 16);
        *(v32 + 32) = v46;
      }

      v47 = *(v33 + 48);
      if (v47)
      {
        v48 = *(v33 + 56);
        *(v32 + 48) = v47;
        *(v32 + 56) = v48;
        v49 = *(v33 + 72);
        *(v32 + 64) = *(v33 + 64);
        *(v32 + 72) = v49;
      }

      else
      {
        v52 = *(v33 + 64);
        *(v32 + 48) = *(v33 + 48);
        *(v32 + 64) = v52;
      }

      *(v32 + 80) = *(v33 + 80);
      v53 = *(v33 + 84);
      *(v32 + 88) = *(v33 + 88);
      *(v32 + 84) = v53;
      *(v32 + 89) = *(v33 + 89);
      *(v32 + 90) = *(v33 + 90);
      *(v32 + 91) = *(v33 + 91);
      *(v32 + 96) = *(v33 + 96);
      *(v32 + 108) = 0;
    }

    v54 = ((v32 + 116) & 0xFFFFFFFFFFFFFFF8);
    v55 = ((v33 + 116) & 0xFFFFFFFFFFFFFFF8);
    v56 = ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (*v56 < 0xFFFFFFFFuLL)
    {
      memcpy(v54, v55, __n);
    }

    else
    {
      *v54 = *v55;
      *((v54 + 15) & 0xFFFFFFFFFFFFFFF8) = *v56;
      v57 = ((v54 + 23) & 0xFFFFFFFFFFFFFFF8);
      v58 = ((v55 + 23) & 0xFFFFFFFFFFFFFFF8);
      v59 = *(v58 + v35);

      if (v59 > 1)
      {
        memcpy(v57, v58, v64);
      }

      else
      {
        if (v59 == 1)
        {
          (*(v62 + 16))(v57, v58, v63);
          v60 = 1;
        }

        else
        {
          v60 = 0;
          *v57 = *v58;
        }

        *(v57 + v35) = v60;
        *(v57 + v35 + 1) = *(v58 + v35 + 1);
      }
    }
  }

  else
  {
    a1 = v18 + ((v15 + 16) & ~v15);
  }

  return a1;
}

uint64_t initializeWithTake for TextField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (v7 + 33 + a1) & ~v7;
  v9 = (v7 + 33 + a2) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32);
  v11 = v10 + v8;
  v12 = v10 + v9;
  *v11 = *v12;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 &= 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  *(v11 + 24) = *(v12 + 24);
  *(v11 + 8) = v13;
  v14 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 108);
  if (v16 >= 2)
  {
    v16 = *v15 + 2;
  }

  if (v16 == 1)
  {
    v17 = *v15;
    v18 = *(v15 + 32);
    *(v14 + 16) = *(v15 + 16);
    *(v14 + 32) = v18;
    *v14 = v17;
    v19 = *(v15 + 48);
    v20 = *(v15 + 64);
    v21 = *(v15 + 80);
    *(v14 + 92) = *(v15 + 92);
  }

  else
  {
    LOBYTE(v16) = 0;
    v22 = *v15;
    v23 = *(v15 + 32);
    *(v14 + 16) = *(v15 + 16);
    *(v14 + 32) = v23;
    *v14 = v22;
    v19 = *(v15 + 48);
    v20 = *(v15 + 64);
    v21 = *(v15 + 80);
    *(v14 + 96) = *(v15 + 96);
  }

  *(v14 + 64) = v20;
  *(v14 + 80) = v21;
  *(v14 + 48) = v19;
  *(v14 + 108) = v16;
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v25 = *(v24 - 8);
  v26 = *(v25 + 80) & 0xF8 | 7;
  v27 = ~v26;
  v28 = ((v14 + v26 + 109) & ~v26);
  v29 = ((v15 + v26 + 109) & ~v26);
  if (*(v25 + 64) <= 0x10uLL)
  {
    v30 = 16;
  }

  else
  {
    v30 = *(v25 + 64);
  }

  v31 = v30 + 2;
  v32 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v32 < 0xFFFFFFFFuLL)
  {
    v31 += (v26 + 16) & v27;
    v38 = ((v14 + v26 + 109) & ~v26);
LABEL_16:
    memcpy(v38, v29, v31);
    return a1;
  }

  *v28 = *v29;
  v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v32;
  v34 = v26 + 8;
  v35 = ((v33 + v34) & v27);
  v36 = ((v32 + v34) & v27);
  v37 = *(v36 + v30);
  if (v37 > 1)
  {
    v38 = v35;
    v29 = ((v32 + v34) & v27);
    goto LABEL_16;
  }

  if (v37 == 1)
  {
    (*(v25 + 32))(v35, (v32 + v34) & v27, v24);
    v39 = 1;
  }

  else
  {
    v39 = 0;
    *v35 = *v36;
  }

  *(v35 + v30) = v39;
  *(v35 + v30 + 1) = *(v36 + v30 + 1);
  return a1;
}

uint64_t *assignWithTake for TextField(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;

  *(a1 + 32) = *(a2 + 32);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (a1 + v9 + 33) & ~v9;
  v11 = (a2 + v9 + 33) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24);
  v13 = v12 + v10;
  v14 = v12 + v11;
  *v13 = *v14;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  if (*((v13 & 0xFFFFFFFFFFFFFFF8) + 32) >= 0xFFFFFFFFuLL)
  {
    if (*(v16 + 32) >= 0xFFFFFFFFuLL)
    {
      v17 = *(v16 + 24);
      v18 = *(v15 + 8);
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);
      *(v15 + 8) = *(v16 + 8);
      *(v15 + 24) = v17;
      outlined consume of Text.Storage(v18, v19, v20);
      *(v15 + 32) = *(v16 + 32);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*(v15 + 8), *(v15 + 16), *(v15 + 24));
  }

  v21 = *(v16 + 8);
  *(v15 + 24) = *(v16 + 24);
  *(v15 + 8) = v21;
LABEL_6:
  v22 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (v22 == v23)
  {
    goto LABEL_26;
  }

  v24 = *(v22 + 108);
  if (v24 >= 2)
  {
    v24 = *v22 + 2;
  }

  if (v24 == 1)
  {

    if (*(v22 + 32))
    {
    }

    if (!*(v22 + 64))
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (*(v22 + 16))
    {
    }

    if (!*(v22 + 48))
    {
      goto LABEL_19;
    }
  }

LABEL_19:

LABEL_20:
  v25 = *(v23 + 108);
  if (v25 >= 2)
  {
    v25 = *v23 + 2;
  }

  if (v25 == 1)
  {
    v26 = *v23;
    v27 = *(v23 + 32);
    *(v22 + 16) = *(v23 + 16);
    *(v22 + 32) = v27;
    *v22 = v26;
    v28 = *(v23 + 48);
    v29 = *(v23 + 64);
    v30 = *(v23 + 80);
    *(v22 + 92) = *(v23 + 92);
  }

  else
  {
    LOBYTE(v25) = 0;
    v31 = *v23;
    v32 = *(v23 + 32);
    *(v22 + 16) = *(v23 + 16);
    *(v22 + 32) = v32;
    *v22 = v31;
    v28 = *(v23 + 48);
    v29 = *(v23 + 64);
    v30 = *(v23 + 80);
    *(v22 + 96) = *(v23 + 96);
  }

  *(v22 + 64) = v29;
  *(v22 + 80) = v30;
  *(v22 + 48) = v28;
  *(v22 + 108) = v25;
LABEL_26:
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v34 = *(v33 - 8);
  v35 = *(v34 + 80) & 0xF8;
  v36 = v35 | 7;
  v37 = ~(v35 | 7);
  v38 = ((v22 + (v35 | 7) + 109) & v37);
  v39 = ((v23 + (v35 | 7) + 109) & v37);
  if (*(v34 + 64) <= 0x10uLL)
  {
    v40 = 16;
  }

  else
  {
    v40 = *(v34 + 64);
  }

  v41 = (v35 + 23) & ~v36;
  v42 = v40 + 1;
  v43 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  v44 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  v45 = *v44;
  if (*v43 >= 0xFFFFFFFFuLL)
  {
    v59 = v33;
    v60 = *(v33 - 8);
    if (v45 >= 0xFFFFFFFF)
    {
      *v38 = *v39;

      *v43 = *v44;

      v46 = ((v43 + v36 + 8) & v37);
      v47 = ((v44 + v36 + 8) & v37);
      v48 = v46[v40];
      v49 = v47[v40];
      if (v48 > 1)
      {
        if (v49 <= 1)
        {
          if (v49 == 1)
          {
            (*(v60 + 32))((v43 + v36 + 8) & v37, (v44 + v36 + 8) & v37, v59);
LABEL_68:
            v57 = 1;
LABEL_70:
            v46[v40] = v57;
            goto LABEL_71;
          }

LABEL_69:
          v57 = 0;
          *v46 = *v47;
          goto LABEL_70;
        }
      }

      else
      {
        v50 = v60;
        if (v49 <= 1)
        {
          if (v46 == v47)
          {
LABEL_71:
            v46[v40 + 1] = v47[v40 + 1];
            return a1;
          }

          if (v48 == 1)
          {
            (*(v60 + 8))((v43 + v36 + 8) & v37, v59);
            v49 = v47[v40];
            v51 = v49 - 2;
            if (v49 < 2)
            {
              v50 = v60;
              goto LABEL_66;
            }

            if (v40 <= 3)
            {
              v52 = v40;
            }

            else
            {
              v52 = 4;
            }

            if (v52 <= 1)
            {
              v50 = v60;
              if (!v52)
              {
                goto LABEL_66;
              }

              v53 = *v47;
            }

            else
            {
              if (v52 == 2)
              {
                v53 = *v47;
              }

              else if (v52 == 3)
              {
                v53 = *v47 | (*(((v44 + v36 + 8) & v37) + 2) << 16);
              }

              else
              {
                v53 = *v47;
              }

              v50 = v60;
            }

            v56 = (v53 | (v51 << (8 * v40))) + 2;
            v49 = v53 + 2;
            if (v40 < 4)
            {
              v49 = v56;
            }
          }

LABEL_66:
          if (v49 == 1)
          {
            (*(v50 + 32))((v43 + v36 + 8) & v37, (v44 + v36 + 8) & v37, v59);
            goto LABEL_68;
          }

          goto LABEL_69;
        }

        if (v48 == 1)
        {
          (*(v60 + 8))((v43 + v36 + 8) & v37, v59);
        }
      }

      goto LABEL_56;
    }

    if (*(((v43 + v36 + 8) & v37) + v40) == 1)
    {
      (*(v60 + 8))();
    }

    goto LABEL_50;
  }

  if (v45 < 0xFFFFFFFF)
  {
LABEL_50:
    memcpy(v38, v39, v41 + v40 + 2);
    return a1;
  }

  *v38 = *v39;
  *v43 = *v44;
  v46 = ((v43 + v36 + 8) & v37);
  v47 = ((v44 + v36 + 8) & v37);
  v54 = v47[v40];
  if (v54 > 1)
  {
LABEL_56:
    memcpy(v46, v47, v40 + 2);
    return a1;
  }

  if (v54 == 1)
  {
    (*(v34 + 32))((v43 + v36 + 8) & v37, (v44 + v36 + 8) & v37, v33);
    v42 = v40 + 1;
    v55 = 1;
  }

  else
  {
    v55 = 0;
    *v46 = *v47;
  }

  v46[v40] = v55;
  v46[v42] = v47[v42];
  return a1;
}

uint64_t getEnumTagSinglePayload for TextField(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v11 = *(v6 + 80);
  v12 = *(v10 + 80);
  v13 = *(v10 + 64);
  if (v13 <= 0x10)
  {
    v13 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v14 = -(((-17 - (v12 & 0xF8 | 7)) | v12 & 0xF8 | 7) - v13 + ((((((-34 - v11) | v11) - *(v6 + 64)) | 7) - (v12 & 0xF8 | 7) - 152) | v12 & 0xF8 | 7));
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v8 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v21 = *(v6 + 48);

        return v21((a1 + v11 + 33) & ~v11, v7, v5);
      }

      else
      {
        v20 = *(a1 + 1);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_28;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v8 + (v14 | v19) + 1;
}

void storeEnumTagSinglePayload for TextField(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v12 + 80) & 0xF8 | 7;
  v15 = *(v12 + 64);
  if (v15 <= 0x10)
  {
    v15 = 16;
  }

  v16 = -(((-17 - v14) | v14) - v15 + ((((((-34 - v13) | v13) - *(v8 + 64)) | 7) - v14 - 152) | v14));
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
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
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_48:
              if (v17 == 2)
              {
                *(a1 + v16) = v19;
              }

              else
              {
                *(a1 + v16) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v22;
        *(a1 + 2) = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v17)
    {
      *(a1 + v16) = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v16) = 0;
  }

  else if (v17)
  {
    *(a1 + v16) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v9 & 0x80000000) != 0)
  {
    v23 = *(v24 + 56);

    v23((a1 + v13 + 33) & ~v13, a2, v9, v7);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t assignWithCopy for TextFieldState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = (a1 + 16);
  v6 = (a2 + 16);
  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v5)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;

      v8 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v8;
    }

    else
    {
      outlined destroy of TextFieldState.FormatActions(a1 + 16);
      v11 = *(a2 + 32);
      *v4 = *v6;
      *(a1 + 32) = v11;
    }
  }

  else if (v5)
  {
    v9 = *(a2 + 24);
    *(a1 + 16) = v5;
    *(a1 + 24) = v9;
    v10 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v10;
  }

  else
  {
    v12 = *(a2 + 32);
    *v4 = *v6;
    *(a1 + 32) = v12;
  }

  v13 = (a1 + 48);
  v15 = (a2 + 48);
  v14 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v14)
    {
      v16 = *(a2 + 56);
      *(a1 + 48) = v14;
      *(a1 + 56) = v16;

      v17 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v17;
    }

    else
    {
      outlined destroy of TextFieldState.FormatActions(a1 + 48);
      v20 = *(a2 + 64);
      *v13 = *v15;
      *(a1 + 64) = v20;
    }
  }

  else if (v14)
  {
    v18 = *(a2 + 56);
    *(a1 + 48) = v14;
    *(a1 + 56) = v18;
    v19 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v19;
  }

  else
  {
    v21 = *(a2 + 64);
    *v13 = *v15;
    *(a1 + 64) = v21;
  }

  *(a1 + 80) = *(a2 + 80);
  v22 = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 84) = v22;
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 91) = *(a2 + 91);
  return a1;
}

uint64_t outlined destroy of TextFieldState.FormatActions(uint64_t a1)
{

  return a1;
}

_OWORD *assignWithTake for TextFieldState.DeprecatedActions(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t partial apply for closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for Binding() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(a1, a2, v2 + v7, v8, v5);
}

uint64_t partial apply for closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = v7 + *(*(v5 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for Binding() - 8);
  v10 = v2 + ((v8 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(a1, a2, v2 + v7, v10, v5, v6);
}

{
  return closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(a1, a2, v2 + ((*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80)), *(v2 + 16), *(v2 + 24));
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

void type metadata accessor for _TraitWritingModifier<IsLinkedGroupTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<IsLinkedGroupTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<IsLinkedGroupTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<IsLinkedGroupTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<IsLinkedGroupTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<IsLinkedGroupTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<IsLinkedGroupTraitKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<IsLinkedGroupTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t View.springLoadingBehavior(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>, &type metadata for SpringLoadingBehavior, MEMORY[0x1E6980A08]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-1] - v7;
  v9 = *a1;
  swift_getKeyPath();
  v14 = v9;
  View.environment<A>(_:_:)();

  v10 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>();
  v13[0] = a3;
  v13[1] = v10;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v13);
  lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior();
  View.input<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

void EnvironmentValues.springLoadingBehavior.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.springLoadingBehavior : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.springLoadingBehavior : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
  lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>, &type metadata for SpringLoadingBehavior, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

double EnvironmentValues.springLoadingBehavior.setter(char *a1)
{
  type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
  lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double (*EnvironmentValues.springLoadingBehavior.modify(uint64_t **a1))(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
  lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, MEMORY[0x1E697FE40]);
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.springLoadingBehavior.modify;
}

double EnvironmentValues.springLoadingBehavior.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
  lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.springLoadingBehavior.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, MEMORY[0x1E697FE40]);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

uint64_t View.springLoaded(automaticallyEnabled:onActivate:onHighlightChange:onEnded:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[0] = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  return MEMORY[0x18D00A570](v10, a8, &type metadata for SpringLoadingInteractionModifier, a9);
}

unint64_t lazy protocol witness table accessor for type SpringLoadingBehavior and conformance SpringLoadingBehavior()
{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior and conformance SpringLoadingBehavior;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior and conformance SpringLoadingBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpringLoadingBehavior, &type metadata for SpringLoadingBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior and conformance SpringLoadingBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpringLoadingBehavior.HighlightState and conformance SpringLoadingBehavior.HighlightState()
{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior.HighlightState and conformance SpringLoadingBehavior.HighlightState;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior.HighlightState and conformance SpringLoadingBehavior.HighlightState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpringLoadingBehavior.HighlightState, &type metadata for SpringLoadingBehavior.HighlightState, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior.HighlightState and conformance SpringLoadingBehavior.HighlightState);
  }

  return result;
}

uint64_t type metadata accessor for SpringLoadedViewResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for SpringLoadedViewResponder;
  if (!type metadata singleton initialization cache for SpringLoadedViewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double static SpringLoadingInteractionModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, void *a4@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v33 = a2[2];
  v34 = v5;
  v7 = a2[3];
  v35 = a2[4];
  v8 = a2[1];
  v31 = *a2;
  v32 = v8;
  v27 = v33;
  v28 = v7;
  v29 = a2[4];
  v9 = *a1;
  v36 = *(a2 + 20);
  v30 = *(a2 + 20);
  v25 = v31;
  v26 = v6;
  a3(&v19);
  v20 = v34;
  v21 = DWORD2(v34);
  *&v25 = v34;
  DWORD2(v25) = DWORD2(v34);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    if (one-time initialization token for springLoadingBehavior != -1)
    {
      swift_once();
    }

    *&v23[0] = static CachedEnvironment.ID.springLoadingBehavior;
    swift_beginAccess();
    v10 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    v11 = _ViewInputs.isEnabled.getter();
    v23[0] = v19;

    v12 = _ViewOutputs.viewResponders()();

    type metadata accessor for SpringLoadedViewResponder(0);
    v13 = swift_allocObject();
    *(v13 + 216) = 0;
    *(v13 + 224) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    *(v13 + 232) = 0;
    *(v13 + 240) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    *(v13 + 248) = 0;
    v14 = v33;
    v23[3] = v34;
    v23[4] = v35;
    v15 = v32;
    v23[0] = v31;
    *(v13 + 256) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    *(v13 + 264) = 0;
    v24 = v36;
    v23[1] = v15;
    v23[2] = v14;
    outlined init with copy of _ViewInputs(&v31, &v22);
    v16 = DefaultLayoutViewResponder.init(inputs:)();
    *&v25 = __PAIR64__(v10, v9);
    *(&v25 + 1) = __PAIR64__(v12, v11);
    *&v26 = v16;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for [ViewResponder](0);
    lazy protocol witness table accessor for type SpringLoadedResponderFilter and conformance SpringLoadedResponderFilter();
    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v25) = 0;
    v17 = PreferencesOutputs.subscript.setter();
    *&v25 = v20;
    DWORD2(v25) = v21;
    MEMORY[0x1EEE9AC00](v17);
    outlined init with copy of PreferencesInputs(&v20, v23);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  *a4 = v19;
  result = *(&v19 + 1);
  a4[1] = *(&v19 + 1);
  return result;
}

uint64_t SpringLoadedViewResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v1 = swift_allocObject();
  *(v1 + 216) = 0;
  *(v1 + 224) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v1 + 232) = 0;
  *(v1 + 240) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v1 + 248) = 0;
  *(v1 + 256) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v1 + 264) = 0;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t SpringLoadedResponderFilter.updateValue()()
{
  v1 = *(v0 + 16);
  Value = AGGraphGetValue();
  v3 = 0;
  if (*Value == 1)
  {
    v4 = *AGGraphGetValue();
    v5 = AGGraphGetValue();
    if (v4 == 1)
    {
      v3 = 1;
    }

    else if (v4 == 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = *v5;
    }
  }

  *(v1 + 216) = v3;
  v6 = AGGraphGetValue();
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  *(v1 + 224) = v8;
  *(v1 + 232) = v7;

  v9 = AGGraphGetValue();
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);
  *(v1 + 240) = v11;
  *(v1 + 248) = v10;

  v12 = AGGraphGetValue();
  v14 = *(v12 + 40);
  v13 = *(v12 + 48);
  *(v1 + 256) = v14;
  *(v1 + 264) = v13;

  type metadata accessor for [ViewResponder](0);

  AGGraphGetValue();
  if (v15)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18CD69590;
    *(v17 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t SpringLoadedViewResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 216) = 0;
  *(v2 + 224) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v2 + 232) = 0;
  *(v2 + 240) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v2 + 248) = 0;
  *(v2 + 256) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v2 + 264) = 0;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

double SpringLoadedViewResponder.__ivar_destroyer()
{

  return result;
}

double SpringLoadedViewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

void type metadata accessor for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>)
  {
    lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>);
    }
  }
}

double destroy for SpringLoadingInteractionModifier(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for SpringLoadingInteractionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 48);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;

  return a1;
}

uint64_t assignWithCopy for SpringLoadingInteractionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  return a1;
}

uint64_t assignWithTake for SpringLoadingInteractionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t lazy protocol witness table accessor for type SpringLoadingBehavior.Guts and conformance SpringLoadingBehavior.Guts()
{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior.Guts and conformance SpringLoadingBehavior.Guts;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior.Guts and conformance SpringLoadingBehavior.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpringLoadingBehavior.Guts, &type metadata for SpringLoadingBehavior.Guts, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior.Guts and conformance SpringLoadingBehavior.Guts);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpringLoadedResponderFilter and conformance SpringLoadedResponderFilter()
{
  result = lazy protocol witness table cache variable for type SpringLoadedResponderFilter and conformance SpringLoadedResponderFilter;
  if (!lazy protocol witness table cache variable for type SpringLoadedResponderFilter and conformance SpringLoadedResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpringLoadedResponderFilter, &unk_1EFFB11D0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadedResponderFilter and conformance SpringLoadedResponderFilter);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t assignWithCopy for SpringLoadedResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for SpringLoadedResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t storeEnumTagSinglePayload for SpringLoadedResponderFilter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __DesignTimeSelectionIdentifier.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static __DesignTimeSelectionIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int __DesignTimeSelectionIdentifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __DesignTimeSelectionIdentifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __DesignTimeSelectionIdentifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier()
{
  result = lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier;
  if (!lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __DesignTimeSelectionIdentifier, &type metadata for __DesignTimeSelectionIdentifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier;
  if (!lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __DesignTimeSelectionIdentifier, &type metadata for __DesignTimeSelectionIdentifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __DesignTimeSelectionIdentifier(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for SectionStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>>)
  {
    type metadata accessor for ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>);
    type metadata accessor for SectionStyleModifier<SidebarSectionStyle>(255, &lazy cache variable for type metadata for SectionStyleModifier<PlainSectionStyle>, lazy protocol witness table accessor for type PlainSectionStyle and conformance PlainSectionStyle, &type metadata for PlainSectionStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

void type metadata accessor for Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>()
{
  if (!lazy cache variable for type metadata for Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>)
  {
    v0 = type metadata accessor for Section(0, &type metadata for SectionStyleConfiguration.Header, &type metadata for SectionStyleConfiguration.RawContent, &type metadata for SectionStyleConfiguration.Footer);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer> and conformance <> Section<A, B, C>)
  {
    v4[3] = v0;
    v4[4] = v1;
    type metadata accessor for Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>();
    v4[0] = &protocol witness table for SectionStyleConfiguration.Header;
    v4[1] = &protocol witness table for SectionStyleConfiguration.RawContent;
    v4[2] = &protocol witness table for SectionStyleConfiguration.Footer;
    result = swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>, &protocol witness table for IsSearchImplementedModifier);
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<TabViewContentToolbarHost> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>(255);
    type metadata accessor for _ViewModifier_Content<TabViewCommonModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<TabViewContentToolbarHost>, lazy protocol witness table accessor for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost, &type metadata for TabViewContentToolbarHost, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>)
  {
    type metadata accessor for _ViewModifier_Content<TabViewCommonModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabViewCommonModifier>, lazy protocol witness table accessor for type TabViewCommonModifier and conformance TabViewCommonModifier, &type metadata for TabViewCommonModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TabViewCommonModifier and conformance TabViewCommonModifier()
{
  result = lazy protocol witness table cache variable for type TabViewCommonModifier and conformance TabViewCommonModifier;
  if (!lazy protocol witness table cache variable for type TabViewCommonModifier and conformance TabViewCommonModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewCommonModifier, &type metadata for TabViewCommonModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewCommonModifier and conformance TabViewCommonModifier);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<TabViewCommonModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost()
{
  result = lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost;
  if (!lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewContentToolbarHost, &type metadata for TabViewContentToolbarHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost;
  if (!lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewContentToolbarHost, &type metadata for TabViewContentToolbarHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost;
  if (!lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewContentToolbarHost, &type metadata for TabViewContentToolbarHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost;
  if (!lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewContentToolbarHost, &type metadata for TabViewContentToolbarHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost;
  if (!lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewContentToolbarHost, &type metadata for TabViewContentToolbarHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TabViewCommonModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TabViewCommonModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TabViewCommonModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabViewCommonModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabViewCommonModifier>, lazy protocol witness table accessor for type TabViewCommonModifier and conformance TabViewCommonModifier, &type metadata for TabViewCommonModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TabViewCommonModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<TabViewContentToolbarHost> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<TabViewContentToolbarHost> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<TabViewContentToolbarHost> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabViewCommonModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<TabViewContentToolbarHost>, lazy protocol witness table accessor for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost, &type metadata for TabViewContentToolbarHost, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<TabViewContentToolbarHost> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t EnvironmentValues.isTabBarShowingSections.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.isTabBarShowingSections : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.isTabBarShowingSections : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void EnvironmentValues.tabBarPlacement.getter(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(v5 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1, a2, a3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1, a2, a3);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1, a2, a3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1, a2, a3);

    PropertyList.subscript.getter();
  }
}

Swift::Int TabBarPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int TabViewBottomAccessoryPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TabBarPlacement and conformance TabBarPlacement()
{
  result = lazy protocol witness table cache variable for type TabBarPlacement and conformance TabBarPlacement;
  if (!lazy protocol witness table cache variable for type TabBarPlacement and conformance TabBarPlacement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabBarPlacement, &type metadata for TabBarPlacement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarPlacement and conformance TabBarPlacement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabViewBottomAccessoryPlacement and conformance TabViewBottomAccessoryPlacement()
{
  result = lazy protocol witness table cache variable for type TabViewBottomAccessoryPlacement and conformance TabViewBottomAccessoryPlacement;
  if (!lazy protocol witness table cache variable for type TabViewBottomAccessoryPlacement and conformance TabViewBottomAccessoryPlacement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewBottomAccessoryPlacement, &type metadata for TabViewBottomAccessoryPlacement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewBottomAccessoryPlacement and conformance TabViewBottomAccessoryPlacement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabBarPlacement.Placement and conformance TabBarPlacement.Placement()
{
  result = lazy protocol witness table cache variable for type TabBarPlacement.Placement and conformance TabBarPlacement.Placement;
  if (!lazy protocol witness table cache variable for type TabBarPlacement.Placement and conformance TabBarPlacement.Placement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabBarPlacement.Placement, &type metadata for TabBarPlacement.Placement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarPlacement.Placement and conformance TabBarPlacement.Placement);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TabBarPlacement.Placement()
{
  v1 = *v0;
  v2 = 0x726142706F74;
  v3 = 0x61426D6F74746F62;
  v4 = 0x746E656D616E726FLL;
  if (v1 != 3)
  {
    v4 = 1701273968;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72616265646973;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ResetTabViewEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetTabViewEnvironmentModifier(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

double _ViewTest.touchEvent(_:globalLocation:phase:maximumPossibleForce:timestamp:modifiers:type:)@<D0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  v16 = *a4;
  v17 = *a5;
  v18 = *a7;
  if (a3)
  {
    v19 = a9;
    v20 = a10;
    if (static _TestApp.host.getter())
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        [v21 convertPoint:0 toView:{a9, a10}];
        v19 = v22;
        v20 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v19 = a9;
        v20 = a10;
      }
    }
  }

  else
  {
    v19 = a1;
    v20 = a2;
  }

  *a8 = v17;
  *(a8 + 8) = v16;
  *(a8 + 16) = 0;
  *(a8 + 24) = a9;
  *(a8 + 32) = a10;
  *(a8 + 40) = v19;
  *(a8 + 48) = v20;
  result = 0.25;
  *(a8 + 56) = xmmword_18CD8BF90;
  *(a8 + 72) = a11;
  *(a8 + 88) = 0;
  *(a8 + 96) = 0;
  *(a8 + 80) = a6;
  *(a8 + 104) = v18;
  return result;
}

Swift::Void __swiftcall _ViewTest.sendTouchSequence(_:)(Swift::OpaquePointer a1)
{
  v59 = v2;
  v58 = v1;
  type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v56 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v56 - v10);
  type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?, type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v56 - v16);
  v62 = eventId;
  if (__OFADD__(eventId, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  ++eventId;
  v18 = MEMORY[0x18D00CD40](a1._rawValue, v5, v15);
  v61 = v18 - 1;
  if (!__OFSUB__(v18, 1))
  {
    v60 = v11;
    v78[1] = a1._rawValue;
    type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)], type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date), MEMORY[0x1E69E62F8]);
    v20 = v19;
    v22 = lazy protocol witness table accessor for type [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)] and conformance [A](v21);
    MEMORY[0x18D00CB20](&v70, v20, v22);
    v78[0] = v70;
    type metadata accessor for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>(0, &lazy cache variable for type metadata for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>, MEMORY[0x1E69E6E48], v23);
    EnumeratedSequence.makeIterator()();
    type metadata accessor for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>(0, &lazy cache variable for type metadata for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>.Iterator, MEMORY[0x1E69E6E40], v24);
    v65 = v25;
    for (i = v17; ; v17 = i)
    {
      v26 = v66;
      EnumeratedSequence.Iterator.next()();
      outlined init with take of (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?(v26, v17, v27);
      type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))(0);
      v29 = v28;
      if ((*(*(v28 - 8) + 48))(v17, 1, v28) == 1)
      {

        return;
      }

      v67 = *v17;
      v30 = (v17 + *(v29 + 48));
      v31 = *v30;
      v32 = v30[1];
      v68 = v30[2];
      v33 = v68;
      v69 = v30[3];
      v34 = *(v30 + 32);
      v35 = *(v5 + 64);
      v36 = type metadata accessor for Date();
      v37 = *(v36 - 8);
      v38 = *(v37 + 32);
      v39 = v63;
      v38(&v63[v35], v30 + v35, v36);
      v40 = *(v5 + 64);
      v41 = v60;
      *v60 = v31;
      *(v41 + 8) = v32;
      v42 = v69;
      *(v41 + 16) = v33;
      *(v41 + 24) = v42;
      *(v41 + 32) = v34;
      v38((v41 + v40), &v39[v35], v36);
      v43 = v67 == v61 ? 2 : 1;
      if (!v67)
      {
        v43 = 0;
      }

      v74[0] = &unk_1EFFB1530;
      v74[1] = v62;
      LOBYTE(v78[0]) = v43;
      v44 = v64;
      outlined init with copy of (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(v41, v64, type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date));
      v45 = *(v5 + 64);
      Date.timeIntervalSinceReferenceDate.getter();
      v47 = v46;
      (*(v37 + 8))(v44 + v45, v36);
      v70 = v47;
      v73 = 0;
      v76 = &type metadata for TouchEvent;
      v77 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();
      v75 = swift_allocObject();
      _ViewTest.touchEvent(_:globalLocation:phase:maximumPossibleForce:timestamp:modifiers:type:)(v68, v69, v34, v78, &v70, 0, &v73, v75 + 16, v31, v32, 6.66666667);
      type metadata accessor for _DictionaryStorage<EventID, EventType>(0);
      v48 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(v74, &v70, type metadata accessor for (EventID, EventType));
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v71);
      if (v50)
      {
        break;
      }

      v48[(v49 >> 6) + 8] |= 1 << v49;
      v51 = (v48[6] + 16 * v49);
      v52 = v71;
      *v51 = v70;
      v51[1] = v52;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v72, v48[7] + 40 * v49);
      v53 = v48[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_15;
      }

      v48[2] = v55;
      outlined destroy of (EventID, EventType)(v74, type metadata accessor for (EventID, EventType));
      specialized _ViewTest.sendEvents(_:)(v48);

      outlined destroy of (EventID, EventType)(v41, type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date));
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void _ViewTest.measureTouchSequence(host:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a5;
  v72 = a4;
  type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v71 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v79 = (v66 - v14);
  type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?, type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v76 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (v66 - v19);
  v87 = MEMORY[0x1E69E7CC0];
  v69 = eventId;
  if (__OFADD__(eventId, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  ++eventId;
  v21 = MEMORY[0x18D00CD40](a3, v9, v18);
  v68 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_19:
    __break(1u);
    return;
  }

  *&v85[0] = a3;
  type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)], type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date), MEMORY[0x1E69E62F8]);
  v23 = v22;
  v25 = lazy protocol witness table accessor for type [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)] and conformance [A](v24);
  MEMORY[0x18D00CB20](v88, v23, v25);
  *&v85[0] = *&v88[0];
  type metadata accessor for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>(0, &lazy cache variable for type metadata for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>, MEMORY[0x1E69E6E48], v26);
  EnumeratedSequence.makeIterator()();
  type metadata accessor for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>(0, &lazy cache variable for type metadata for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>.Iterator, MEMORY[0x1E69E6E40], v27);
  v75 = v28;
  v29 = MEMORY[0x1E69E7CC0];
  v66[1] = a1;
  v67 = a2;
  v66[0] = v20;
  while (1)
  {
    v30 = v76;
    EnumeratedSequence.Iterator.next()();
    outlined init with take of (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?(v30, v20, v31);
    type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))(0);
    v33 = v32;
    if ((*(*(v32 - 8) + 48))(v20, 1, v32) == 1)
    {
      break;
    }

    v77 = *v20;
    v34 = (v20 + *(v33 + 48));
    v35 = *v34;
    v36 = v34[1];
    v37 = v34[2];
    v80 = v34[3];
    v81 = v37;
    v38 = *(v34 + 32);
    v39 = *(v9 + 64);
    v40 = type metadata accessor for Date();
    v41 = *(v40 - 8);
    v78 = v29;
    v42 = *(v41 + 32);
    v43 = v70;
    v42(&v70[v39], v34 + v39, v40);
    v44 = *(v9 + 64);
    v45 = v79;
    *v79 = v35;
    v45[1] = v36;
    v46 = v80;
    v45[2] = v81;
    v45[3] = v46;
    *(v45 + 32) = v38;
    v42(v45 + v44, &v43[v39], v40);
    v29 = v78;
    if (v77 == v68)
    {
      v47 = 2;
    }

    else
    {
      v47 = 1;
    }

    if (!v77)
    {
      v47 = 0;
    }

    v84 = v47;
    v48 = v71;
    outlined init with copy of (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(v45, v71, type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date));
    v49 = *(v9 + 64);
    Date.timeIntervalSinceReferenceDate.getter();
    v51 = v50;
    v52 = v40;
    a2 = v67;
    (*(v41 + 8))(v48 + v49, v52);
    v83 = v51;
    v82 = 0;
    _ViewTest.touchEvent(_:globalLocation:phase:maximumPossibleForce:timestamp:modifiers:type:)(v81, v80, v38, &v84, &v83, 0, &v82, v85, v35, v36, 6.66666667);
    v88[4] = v85[4];
    v89[0] = v86[0];
    *(v89 + 9) = *(v86 + 9);
    v88[0] = v85[0];
    v88[1] = v85[1];
    v88[2] = v85[2];
    v88[3] = v85[3];
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    v54 = v73;
    v66[-6] = v72;
    v66[-5] = v54;
    v66[-4] = v74;
    v66[-3] = &unk_1EFFB1530;
    v64 = v69;
    v65 = v88;
    _BenchmarkHost.measureAction(action:)();
    v56 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v58 = *(v29 + 2);
    v57 = *(v29 + 3);
    if (v58 >= v57 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v29);
    }

    *(v29 + 2) = v58 + 1;
    *&v29[8 * v58 + 32] = v56;
    v59 = _BenchmarkHost.measureRender(interval:)(0.0166666667);
    v61 = *(v29 + 2);
    v60 = *(v29 + 3);
    if (v61 >= v60 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v29);
    }

    v20 = v66[0];
    outlined destroy of TouchEvent(v88);
    outlined destroy of (EventID, EventType)(v79, type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date));
    *(v29 + 2) = v61 + 1;
    *&v29[8 * v61 + 32] = v59;
    v87 = v29;
  }

  v62 = swift_getObjectType();
  v63 = MEMORY[0x18D004EB0](v62, a2, 1.0);
  specialized Array.append<A>(contentsOf:)(v63);
}

uint64_t closure #1 in _ViewTest.measureTouchSequence(host:_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>, type metadata accessor for (EventID, EventType), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  *(inited + 72) = &type metadata for TouchEvent;
  *(inited + 80) = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();
  v11 = swift_allocObject();
  *(inited + 48) = v11;
  v12 = a5[1];
  v11[1] = *a5;
  v11[2] = v12;
  v13 = a5[3];
  v11[3] = a5[2];
  v11[4] = v13;
  v14 = a5[5];
  v11[5] = a5[4];
  v11[6] = v14;
  *(v11 + 105) = *(a5 + 89);
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined init with copy of TouchEvent(a5, v17);
  outlined destroy of (EventID, EventType)(inited + 32, type metadata accessor for (EventID, EventType));
  specialized _ViewTest.sendEvents(_:)(v15);
}

void type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))
  {
    type metadata accessor for CGPoint(255);
    type metadata accessor for CGPoint?(255, &lazy cache variable for type metadata for CGPoint?, type metadata accessor for CGPoint, MEMORY[0x1E69E6720]);
    type metadata accessor for Date();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date));
    }
  }
}

void type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)))
  {
    type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)));
    }
  }
}

uint64_t outlined init with take of (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?, type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)), MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _DictionaryStorage<EventID, EventType>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>)
  {
    type metadata accessor for EventType();
    lazy protocol witness table accessor for type EventID and conformance EventID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>);
    }
  }
}

uint64_t outlined init with copy of (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (EventID, EventType)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for CGPoint?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double EnvironmentValues.scenePhase.setter(char *a1)
{
  type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

Swift::Int ScenePhase.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

void EnvironmentValues.scenePhase.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.scenePhase : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.scenePhase : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double (*EnvironmentValues.scenePhase.modify(uint64_t **a1))(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.scenePhase.modify;
}

double EnvironmentValues.scenePhase.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScenePhase and conformance ScenePhase()
{
  result = lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase;
  if (!lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScenePhase, &type metadata for ScenePhase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase);
  }

  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AnyOptionButtonCollection(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AnyOptionButtonCollection(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance AnyOptionButtonCollection()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance AnyOptionButtonCollection(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnyOptionButtonCollection, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t OptionButtonCollection.__ivar_destroyer()
{
  outlined destroy of SubviewsCollection(v0 + 16);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedRadioGroupPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedRadioGroupPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

double protocol witness for View.body.getter in conformance ResolvedRadioGroupPicker@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance RadioGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RadioGroupStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance RadioGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RadioGroupStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for RadioGroupStyleModifier<LayoutRadioGroupStyle<_HStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RadioGroupStyleModifier<LayoutRadioGroupStyle<_HStackLayout>>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for LayoutRadioGroupStyle<_HStackLayout>, MEMORY[0x1E697E258], MEMORY[0x1E697E240], type metadata accessor for LayoutRadioGroupStyle);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type LayoutRadioGroupStyle<_HStackLayout> and conformance LayoutRadioGroupStyle<A>();
    v6 = type metadata accessor for RadioGroupStyleModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for RadioGroupStyleModifier<LayoutRadioGroupStyle<_HStackLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LayoutRadioGroupStyle<_HStackLayout> and conformance LayoutRadioGroupStyle<A>()
{
  result = lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_HStackLayout> and conformance LayoutRadioGroupStyle<A>;
  if (!lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_HStackLayout> and conformance LayoutRadioGroupStyle<A>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for LayoutRadioGroupStyle<_HStackLayout>, MEMORY[0x1E697E258], MEMORY[0x1E697E240], type metadata accessor for LayoutRadioGroupStyle);
    result = swift_getWitnessTable(protocol conformance descriptor for LayoutRadioGroupStyle<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_HStackLayout> and conformance LayoutRadioGroupStyle<A>);
  }

  return result;
}

void type metadata accessor for Slice<AnyOptionButtonCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyOptionButtonCollection();
    v7 = lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type AnyOptionButtonCollection and conformance AnyOptionButtonCollection, type metadata accessor for AnyOptionButtonCollection, protocol conformance descriptor for AnyOptionButtonCollection);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v6 = v5;
    v7 = lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v7;
    result = swift_getWitnessTable(a2, v6, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyOptionButtonCollection and conformance AnyOptionButtonCollection()
{
  return lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type AnyOptionButtonCollection and conformance AnyOptionButtonCollection, type metadata accessor for AnyOptionButtonCollection, protocol conformance descriptor for AnyOptionButtonCollection);
}

{
  return lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type AnyOptionButtonCollection and conformance AnyOptionButtonCollection, type metadata accessor for AnyOptionButtonCollection, protocol conformance descriptor for AnyOptionButtonCollection);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance RadioGroupStyleContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v8)
  {
    memcpy(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

uint64_t destroy for OptionButtonElement(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for OptionButtonElement(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v6 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);
  v8 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v8;
  *(a1 + 128) = *(a2 + 128);
  v9 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v9;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  v10 = v7;

  return a1;
}

uint64_t assignWithCopy for OptionButtonElement(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  *(a1 + 88) = v5;
  v6 = v5;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v7 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v7;

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t assignWithTake for OptionButtonElement(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 129) = *(a2 + 129);
  v7 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v7;

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t getEnumTagSinglePayload for OptionButtonElement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t storeEnumTagSinglePayload for OptionButtonElement(uint64_t result, int a2, int a3)
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
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for ResolvedRadioGroupPicker(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for ResolvedRadioGroupPicker(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void type metadata accessor for ForEach<Range<Int>, Int, OptionButtonElement>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<Range<Int>, Int, OptionButtonElement>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_0(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, MEMORY[0x1E69E66E8]);
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, OptionButtonElement>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RadioGroupStyleContext and conformance RadioGroupStyleContext()
{
  result = lazy protocol witness table cache variable for type RadioGroupStyleContext and conformance RadioGroupStyleContext;
  if (!lazy protocol witness table cache variable for type RadioGroupStyleContext and conformance RadioGroupStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RadioGroupStyleContext, &type metadata for RadioGroupStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RadioGroupStyleContext and conformance RadioGroupStyleContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OptionButtonElement and conformance OptionButtonElement()
{
  result = lazy protocol witness table cache variable for type OptionButtonElement and conformance OptionButtonElement;
  if (!lazy protocol witness table cache variable for type OptionButtonElement and conformance OptionButtonElement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OptionButtonElement, &unk_1EFFB1890, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OptionButtonElement and conformance OptionButtonElement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<RadioGroupStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<RadioGroupStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<RadioGroupStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<RadioGroupStyleContext>, lazy protocol witness table accessor for type RadioGroupStyleContext and conformance RadioGroupStyleContext, &type metadata for RadioGroupStyleContext, MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<RadioGroupStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker()
{
  result = lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker;
  if (!lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedRadioGroupPicker, &unk_1EFFB1938, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker;
  if (!lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedRadioGroupPicker, &unk_1EFFB1938, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RadioGroupStyleModifier<AutomaticRadioGroupStyle> and conformance RadioGroupStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type RadioGroupStyleModifier<AutomaticRadioGroupStyle> and conformance RadioGroupStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type RadioGroupStyleModifier<AutomaticRadioGroupStyle> and conformance RadioGroupStyleModifier<A>)
  {
    type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for RadioGroupStyleModifier<AutomaticRadioGroupStyle>, lazy protocol witness table accessor for type AutomaticRadioGroupStyle and conformance AutomaticRadioGroupStyle, &unk_1EFFB1998, type metadata accessor for RadioGroupStyleModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for RadioGroupStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RadioGroupStyleModifier<AutomaticRadioGroupStyle> and conformance RadioGroupStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomaticRadioGroupStyle and conformance AutomaticRadioGroupStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticRadioGroupStyle and conformance AutomaticRadioGroupStyle;
  if (!lazy protocol witness table cache variable for type AutomaticRadioGroupStyle and conformance AutomaticRadioGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomaticRadioGroupStyle, &unk_1EFFB1998, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticRadioGroupStyle and conformance AutomaticRadioGroupStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ResolvedRadioGroupPicker.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label()
{
  result = lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label;
  if (!lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedRadioGroupPicker.Label, &type metadata for ResolvedRadioGroupPicker.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label;
  if (!lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedRadioGroupPicker.Label, &type metadata for ResolvedRadioGroupPicker.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>> and conformance <> _ConditionalContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>>(255, &lazy cache variable for type metadata for _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, MEMORY[0x1E6981A60], MEMORY[0x1E697F960]);
    v4 = v3;
    HasKeyboard = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>);
    v6[0] = MEMORY[0x1E6981A58];
    v6[1] = HasKeyboard;
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>(255);
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>, &type metadata for KeyboardShortcutPickerOptionTraitKey, &protocol witness table for KeyboardShortcutPickerOptionTraitKey, MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>)
  {
    type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, type metadata accessor for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>);
    type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<HasKeyboardShortcut>, lazy protocol witness table accessor for type HasKeyboardShortcut and conformance HasKeyboardShortcut, &type metadata for HasKeyboardShortcut, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>);
    }
  }
}

void type metadata accessor for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for OptionButton<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for OptionButton);
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, type metadata accessor for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, lazy protocol witness table accessor for type OptionButton<Subview> and conformance OptionButton<A>, lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>);
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardShortcut?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OptionButton<Subview> and conformance OptionButton<A>()
{
  result = lazy protocol witness table cache variable for type OptionButton<Subview> and conformance OptionButton<A>;
  if (!lazy protocol witness table cache variable for type OptionButton<Subview> and conformance OptionButton<A>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for OptionButton<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for OptionButton);
    result = swift_getWitnessTable(protocol conformance descriptor for OptionButton<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OptionButton<Subview> and conformance OptionButton<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<HasKeyboardShortcut>, lazy protocol witness table accessor for type HasKeyboardShortcut and conformance HasKeyboardShortcut, &type metadata for HasKeyboardShortcut, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>>, type metadata accessor for ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, type metadata accessor for RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, lazy protocol witness table accessor for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = &protocol witness table for RadioGroupStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

void type metadata accessor for _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext, MEMORY[0x1E69808E8]);
    type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, lazy protocol witness table accessor for type GroupedFormRadioGroupStyle and conformance GroupedFormRadioGroupStyle, &unk_1EFFB1978, type metadata accessor for RadioGroupStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type GroupedFormRadioGroupStyle and conformance GroupedFormRadioGroupStyle()
{
  result = lazy protocol witness table cache variable for type GroupedFormRadioGroupStyle and conformance GroupedFormRadioGroupStyle;
  if (!lazy protocol witness table cache variable for type GroupedFormRadioGroupStyle and conformance GroupedFormRadioGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroupedFormRadioGroupStyle, &unk_1EFFB1978, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedFormRadioGroupStyle and conformance GroupedFormRadioGroupStyle);
  }

  return result;
}

void type metadata accessor for RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for LayoutRadioGroupStyle<_VStackLayout>, MEMORY[0x1E697E300], MEMORY[0x1E697E2E8], type metadata accessor for LayoutRadioGroupStyle);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type LayoutRadioGroupStyle<_VStackLayout> and conformance LayoutRadioGroupStyle<A>();
    v6 = type metadata accessor for RadioGroupStyleModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LayoutRadioGroupStyle<_VStackLayout> and conformance LayoutRadioGroupStyle<A>()
{
  result = lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_VStackLayout> and conformance LayoutRadioGroupStyle<A>;
  if (!lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_VStackLayout> and conformance LayoutRadioGroupStyle<A>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for LayoutRadioGroupStyle<_VStackLayout>, MEMORY[0x1E697E300], MEMORY[0x1E697E2E8], type metadata accessor for LayoutRadioGroupStyle);
    result = swift_getWitnessTable(protocol conformance descriptor for LayoutRadioGroupStyle<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_VStackLayout> and conformance LayoutRadioGroupStyle<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v5[1] = &protocol witness table for RadioGroupStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext, MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier>, type metadata accessor for ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
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

void type metadata accessor for LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>)
  {
    type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255, &lazy cache variable for type metadata for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>);
    v4 = type metadata accessor for LabeledContent(a1, &type metadata for ResolvedRadioGroupPicker.Label, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>);
    }
  }
}

void type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    type metadata accessor for ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>(255);
    _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_0(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, MEMORY[0x1E69E66E8]);
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for _LayoutTrait<HorizintolControlGroupingItemKey>, &type metadata for HorizintolControlGroupingItemKey, &protocol witness table for HorizintolControlGroupingItemKey, MEMORY[0x1E697E060]);
    lazy protocol witness table accessor for type _LayoutTrait<HorizintolControlGroupingItemKey> and conformance _LayoutTrait<A>();
    v1 = type metadata accessor for _TraitWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _LayoutTrait<HorizintolControlGroupingItemKey> and conformance _LayoutTrait<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutTrait<HorizintolControlGroupingItemKey> and conformance _LayoutTrait<A>;
  if (!lazy protocol witness table cache variable for type _LayoutTrait<HorizintolControlGroupingItemKey> and conformance _LayoutTrait<A>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for _LayoutTrait<HorizintolControlGroupingItemKey>, &type metadata for HorizintolControlGroupingItemKey, &protocol witness table for HorizintolControlGroupingItemKey, MEMORY[0x1E697E060]);
    result = swift_getWitnessTable(MEMORY[0x1E697E068], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutTrait<HorizintolControlGroupingItemKey> and conformance _LayoutTrait<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>> and conformance <> LabeledContent<A, B>();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>> and conformance <> LabeledContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for ResolvedRadioGroupPicker.Label;
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255, &lazy cache variable for type metadata for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Slice<AnyOptionButtonCollection> and conformance <> Slice<A>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, lazy protocol witness table accessor for type ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E69819D0]);
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<AnyOptionButtonCollection> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9 = a3();
    result = swift_getWitnessTable(a4, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

SwiftUI::InsetListStyle __swiftcall InsetListStyle.init(alternatesRowBackgrounds:)(Swift::Bool alternatesRowBackgrounds)
{
  result.options.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

SwiftUI::InsetListStyle __swiftcall InsetListStyle.init(alternatesRowBackgrounds:selectionFollowsCursor:)(Swift::Bool alternatesRowBackgrounds, Swift::Bool selectionFollowsCursor)
{
  result.options.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t static InsetListStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v32 = a2[2];
  v33 = v7;
  v34 = a2[4];
  v35 = *(a2 + 20);
  v8 = a2[1];
  v30 = *a2;
  v31 = v8;
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext, &type metadata for PlainListStyleContext);
  v10 = v9;
  v12 = type metadata accessor for SelectionManagerBox(255, a3, a4, v11);
  v13 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v12);
  v26 = v10;
  v27 = v12;
  v28 = v13;
  v29 = WitnessTable;
  v15 = type metadata accessor for PlainListBody(255, &v26);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext, &type metadata for InsetListStyleContext);
  v17 = v16;
  v18 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v26 = v17;
  v27 = v12;
  v28 = v18;
  v29 = WitnessTable;
  v19 = type metadata accessor for InsetList(255, &v26);
  v20 = type metadata accessor for StaticIf();
  v25 = v6;
  v26 = &type metadata for InsetListStyle;
  v27 = a3;
  v28 = &protocol witness table for InsetListStyle;
  v29 = a4;
  type metadata accessor for _ListValue(255, &v26);
  type metadata accessor for _GraphValue();
  LODWORD(v26) = _GraphValue.value.getter();
  v22 = type metadata accessor for InsetListStyle.Body(0, a3, a4, v21);
  swift_getWitnessTable(protocol conformance descriptor for InsetListStyle.Body<A>, v22);
  _GraphValue.init<A>(_:)();
  v24[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v24[1] = swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>, v15);
  v24[2] = swift_getWitnessTable(protocol conformance descriptor for InsetList<A, B>, v19);
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v20, v24);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance InsetListStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext, &type metadata for PlainListStyleContext);
  v5 = v4;
  v7 = type metadata accessor for SelectionManagerBox(255, *(a1 + 16), *(a1 + 24), v6);
  v8 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v7);
  v15 = v5;
  v16 = v7;
  v17 = v8;
  v18 = WitnessTable;
  type metadata accessor for PlainListBody(255, &v15);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext, &type metadata for InsetListStyleContext);
  v11 = v10;
  v12 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v15 = v11;
  v16 = v7;
  v17 = v12;
  v18 = WitnessTable;
  type metadata accessor for InsetList(255, &v15);
  v13 = type metadata accessor for StaticIf();
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

uint64_t *initializeBufferWithCopyOfBuffer for InsetList(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);
  if ((v11 | v8) <= 7 && ((*(v10 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((-9 - v11 - ((v9 + 7) & 0xFFFFFFFFFFFFFFF8)) | v11) - *(*(v5 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v7 + 84) & 0x80000000) != 0)
    {
      if ((*(v7 + 48))(v15 + 1))
      {
LABEL_13:
        memcpy(__dst, __src, v9);
LABEL_16:
        v19 = ((__dst + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        v20 = ((__src + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v19 = *v20;
        (*(v10 + 16))(v19 + 1, v20 + 1, v5);
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

      if (v16 != -1)
      {
        goto LABEL_13;
      }
    }

    *__dst = *__src;
    v17 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v15;
    v18 = *(v7 + 16);

    v18(v17 + 1, v15 + 1, v6);
    goto LABEL_16;
  }

  v14 = *__src;
  *__dst = *__src;
  __dst = (v14 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));

  return __dst;
}

uint64_t *assignWithCopy for InsetList(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  v28 = ~v9;
  if ((v8 & 0x80000000) != 0)
  {
    v26 = ((v9 + 16) & ~v9) + v10;
    v24 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(v7 + 48);
    v23 = v17((v12 + v9 + 8) & ~v9, v8, v6);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = v26;
    v12 = v24;
    v15 = v17((v13 + v9 + 8) & ~v9, v8, v6);
    v4 = a2;
    v5 = a1;
    v3 = a3;
    if (!v23)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *v4;

        *v12 = *v13;

        (*(v7 + 24))((v12 + v9 + 8) & v28, (v13 + v9 + 8) & v28, v6);
        goto LABEL_12;
      }

      (*(v7 + 8))((v12 + v9 + 8) & v28, v6);
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

    v18((v12 + v9 + 8) & v28, (v13 + v9 + 8) & v28, v6);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, v4, v11);
LABEL_12:
  v19 = ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = *(*(v3 + 16) - 8);
  (*(v21 + 24))((v19 + *(v21 + 80) + 8) & ~*(v21 + 80), (v20 + *(v21 + 80) + 8) & ~*(v21 + 80));
  return v5;
}

void *initializeWithTake for InsetList(void *__dst, void *__src, uint64_t a3)
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
  v16 = ((__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 32))((v16 + *(v18 + 80) + 8) & ~*(v18 + 80), (v17 + *(v18 + 80) + 8) & ~*(v18 + 80));
  return __dst;
}

void *assignWithTake for InsetList(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v8 + 16) & ~v8) + v9;
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = ~v8;
  if ((v7 & 0x80000000) != 0)
  {
    v28 = ((v8 + 16) & ~v8) + v9;
    v16 = *(v6 + 48);
    v17 = *(a3 + 24);
    v18 = v16((v11 + v8 + 8) & ~v8, v7, v17);
    v19 = v16;
    v26 = v18;
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = v7;
    v12 = v17;
    v21 = v17;
    v5 = a1;
    v10 = v28;
    v15 = v19((v13 + v8 + 8) & ~v8, v20, v21);
    v3 = a3;
    if (!v26)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *a2;

        *v11 = *v13;

        (*(v6 + 40))((v11 + v8 + 8) & v30, (v13 + v8 + 8) & v30, v12);
        goto LABEL_12;
      }

      (*(v6 + 8))((v11 + v8 + 8) & v30, v12);
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
    (*(v6 + 32))((v11 + v8 + 8) & v30, (v13 + v8 + 8) & v30, v12);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, a2, v10);
LABEL_12:
  v22 = ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = *(*(v3 + 16) - 8);
  (*(v24 + 40))((v22 + *(v24 + 80) + 8) & ~*(v24 + 80), (v23 + *(v24 + 80) + 8) & ~*(v24 + 80));
  return v5;
}

uint64_t getEnumTagSinglePayload for InsetList(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
  v16 = v13 + 8;
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

void storeEnumTagSinglePayload for InsetList(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v16 = ((v12 + 8 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + *(v9 + 64);
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

    v25((v12 + 8 + (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v12);
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

unint64_t instantiation function for generic protocol witness table for InsetListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext();
  *(a1 + 8) = result;
  return result;
}

BOOL protocol witness for static StyleContext.accepts<A>(_:at:) in conformance InsetListStyleContext(uint64_t a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext();

  return specialized static ListStyleContext.accepts<A>(_:at:)(a4, a3);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance InsetListStyleContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v8)
  {
    memcpy(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

uint64_t InsetList.TableViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = *(a2 + 24);
  v34 = a2;
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v29 - v8;
  v9 = *(a2 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for TableViewListDataSource(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableViewListDataSource<A>, v12);
  v41[0] = v12;
  v41[1] = v5;
  v41[2] = WitnessTable;
  v41[3] = v9;
  v13 = type metadata accessor for TableViewListCore(0, v41);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  outlined init with copy of _VariadicView_Children(a1, v40);
  v19 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8) | (*(v3 + 9) << 8));
  v21 = v20;
  v22 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24) | (*(v3 + 25) << 8)));
  if (v23)
  {
    v22 = 26.0;
  }

  TableViewListDataSource.init(_:style:minRowHeight:minHeaderHeight:)(v40, 0, v19, v21 & 1, v41, v22);
  v24 = v35;
  (*(v36 + 16))(v35, v3 + *(v34 + 60), v37);
  v25 = specialized Environment.wrappedValue.getter(*(v3 + 32), *(v3 + 40));
  v26 = WitnessTable;
  static TableViewListCore.Configuration.inset(isInExpandedSplitView:)(v25 & 1, v39);
  TableViewListCore.init(dataSource:selection:configuration:)(v41, v24, v39, v12, v5, v26, v9, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v33 + 8);
  v27(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v18, v13);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance InsetList<A, B>.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for InsetList<A, B>.TableViewRoot, a5);

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t initializeBufferWithCopyOfBuffer for InsetList.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  if ((v8 | v6) <= 7 && ((*(v7 + 80) | *(v5 + 80)) & 0x100000) == 0 && ((((-114 - v6) | v6) - (*(*(*(a3 + 16) - 8) + 64) + (v8 | 7))) | v8 | 7) - (((v8 + 16) & ~v8) + *(*(v4 - 8) + 64)) >= 0xFFFFFFFFFFFFFFE7)
  {
    __n = ((v8 + 16) & ~v8) + *(*(v4 - 8) + 64);
    v52 = *(v4 - 8);
    v53 = *(a3 + 24);
    v13 = *a2;
    v14 = *(a2 + 8);
    v48 = *(*(a3 + 16) - 8);
    v49 = *(a3 + 16);
    v15 = a2;
    v51 = *(v7 + 84);
    v50 = *(v48 + 64);
    outlined copy of Environment<Selector?>.Content(*a2, v14);
    *a1 = v13;
    *(a1 + 8) = v14;
    v54 = a1;
    v16 = a1 & 0xFFFFFFFFFFFFFFF8;
    v15 &= 0xFFFFFFFFFFFFFFF8;
    v17 = *(v15 + 16);
    v18 = *(v15 + 25);
    v19 = *(v15 + 24);
    outlined copy of Environment<CGFloat?>.Content(v17, v19, v18);
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 25) = v18;
    v20 = (v16 + 33) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v15 + 33) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v27 = *(v21 + 32);
    v26 = *(v21 + 40);
    v28 = *(v21 + 56);
    v45 = *(v21 + 48);
    v46 = *(v21 + 64);
    v47 = *(v21 + 65);
    outlined copy of Environment<ListPadding>.Content(*v21, v23, v24, v25, v27, v26, v45, v28, v46, v47);
    *v20 = v22;
    *(v20 + 8) = v23;
    *(v20 + 16) = v24;
    *(v20 + 24) = v25;
    *(v20 + 32) = v27;
    *(v20 + 40) = v26;
    *(v20 + 48) = v45;
    *(v20 + 56) = v28;
    *(v20 + 64) = v46;
    *(v20 + 65) = v47;
    v29 = (v20 + 73) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v21 + 73) & 0xFFFFFFFFFFFFFFF8;
    v31 = *v30;
    LOBYTE(v28) = *(v30 + 8);
    outlined copy of Environment<Selector?>.Content(*v30, v28);
    *v29 = v31;
    *(v29 + 8) = v28;
    v32 = (v30 + v6 + 9) & ~v6;
    (*(v48 + 16))((v29 + v6 + 9) & ~v6, v32, v49);
    v33 = v50 + 7 + ((v29 + v6 + 9) & ~v6);
    v34 = ((v50 + 7 + v32) & 0xFFFFFFFFFFFFFFF8);
    v35 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v51 < 0)
    {
      v38 = v52;
      v37 = v53;
      v40 = (*(v52 + 48))(v35 + 1);
      v39 = (v33 & 0xFFFFFFFFFFFFFFF8);
      if (v40)
      {
LABEL_13:
        memcpy(v39, v34, __n);
        return v54;
      }
    }

    else
    {
      v36 = *v35;
      if (*v35 >= 0xFFFFFFFF)
      {
        LODWORD(v36) = -1;
      }

      v38 = v52;
      v37 = v53;
      v39 = (v33 & 0xFFFFFFFFFFFFFFF8);
      if (v36 != -1)
      {
        goto LABEL_13;
      }
    }

    *v39 = *v34;
    v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v41 = *v35;
    v42 = *(v38 + 16);

    v42(v41 + 1, v35 + 1, v37);
    return v54;
  }

  v11 = *a2;
  *a1 = *a2;
  v12 = v11 + (((v8 | v6) & 0xF8 ^ 0x1F8) & ((v8 | v6) + 16));

  return v12;
}

uint64_t assignWithCopy for InsetList.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v6;
  outlined consume of Environment<Selector?>.Content(v7, v8);
  v69 = a1;
  v9 = a1 & 0xFFFFFFFFFFFFFFF8;
  v10 = a2 & 0xFFFFFFFFFFFFFFF8;
  v11 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v10 + 25);
  v12 = *(v10 + 24);
  outlined copy of Environment<CGFloat?>.Content(v11, v12, v5);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 25);
  *(v9 + 16) = v11;
  v15 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v9 + 24) = v12;
  *(v9 + 25) = v5;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = (v10 + 33) & 0xFFFFFFFFFFFFFFF8;
  v66 = *(v16 + 8);
  v67 = *v16;
  v17 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v16 + 16);
  v19 = *(v16 + 24);
  v20 = *(v16 + 32);
  v21 = *(v16 + 40);
  v22 = *(v16 + 48);
  v23 = *(v16 + 56);
  LOBYTE(v11) = *(v16 + 64);
  LOBYTE(v5) = *(v16 + 65);
  outlined copy of Environment<ListPadding>.Content(*v16, v66, v18, v19, v20, v21, v22, v23, v11, v5);
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
  *(v17 + 8) = v66;
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v20;
  *(v17 + 40) = v21;
  *(v17 + 48) = v22;
  *(v17 + 56) = v23;
  *(v17 + 64) = v11;
  *(v17 + 65) = v5;
  outlined consume of Environment<ListPadding>.Content(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v34 = (v17 + 73) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v16 + 73) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  LOBYTE(v5) = *(v35 + 8);
  outlined copy of Environment<Selector?>.Content(*v35, v5);
  v37 = *v34;
  v38 = *(v34 + 8);
  *v34 = v36;
  *(v34 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v37, v38);
  v39 = *(*(a3 + 16) - 8);
  v40 = v39 + 24;
  v41 = *(v39 + 80);
  v42 = (v41 + 9 + v34) & ~v41;
  v43 = (v41 + 9 + v35) & ~v41;
  (*(v39 + 24))(v42, v43);
  v44 = *(a3 + 24);
  v45 = *(v44 - 8);
  v46 = *(v45 + 80);
  v47 = (v46 | 7) + *(v40 + 40);
  v48 = ((v47 + v42) & ~(v46 | 7));
  v49 = ((v47 + v43) & ~(v46 | 7));
  v50 = *(v45 + 84);
  v51 = ~v46;
  v52 = (v46 + 16) & ~v46;
  v53 = *(v45 + 64);
  v54 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v50 & 0x80000000) != 0)
  {
    v65 = *(v45 + 64);
    v60 = v49;
    v61 = *(v45 + 48);
    v64 = v61((v54 + v46 + 8) & ~v46, v50, v44);
    v55 = ((v60 + 15) & 0xFFFFFFFFFFFFFFF8);
    v51 = ~v46;
    v57 = v61((v55 + v46 + 8) & ~v46, v50, v44);
    v54 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
    v49 = v60;
    v53 = v65;
    v52 = (v46 + 16) & ~v46;
    if (!v64)
    {
LABEL_5:
      if (!v57)
      {
        *v48 = *v49;

        *v54 = *v55;

        (*(v45 + 24))((v54 + v46 + 8) & v51, (v55 + v46 + 8) & v51, v44);
        return v69;
      }

      v58 = v53;

      (*(v45 + 8))((v54 + v46 + 8) & v51, v44);
      v59 = v52 + v58;
      goto LABEL_10;
    }
  }

  else
  {
    v55 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
    v56 = *v55;
    if (*v55 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v56) = -1;
    }

    v57 = v56 + 1;
    if (*v54 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v57)
  {
    *v48 = *v49;
    *v54 = *v55;
    v62 = *(v45 + 16);

    v62((v54 + v46 + 8) & v51, (v55 + v46 + 8) & v51, v44);
    return v69;
  }

  v59 = v52 + v53;
LABEL_10:
  memcpy(v48, v49, v59);
  return v69;
}

uint64_t initializeWithTake for InsetList.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v5 + 16) = v6;
  v7 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 32);
  v9 = *(v8 + 48);
  v11 = *(v8 + 16);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 32) = v10;
  *(v7 + 48) = v9;
  *(v7 + 16) = v11;
  *v7 = *v8;
  v12 = (v7 + 73) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 73) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *v12 = v14;
  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 32;
  v17 = *(v15 + 80);
  v18 = (v17 + 9 + v12) & ~v17;
  v19 = (v17 + 9 + v13) & ~v17;
  (*(v15 + 32))(v18, v19);
  v20 = *(a3 + 24);
  v21 = *(v16 + 32);
  v22 = *(v20 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 | 7) + v21;
  v25 = ((v24 + v18) & ~(v23 | 7));
  v26 = ((v24 + v19) & ~(v23 | 7));
  v27 = ~v23;
  v28 = *(v22 + 64);
  v29 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v22 + 84) & 0x80000000) == 0)
  {
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    if (v30 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v25 = *v26;
    v31 = (v25 + 15);
    *(v31 & 0xFFFFFFFFFFFFFFF8) = *v29;
    (*(v22 + 32))((v23 + 8 + (v31 & 0xFFFFFFFFFFFFFFF8)) & v27, (v29 + v23 + 8) & v27, v20);
    return a1;
  }

  if (!(*(v22 + 48))((v29 + v23 + 8) & v27))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v25, v26, ((v23 + 16) & ~v23) + v28);
  return a1;
}

uint64_t assignWithTake for InsetList.CollectionViewBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
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
  outlined consume of Environment<ListPadding>.Content(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v33 = (v19 + 73) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v16 + 73) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v34 + 8);
  v36 = *v33;
  v37 = *(v33 + 8);
  *v33 = *v34;
  *(v33 + 8) = v35;
  outlined consume of Environment<Selector?>.Content(v36, v37);
  v38 = *(*(a3 + 16) - 8);
  v39 = v38 + 40;
  v40 = *(v38 + 80);
  v41 = (v40 + 9 + v33) & ~v40;
  v42 = (v40 + 9 + v34) & ~v40;
  (*(v38 + 40))(v41, v42);
  v43 = *(a3 + 24);
  v44 = *(v43 - 8);
  v45 = *(v44 + 80);
  v46 = (v45 | 7) + *(v39 + 24);
  v47 = ((v46 + v41) & ~(v45 | 7));
  v48 = ((v46 + v42) & ~(v45 | 7));
  v49 = *(v44 + 84);
  v50 = (v45 + 16) & ~v45;
  v51 = *(v44 + 64);
  v52 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
  v63 = ~v45;
  if ((v49 & 0x80000000) != 0)
  {
    v62 = v48;
    v58 = *(v44 + 48);
    v61 = *(v44 + 64);
    v60 = v58((v52 + v45 + 8) & ~v45, v49, v43);
    v53 = ((v62 + 15) & 0xFFFFFFFFFFFFFFF8);
    v55 = v58((v53 + v45 + 8) & ~v45, v49, v43);
    v51 = v61;
    v50 = (v45 + 16) & ~v45;
    v48 = v62;
    if (!v60)
    {
LABEL_5:
      if (!v55)
      {
        *v47 = *v48;

        *v52 = *v53;

        (*(v44 + 40))((v52 + v45 + 8) & v63, (v53 + v45 + 8) & v63, v43);
        return a1;
      }

      v56 = v51;

      (*(v44 + 8))((v52 + v45 + 8) & v63, v43);
      v57 = v50 + v56;
      goto LABEL_10;
    }
  }

  else
  {
    v53 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
    v54 = *v53;
    if (*v53 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v54) = -1;
    }

    v55 = v54 + 1;
    if (*v52 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v55)
  {
    *v47 = *v48;
    *v52 = *v53;
    (*(v44 + 32))((v52 + v45 + 8) & v63, (v53 + v45 + 8) & v63, v43);
    return a1;
  }

  v57 = v50 + v51;
LABEL_10:
  memcpy(v47, v48, v57);
  return a1;
}

uint64_t getEnumTagSinglePayload for InsetList.CollectionViewBody(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  v13 = *(v6 + 80);
  v14 = *(*(v5 - 8) + 64);
  v15 = *(v8 + 80);
  if (v7 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v6 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = a2 - v16;
  if (a2 <= v16)
  {
    goto LABEL_31;
  }

  v19 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-114 - v13) | v13) - (v14 + v17)) | v17) - 2;
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
      v27 = ((((((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + v13 + 9) & ~v13;
      if (v7 >= v12)
      {
        v31 = *(v6 + 48);

        return v31(v27, v7, v5);
      }

      else
      {
        v28 = ((((v27 + v14 + v17) & ~v17) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v10 & 0x80000000) != 0)
        {
          v30 = (*(v9 + 48))((v28 + v15 + 8) & ~v15);
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          v30 = v29 + 1;
        }

        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
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

  if (*(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-114 - v13) | v13) - (v14 + v17)) | v17) == 2)
  {
    v26 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v25 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-114 - v13) | v13) - (v14 + v17)) | v17) - 2;
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

  return v16 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for InsetList.CollectionViewBody(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = v13 - 1;
  if (v7 <= v13 - 1)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = *(v6 + 84);
  }

  v16 = v12 | 7;
  v17 = ((v12 + 16) & ~v12) + *(v8 + 64);
  v18 = (((v12 | 7) + v11 + ((v10 + 113) & ~v10)) & ~(v12 | 7)) + v17;
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
  v27 = ((((((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + v10 + 9) & ~v10;
  if (v7 >= v14)
  {
    v32 = *(v6 + 56);

    v32(v27);
  }

  else
  {
    v28 = (v27 + v11 + v16) & ~v16;
    if (v14 >= a2)
    {
      if (a2 >= v13)
      {
        if (v17 <= 3)
        {
          v34 = ~(-1 << (8 * v17));
        }

        else
        {
          v34 = -1;
        }

        if (v17)
        {
          v30 = v34 & (a2 - v13);
          if (v17 <= 3)
          {
            v31 = v17;
          }

          else
          {
            v31 = 4;
          }

          bzero(((v27 + v11 + v16) & ~v16), v17);
          if (v31 <= 2)
          {
            if (v31 == 1)
            {
              goto LABEL_46;
            }

            goto LABEL_74;
          }

LABEL_75:
          if (v31 == 3)
          {
            *v28 = v30;
            *(v28 + 2) = BYTE2(v30);
          }

          else
          {
            *v28 = v30;
          }
        }
      }

      else
      {
        v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) != 0)
        {
          v35 = *(v8 + 56);
          v36 = a2 + 1;

          v35((v33 + v12 + 8) & ~v12, v36);
        }

        else if (((a2 + 1) & 0x80000000) != 0)
        {
          *v33 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v33 = a2;
        }
      }
    }

    else
    {
      if (v17 <= 3)
      {
        v29 = ~(-1 << (8 * v17));
      }

      else
      {
        v29 = -1;
      }

      if (v17)
      {
        v30 = v29 & (a2 - v13);
        if (v17 <= 3)
        {
          v31 = v17;
        }

        else
        {
          v31 = 4;
        }

        bzero(((v27 + v11 + v16) & ~v16), v17);
        if (v31 <= 2)
        {
          if (v31 == 1)
          {
LABEL_46:
            *v28 = v30;
            return;
          }

LABEL_74:
          *v28 = v30;
          return;
        }

        goto LABEL_75;
      }
    }
  }
}

uint64_t instantiation function for generic protocol witness table for InsetList<A, B>.TableViewRoot(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for InsetList<A, B>.TableViewRoot);
  *(a1 + 8) = result;
  return result;
}

double key path setter for EnvironmentValues.defaultMinListRowHeight : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.defaultMinListRowHeight.setter(double a1)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void key path getter for EnvironmentValues.defaultMinListHeaderHeight : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double key path setter for EnvironmentValues.defaultMinListHeaderHeight : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.defaultMinListHeaderHeight.setter(uint64_t a1, char a2)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t EnvironmentValues.defaultMinListHeaderHeight.getter(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a1, a2, a3, MEMORY[0x1E697FE38]);
    a4();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a1, a2, a3, MEMORY[0x1E697FE38]);
    a4();
    PropertyList.subscript.getter();
  }

  return v7;
}

uint64_t specialized static ViewModifier<>._makeView(modifier:inputs:body:)(int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = a2[3];
  v21 = a2[2];
  v22 = v8;
  v23 = a2[4];
  v24 = *(a2 + 20);
  v9 = a2[1];
  v19 = *a2;
  v20 = v9;
  LODWORD(v27[0]) = a1;
  v10 = outlined init with copy of _ViewInputs(a2, v29);
  a5(v10);
  static EnvironmentModifier._makeInputs(modifier:inputs:)();
  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v23;
  v26 = v24;
  v25[0] = v19;
  v25[1] = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v13 = v19;
  v14 = v20;
  v11 = outlined init with copy of _ViewInputs(v25, v29);
  a3(v11, &v13);
  v27[2] = v15;
  v27[3] = v16;
  v27[4] = v17;
  v28 = v18;
  v27[0] = v13;
  v27[1] = v14;
  outlined destroy of _ViewInputs(v27);
  v29[2] = v21;
  v29[3] = v22;
  v29[4] = v23;
  v30 = v24;
  v29[0] = v19;
  v29[1] = v20;
  return outlined destroy of _ViewInputs(v29);
}

uint64_t specialized static ViewModifier<>._makeView(modifier:inputs:body:)(int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, void (*a5)(_OWORD *, __int128 *))
{
  v7 = a2[3];
  v19 = a2[2];
  v20 = v7;
  v21 = a2[4];
  v22 = *(a2 + 20);
  v8 = a2[1];
  v17 = *a2;
  v18 = v8;
  LODWORD(v25[0]) = a1;
  outlined init with copy of _ViewInputs(a2, v27);
  a5(v25, &v17);
  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v21;
  v24 = v22;
  v23[0] = v17;
  v23[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v23, v27);
  a3(v9, &v11);
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26 = v16;
  v25[0] = v11;
  v25[1] = v12;
  outlined destroy of _ViewInputs(v25);
  v27[2] = v19;
  v27[3] = v20;
  v27[4] = v21;
  v28 = v22;
  v27[0] = v17;
  v27[1] = v18;
  return outlined destroy of _ViewInputs(v27);
}

void EnvironmentValues.listDeleteControlVisibility.getter(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*(v5 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a1, a2, a3, MEMORY[0x1E697FE38]);
    a4();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a1, a2, a3, MEMORY[0x1E697FE38]);
    a4();

    PropertyList.subscript.getter();
  }
}

double EnvironmentValues.rowInset.getter(uint64_t a1, uint64_t a2)
{
  EnvironmentValues.defaultPadding.getter();
  EdgeInsets.horizontal.getter();
  return v2 * 0.5;
}

void (*EnvironmentValues.defaultMinListRowHeight.modify(void *a1))(uint64_t a1)
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
  v3[3] = v1;
  v3[4] = *v1;
  v5 = v1[1];
  v3[5] = v5;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (*(v4 + 8) == 1)
  {
    v6 = EnvironmentValues.systemDefaultMinListRowHeight.getter();
  }

  else
  {
    v6 = *v4;
  }

  *(v4 + 2) = v6;
  return EnvironmentValues.defaultMinListRowHeight.modify;
}

void EnvironmentValues.defaultMinListRowHeight.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  *v1 = *(*a1 + 16);
  v1[8] = 0;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

uint64_t (*EnvironmentValues.defaultMinListHeaderHeight.modify(void *a1))()
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
  v3[5] = *v1;
  v5 = v1[1];
  v3[6] = v5;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v6 = *(v4 + 24);
  *v4 = v4[2];
  *(v4 + 8) = v6;
  return EnvironmentValues.defaultMinListHeaderHeight.modify;
}

void EnvironmentValues.defaultMinListHeaderHeight.modify(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = (*a1)[6];
  (*a1)[2] = **a1;
  v1[24] = v2;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

double EnvironmentValues.horizontalListMargin.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ListMarginKey@<X0>(double *a1@<X8>)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  result = static SemanticFeature.isEnabled.getter();
  v3 = 15.0;
  if (result)
  {
    v3 = 16.0;
  }

  *a1 = v3;
  return result;
}