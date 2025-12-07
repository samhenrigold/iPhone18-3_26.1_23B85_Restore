uint64_t PINECircuitParameter.init(l2NormBound:fractionalBitCount:measurementLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  v36 = a4;
  v37 = a5;
  v34 = a9;
  v35 = a3;
  v40 = a11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v39 = AssociatedTypeWitness;
  v19 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  v24 = a1;
  v25 = a1;
  v33 = a2;
  v26 = a7;
  v27 = v40;
  v28 = v41;
  static PINECircuitParameter.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)(v25, a2, a6, a8, a12, &v32 - v22);
  if (v28)
  {
    v29 = swift_getAssociatedTypeWitness();
    return (*(*(v29 - 8) + 8))(v24, v29);
  }

  else
  {
    (*(v38 + 16))(v21, v23, v39);
    PINECircuitParameter.init(l2NormBoundInt:fractionalBitCount:measurementLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v21, v33, v35, v36, v37, *&a6, v26, a8, v34, a10, v27, a12);
    v31 = swift_getAssociatedTypeWitness();
    (*(*(v31 - 8) + 8))(v24, v31);
    return (*(v38 + 8))(v23, v39);
  }
}

uint64_t PINECircuit.gadgetParameters.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v11 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_270C44540;
  (*(a2 + 48))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Gadget.parameters.getter(AssociatedTypeWitness, AssociatedConformanceWitness, (v8 + 32));
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v8;
}

uint64_t PINECircuit.evaluateGadget<A>(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v16 - v12;
  (*(a5 + 48))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(a2, a4, v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t PINECircuit.evaluateGadget(_:at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v19 - v9;
  (*(a3 + 48))(a2, a3);
  v20 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 72);
  v13 = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  type metadata accessor for Polynomial(255, v13, v14, v15);
  v16 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12(&v20, v16, WitnessTable, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t static PINECircuit.computeRangeCheck(_:lowerBound:upperBound:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v31 = a1;
  v32 = a4;
  v23[2] = a3;
  v29 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedTypeWitness();
  v30 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = v23 - v9;
  v10 = swift_checkMetadataState();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v23 - v15;
  v17 = *(v11 + 16);
  v17(v14, a3, v10);
  v23[0] = v17;
  FieldElement.init(other:)(v14, v10, AssociatedConformanceWitness);
  v23[1] = *(AssociatedConformanceWitness + 8);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  FieldElement.integerValue.getter(v10, AssociatedConformanceWitness);
  v18 = *(v11 + 8);
  v18(v16, v10);
  v19 = v25;
  v17(v14, v25, v10);
  FieldElement.init(other:)(v14, v10, AssociatedConformanceWitness);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  FieldElement.integerValue.getter(v10, AssociatedConformanceWitness);
  v18(v16, v10);
  (v23[0])(v14, v19, v10);
  FieldElement.init(other:)(v14, v10, AssociatedConformanceWitness);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  v20 = v24;
  FieldElement.integerValue.getter(v10, AssociatedConformanceWitness);
  v18(v16, v10);
  v21 = v26;
  swift_getAssociatedConformanceWitness();
  LOBYTE(v10) = dispatch thunk of static Comparable.<= infix(_:_:)();
  (*(v30 + 8))(v20, v21);
  return v10 & 1;
}

void closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();
  WraparoundJointRandomness.flushBitsLeft()();
}

Swift::Int closure #1 in closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  result = WraparoundJointRandomness.next()();
  if (result == -1)
  {
    swift_getAssociatedConformanceWitness();
    return dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  }

  else if (result == 1)
  {
    swift_getAssociatedConformanceWitness();
    return dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  }

  return result;
}

uint64_t PINECircuit.unpack(bitsSlice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v45 = a1;
  v41 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v44 = a2;
  *&v48 = AssociatedTypeWitness;
  *(&v48 + 1) = v9;
  *&v49 = AssociatedConformanceWitness;
  *(&v49 + 1) = v11;
  v50 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for PINECircuitParameter(0, &v48);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v46 = v5;
  v47 = a3;
  v43 = *(a3 + 56);
  v43(a2, a3);
  v16 = *(v15 + 6);
  v17 = *(v13 + 8);
  v17(v15, v12);
  v18 = v17;
  v19 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();
  RandomAccessCollection<>.popFirst(_:)(v16, v19, WitnessTable);
  v39 = v48;
  v37 = *(&v49 + 1);
  v38 = v49;
  v20 = v43;
  v21 = v44;
  v43(v44, v47);
  v22 = *(v15 + 6);
  v18(v15, v12);
  v40 = v19;
  v23 = v19;
  v24 = WitnessTable;
  RandomAccessCollection<>.popFirst(_:)(v22, v23, WitnessTable);
  v36 = v48;
  v34 = *(&v49 + 1);
  v35 = v49;
  v20(v21, v47);
  v25 = *&v15[*(v12 + 88)];
  result = (v18)(v15, v12);
  v27 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
  }

  else
  {
    v20(v21, v47);
    v28 = *&v15[*(v12 + 92)];
    v18(v15, v12);
    result = v27 * v28;
    if ((v27 * v28) >> 64 == (v27 * v28) >> 63)
    {
      result = RandomAccessCollection<>.popFirst(_:)(result, v40, v24);
      v30 = v48;
      v29 = v49;
      v31 = v41;
      *v41 = v39;
      v32 = v37;
      *(v31 + 2) = v38;
      *(v31 + 3) = v32;
      v31[2] = v36;
      v33 = v34;
      *(v31 + 6) = v35;
      *(v31 + 7) = v33;
      v31[4] = v30;
      v31[5] = v29;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 PINECircuit.unpack(encodedMeasurement:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v38 = a1;
  v39 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  WitnessTable = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  *&v42 = AssociatedTypeWitness;
  *(&v42 + 1) = v7;
  v43.n128_u64[0] = AssociatedConformanceWitness;
  v43.n128_u64[1] = v9;
  v44 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for PINECircuitParameter(0, &v42);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v33 = *(a3 + 56);
  v34 = a3;
  v33(a2, a3);
  v14 = *(v13 + 5);
  v15 = *(v11 + 8);
  v32 = v11 + 8;
  v28 = v10;
  v15(v13, v10);
  v16 = v15;
  v17 = type metadata accessor for ArraySlice();
  v40 = v17;
  WitnessTable = swift_getWitnessTable();
  RandomAccessCollection<>.popFirst(_:)(v14, v17, WitnessTable);
  v36 = v43.n128_u64[1];
  v37 = v43.n128_u64[0];
  v35 = v42;
  v19 = v33;
  v18 = v34;
  v33(a2, v34);
  v20 = *(v13 + 1);
  v16(v13, v10);
  RandomAccessCollection<>.popFirst(_:)(v20, v40, WitnessTable);
  v30 = v43.n128_u64[1];
  v31 = v43.n128_u64[0];
  v29 = v42;
  v19(a2, v18);
  v21 = *&v13[*(v28 + 92)];
  (v16)(v13);
  RandomAccessCollection<>.popFirst(_:)(v21, v40, WitnessTable);
  v23 = v42;
  result = v43;
  v24 = v39;
  *v39 = v35;
  v25 = v36;
  *(v24 + 2) = v37;
  *(v24 + 3) = v25;
  v24[2] = v29;
  v26 = v30;
  *(v24 + 6) = v31;
  *(v24 + 7) = v26;
  v24[4] = v23;
  v24[5] = result;
  return result;
}

uint64_t PINENormEqualityCheckCircuit.gadget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
}

uint64_t PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v13 = *(a5 + 16);
  v14 = MEMORY[0x2743B2830](a1, v13, a3);
  if (v14 != *(v7 + *(a5 + 64) + 16))
  {
    v17 = v14;
    _StringGuts.grow(_:)(35);

    *&v43 = 0xD00000000000001BLL;
    *(&v43 + 1) = 0x8000000270C51C80;
    v52[0] = v17;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v52[0] = *(v7 + *(a5 + 64) + 16);
    goto LABEL_5;
  }

  if (MEMORY[0x2743B2830](a2, v13))
  {
    _StringGuts.grow(_:)(33);

    *&v43 = 0xD000000000000019;
    *(&v43 + 1) = 0x8000000270C51CE0;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v52[0] = 0;
LABEL_5:
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);
LABEL_6:

    v20 = *(&v43 + 1);
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v21 = v43;
    *(v21 + 8) = v20;
    *(v21 + 16) = 2;
    return swift_willThrow();
  }

  type metadata accessor for GadgetEvaluation(0, v13, *(a5 + 32), v15);
  v23 = MEMORY[0x2743B2830](a4);
  WitnessTable = swift_getWitnessTable();
  v24 = *(PINECircuit.gadgetParameters.getter(a5, WitnessTable) + 16);

  if (v23 != v24)
  {
    _StringGuts.grow(_:)(23);

    *&v43 = 0x2064696C61766E49;
    *(&v43 + 1) = 0xEF203A746E756F63;
    v52[0] = v23;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    PINECircuit.gadgetParameters.getter(a5, WitnessTable);
    v35 = MEMORY[0x2743B2770]();
    v37 = v36;

    MEMORY[0x2743B25F0](v35, v37);
    goto LABEL_6;
  }

  *&v43 = a1;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v52[0] = ArraySlice.init<A>(_:)();
  v52[1] = v25;
  v52[2] = v26;
  v52[3] = v27;
  PINECircuit.unpack(encodedMeasurement:)(v52, a5, WitnessTable, &v43);
  v28 = v43;
  v40 = v44;
  v41 = *(&v43 + 1);
  v39 = v45;
  v29 = v47;
  v30 = v48;
  v38 = v46;
  swift_unknownObjectRelease();
  v49 = v38;
  v50 = v29;
  v51 = v30;
  swift_unknownObjectRetain();
  PINECircuit.unpack(bitsSlice:)(&v49, a5, WitnessTable, &v43);
  v31 = v43;
  v32 = v44;
  *&v38 = v45;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  Array.subscript.getter();
  v33 = v43;
  v53 = v43;
  PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)(v28, v41, v40, v39, v31, *(&v31 + 1), v32, v38, a6, &v53, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  outlined consume of GadgetEvaluation<A><A>(v33);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v46 = a7;
  v47 = a8;
  v45 = a6;
  v44 = a5;
  v48 = a3;
  v49 = a4;
  v43 = a9;
  v14 = *(a11 + 16);
  v42 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v24 = *v23;
  v26 = *(v11 + 40);
  v25 = *(v11 + 48);
  v27 = *(v11 + 24);
  v57 = *(v11 + 8);
  v58 = v27;
  v59 = v26;
  v60 = v25;
  v61 = v24;
  v29 = *(v28 + 24);
  v52 = v14;
  v53 = v29;
  v54 = *(v28 + 32);
  v30 = v54;
  v55 = *(v28 + 48);
  v56 = v11;
  v32 = type metadata accessor for PolynomialEvaluationGadget(255, v14, v54, v31);

  WitnessTable = swift_getWitnessTable();
  v35 = type metadata accessor for ParallelSum(0, v32, WitnessTable, v34);
  v36 = v50;
  ParallelSum.chunkEvaluateSum(_:for:_:)(a1, a2, v48, v49, &v61, partial apply for closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:), v51, v35, v22);

  if (!v36)
  {
    v38 = v42;
    v39 = swift_unknownObjectRetain();
    FieldElement.init(inputVector:)(v39, v45, v46, v47, v14, v30, v20);
    (*(v38 + 16))(v17, v20, v14);
    FieldElement.init(other:)(v17, v14, v30);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v40 = *(v38 + 8);
    v40(v20, v14);
    return (v40)(v22, v14);
  }

  return result;
}

void closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a7 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v38 = &v33 - v17;
  v18 = ArraySlice.count.getter();
  if (v18 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v39 = v13;
  v34 = a6;
  v33 = v16;
  if (v18)
  {
    v19 = 0;
    v35 = v39 + 40;
    v36 = v18;
    v37 = a2;
    while (!__OFADD__(ArraySlice.startIndex.getter(), v19))
    {
      v40 = v19 + 1;
      v20 = v38;
      ArraySlice.subscript.getter();
      type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v21 = *a5;
      Array._checkSubscript_mutating(_:)(v19);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v23 = v21 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v23 = v21;
      }

      (*(v39 + 40))(v23 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v19, v20, a7);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      v19 = v40;
      if (v36 == v40)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_8:
  v24 = ArraySlice.count.getter();
  v25 = *(v34 + 48);
  if (v25 < v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v26 = v24;
  v27 = v39;
  if (v24 != v25)
  {
    if (v24 >= v25)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v40 = *(a9 + 8);
    v38 = (v39 + 40);
    v28 = v33;
    do
    {
      v29 = v26 + 1;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v30 = *a5;
      Array._checkSubscript_mutating(_:)(v26);
      v31 = _swift_isClassOrObjCExistentialType();
      v32 = v30 & 0xFFFFFFFFFFFFFF8;
      if ((v31 & 1) == 0)
      {
        v32 = v30;
      }

      (*(v27 + 40))(v32 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, v28, a7);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      ++v26;
    }

    while (v25 != v29);
  }
}

uint64_t protocol witness for PINECircuit.gadget.getter in conformance PINENormEqualityCheckCircuit<A, B>@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
}

uint64_t protocol witness for FullyLinearProof.outputLength.getter in conformance PINENormEqualityCheckCircuit<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.outputLength.getter(a1, WitnessTable);
}

uint64_t protocol witness for FullyLinearProof.gadgetParameters.getter in conformance PINENormEqualityCheckCircuit<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.gadgetParameters.getter(a1, WitnessTable);
}

uint64_t protocol witness for FullyLinearProof.evaluateGadget<A>(_:at:) in conformance PINENormEqualityCheckCircuit<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.evaluateGadget<A>(_:at:)(WitnessTable, a2, a5, a3, WitnessTable, a4);
}

uint64_t protocol witness for FullyLinearProof.evaluateGadget(_:at:) in conformance PINENormEqualityCheckCircuit<A, B>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.evaluateGadget(_:at:)(a1, a2, WitnessTable, a3);
}

__n128 PINEMainCircuit.gadget.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

uint64_t PINENormEqualityCheckCircuit.parameters.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v6;
  v10 = v5;
  v7 = type metadata accessor for PINECircuitParameter(0, v9);
  return (*(*(v7 - 8) + 16))(a2, v2 + v4, v7);
}

uint64_t PINENormEqualityCheckCircuit.init(l2NormBound:fractionalBitCount:measurementLength:chunkLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(char *, void (*)(void, void), uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, double, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v39 = a2;
  v34 = a6;
  v35 = a7;
  v31 = a5;
  v32 = a3;
  v33 = a4;
  v30 = a9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  v19 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v28 - v22;
  v24 = v38;
  v29 = a8;
  static PINECircuitParameter.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)(a1, v39, a8, a12, a14, &v28 - v22);
  if (v24)
  {
    v25 = swift_getAssociatedTypeWitness();
    return (*(*(v25 - 8) + 8))(a1, v25);
  }

  else
  {
    (*(v36 + 16))(v21, v23, v37);
    a15(v21, v39, v32, v33, v31 & 1, v34, v35, v29, a10, a11, a12, a13, a14);
    v27 = swift_getAssociatedTypeWitness();
    (*(*(v27 - 8) + 8))(a1, v27);
    return (*(v36 + 8))(v23, v37);
  }
}

uint64_t PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v232 = a4;
  v242 = a3;
  v233 = a2;
  v208 = a6;
  v8 = *(a5 + 32);
  v9 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v231 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v245 = AssociatedConformanceWitness;
  v252 = AssociatedTypeWitness;
  v12 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v249 = *(v12 + 24);
  v248 = *(v249 + 2);
  v247 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v247);
  v246 = v197 - v13;
  v14 = swift_checkMetadataState();
  v244 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v214 = v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v241 = v197 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v251 = v197 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v235 = v197 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v250 = v197 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v243 = v197 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v223 = v197 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v226 = v197 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v230 = v197 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v219 = v197 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v197 - v36;
  v227 = *(v9 - 8);
  v38 = MEMORY[0x28223BE20](v35);
  v207 = v197 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v216 = v197 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v217 = v197 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v215 = v197 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v210 = v197 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v209 = v197 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v213 = v197 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v212 = v197 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v218 = v197 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v224 = v197 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v229 = v197 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v228 = v197 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v64 = v197 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v222 = v197 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v225 = v197 - v68;
  MEMORY[0x28223BE20](v67);
  v70 = v197 - v69;
  v220 = a1;
  v71 = a1;
  v72 = v234;
  v73 = MEMORY[0x2743B2830](v71, v9);
  if (v73 != *(v72 + *(a5 + 64) + 16))
  {
    v89 = v73;
    *&v253 = 0;
    *(&v253 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v253 = 0xD00000000000001BLL;
    *(&v253 + 1) = 0x8000000270C51C80;
    v265[0] = v89;
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v90);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v91 = *(v72 + *(a5 + 64) + 16);
LABEL_10:
    v265[0] = v91;
    v94 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v94);
LABEL_11:

    v95 = v253;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v96 = v95;
    *(v96 + 16) = 2;
    return swift_willThrow();
  }

  v211 = a5;
  v74 = MEMORY[0x2743B2830](v233, v9);
  if (v74 != 3)
  {
    v92 = v74;
    *&v253 = 0;
    *(&v253 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    *&v253 = 0xD000000000000019;
    *(&v253 + 1) = 0x8000000270C51CE0;
    v265[0] = v92;
    v93 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v93);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v91 = 3;
    goto LABEL_10;
  }

  v206 = v70;
  v204 = v64;
  v76 = v231;
  v203 = type metadata accessor for GadgetEvaluation(0, v9, v231, v75);
  v77 = MEMORY[0x2743B2830](v232);
  v78 = v211;
  WitnessTable = swift_getWitnessTable();
  v80 = *(PINECircuit.gadgetParameters.getter(v78, WitnessTable) + 16);

  if (v77 != v80)
  {
    *&v253 = 0;
    *(&v253 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    *&v253 = 0x2064696C61766E49;
    *(&v253 + 1) = 0xEF203A746E756F63;
    v265[0] = v77;
    v98 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v98);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    PINECircuit.gadgetParameters.getter(v78, WitnessTable);
    v99 = MEMORY[0x2743B2770]();
    v101 = v100;

    MEMORY[0x2743B25F0](v99, v101);
    goto LABEL_11;
  }

  v201 = WitnessTable;
  *&v253 = v242;
  v240 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v81 = v225;
  FieldElement.init(_:)(v37, v9, v76);
  v82 = v227[2];
  v83 = v222;
  v200 = v227 + 2;
  v199 = v82;
  v82(v222, v81, v9);
  FieldElement.init(other:)(v83, v9, v76);
  v84 = v76[11];
  v197[1] = v76 + 11;
  v198 = v84;
  v84(v9, v76);
  v85 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v202 = v9;
  if (v85)
  {
    v86 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v87 = v245;
    v88 = v244;
    if (v86 >= 64)
    {
      *&v253 = 0;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v105 = dispatch thunk of static Equatable.== infix(_:_:)();
      v106 = v88;
      goto LABEL_22;
    }
  }

  else
  {
    v102 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v103 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v87 = v245;
    v76 = v244;
    if ((v102 & 1) == 0)
    {
      if (v103 >= 64)
      {
        goto LABEL_21;
      }

      v88 = v244;
      if (!dispatch thunk of BinaryInteger._lowWord.getter())
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v103 > 64)
    {
      goto LABEL_21;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v104 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v88 = v76;
    (v76[1])(v37, v14);
    if ((v104 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (!dispatch thunk of BinaryInteger._lowWord.getter())
  {
    do
    {
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_21:
      *&v253 = 0;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v105 = dispatch thunk of static Equatable.== infix(_:_:)();
      v88 = v76;
      v106 = v76;
LABEL_22:
      (v106[1])(v37, v14);
    }

    while ((v105 & 1) != 0);
  }

LABEL_23:
  v252 = swift_checkMetadataState();
  (*(v87 + 24))(v252, v87);
  v242 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v107 = v223;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v108 = v226;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v109 = v88 + 1;
  v110 = v107;
  v111 = v88[1];
  v111(v110, v14);
  v111(v37, v14);
  v113 = v88[2];
  v112 = v88 + 2;
  (v113)(v243, v230, v14);
  v114 = v250;
  v239 = v113;
  (v113)(v250, v108, v14);
  *&v253 = 1;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v245 + 64))(v37);
  v115 = v109;
  v111(v37, v14);
  v237 = v245 + 56;
  v238 = (v112 + 2);
  v244 = v112;
  v236 = v12;
  v205 = v37;
  v249 = v111;
  while (1)
  {
    v124 = v251;
    (v239)(v251, v114, v14);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      break;
    }

    v125 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v126 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v127 = v241;
    if ((v125 & 1) == 0)
    {
      if (v126 >= 128)
      {
        lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v253 = 0uLL;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v136 = v251;
        v137 = dispatch thunk of static Equatable.== infix(_:_:)();
        v111(v37, v14);
        v138 = v136;
        v114 = v250;
        goto LABEL_43;
      }

      v131 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v124 = v251;
      goto LABEL_37;
    }

    if (v126 <= 128)
    {
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v133 = v251;
      v134 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v111(v37, v14);
      if (v134)
      {
        v135 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v133, &type metadata for _UInt128, v14, v135, v12, &v253);
        v111(v133, v14);
        v114 = v250;
        if (v253 == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v111(v133, v14);
      }
    }

    else
    {
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v253 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v128 = v251;
      v129 = dispatch thunk of static Equatable.== infix(_:_:)();
      v111(v37, v14);
      v111(v128, v14);
      v114 = v250;
      if (v129)
      {
        goto LABEL_57;
      }
    }

LABEL_44:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v111(v37, v14);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      v139 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v140 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v139)
      {
        if (v140 <= 128)
        {
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v141 = dispatch thunk of static Comparable.>= infix(_:_:)();
          v111(v37, v14);
          if ((v141 & 1) == 0)
          {
            v111(v127, v14);
            v116 = v245;
            v117 = v115;
            v118 = v243;
            v37 = v205;
            v119 = v238;
LABEL_25:
            v120 = v235;
            (*(v116 + 56))(v235, v118, v252, v116);
            v121 = v252;
            v249(v120, v14);
            (*v119)(v120, v37, v14);
            goto LABEL_26;
          }

          v142 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
          static FixedWidthInteger._truncatingInit<A>(_:)(v127, &type metadata for _UInt128, v14, v142, v12, &v253);
          v111(v127, v14);
          v143 = *(&v253 + 1) | v253;
          v116 = v245;
          v121 = v252;
          v117 = v115;
          v118 = v243;
          v37 = v205;
          goto LABEL_51;
        }
      }

      else if (v140 < 128)
      {
LABEL_50:
        v144 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v127, &type metadata for _UInt128, v14, v144, v12, &v253);
        v111(v127, v14);
        v143 = *(&v253 + 1) | v253;
        v116 = v245;
        v121 = v252;
        v117 = v115;
        v118 = v243;
LABEL_51:
        v119 = v238;
        if (v143)
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
    {
      goto LABEL_50;
    }

    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v253 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v145 = dispatch thunk of static Equatable.== infix(_:_:)();
    v111(v37, v14);
    v111(v127, v14);
    v116 = v245;
    v121 = v252;
    v117 = v115;
    v118 = v243;
    v119 = v238;
    if ((v145 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_26:
    (*(v116 + 56))(v118, v118, v121, v116);
    v122 = v117;
    v111 = v249;
    v249(v118, v14);
    v123 = *v119;
    (*v119)(v118, v37, v14);
    *&v253 = 1;
    v114 = v250;
    v12 = v236;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v111(v114, v14);
    v123(v114, v37, v14);
    v115 = v122;
  }

  v130 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v127 = v241;
  if (v130 < 128)
  {
    v131 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
LABEL_37:
    static FixedWidthInteger._truncatingInit<A>(_:)(v124, &type metadata for _UInt128, v14, v131, v12, &v253);
    v111(v124, v14);
    if (v253 == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_44;
  }

  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v253 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v132 = v124;
  v137 = dispatch thunk of static Equatable.== infix(_:_:)();
  v111(v37, v14);
  v138 = v132;
LABEL_43:
  v111(v138, v14);
  if ((v137 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_57:
  v111(v114, v14);
  v111(v243, v14);
  v111(v226, v14);
  v111(v230, v14);
  v146 = v219;
  (*v238)(v219, v235, v14);
  v147 = *(v231 + 96);
  v148 = v202;
  v241 = (v231 + 96);
  v240 = v147;
  (v147)(v146, v202);
  v250 = v227[1];
  v251 = (v227 + 1);
  (v250)(v225, v148);
  Array.subscript.getter();
  Array.subscript.getter();
  Array.subscript.getter();
  *&v253 = v220;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v265[0] = ArraySlice.init<A>(_:)();
  v265[1] = v149;
  v265[2] = v150;
  v265[3] = v151;
  PINECircuit.unpack(encodedMeasurement:)(v265, v211, v201, &v253);
  v153 = v256;
  v152 = v257;
  v155 = v258;
  v154 = v259;
  v244 = v260;
  v239 = v261;
  v238 = v262;
  v236 = v263;
  swift_unknownObjectRelease();
  v264[0] = v153;
  v264[1] = v152;
  v264[2] = v155;
  v264[3] = v154;
  swift_unknownObjectRetain();
  Array.subscript.getter();
  v243 = v253;
  v266 = v253;
  v156 = v152;
  v157 = v211;
  v158 = v221;
  PINEMainCircuit.evaluateBitCheck(bits:jointRand:inverseNumOfShares:for:)(v153, v156, v155, v154, v204, v206, v211, v224);
  swift_unknownObjectRelease();
  if (v158)
  {
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v243);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v159 = v250;
    (v250)(v229, v148);
    v159(v228, v148);
    v159(v204, v148);
    return (v159)(v206, v148);
  }

  else
  {
    outlined consume of GadgetEvaluation<A><A>(v243);
    PINECircuit.unpack(bitsSlice:)(v264, v157, v201, &v253);
    v233 = *(&v253 + 1);
    v160 = v253;
    v230 = v254;
    v226 = v255;
    v161 = v256;
    v162 = v257;
    v225 = v258;
    v221 = v259;
    v243 = v260;
    v220 = v261;
    v219 = v262;
    v201 = v263;
    Array.subscript.getter();
    v235 = v253;
    PINEMainCircuit.evaluateNormRangeCheck(vBits:uBits:inverseNumOfShares:for:)(v233, v230, v226, v161, v162, v225, v221, v218, v206, v196, v157);
    v230 = v160;
    v233 = v161;
    outlined consume of GadgetEvaluation<A><A>(v235);
    Array.subscript.getter();
    v163 = v253;
    v266 = v253;
    v164 = v209;
    v165 = v210;
    PINEMainCircuit.evaluateWraparoundCheck(bits:dotProducts:jointRand:inverseNumOfShares:for:)(v209, v210, v243, v220, v219, v201, v244, v239, v238, v236, v228, v206, &v266, v211);
    v166 = v202;
    outlined consume of GadgetEvaluation<A><A>(v163);
    v167 = v227[4];
    v167(v212, v164, v166);
    v167(v213, v165, v166);
    v168 = v216;
    v199(v216, v218, v166);
    v169 = v168;
    v170 = v231;
    FieldElement.init(other:)(v169, v166, v231);
    v171 = v198;
    v198(v166, v170);
    v171(v166, v170);
    v238 = *(v245 + 56);
    v172 = v223;
    v173 = v214;
    (v238)(v223, v214);
    v174 = v249;
    v249(v173, v14);
    v174(v172, v14);
    v175 = v217;
    v240(v37, v166, v170);
    v176 = v216;
    v199(v216, v224, v166);
    FieldElement.init(other:)(v176, v166, v170);
    v239 = *(v170 + 8);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    (v250)(v175, v166);
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    FieldElement.pow(_:)(v37, v166, v170, v216);
    v249(v37, v14);
    v177 = v207;
    v199(v207, v212, v166);
    FieldElement.init(other:)(v177, v166, v170);
    v178 = v198;
    v198(v166, v170);
    v179 = v214;
    v178(v166, v231);
    v180 = v223;
    (v238)(v223, v179);
    v181 = v179;
    v182 = v249;
    v249(v181, v14);
    v182(v180, v14);
    v183 = v231;
    v240(v37, v166, v231);
    v184 = v216;
    (v250)(v216, v166);
    v199(v184, v215, v166);
    FieldElement.init(other:)(v184, v166, v183);
    v185 = v217;
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v186 = v250;
    (v250)(v185, v166);
    v186(v215, v166);
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    FieldElement.pow(_:)(v37, v166, v183, v185);
    v249(v37, v14);
    v187 = v216;
    v199(v216, v213, v166);
    FieldElement.init(other:)(v187, v166, v183);
    v188 = v223;
    v198(v166, v183);
    v189 = v214;
    v198(v166, v231);
    (v238)(v188, v189);
    v190 = v249;
    v249(v189, v14);
    v190(v188, v14);
    v191 = v215;
    v192 = v231;
    v240(v37, v166, v231);
    v193 = v217;
    v194 = v250;
    (v250)(v217, v166);
    v195 = v222;
    v199(v193, v222, v166);
    FieldElement.init(other:)(v193, v166, v192);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v194(v191, v166);
    v194(v195, v166);
    v194(v213, v166);
    v194(v212, v166);
    v194(v218, v166);
    v194(v224, v166);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v194(v229, v166);
    v194(v228, v166);
    v194(v204, v166);
    return (v194)(v206, v166);
  }
}

uint64_t PINEMainCircuit.evaluateBitCheck(bits:jointRand:inverseNumOfShares:for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v28 = a6;
  v33 = a4;
  v32 = a3;
  v31 = a2;
  v30 = a1;
  v29 = a8;
  v11 = *(a7 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v18 = *(v17 + 32);
  (*(v18 + 72))(v11, v18);
  v19 = *(v8 + 24);
  v43 = *(v8 + 8);
  v44 = v19;
  v45 = *(v8 + 40);
  v46 = v16;
  v20 = *(a7 + 24);
  v35 = v11;
  v36 = v20;
  v37 = v18;
  v38 = *(a7 + 40);
  v39 = v14;
  v40 = v28;
  v41 = a5;
  v42 = v8;
  v22 = type metadata accessor for MultiplicationGadget(255, v11, v18, v21);
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for ParallelSum(0, v22, WitnessTable, v24);
  ParallelSum.chunkEvaluateSum(_:for:_:)(v30, v31, v32, v33, &v46, partial apply for closure #1 in PINEMainCircuit.evaluateBitCheck(bits:jointRand:inverseNumOfShares:for:), v34, v25, v29);
  return (*(v12 + 8))(v14, v11);
}

uint64_t PINEMainCircuit.evaluateNormRangeCheck(vBits:uBits:inverseNumOfShares:for:)@<X0>(char *a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v73 = a7;
  v74 = a8;
  v71 = a5;
  v72 = a6;
  v78 = a3;
  v79 = a4;
  v77 = a2;
  v69 = a9;
  v12 = *(a12 + 32);
  v63 = a12;
  v13 = *(a12 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = AssociatedTypeWitness;
  v15 = swift_getAssociatedTypeWitness();
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v60 - v22;
  v75 = *(v13 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v60 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v60 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v76 = &v60 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v60 - v35;
  v37 = swift_unknownObjectRetain();
  v38 = v12;
  v39 = v82;
  result = FieldElement.init(inputVector:)(v37, v77, v78, v79, v13, v12, v36);
  if (!v39)
  {
    v61 = v26;
    v62 = v32;
    v82 = v36;
    v77 = v23;
    v78 = v20;
    v41 = v75;
    v42 = swift_unknownObjectRetain();
    FieldElement.init(inputVector:)(v42, v72, v73, v74, v13, v12, v76);
    v79 = 0;
    v73 = a10;
    v43 = v12;
    v44 = *(v41 + 16);
    v44(v29, v82, v13);
    FieldElement.init(other:)(v29, v13, v12);
    v74 = *(v12 + 8);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v45 = *(v63 + 64);
    v46 = *(v63 + 24);
    v80[0] = v13;
    v80[1] = v46;
    v80[2] = v38;
    v81 = *(v63 + 40);
    v47 = type metadata accessor for PINECircuitParameter(0, v80);
    v48 = (v65 + *(v47 + 84) + v45);
    v49 = v61;
    v44(v61, v48, v13);
    FieldElement.init(other:)(v49, v13, v38);
    v50 = swift_checkMetadataState();
    v51 = *(v38 + 88);
    v52 = v78;
    v51(v13, v38);
    v53 = v64;
    v51(v13, v38);
    v54 = v77;
    (*(AssociatedConformanceWitness + 56))(v52, v53, v50);
    v55 = *(v66 + 8);
    v56 = v53;
    v57 = v67;
    v55(v56, v67);
    v55(v52, v57);
    (*(v43 + 96))(v54, v13, v43);
    v58 = v62;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v59 = *(v75 + 8);
    v59(v29, v13);
    v59(v58, v13);
    v59(v76, v13);
    return (v59)(v82, v13);
  }

  return result;
}

uint64_t PINEMainCircuit.evaluateWraparoundCheck(bits:dotProducts:jointRand:inverseNumOfShares:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t *a7, char *a8, void (*a9)(uint64_t, char *, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14)
{
  v15 = v14;
  v98 = a8;
  v97 = a7;
  v100 = a6;
  v93 = a5;
  v92 = a4;
  v91 = a3;
  v86 = a2;
  v78 = a1;
  v96 = a9;
  v95 = a10;
  v103 = a12;
  v94 = a11;
  *&v89 = a14 + 24;
  *&v90 = a14 + 40;
  v16 = *(a14 + 32);
  v17 = *(a14 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = AssociatedTypeWitness;
  v84 = swift_getAssociatedTypeWitness();
  v83 = *(v84 - 8);
  v19 = MEMORY[0x28223BE20](v84);
  v81 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v80 = &v73 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v79 = &v73 - v24;
  v101 = *(v17 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v76 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v87 = &v73 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v88 = &v73 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v102 = &v73 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v73 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v73 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v73 - v39;
  v41 = *a13;
  (*(v16 + 72))(v17, v16);
  v123 = 0;
  v42 = v14 + *(a14 + 64);
  v43 = *(a14 + 48);
  *&v44 = v17;
  *(&v44 + 1) = *v89;
  v89 = v44;
  *&v45 = v16;
  *(&v45 + 1) = *v90;
  v90 = v45;
  v120 = v44;
  v121 = v45;
  *&v122 = v43;
  v74 = type metadata accessor for PINECircuitParameter(0, &v120);
  v75 = v42;
  PINECircuitParameter.wraparoundCheckLowerBound.getter(v74);
  v77 = *(v16 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v46 = *(v15 + 24);
  v120 = *(v15 + 8);
  v121 = v46;
  v122 = *(v15 + 40);
  v119 = v41;
  v106 = v90;
  v105 = v89;
  v107 = v43;
  v108 = v91;
  v109 = v92;
  v110 = v93;
  v111 = v100;
  v112 = &v123;
  v113 = v15;
  v114 = v38;
  v115 = v103;
  v116 = v40;
  v93 = v40;
  v100 = v35;
  v117 = v35;
  v118 = v94;
  v48 = type metadata accessor for MultiplicationGadget(255, v17, v16, v47);
  WitnessTable = swift_getWitnessTable();
  v51 = type metadata accessor for ParallelSum(0, v48, WitnessTable, v50);
  v52 = v102;
  v53 = v99;
  ParallelSum.chunkEvaluateSum(_:for:_:)(v97, v98, v96, v95, &v119, partial apply for closure #1 in PINEMainCircuit.evaluateWraparoundCheck(bits:dotProducts:jointRand:inverseNumOfShares:for:), v104, v51, v102);
  v99 = v53;
  if (v53)
  {
    v54 = *(v101 + 8);
    v54(v100, v17);
    v54(v38, v17);
    return (v54)(v93, v17);
  }

  else
  {
    v56 = v101;
    v57 = (v101 + 16);
    v58 = *(v101 + 16);
    v58(v78, v52, v17);
    v96 = v58;
    v97 = v57;
    v59 = v87;
    FieldElement.init(_:)(*(v75 + *(v74 + 96)), v17, v16, v87);
    v60 = v76;
    v58(v76, v59, v17);
    FieldElement.init(other:)(v60, v17, v16);
    v61 = swift_checkMetadataState();
    v98 = v38;
    v62 = v61;
    v63 = *(v16 + 88);
    v64 = v80;
    v63(v17, v16);
    v65 = v81;
    v63(v17, v16);
    v66 = v79;
    (*(AssociatedConformanceWitness + 56))(v64, v65, v62);
    v67 = *(v83 + 8);
    v68 = v84;
    v67(v65, v84);
    v67(v64, v68);
    v69 = v88;
    (*(v16 + 96))(v66, v17, v16);
    v70 = *(v56 + 8);
    v71 = v87;
    v70(v87, v17);
    v72 = v100;
    v96(v71, v100, v17);
    FieldElement.init(other:)(v71, v17, v16);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v70(v69, v17);
    v70(v102, v17);
    v70(v72, v17);
    v70(v98, v17);
    return (v70)(v93, v17);
  }
}

void closure #1 in PINEMainCircuit.evaluateBitCheck(bits:jointRand:inverseNumOfShares:for:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v97 = a8;
  v96 = a7;
  v125 = a6;
  v98 = a5;
  swift_getAssociatedTypeWitness();
  v99 = a12;
  v16 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v123 = &v88[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v122 = &v88[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v121 = &v88[-v23];
  v100 = *(a10 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v90 = &v88[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v89 = &v88[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v95 = &v88[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v94 = &v88[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v120 = &v88[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v119 = &v88[-v35];
  MEMORY[0x28223BE20](v34);
  v127 = &v88[-v36];
  v128 = v16;
  v129 = a3;
  v130 = a4;
  v37 = ArraySlice.count.getter();
  if (v37 < 0)
  {
    goto LABEL_25;
  }

  v38 = v37;
  v39 = v127;
  if (v37)
  {
    v118 = swift_checkMetadataState();
    v40 = 0;
    v116 = v99[12];
    v117 = v99 + 12;
    v114 = v99[11];
    v115 = v99 + 11;
    v112 = *(AssociatedConformanceWitness + 56);
    v113 = AssociatedConformanceWitness + 56;
    v110 = (v17 + 8);
    v111 = v100 + 16;
    v109 = v100 + 8;
    v91 = v100 + 40;
    v41 = 1;
    v93 = a2;
    v92 = v38;
    while (!__OFADD__(ArraySlice.startIndex.getter(), v40))
    {
      ArraySlice.subscript.getter();
      if (v40 == 0x4000000000000000)
      {
        goto LABEL_23;
      }

      v108 = v40 + 1;
      v103 = (v41 - 1);
      v42 = v100;
      v43 = *(v100 + 16);
      v104 = v43;
      v107 = v41;
      v43(v120, v125, a10);
      v44 = v94;
      v43(v94, v39, a10);
      v45 = v99;
      FieldElement.init(other:)(v44, a10, v99);
      v46 = v122;
      v47 = v114;
      v114(a10, v45);
      v48 = v123;
      v47(a10, v45);
      v49 = v121;
      v50 = v46;
      v112(v46, v48);
      v51 = *v110;
      v105 = v51;
      v52 = AssociatedTypeWitness;
      v51(v48, AssociatedTypeWitness);
      v51(v50, v52);
      v53 = v119;
      v116(v49, a10, v45);
      v106 = *(v42 + 8);
      v54 = v120;
      (v106)(v120, a10);
      type metadata accessor for Array();
      v55 = v98;
      Array._makeMutableAndUnique()();
      v56 = *v55;
      v57 = v103;
      Array._checkSubscript_mutating(_:)(v103);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v59 = v56 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v59 = v56;
      }

      v102 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v101 = *(v42 + 72);
      v60 = v59 + v102 + v101 * v57;
      v103 = *(v42 + 40);
      v61 = v127;
      v103(v60, v53, a10);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      v104(v54, v61, a10);
      v62 = v95;
      v63 = v107;
      FieldElement.init(other:)(v54, a10, v45);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      Array._makeMutableAndUnique()();
      v64 = *v55;
      Array._checkSubscript_mutating(_:)(v63);
      v65 = _swift_isClassOrObjCExistentialType();
      v66 = v64 & 0xFFFFFFFFFFFFFF8;
      if ((v65 & 1) == 0)
      {
        v66 = v64;
      }

      v103(v66 + v102 + v101 * v63, v62, a10);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      v67 = v122;
      v68 = v114;
      v114(a10, v45);
      v69 = v123;
      v68(a10, v45);
      v70 = v121;
      v112(v67, v69);
      v71 = AssociatedTypeWitness;
      v72 = v105;
      v105(v69, AssociatedTypeWitness);
      v72(v67, v71);
      v116(v70, a10, v45);
      v40 = v108;
      v39 = v127;
      v106();
      v41 = v63 + 2;
      if (v92 == v40)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  v73 = ArraySlice.count.getter();
  v74 = *(a9 + 48);
  if (v74 < v73)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v74 != v73)
  {
    v75 = v74 - v73;
    if (v74 <= v73)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v125 = (v100 + 40);
    v76 = v73 + 0x4000000000000000;
    v77 = 2 * v73;
    while ((v76 & 0x8000000000000000) == 0)
    {
      v129 = v99[1];
      v78 = v89;
      v130 = v75;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      type metadata accessor for Array();
      v79 = v98;
      Array._makeMutableAndUnique()();
      v80 = *v79;
      Array._checkSubscript_mutating(_:)(v77);
      v81 = _swift_isClassOrObjCExistentialType();
      v82 = v80 & 0xFFFFFFFFFFFFFF8;
      if ((v81 & 1) == 0)
      {
        v82 = v80;
      }

      v128 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v83 = *(v100 + 72);
      AssociatedConformanceWitness = *(v100 + 40);
      v127 = v83;
      (AssociatedConformanceWitness)(v82 + v128 + v83 * v77, v78, a10);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      v84 = v90;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      Array._makeMutableAndUnique()();
      v85 = *v79;
      Array._checkSubscript_mutating(_:)(v77 + 1);
      v86 = _swift_isClassOrObjCExistentialType();
      v87 = v85 & 0xFFFFFFFFFFFFFF8;
      if ((v86 & 1) == 0)
      {
        v87 = v85;
      }

      (AssociatedConformanceWitness)(v87 + v128 + v127 * (v77 + 1), v84, a10);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      ++v76;
      v77 += 2;
      v75 = v130 - 1;
      if (v130 == 1)
      {
        return;
      }
    }

    goto LABEL_24;
  }
}

void closure #1 in PINEMainCircuit.evaluateWraparoundCheck(bits:dotProducts:jointRand:inverseNumOfShares:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v208 = a8;
  v179 = a7;
  v207 = a6;
  v182 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v216 = a19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v166 = AssociatedTypeWitness;
  v204 = swift_getAssociatedTypeWitness();
  v28 = *(v204 - 8);
  v29 = MEMORY[0x28223BE20](v204);
  v203 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v202 = &v153 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v201 = &v153 - v34;
  v183 = *(a17 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v171 = &v153 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v170 = &v153 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v165 = &v153 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v177 = &v153 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v153 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v200 = &v153 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v205 = &v153 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v178 = &v153 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v199 = &v153 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v153 - v54;
  v168 = a1;
  v180 = a3;
  v181 = a4;
  v56 = ArraySlice.count.getter();
  if (v56 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v167 = a2;
  v169 = a11;
  if (v56)
  {
    v57 = 0;
    v164 = a21;
    v163 = a20;
    v162 = a18;
    v159 = a16;
    v196 = (v183 + 16);
    v158 = a15;
    v175 = a14;
    v195 = v216 + 11;
    v194 = AssociatedConformanceWitness + 56;
    v193 = (v28 + 8);
    v192 = v216 + 12;
    v161 = a13;
    v160 = a12;
    v191 = (v183 + 8);
    v157 = v183 + 40;
    v156 = v183 + 24;
    v58 = 1;
    v59 = a10;
    v176 = v45;
    v198 = v55;
    v154 = v56;
    v155 = a10;
    v197 = a9;
    while (1)
    {
      v209 = v58;
      v210 = v22;
      v190 = v57;
      v60 = ArraySlice.startIndex.getter();
      v61 = *v59;
      v62 = v162;
      v211 = a17;
      v212 = v162;
      v63 = v216;
      v64 = v163;
      v213 = v216;
      v214 = v163;
      v65 = v164;
      v215 = v164;
      v66 = type metadata accessor for PINEMainCircuit(0, &v211);
      v67 = v169 + *(v66 + 64);
      v211 = a17;
      v212 = v62;
      v213 = v63;
      v214 = v64;
      v215 = v65;
      v68 = *(v67 + *(type metadata accessor for PINECircuitParameter(0, &v211) + 88));
      v69 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      v70 = v61 * v69;
      if ((v61 * v69) >> 64 != (v61 * v69) >> 63)
      {
        goto LABEL_31;
      }

      v71 = v60 + v70;
      if (__OFADD__(v60, v70))
      {
        goto LABEL_32;
      }

      v72 = (v71 + v68);
      if (__OFADD__(v71, v68))
      {
        goto LABEL_33;
      }

      if (v72 < v71)
      {
        goto LABEL_34;
      }

      specialized ArraySlice.subscript.getter(v71, v71 + v68);
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v79 = swift_unknownObjectRetain();
      v80 = v74;
      v81 = v210;
      FieldElement.init(inputVector:)(v79, v80, v76, v78, a17, v216, v198);
      if (v81)
      {
        return;
      }

      v210 = 0;
      v174 = *v196;
      v82 = v205;
      v174(v205, v160, a17);
      v83 = v178;
      v84 = v82;
      v85 = v216;
      FieldElement.init(other:)(v84, a17, v216);
      v86 = swift_checkMetadataState();
      v87 = v85[11];
      v88 = v202;
      v87(a17, v85);
      v184 = v72;
      v89 = v203;
      v188 = v87;
      v87(a17, v85);
      v90 = *(AssociatedConformanceWitness + 56);
      v91 = v201;
      v189 = v86;
      v186 = v90;
      (v90)(v88, v89, v86);
      v92 = *v193;
      v93 = v204;
      (*v193)(v89, v204);
      v187 = v92;
      v92(v88, v93);
      v94 = v85[12];
      v94(v91, a17, v85);
      v95 = v205;
      v96 = v174;
      v174(v205, v198, a17);
      FieldElement.init(other:)(v95, a17, v85);
      v97 = v85[1];
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v185 = *v191;
      v185(v83, a17);
      ArraySlice.subscript.getter();
      v98 = ArraySlice.startIndex.getter();
      v99 = v190;
      if (__OFADD__(v98, v190))
      {
        goto LABEL_35;
      }

      v100 = v97;
      v101 = v176;
      ArraySlice.subscript.getter();
      if (v99 == 0x4000000000000000)
      {
        goto LABEL_36;
      }

      v172 = v209 - 1;
      v184 = v94;
      v102 = v205;
      v96(v205, v101, a17);
      v103 = v178;
      v104 = v216;
      FieldElement.init(other:)(v102, a17, v216);
      v173 = v100;
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      v96(v102, v175, a17);
      v105 = v165;
      v96(v165, v103, a17);
      FieldElement.init(other:)(v105, a17, v104);
      v106 = v202;
      v107 = v188;
      v188(a17, v104);
      v108 = v203;
      v107(a17, v104);
      v109 = v201;
      v186(v106, v108);
      v110 = v108;
      v111 = v204;
      v112 = v187;
      v187(v110, v204);
      v112(v106, v111);
      v113 = v109;
      v114 = v177;
      v184(v113, a17, v104);
      v115 = v185;
      v185(v102, a17);
      v115(v103, a17);
      type metadata accessor for Array();
      v116 = v182;
      Array._makeMutableAndUnique()();
      v117 = *v116;
      v118 = v172;
      Array._checkSubscript_mutating(_:)(v172);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v120 = v117 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v120 = v117;
      }

      v121 = v183;
      v122 = (*(v183 + 80) + 32) & ~*(v183 + 80);
      v123 = *(v183 + 72);
      (*(v183 + 40))(v120 + v122 + v123 * v118, v114, a17);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      Array._makeMutableAndUnique()();
      v124 = *v116;
      v125 = v209;
      Array._checkSubscript_mutating(_:)(v209);
      v126 = _swift_isClassOrObjCExistentialType();
      v127 = v124 & 0xFFFFFFFFFFFFFF8;
      if ((v126 & 1) == 0)
      {
        v127 = v124;
      }

      (*(v121 + 24))(v127 + v122 + v123 * v125, v200, a17);
      v128 = v216;
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v129 = v202;
      v130 = v188;
      v188(a17, v128);
      v131 = v203;
      v130(a17, v128);
      v132 = v176;
      v133 = v201;
      v186(v129, v131);
      v134 = v131;
      v135 = v204;
      v136 = v187;
      v187(v134, v204);
      v136(v129, v135);
      v184(v133, a17, v128);
      v137 = v185;
      v185(v132, a17);
      v137(v200, a17);
      v137(v199, a17);
      v137(v198, a17);
      v59 = v155;
      if (__OFADD__(*v155, 1))
      {
        goto LABEL_37;
      }

      v57 = v190 + 1;
      ++*v155;
      v22 = v210;
      v58 = v209 + 2;
      if (v154 == v57)
      {
        goto LABEL_18;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_18:
  v138 = ArraySlice.count.getter();
  v139 = *(v169 + 48);
  if (v139 < v138)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v210 = v22;
  if (v139 != v138)
  {
    v140 = v139 - v138;
    if (v139 <= v138)
    {
LABEL_40:
      __break(1u);
      return;
    }

    v204 = v183 + 40;
    v141 = v138 + 0x4000000000000000;
    v142 = 2 * v138;
    while ((v141 & 0x8000000000000000) == 0)
    {
      v208 = v216[1];
      v143 = v170;
      v209 = v140;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      type metadata accessor for Array();
      v144 = v182;
      Array._makeMutableAndUnique()();
      v145 = *v144;
      Array._checkSubscript_mutating(_:)(v142);
      v146 = _swift_isClassOrObjCExistentialType();
      v147 = v145 & 0xFFFFFFFFFFFFFF8;
      if ((v146 & 1) == 0)
      {
        v147 = v145;
      }

      v207 = (*(v183 + 80) + 32) & ~*(v183 + 80);
      v148 = *(v183 + 72);
      v205 = *(v183 + 40);
      AssociatedConformanceWitness = v148;
      (v205)(v147 + v207 + v148 * v142, v143, a17);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      v149 = v171;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      Array._makeMutableAndUnique()();
      v150 = *v144;
      Array._checkSubscript_mutating(_:)(v142 + 1);
      v151 = _swift_isClassOrObjCExistentialType();
      v152 = v150 & 0xFFFFFFFFFFFFFF8;
      if ((v151 & 1) == 0)
      {
        v152 = v150;
      }

      (v205)(v152 + v207 + AssociatedConformanceWitness * (v142 + 1), v149, a17);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      ++v141;
      v142 += 2;
      v140 = v209 - 1;
      if (v209 == 1)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_30;
  }
}

__n128 protocol witness for PINECircuit.gadget.getter in conformance PINEMainCircuit<A, B>@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

uint64_t protocol witness for FullyLinearProof.outputLength.getter in conformance PINEMainCircuit<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.outputLength.getter(a1, WitnessTable);
}

uint64_t protocol witness for FullyLinearProof.gadgetParameters.getter in conformance PINEMainCircuit<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.gadgetParameters.getter(a1, WitnessTable);
}

unint64_t protocol witness for FullyLinearProof.decode(data:numOfMeasurements:) in conformance PINENormEqualityCheckCircuit<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = specialized PINECircuit.decode(data:numOfMeasurements:)(a1, a2, WitnessTable);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t protocol witness for FullyLinearProof.evaluateGadget<A>(_:at:) in conformance PINEMainCircuit<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.evaluateGadget<A>(_:at:)(WitnessTable, a2, a5, a3, WitnessTable, a4);
}

uint64_t protocol witness for FullyLinearProof.evaluateGadget(_:at:) in conformance PINEMainCircuit<A, B>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return PINECircuit.evaluateGadget(_:at:)(a1, a2, WitnessTable, a3);
}

uint64_t specialized PINECircuit.decode<A>(data:numOfMeasurements:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a6;
  v49 = a2;
  v66 = a1;
  v69 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v62 = a5;
  v71 = AssociatedTypeWitness;
  v72 = v10;
  v60 = swift_getAssociatedConformanceWitness();
  v61 = AssociatedConformanceWitness;
  v73 = AssociatedConformanceWitness;
  v74 = v12;
  v75 = v60;
  v59 = type metadata accessor for PINECircuitParameter(0, &v71);
  v68 = *(v59 - 8);
  v13 = MEMORY[0x28223BE20](v59);
  v58 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v57 = &v45 - v15;
  v48 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v48);
  v47 = &v45 - v16;
  v17 = *(v65 + 8);
  v70 = a4;
  v63 = swift_getAssociatedTypeWitness();
  v67 = *(v63 - 8);
  v18 = MEMORY[0x28223BE20](v63);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v46 = &v45 - v21;
  v22 = MEMORY[0x2743B2830](v66, AssociatedTypeWitness);
  v23 = *(v69 + 9);
  v64 = a3;
  if (v22 != (v23)(a3))
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v71 = 0xD000000000000016;
    v72 = 0x8000000270C519D0;
    v76 = v22;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v39);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v76 = v23(v64, v69);
LABEL_10:
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v41);

    v42 = v71;
    v43 = v72;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v44 = v42;
    *(v44 + 8) = v43;
    *(v44 + 16) = 2;
    return swift_willThrow();
  }

  result = dispatch thunk of Collection.count.getter();
  if (result != v22)
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v71 = 0xD000000000000010;
    v72 = 0x8000000270C519F0;
    v76 = dispatch thunk of Collection.count.getter();
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v40);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v76 = v22;
    goto LABEL_10;
  }

  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = v22;
    v56 = AssociatedTypeWitness;
    v26 = v17;
    v27 = v48;
    v28 = v47;
    v29 = v63;
    v30 = v46;
    if (v25)
    {
      v31 = 0;
      v52 = *(v62 + 56);
      v53 = v62 + 56;
      v69 = v67 + 8;
      v51 = (v67 + 16);
      v50 = (v68 + 8);
      v55 = v25;
      v54 = v26;
      do
      {
        v68 = v31 + 1;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.index(_:offsetBy:)();
        v67 = *v69;
        (v67)(v20, v29);
        (*v51)(v20, v30, v29);
        v32 = v20;
        v33 = v27;
        v34 = v57;
        v35 = v56;
        Array.subscript.getter();
        v36 = v58;
        v52(v64, v62);
        v37 = *(v36 + 4);
        (*v50)(v36, v59);
        v38 = v34;
        v27 = v33;
        v20 = v32;
        v29 = v63;
        BinaryFloatingPoint.init<A>(fieldElement:fractionalBitCount:)(v38, v37, v27, v35, v60, v61, v28);
        dispatch thunk of MutableCollection.subscript.setter();
        (v67)(v30, v29);
        result = v70;
        v31 = v68;
      }

      while (v55 != v68);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

unint64_t specialized PINECircuit.decode(data:numOfMeasurements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v27 = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v26 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v26 = a1;
  v13 = MEMORY[0x2743B2830](a1, v12);
  v14 = *(v7 + 72);
  v29 = v3;
  if (v13 == v14(a2, v7))
  {
    v15 = v27;
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v16 = specialized Array.init(repeating:count:)(v11, v13, AssociatedTypeWitness);
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v30 = v16;
    v17 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v19 = v28;
    specialized PINECircuit.decode<A>(data:numOfMeasurements:into:)(v26, &v30, a2, v17, v15, WitnessTable);
    result = v30;
    if (v19)
    {
    }
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v30 = 0xD000000000000016;
    v31 = 0x8000000270C519D0;
    v32 = v13;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v21);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v32 = v14(a2, v7);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v22);

    v23 = v30;
    v24 = v31;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v25 = v23;
    *(v25 + 8) = v24;
    *(v25 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PINENormEqualityCheckCircuit<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PINEMainCircuit<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for PINECircuitParameter(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PINECircuitParameter(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + ((((((v7 + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6) + v7;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
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

  return v5 + (v9 | v13) + 1;
}

void storeEnumTagSinglePayload for PINECircuitParameter(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + ((((((*(v6 + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8) + *(v6 + 64);
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
  v19 = (((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v18(v19);
}

uint64_t getEnumTagSinglePayload for PINENormEqualityCheckCircuit(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v6 | 7;
  v10 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v11 = v7 - ((-57 - v6) | v9) - ((-9 - v6 - ((((((v7 + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v6) - 2;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
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
      v17 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v6 + ((((((((((((((v17 + v9 + 48) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6);
      }

      v18 = *(v17 + 32);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
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

void storeEnumTagSinglePayload for PINENormEqualityCheckCircuit(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 8 + ((((((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 56) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 56) & ~(v9 | 7));
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_57:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  v20 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v21 = ((v20 + (v9 | 7) + 48) & ~(v9 | 7));
    if (v7 >= a2)
    {
      v25 = *(v6 + 56);

      v25((v9 + 8 + ((((((((((((v21 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9);
    }

    else
    {
      if (v10 <= 3)
      {
        v22 = ~(-1 << (8 * v10));
      }

      else
      {
        v22 = -1;
      }

      if (v10)
      {
        v23 = v22 & (~v7 + a2);
        if (v10 <= 3)
        {
          v24 = v10;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v10);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v20 + 40) = 0;
    *(v20 + 24) = 0u;
    *(v20 + 8) = 0u;
    *v20 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v20 + 32) = a2 - 1;
  }
}

uint64_t type metadata completion function for PINENormEqualityCheckCircuit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v17 = 0;
  v20 = MEMORY[0x277D83B88];
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = a4(255, v6, v7);
  WitnessTable = swift_getWitnessTable();
  result = type metadata accessor for ParallelSum(319, v8, WitnessTable, v10);
  if (v12 <= 0x3F)
  {
    v18 = 0;
    v21 = result;
    v13 = *(a1 + 24);
    v15[0] = v6;
    v15[1] = v13;
    v15[2] = v7;
    v16 = *(a1 + 40);
    result = type metadata accessor for PINECircuitParameter(319, v15);
    if (v14 <= 0x3F)
    {
      v19 = 0;
      v22 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PINEMainCircuit(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((v6 + ((((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 48) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6);
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = v7 - ((-57 - v6) | v8) - ((-9 - v6 - ((((((v7 + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v6) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((v6 + ((((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 48) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6);
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v5 + (v10 | v14) + 1;
}

void storeEnumTagSinglePayload for PINEMainCircuit(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) - ((-57 - v8) | v8 | 7) - ((-9 - v8 - ((((((*(v6 + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v8) - 2;
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
      if (*(v6 + 64) - ((-57 - v8) | v8 | 7) - ((-9 - v8 - ((((((*(v6 + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) | v8) != 2)
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
  v19 = (v8 + ((((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + (v8 | 7) + 48) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

  v18(v19);
}

uint64_t SumVectorType.init(bitWidth:measurementLength:chunkLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a3 < 1)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  result = static SumVectorType.encodedLengthFrom(bitWidth:measurementLength:)(result, a2, a4, a4, a5);
  if (v6)
  {
    return result;
  }

  v13 = result + a3;
  if (__OFADD__(result, a3))
  {
    goto LABEL_8;
  }

  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = v15 / a3;
  v17 = result;
  v26[0] = MultiplicationGadget.init(numOfCalls:)();
  v26[1] = v18;
  v26[2] = v19;
  v21 = type metadata accessor for MultiplicationGadget(0, a4, a5, v20);
  WitnessTable = swift_getWitnessTable();
  result = ParallelSum.init(inner:count:)(v26, a3, v21, WitnessTable, v27);
  v23 = v27[0];
  v24 = v27[1];
  v25 = v27[2];
  *a6 = v17;
  *(a6 + 8) = a2;
  *(a6 + 16) = 1;
  *(a6 + 24) = a3;
  *(a6 + 32) = v16;
  *(a6 + 40) = v11;
  *(a6 + 48) = v23;
  *(a6 + 64) = v24;
  *(a6 + 80) = v25;
  return result;
}

uint64_t SumVectorType.init(bitWidth:measurementLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  result = static SumVectorType.encodedLengthFrom(bitWidth:measurementLength:)(a1, a2, a3, a4, a5);
  if (v6)
  {
    return result;
  }

  v13 = sqrtf(result);
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 >= 9.2234e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  result = SumVectorType.init(bitWidth:measurementLength:chunkLength:)(a1, a2, v14, a3, a5, v18);
  v15 = v18[3];
  a6[2] = v18[2];
  a6[3] = v15;
  v16 = v18[5];
  a6[4] = v18[4];
  a6[5] = v16;
  v17 = v18[1];
  *a6 = v18[0];
  a6[1] = v17;
  return result;
}

uint64_t SumVectorType.gadgetParameters.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_270C44540;
  v4 = type metadata accessor for MultiplicationGadget(255, *(a1 + 16), *(a1 + 32), v3);
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for ParallelSum(0, v4, WitnessTable, v6);
  v8 = swift_getWitnessTable();
  Gadget.parameters.getter(v7, v8, (v2 + 32));
  return v2;
}

__n128 SumVectorType.gadget.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  result = *(v1 + 80);
  *(a1 + 32) = result;
  return result;
}

uint64_t static SumVectorType.encodedLengthFrom(bitWidth:measurementLength:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 1 || a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = result * a2;
    if ((result * a2) >> 64 != (result * a2) >> 63)
    {
      _StringGuts.grow(_:)(43);

      v11 = 0xD000000000000013;
      v12 = 0x8000000270C52CC0;
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v7);

      MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C52CE0);
      goto LABEL_8;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
    if (!__OFSUB__(result, 1))
    {
      if (result - 1 >= v5)
      {
        return v6;
      }

      v11 = 0;
      v12 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000021, 0x8000000270C52C90);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v8);

      MEMORY[0x2743B25F0](0x74694278616D202CLL, 0xEE003D6874646957);
LABEL_8:
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v9);

      lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
      swift_allocError();
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = 2;
      swift_willThrow();
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t SumVectorType.encode(measurement:)(void (**a1)(char *, char *, uint64_t), void *a2)
{
  v4 = a2[6];
  v116 = a2[5];
  v117 = v4;
  v5 = *(*(v4 + 24) + 16);
  v6 = *(v116 + 8);
  v114 = a2[3];
  swift_getAssociatedTypeWitness();
  v93 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v91 = &v86 - v7;
  v8 = a2[4];
  v9 = a2[2];
  swift_getAssociatedTypeWitness();
  v105 = v8;
  v108 = v9;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v10 = a1;
  v119 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v90 = *(*(v119 + 24) + 16);
  v89 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v89);
  v88 = &v86 - v11;
  v12 = swift_checkMetadataState();
  v112 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v113 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = &v86 - v15;
  v16 = type metadata accessor for Optional();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v103 = &v86 - v18;
  v100 = *(v114 - 1);
  MEMORY[0x28223BE20](v17);
  v99 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v6;
  v20 = swift_getAssociatedTypeWitness();
  v94 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v109 = &v86 - v21;
  v22 = swift_checkMetadataState();
  v95 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v104 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v86 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = (&v86 - v28);
  v30 = *v118;
  v31 = v118[1];
  v110 = v118[5];
  v107 = v10;
  if (dispatch thunk of Collection.count.getter() != v31)
  {
    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v121 = 0xD000000000000020;
    v122 = 0x8000000270C52BC0;
    v123 = dispatch thunk of Collection.count.getter();
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v40);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v123 = v31;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v41);

    MEMORY[0x2743B25F0](32, 0xE100000000000000);
    v42 = v121;
    v43 = v122;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v44 = v42;
    *(v44 + 8) = v43;
    *(v44 + 16) = 2;
    return swift_willThrow();
  }

  v123 = Array.init()();
  v101 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v30);
  v121 = 1;
  lazy protocol witness table accessor for type Int and conformance Int();
  v106 = v20;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v121 = v110;
  v118 = v29;
  v32 = v106;
  dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
  v115 = *(v95 + 8);
  v116 = v95 + 8;
  v115(v27, v22);
  (*(v100 + 16))(v99, v107, v114);
  v33 = v109;
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v103;
  v36 = v33;
  v100 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v112;
  v38 = *(v112 + 48);
  v99 = (v112 + 48);
  v98 = v38;
  if (v38(v35, 1, v12) == 1)
  {
LABEL_3:
    (*(v94 + 8))(v36, v32);
    v115(v118, v22);
    return v123;
  }

  v102 = v27;
  v46 = *(v37 + 32);
  v45 = v37 + 32;
  v97 = v46;
  v107 = (v45 - 16);
  v95 += 16;
  v114 = (v45 - 24);
  v47 = v111;
  v48 = v87;
  v49 = v103;
  v112 = v45;
  v96 = v12;
  while (1)
  {
    v97(v48, v49, v12);
    v50 = dispatch thunk of static BinaryInteger.isSigned.getter();
    if ((v50 ^ dispatch thunk of static BinaryInteger.isSigned.getter()))
    {
      v111 = v47;
      v51 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v52 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v53 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v54 = v48;
      if (v51)
      {
        if (v53 < v52)
        {
          v55 = v113;
          (*v107)(v113, v48, v12);
          v56 = v102;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v57 = v55;
          v58 = dispatch thunk of static Comparable.< infix(_:_:)();
          v115(v56, v22);
          goto LABEL_14;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v70 = v102;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v71 = dispatch thunk of static Comparable.< infix(_:_:)();
        v115(v70, v22);
        v47 = v111;
        if (v71)
        {
          goto LABEL_26;
        }

        (*v95)(v102, v118, v22);
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v72 = dispatch thunk of static Comparable.< infix(_:_:)();
        v57 = v113;
        v73 = v72;
        (*v114)(v113, v12);
        if (v73)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v52 < v53)
        {
          (*v95)(v102, v118, v22);
          v63 = v113;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v57 = v63;
          v58 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*v114)(v57, v12);
LABEL_14:
          v47 = v111;
          if (v58)
          {
            goto LABEL_26;
          }

          goto LABEL_18;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v74 = v113;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v75 = dispatch thunk of static Comparable.> infix(_:_:)();
        v57 = v74;
        v49 = v103;
        v76 = v75;
        (*v114)(v74, v12);
        v47 = v111;
        if (v76)
        {
          (*v107)(v74, v54, v12);
          v77 = v102;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v78 = dispatch thunk of static Comparable.< infix(_:_:)();
          v57 = v113;
          v79 = v78;
          v80 = v77;
          v12 = v96;
          v115(v80, v22);
          if (v79)
          {
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      v59 = v118;
      v60 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v60 >= dispatch thunk of BinaryInteger.bitWidth.getter())
      {
        v64 = v113;
        (*v107)(v113, v48, v12);
        v65 = v102;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v57 = v64;
        v62 = dispatch thunk of static Comparable.< infix(_:_:)();
        v66 = v65;
        v12 = v96;
        v115(v66, v22);
      }

      else
      {
        (*v95)(v102, v59, v22);
        v61 = v113;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v57 = v61;
        v62 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*v114)(v57, v12);
      }

      v54 = v48;
      v49 = v103;
      if (v62)
      {
LABEL_26:
        v121 = 0;
        v122 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52BF0);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x2743B25F0](0x646957746962202CLL, 0xEB000000003D6874);
        v120 = v110;
        v81 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v81);

        v82 = v121;
        v83 = v122;
        lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
        swift_allocError();
        *v84 = v82;
        *(v84 + 8) = v83;
        *(v84 + 16) = 1;
        swift_willThrow();
        (*v114)(v54, v12);
        (*(v94 + 8))(v109, v106);
        v115(v118, v22);
      }
    }

LABEL_18:
    (*v107)(v57, v54, v12);
    v67 = v104;
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v68 = static FieldElement.integerToBitVector(input:bitWidth:)(v67, v110, v108, v105);
    if (v47)
    {
      break;
    }

    v69 = v68;
    v115(v67, v22);
    v121 = v69;
    swift_getWitnessTable();
    Array.append<A>(contentsOf:)();
    (*v114)(v54, v12);
    v36 = v109;
    v32 = v106;
    dispatch thunk of IteratorProtocol.next()();
    v48 = v54;
    if (v98(v49, 1, v12) == 1)
    {
      goto LABEL_3;
    }
  }

  v85 = v115;
  v115(v67, v22);
  (*v114)(v54, v12);
  (*(v94 + 8))(v109, v106);
  v85(v118, v22);
}

uint64_t SumVectorType.truncate(measurement:)(unint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v30 = v2[1];
  v11 = v2[5];
  v12 = MEMORY[0x2743B2830](v7, v6);
  if (v12 != v10)
  {
    v13 = v12;
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v31 = 0xD00000000000001BLL;
    v32 = 0x8000000270C51C80;
    v33 = v13;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v33 = v10;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    v16 = v31;
    v5 = v32;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v17 = v16;
    *(v17 + 8) = v5;
    *(v17 + 16) = 2;
    swift_willThrow();
    return v5;
  }

  if (v11 == 1)
  {

    return v5;
  }

  v31 = Array.init()();
  v18 = type metadata accessor for Array();
  v19 = v30;
  v30 = v18;
  Array.reserveCapacity(_:)(v19);
  result = MEMORY[0x2743B2830](v5, v6);
  if (v11)
  {
    v21 = result;
    v22 = result >= 0;
    if (v11 > 0)
    {
      v22 = result < 1;
    }

    if (v22)
    {
      return v31;
    }

    result = 0;
    while (1)
    {
      v23 = __OFADD__(result, v11) ? ((result + v11) >> 63) ^ 0x8000000000000000 : result + v11;
      if (__OFADD__(result, v11))
      {
        break;
      }

      if (result + v11 < result)
      {
        goto LABEL_23;
      }

      v24 = Array.subscript.getter();
      FieldElement.init(inputVector:)(v24, v25, v26, v27, v6, *(a2 + 32), v9);
      if (v3)
      {

        return v5;
      }

      Array.append(_:)();
      v28 = v21 >= v23;
      if (v11 > 0)
      {
        v28 = v23 >= v21;
      }

      result = v23;
      if (v28)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SumVectorType.evaluateGadget<A>(_:at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for MultiplicationGadget(255, *(a2 + 16), *(a2 + 32), a3);
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for ParallelSum(0, v9, WitnessTable, v11);
  return ParallelSum.evaluate<A>(at:)(a1, v12, a3, a4, a5);
}

uint64_t SumVectorType.evaluateGadget(_:at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v6 = v4[4];
  v18 = v4[3];
  v19 = v6;
  v20 = v4[5];
  v17 = a1;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = type metadata accessor for MultiplicationGadget(255, v7, v8, a4);
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for ParallelSum(0, v9, WitnessTable, v11);
  type metadata accessor for Polynomial(255, v7, v8, v13);
  v14 = type metadata accessor for Array();
  v15 = swift_getWitnessTable();
  return ParallelSum.evaluate<A>(at:)(&v17, v12, v14, v15, a3);
}

uint64_t SumVectorType.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v160 = a4;
  v171 = a3;
  v163 = a2;
  v154 = a6;
  v8 = *(a5 + 32);
  v162 = a5;
  v9 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v161 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v172 = AssociatedConformanceWitness;
  v181 = AssociatedTypeWitness;
  v197 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v177 = *(v197 + 24);
  v176 = *(v177 + 2);
  v175 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v175);
  v174 = v149 - v12;
  v13 = v9;
  v173 = swift_checkMetadataState();
  v14 = *(v173 - 8);
  v15 = MEMORY[0x28223BE20](v173);
  v17 = v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v178 = v149 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v164 = v149 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v180 = v149 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v179 = v149 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v167 = v149 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v156 = v149 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v158 = v149 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v151 = v149 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v149 - v35;
  v157 = *(v9 - 8);
  v37 = MEMORY[0x28223BE20](v34);
  v152 = v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = v149 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v155 = v149 - v43;
  MEMORY[0x28223BE20](v42);
  v159 = v149 - v44;
  v45 = v6[1];
  v191 = *v6;
  v46 = v6[2];
  v47 = v6[4];
  v48 = v6[5];
  v194 = v6[3];
  v195 = v47;
  v196 = v48;
  v192 = v45;
  v193 = v46;
  v49 = v191;
  v153 = a1;
  v50 = MEMORY[0x2743B2830](a1, v13);
  if (v50 != v49)
  {
    v68 = v50;
    *&v185 = 0;
    *(&v185 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v69 = 0x8000000270C51C80;
    v70 = 0xD00000000000001BLL;
LABEL_10:
    *&v185 = v70;
    *(&v185 + 1) = v69;
    v183 = v68;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v71);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v183 = v49;
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v72);

    v73 = v185;
    v74 = &v199;
LABEL_11:
    v75 = *(v74 - 32);
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v76 = v73;
    *(v76 + 8) = v75;
    *(v76 + 16) = 2;
    return swift_willThrow();
  }

  v49 = v192;
  v51 = MEMORY[0x2743B2830](v163, v13);
  if (v51 != v49)
  {
    v68 = v51;
    *&v185 = 0;
    *(&v185 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v69 = 0x8000000270C51CE0;
    v70 = 0xD000000000000019;
    goto LABEL_10;
  }

  v53 = v6[3];
  v187 = v6[2];
  v188 = v53;
  v54 = v6[5];
  v189 = v6[4];
  v190 = v54;
  v55 = v6[1];
  v185 = *v6;
  v186 = v55;
  v56 = v161;
  v149[1] = type metadata accessor for GadgetEvaluation(0, v13, v161, v52);
  v57 = MEMORY[0x2743B2830](v160);
  v58 = v162;
  v59 = *(SumVectorType.gadgetParameters.getter(v162) + 16);

  if (v57 != v59)
  {
    v183 = 0;
    v184 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v183 = 0x2064696C61766E49;
    v184 = 0xEF203A746E756F63;
    v182 = v57;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v78);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    SumVectorType.gadgetParameters.getter(v58);
    v79 = MEMORY[0x2743B2770]();
    v81 = v80;

    MEMORY[0x2743B25F0](v79, v81);

    v73 = v183;
    v74 = &v198;
    goto LABEL_11;
  }

  v170 = v14;
  *&v185 = v171;
  v169 = lazy protocol witness table accessor for type Int and conformance Int();
  v60 = v173;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v61 = v155;
  FieldElement.init(_:)(v36, v13, v56);
  (*(v157 + 16))(v41, v61, v13);
  FieldElement.init(other:)(v41, v13, v56);
  v62 = v158;
  (*(v56 + 88))(v13, v56);
  v63 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v168 = v17;
  v149[0] = v13;
  if (v63)
  {
    v64 = v62;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      *&v185 = 0;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v85 = dispatch thunk of static Equatable.== infix(_:_:)();
      v62 = v170;
      goto LABEL_23;
    }

    v65 = dispatch thunk of BinaryInteger._lowWord.getter();
    v66 = v172;
    v67 = v170;
    if (!v65)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v82 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v83 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v82)
    {
      v62 = v170;
      if (v83 > 64)
      {
        goto LABEL_22;
      }

      v60 = v173;
      swift_getAssociatedConformanceWitness();
      v67 = v62;
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v62 = v197;
      v64 = v158;
      v84 = dispatch thunk of static Comparable.>= infix(_:_:)();
      (*(v67 + 8))(v36, v60);
      v66 = v172;
      if ((v84 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
      {
        do
        {
LABEL_21:
          v148 = 0;
          v147 = 80;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_22:
          *&v185 = 0;
          v60 = v173;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v64 = v158;
          v85 = dispatch thunk of static Equatable.== infix(_:_:)();
LABEL_23:
          (*(v62 + 8))(v36, v60);
          v66 = v172;
          v67 = v62;
        }

        while ((v85 & 1) != 0);
      }
    }

    else
    {
      v62 = v170;
      if (v83 >= 64)
      {
        goto LABEL_22;
      }

      v64 = v158;
      v60 = v173;
      v86 = dispatch thunk of BinaryInteger._lowWord.getter();
      v66 = v172;
      v67 = v62;
      if (!v86)
      {
        goto LABEL_21;
      }
    }
  }

  v181 = swift_checkMetadataState();
  (*(v66 + 24))(v181, v66);
  v171 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v87 = v167;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v88 = v64;
  v89 = v156;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v90 = v67;
  v91 = v67 + 8;
  v92 = *(v67 + 8);
  v92(v87, v60);
  v92(v36, v60);
  v93 = *(v90 + 16);
  v90 += 16;
  v93(v179, v88, v60);
  v94 = v180;
  v167 = v93;
  v93(v180, v89, v60);
  *&v185 = 1;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v95 = v172;
  (*(v172 + 64))(v36);
  v96 = v92;
  v92(v36, v60);
  v165 = v95 + 56;
  v166 = (v90 + 16);
  v170 = v90;
  v150 = v36;
  v177 = v92;
  while (1)
  {
    v105 = v178;
    (v167)(v178, v94, v60);
    v106 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v107 = v168;
    if ((v106 & 1) == 0)
    {
      v114 = v105;
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 128)
      {
        lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v185 = 0uLL;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v117 = dispatch thunk of static Equatable.== infix(_:_:)();
        v96(v36, v60);
        v118 = v105;
        goto LABEL_42;
      }

      v115 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      goto LABEL_37;
    }

    v108 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v109 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v108 & 1) == 0)
    {
      break;
    }

    if (v109 > 128)
    {
      goto LABEL_41;
    }

    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v110 = v178;
    v111 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v96(v36, v60);
    if ((v111 & 1) == 0)
    {
      v96(v110, v60);
      goto LABEL_43;
    }

    v112 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    static FixedWidthInteger._truncatingInit<A>(_:)(v110, &type metadata for _UInt128, v60, v112, v197, &v185);
    v113 = v110;
LABEL_38:
    v96(v113, v60);
    v116 = v179;
    if (v185 == 0)
    {
      goto LABEL_56;
    }

LABEL_43:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v96(v36, v60);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      v120 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v121 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v120)
      {
        if (v121 <= 128)
        {
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v122 = dispatch thunk of static Comparable.>= infix(_:_:)();
          v96(v36, v60);
          if ((v122 & 1) == 0)
          {
            v96(v107, v60);
            v97 = v172;
            v98 = v166;
            v36 = v150;
            v99 = v179;
LABEL_26:
            v100 = v164;
            (*(v97 + 56))(v164, v99, v181, v97);
            v101 = v181;
            v177(v100, v60);
            (*v98)(v100, v36, v60);
            goto LABEL_27;
          }

          v123 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
          static FixedWidthInteger._truncatingInit<A>(_:)(v107, &type metadata for _UInt128, v60, v123, v197, &v185);
          v96(v107, v60);
          v124 = *(&v185 + 1) | v185;
          v97 = v172;
          v101 = v181;
          v98 = v166;
          v36 = v150;
          goto LABEL_50;
        }
      }

      else if (v121 < 128)
      {
LABEL_49:
        v125 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v107, &type metadata for _UInt128, v60, v125, v197, &v185);
        v96(v107, v60);
        v124 = *(&v185 + 1) | v185;
        v97 = v172;
        v101 = v181;
        v98 = v166;
LABEL_50:
        v99 = v179;
        if (v124)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    else if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
    {
      goto LABEL_49;
    }

    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v185 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v126 = dispatch thunk of static Equatable.== infix(_:_:)();
    v96(v36, v60);
    v96(v107, v60);
    v97 = v172;
    v101 = v181;
    v98 = v166;
    v99 = v179;
    if ((v126 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_27:
    (*(v97 + 56))(v99, v99, v101, v97);
    v102 = v91;
    v103 = v177;
    v177(v99, v60);
    v104 = *v98;
    (*v98)(v99, v36, v60);
    *&v185 = 1;
    v94 = v180;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v103(v94, v60);
    v104(v94, v36, v60);
    v96 = v103;
    v91 = v102;
  }

  if (v109 < 128)
  {
    v115 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v114 = v178;
LABEL_37:
    static FixedWidthInteger._truncatingInit<A>(_:)(v114, &type metadata for _UInt128, v60, v115, v197, &v185);
    v113 = v114;
    goto LABEL_38;
  }

LABEL_41:
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v185 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v119 = v178;
  v117 = dispatch thunk of static Equatable.== infix(_:_:)();
  v96(v36, v173);
  v118 = v119;
  v60 = v173;
LABEL_42:
  v96(v118, v60);
  v116 = v179;
  if ((v117 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_56:
  v96(v180, v60);
  v96(v116, v60);
  v96(v156, v60);
  v96(v158, v60);
  v127 = v151;
  (*v166)(v151, v164, v60);
  v128 = v161;
  v129 = v159;
  v130 = v149[0];
  (*(v161 + 96))(v127, v149[0], v161);
  v197 = *(v157 + 8);
  (v197)(v155, v130);
  v131 = v152;
  v132 = v163;
  Array.subscript.getter();
  v185 = v194;
  v186 = v195;
  v187 = v196;
  v183 = v153;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v133 = ArraySlice.init<A>(_:)();
  v135 = v134;
  v180 = v136;
  v179 = v137;
  v138 = Array.subscript.getter();
  v181 = v149;
  v182 = v183;
  MEMORY[0x28223BE20](v138);
  v139 = v162;
  v140 = *(v162 + 24);
  v149[-10] = v130;
  v149[-9] = v140;
  v149[-8] = v128;
  *&v149[-7] = *(v139 + 40);
  v149[-5] = v131;
  v149[-4] = v129;
  v149[-3] = v132;
  v142 = type metadata accessor for MultiplicationGadget(255, v130, v128, v141);
  WitnessTable = swift_getWitnessTable();
  v145 = type metadata accessor for ParallelSum(0, v142, WitnessTable, v144);
  ParallelSum.chunkEvaluateSum(_:for:_:)(v133, v135, v180, v179, &v182, partial apply for closure #1 in SumVectorType.evaluate(measurement:jointRand:numOfShares:for:), &v149[-12], v145, v154);
  outlined consume of GadgetEvaluation<A><A>(v182);
  swift_unknownObjectRelease();
  v146 = v197;
  (v197)(v131, v130);
  return v146(v159, v130);
}

void closure #1 in SumVectorType.evaluate(measurement:jointRand:numOfShares:for:)(void (*a1)(unint64_t, _BYTE *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v107 = a8;
  v110 = a7;
  v140 = a6;
  v109 = a5;
  v138 = a4;
  swift_getAssociatedTypeWitness();
  v141 = a12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v133 = &v100[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v132 = &v100[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v131 = &v100[-v21];
  v111 = *(a10 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v102 = &v100[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v101 = &v100[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v106 = &v100[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v108 = &v100[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v139 = &v100[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v130 = &v100[-v33];
  MEMORY[0x28223BE20](v32);
  v35 = &v100[-v34];
  v136 = a1;
  v137 = a3;
  v36 = a2;
  v37 = ArraySlice.count.getter();
  if (v37 < 0)
  {
    goto LABEL_25;
  }

  v38 = v37;
  if (v37)
  {
    v39 = swift_checkMetadataState();
    v40 = 0;
    v41 = v141[12];
    v127 = v141 + 12;
    v128 = v39;
    v42 = v141[11];
    v125 = v141 + 11;
    v126 = v41;
    v122 = *(AssociatedConformanceWitness + 56);
    v123 = AssociatedConformanceWitness + 56;
    v124 = v42;
    v121 = v111 + 16;
    v120 = (v15 + 8);
    v119 = v111 + 8;
    v103 = v111 + 40;
    v43 = 1;
    v105 = v36;
    v129 = v35;
    v104 = v38;
    while (!__OFADD__(ArraySlice.startIndex.getter(), v40))
    {
      ArraySlice.subscript.getter();
      if (v40 == 0x4000000000000000)
      {
        goto LABEL_23;
      }

      v118 = v40 + 1;
      v114 = v43 - 1;
      v44 = v111;
      v45 = *(v111 + 16);
      v115 = v45;
      v45(v139, v140, a10);
      v46 = v108;
      v45(v108, v35, a10);
      v142 = v43;
      v47 = v141;
      FieldElement.init(other:)(v46, a10, v141);
      v48 = v132;
      v49 = v124;
      v124(a10, v47);
      v50 = v49;
      v51 = v133;
      v52 = v139;
      v50(a10, v47);
      v53 = v131;
      v54 = v48;
      v122(v48, v51);
      v55 = *v120;
      v116 = v55;
      v56 = v51;
      v57 = AssociatedTypeWitness;
      v55(v56, AssociatedTypeWitness);
      v55(v54, v57);
      v58 = v53;
      v59 = v130;
      v126(v58, a10, v47);
      v117 = *(v44 + 8);
      (v117)(v52, a10);
      type metadata accessor for Array();
      v60 = v109;
      Array._makeMutableAndUnique()();
      v61 = *v60;
      v62 = v114;
      Array._checkSubscript_mutating(_:)(v114);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v64 = v61 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v64 = v61;
      }

      v113 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v112 = *(v44 + 72);
      v65 = *(v44 + 40);
      v65(v64 + v113 + v112 * v62, v59, a10);
      v66 = v65;
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      v115(v52, v129, a10);
      v67 = v106;
      FieldElement.init(other:)(v52, a10, v47);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      Array._makeMutableAndUnique()();
      v68 = *v60;
      Array._checkSubscript_mutating(_:)(v142);
      v69 = _swift_isClassOrObjCExistentialType();
      v70 = v68 & 0xFFFFFFFFFFFFFF8;
      if ((v69 & 1) == 0)
      {
        v70 = v68;
      }

      v66(v70 + v113 + v112 * v142, v67, a10);
      v71 = v142;
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      v72 = v52;
      Array.subscript.getter();
      v73 = v132;
      v74 = v141;
      v75 = v124;
      v124(a10, v141);
      v76 = v133;
      v75(a10, v74);
      v77 = v131;
      v122(v73, v76);
      v78 = v76;
      v79 = AssociatedTypeWitness;
      v80 = v116;
      v116(v78, AssociatedTypeWitness);
      v80(v73, v79);
      v126(v77, a10, v74);
      v40 = v118;
      v81 = v117;
      (v117)(v72, a10);
      v35 = v129;
      v81();
      v43 = v71 + 2;
      if (v104 == v40)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  v82 = ArraySlice.count.getter();
  v83 = *(a9 + 88);
  if (v83 < v82)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v83 != v82)
  {
    v84 = v83 - v82;
    if (v83 <= v82)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v142 = v111 + 40;
    v132 = (v111 + 8);
    v133 = (v111 + 16);
    v85 = v82 + 0x4000000000000000;
    v86 = 2 * v82;
    while ((v85 & 0x8000000000000000) == 0)
    {
      v87 = v101;
      v140 = v84;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      AssociatedTypeWitness = type metadata accessor for Array();
      v88 = v109;
      Array._makeMutableAndUnique()();
      v89 = *v88;
      Array._checkSubscript_mutating(_:)(v86);
      v90 = _swift_isClassOrObjCExistentialType();
      v91 = v89 & 0xFFFFFFFFFFFFFF8;
      if ((v90 & 1) == 0)
      {
        v91 = v89;
      }

      v92 = v111;
      v138 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v137 = *(v111 + 72);
      v136 = *(v111 + 40);
      v136(v91 + v138 + v137 * v86, v87, a10);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      AssociatedConformanceWitness = v86 + 1;
      v93 = v139;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v94 = v108;
      (*(v92 + 16))(v108, v93, a10);
      v95 = v102;
      FieldElement.init(other:)(v94, a10, v141);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      (*(v92 + 8))(v93, a10);
      Array._makeMutableAndUnique()();
      v96 = *v88;
      v97 = AssociatedConformanceWitness;
      Array._checkSubscript_mutating(_:)(AssociatedConformanceWitness);
      v98 = _swift_isClassOrObjCExistentialType();
      v99 = v96 & 0xFFFFFFFFFFFFFF8;
      if ((v98 & 1) == 0)
      {
        v99 = v96;
      }

      v136(v99 + v138 + v137 * v97, v95, a10);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      ++v85;
      v86 += 2;
      v84 = v140 - 1;
      if (v140 == 1)
      {
        return;
      }
    }

    goto LABEL_24;
  }
}

uint64_t protocol witness for FullyLinearProof.decode(data:numOfMeasurements:) in conformance SumVectorType<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = specialized SumVectorType.decode(data:numOfMeasurements:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t specialized SumVectorType.decode(data:numOfMeasurements:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = *(a2 + 16);
  if (MEMORY[0x2743B2830](a1, v6) == v5)
  {
    return static FieldElement.elementsToIntegers(_:)(a1, v6, *(a2 + 32));
  }

  _StringGuts.grow(_:)(30);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v8);

  MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v9);

  lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
  swift_allocError();
  *v10 = 0xD000000000000016;
  *(v10 + 8) = 0x8000000270C519D0;
  *(v10 + 16) = 2;
  return swift_willThrow();
}

uint64_t type metadata instantiation function for SumVectorType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t getEnumTagSinglePayload for SumVectorType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SumVectorType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t PINE<>.shardAndEncode(_:nonce:seedBytes:)(float *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v8 = v7;
  memcpy(__dst, v6, sizeof(__dst));
  outlined copy of Data._Representation(a3, a4);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v36, a1, a2, v15, a5, a6);

  if (!v7)
  {
    v17 = v36;
    v18 = v37;
    v19 = specialized PINEPublicShare.encodedLength.getter(v36, v37);
    v36 = specialized Data._Representation.init(capacity:)(v19);
    v37 = v20;
    specialized PINEPublicShare.encode<A>(into:)(&v36, v17, v18);

    v8 = v36;
    v21 = v16[2];
    if (v21)
    {
      v35 = v36;
      v40 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = 4;
      v23 = v40;
      do
      {
        v24 = v16;
        v25 = *&v16[v22];
        v26 = *&v16[v22 + 4];
        v38[1] = *&v16[v22 + 2];
        v38[2] = v26;
        v38[0] = v25;
        outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &v36, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMR);
        specialized VDAFEncodable.encodedData.getter();
        v28 = v27;
        v30 = v29;
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMR);
        v40 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v32 + 1;
        v33 = v23 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v22 += 6;
        --v21;
        v16 = v24;
      }

      while (v21);

      return v35;
    }

    else
    {
    }
  }

  return v8;
}

char *PINE<>.shardAndEncodeIntoBytes(_:nonce:seedBytes:)(float *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v8 = v7;
  memcpy(__dst, v6, sizeof(__dst));
  outlined copy of Data._Representation(a3, a4);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v44, a1, a2, v15, a5, a6);

  if (v7)
  {
    return v8;
  }

  v17 = v44;
  v18 = v45;
  v19 = specialized PINEPublicShare.encodedLength.getter(v44, v45);
  v20 = MEMORY[0x277D84F90];
  v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, MEMORY[0x277D84F90]);
  specialized PINEPublicShare.encode<A>(into:)(&v44, v17, v18);

  v8 = v44;
  v21 = v16[2];
  if (!v21)
  {

    return v8;
  }

  v43 = v44;
  v44 = v20;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v23 = v44;
  for (i = v16 + 9; ; i += 6)
  {
    v25 = *(i - 5);
    v26 = *(i - 32);
    v27 = *(i - 3);
    v28 = *(i - 16);
    v30 = *(i - 1);
    v29 = *i;
    v31 = *(v25 + 16);
    if ((v26 & 1) == 0 && v31)
    {
      if (v31 >> 60)
      {
        goto LABEL_24;
      }

      v31 *= 8;
    }

    v32 = *(v27 + 16);
    if ((*(i - 2) & 1) == 0 && v32)
    {
      if (v32 >> 60)
      {
        goto LABEL_25;
      }

      v32 *= 8;
    }

    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      break;
    }

    v35 = *(v30 + 16);
    v33 = __OFADD__(v34, v35);
    v36 = v34 + v35;
    if (v33)
    {
      goto LABEL_22;
    }

    v37 = *(v29 + 16);
    v33 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (v33)
    {
      goto LABEL_23;
    }

    v39 = v38 & ~(v38 >> 63);

    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0, MEMORY[0x277D84F90]);

    specialized Share.encode<A>(into:)(&v47, v25, v26);
    specialized Share.encode<A>(into:)(&v47, v27, v28);
    specialized Array.append<A>(contentsOf:)(v30);
    specialized Array.append<A>(contentsOf:)(v29);

    v40 = v47;
    v44 = v23;
    v42 = *(v23 + 2);
    v41 = *(v23 + 3);
    if (v42 >= v41 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
      v23 = v44;
    }

    *(v23 + 2) = v42 + 1;
    *&v23[8 * v42 + 32] = v40;
    if (!--v21)
    {

      return v43;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

_BYTE *PINE<>.outputShare(from:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

size_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedVs5NeverOTg50118_s4VDAF16Prio3PublicShareV4from9parameterACyxq_Gqd___Sb19isJointRandRequired_Si16numOfAggregatorstSgtKcSkRd__s5UInt8V7b12Rtd__lufcAA4E8VSiXEfU_s10ArraySliceVys5UInt8VGSiTf1cn_n(size_t result, int64_t a2, void *a3, uint64_t a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_65;
  }

  v5 = result;
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v29 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    if (a4 < 0)
    {
      goto LABEL_66;
    }

    if (a2 >= v5 && (v4 & 0x8000000000000000) == 0)
    {
      v23 = a4;
      v8 = 0;
      result = v29;
      v25 = v4;
      v26 = v5 - 1;
      v24 = a3;
      while (1)
      {
        if (v8 >= v4)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          break;
        }

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_52;
        }

        v11 = a3[2];
        v10 = a3[3];
        v12 = v10 >> 1;
        v13 = (v10 >> 1) - v11;
        if (__OFSUB__(v10 >> 1, v11))
        {
          goto LABEL_53;
        }

        v14 = a3[1];
        if (!a4 || v13 < 0 || (v15 = v10 >> 1, v13 >= a4))
        {
          v15 = v11 + a4;
          if (__OFADD__(v11, a4))
          {
            goto LABEL_61;
          }
        }

        if (v15 < v11)
        {
          goto LABEL_54;
        }

        if (v12 < v11)
        {
          goto LABEL_55;
        }

        if (v12 < v15)
        {
          goto LABEL_56;
        }

        if (v15 < 0)
        {
          goto LABEL_57;
        }

        if (!a4 || v13 < 0 || v13 >= a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_62;
          }

          if (v12 < v11 + a4)
          {
            goto LABEL_58;
          }

          v12 = v11 + a4;
        }

        if (v12 < v11)
        {
          goto LABEL_59;
        }

        v28 = result;
        a3[2] = v12;
        if (v10)
        {
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v19 = swift_dynamicCastClass();
          if (!v19)
          {
            swift_unknownObjectRelease();
            v19 = MEMORY[0x277D84F90];
          }

          v20 = *(v19 + 16);

          v16 = v15 - v11;
          if (__OFSUB__(v15, v11))
          {
            goto LABEL_64;
          }

          if (v20 == v16)
          {
            v18 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            a4 = v23;
            if (v18)
            {
              goto LABEL_43;
            }

            swift_unknownObjectRelease();
LABEL_40:
            v18 = MEMORY[0x277D84F90];
            goto LABEL_43;
          }

          result = swift_unknownObjectRelease_n();
          a4 = v23;
          if (!v16)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v16 = v15 - v11;
          v17 = __OFSUB__(v15, v11);
          result = swift_unknownObjectRetain();
          if (v17)
          {
            goto LABEL_63;
          }

          if (!v16)
          {
            goto LABEL_40;
          }
        }

        if (v16 < 1)
        {
          v18 = MEMORY[0x277D84F90];
          if (v11 == v15)
          {
            goto LABEL_68;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
          v18 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v18);
          v18[2] = v16;
          v18[3] = 2 * result - 64;
          if (v11 == v15)
          {
            goto LABEL_68;
          }
        }

        memcpy(v18 + 4, (v14 + v11), v16);
LABEL_43:
        swift_unknownObjectRelease();
        result = v28;
        v22 = *(v28 + 16);
        v21 = *(v28 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          result = v28;
        }

        *(result + 16) = v22 + 1;
        *(result + 8 * v22 + 32) = v18;
        ++v8;
        if ((v26 + v8) >= a2)
        {
          goto LABEL_60;
        }

        a3 = v24;
        v4 = v25;
        if (v9 == v25)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
  }

  return result;
}

uint64_t static Prio3PublicShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF4SeedV_Tt1g5(v2, v3))
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t Prio3PublicShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, int64_t a2@<X2>, uint64_t a3@<X5>, size_t *a4@<X8>, uint64_t a5)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10 == 2 || (v10 & 1) == 0)
  {
    result = (*(v8 + 8))(v9, a3);
    *a4 = 0;
    return result;
  }

  v36 = v11;
  v37 = v13;
  v39 = v9;
  v17 = *(v14 + 8);
  v34 = v12;
  v35 = v14;
  result = v17(v12, v14);
  if ((result * a2) >> 64 == (result * a2) >> 63)
  {
    v19 = result;
    v38 = *(*(a5 + 8) + 8);
    if (result * a2 != dispatch thunk of Collection.count.getter())
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v40 = v36;
      v41 = v34;
      v42 = v37;
      v43 = v35;
      type metadata accessor for Prio3PublicShare(0, &v40);
      v24 = _typeName(_:qualified:)();
      v26 = v25;

      v40 = v24;
      v41 = v26;
      MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
      v44 = v19;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v27);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v44 = a2;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v28);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v29 = v39;
      v44 = dispatch thunk of Collection.count.getter();
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v30);

      v31 = v40;
      v32 = v41;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v33 = v31;
      v33[1] = v32;
      swift_willThrow();
      return (*(v8 + 8))(v29, a3);
    }

    (*(v8 + 16))(v16, v39, a3);
    result = ArraySlice.init<A>(_:)();
    v40 = result;
    v41 = v20;
    v42 = v21;
    v43 = v22;
    if ((a2 & 0x8000000000000000) == 0)
    {
      v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedVs5NeverOTg50118_s4VDAF16Prio3PublicShareV4from9parameterACyxq_Gqd___Sb19isJointRandRequired_Si16numOfAggregatorstSgtKcSkRd__s5UInt8V7b12Rtd__lufcAA4E8VSiXEfU_s10ArraySliceVys5UInt8VGSiTf1cn_n(0, a2, &v40, v19);
      (*(v8 + 8))(v39, a3);
      result = swift_unknownObjectRelease();
      *a4 = v23;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void Prio3PublicShare.encodedLength.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      while (v3 < *(v1 + 16))
      {
        v5 = *(*(v1 + 32 + 8 * v3) + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
        }

        v7 = *(v4 + 2);
        v6 = *(v4 + 3);
        v8 = v7 + 1;
        if (v7 >= v6 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
        }

        ++v3;
        *(v4 + 2) = v8;
        *&v4[8 * v7 + 32] = v5;
        if (v2 == v3)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_19;
    }

    v4 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (v8)
    {
LABEL_12:
      v9 = 0;
      v10 = 32;
      while (1)
      {
        v11 = *&v4[v10];
        v12 = __OFADD__(v9, v11);
        v9 += v11;
        if (v12)
        {
          break;
        }

        v10 += 8;
        if (!--v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

LABEL_15:
  }
}

void Prio3PublicShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      do
      {
        v7 += 8;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
        lazy protocol witness table accessor for type [UInt8] and conformance [A]();
        dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
        --v6;
      }

      while (v6);
    }
  }
}

uint64_t type metadata instantiation function for Prio3PublicShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FullyLinearProof.proofLength.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 104))(a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    v4 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v4;
    v6 = v17;
    v7 = (v4 + 64);
    do
    {
      v8 = *(v7 - 4);
      v9 = v8 + *v7;
      if (__OFADD__(v8, *v7))
      {
        __break(1u);
        goto LABEL_16;
      }

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        result = v4;
      }

      v7 += 5;
      *(v17 + 16) = v11 + 1;
      *(v17 + 8 * v11 + 32) = v9;
      --v3;
    }

    while (v3);

    v12 = *(v17 + 16);
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {
LABEL_13:
      v13 = 0;
LABEL_14:

      return v13;
    }
  }

  v13 = 0;
  v14 = (v6 + 32);
  while (1)
  {
    v15 = *v14++;
    v16 = __OFADD__(v13, v15);
    v13 += v15;
    if (v16)
    {
      break;
    }

    if (!--v12)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t FullyLinearProof.verifierLength.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 104))(a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    v4 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v4;
    v6 = 32;
    v7 = v17;
    do
    {
      v8 = *(result + v6);
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        result = v4;
      }

      *(v17 + 16) = v11 + 1;
      *(v17 + 8 * v11 + 32) = v9;
      v6 += 40;
      --v3;
    }

    while (v3);

    v12 = *(v17 + 16);
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v7 = MEMORY[0x277D84F90];
  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
LABEL_8:
    v13 = 0;
    v14 = (v7 + 32);
    while (1)
    {
      v15 = *v14++;
      v16 = __OFADD__(v13, v15);
      v13 += v15;
      if (v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  result = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t FullyLinearProof.queryRandLength.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 104))(a1) + 16);

  return v2;
}

uint64_t FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t), void *a12)
{
  v103 = a6;
  v110 = a8;
  v104 = a5;
  v105 = a4;
  v113 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v111 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v93 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v100 = &v93 - v22;
  v101 = *(a9 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a2;
  v106 = v25;
  v26 = MEMORY[0x2743B2830](a2);
  v27 = *(a10 + 48);
  v108 = v12;
  if (v26 != v27(a7, a10))
  {
    v116 = 0;
    v117 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v116 = 0xD00000000000001BLL;
    v117 = 0x8000000270C51C80;
    v115[0] = v26;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v56);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v57 = v27(a7, a10);
LABEL_12:
    v115[0] = v57;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v61);

    v62 = v116;
    v63 = v117;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v64 = v62;
    *(v64 + 8) = v63;
    *(v64 + 16) = 2;
    return swift_willThrow();
  }

  v97 = a12;
  v28 = dispatch thunk of Collection.count.getter();
  v29 = a7;
  v30 = *(a10 + 56);
  v107 = v29;
  if (v28 != v30())
  {
    v116 = 0;
    v117 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v116 = 0xD000000000000015;
    v117 = 0x8000000270C51CA0;
    v115[0] = dispatch thunk of Collection.count.getter();
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v58);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v57 = (v30)(v107, a10);
    goto LABEL_12;
  }

  v31 = v106;
  v32 = MEMORY[0x2743B2830](v105, v106);
  v109 = *(a10 + 96);
  if (v32 != v109(v107, a10))
  {
    v116 = 0;
    v117 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v116 = 0xD000000000000019;
    v117 = 0x8000000270C51CC0;
    v115[0] = v32;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v59);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v57 = v109(v107, a10);
    goto LABEL_12;
  }

  v33 = MEMORY[0x2743B2830](v104, v31);
  v34 = *(a10 + 80);
  result = v34(v107, a10);
  if (v33 != result)
  {
    v116 = 0;
    v117 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v116 = 0xD000000000000019;
    v117 = 0x8000000270C51CE0;
    v115[0] = v33;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v60);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v57 = v34(v107, a10);
    goto LABEL_12;
  }

  v37 = v107;
  v36 = v108;
  if (v103 < 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  (*(v101 + 16))(v24, a3, a9);
  v38 = v106;
  v116 = ArraySlice.init<A>(_:)();
  v117 = v39;
  v118 = v40;
  v119 = v41;
  v94 = (*(a10 + 104))(v37, a10);
  v95 = &v93;
  v115[0] = v94;
  v42 = MEMORY[0x28223BE20](v94);
  v43 = v110;
  *(&v93 - 10) = v37;
  *(&v93 - 9) = v43;
  *(&v93 - 8) = a9;
  *(&v93 - 7) = a10;
  v44 = v97;
  *(&v93 - 6) = a11;
  *(&v93 - 5) = v44;
  v45 = v105;
  *(&v93 - 4) = v36;
  *(&v93 - 3) = v45;
  *(&v93 - 2) = &v116;
  MEMORY[0x28223BE20](v42);
  *(&v93 - 8) = v37;
  *(&v93 - 7) = v46;
  v93 = a9;
  *(&v93 - 6) = a9;
  *(&v93 - 5) = a10;
  *(&v93 - 4) = a11;
  *(&v93 - 3) = v44;
  *(&v93 - 2) = partial apply for closure #1 in FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:);
  *(&v93 - 1) = v47;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySay4VDAF16GadgetParametersVGGMd, &_ss18EnumeratedSequenceVySay4VDAF16GadgetParametersVGGMR);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Gadget = type metadata accessor for QueryGadget(0, v38, AssociatedConformanceWitness, v48);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v51 = lazy protocol witness table accessor for type EnumeratedSequence<[GadgetParameters]> and conformance <> EnumeratedSequence<A>();
  v52 = v101;
  v53 = v102;
  v101 = Gadget;
  v54 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed GadgetParameters) -> (@owned QueryGadget<A.FullyLinearProof.F>, @error @owned Error), (&v93 - 10), v52, Gadget, v50, v51, MEMORY[0x277D84950], &v120);

  if (v53)
  {
    return swift_unknownObjectRelease();
  }

  v95 = &v93;
  v115[0] = v54;
  MEMORY[0x28223BE20](v55);
  v65 = v110;
  *(&v93 - 6) = v37;
  *(&v93 - 5) = v65;
  *(&v93 - 4) = v93;
  *(&v93 - 3) = a10;
  *(&v93 - 2) = a11;
  *(&v93 - 1) = v44;
  v66 = type metadata accessor for Array();
  v97 = type metadata accessor for GadgetEvaluation(0, v106, AssociatedConformanceWitness, v67);
  WitnessTable = swift_getWitnessTable();
  v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:), (&v93 - 8), v66, v97, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v69);
  v71 = v100;
  (*(a10 + 136))(v99, v104, v103, v70, v37, a10);

  v72 = v71;
  v73 = v98;
  v103 = *(v98 + 16);
  v104 = v98 + 16;
  (v103)(v112, v72, v106);
  dispatch thunk of RangeReplaceableCollection.append(_:)();
  v102 = v54;
  result = MEMORY[0x2743B2830](v54, v101);
  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {

      v77 = *(v73 + 8);
LABEL_24:
      v77(v100, v106);
      return swift_unknownObjectRelease();
    }

    v95 = 0;
    v74 = 0;
    v97 = (v73 + 8);
    v98 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v75 = v101;
    v99 = result;
    v109 = a11;
    while (1)
    {
      v78 = v74;
      Array.subscript.getter();
      v120 = v115[0];
      v79 = swift_getWitnessTable();
      v80 = Gadget.wirePolynomialLength.getter(v75, v79);

      Array.subscript.getter();
      Array.subscript.getter();
      v81 = QueryGadget.arity.getter();

      if (v81 < 0)
      {
        break;
      }

      v82 = v106;
      v83 = AssociatedConformanceWitness;
      v84 = v101;
      v85 = v78;
      v108 = v80;
      if (v81)
      {
        v86 = 0;
        v107 = v81;
        do
        {
          v87 = v86 + 1;
          v88 = v85;
          v89 = v84;
          Array.subscript.getter();
          swift_beginAccess();
          type metadata accessor for Array();
          Array.subscript.getter();
          v90 = v114;
          swift_endAccess();

          static Polynomial.interpolateUsingRootsOfUnity(values:length:)(v90, v108, v82, v83, v115);

          v92 = type metadata accessor for Polynomial(0, v82, v83, v91);
          Polynomial.evaluate(at:)(v111, v92, v112);

          dispatch thunk of RangeReplaceableCollection.append(_:)();
          v85 = v88;
          v84 = v89;
          v86 = v87;
        }

        while (v107 != v87);
      }

      v76 = v85 + 1;
      v75 = v84;
      Array.subscript.getter();
      (v103)(v112, v115[0] + *(*v115[0] + 112), v82);

      dispatch thunk of RangeReplaceableCollection.append(_:)();
      v77 = *v97;
      (*v97)(v111, v82);
      v74 = v76;
      if (v76 == v99)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t FullyLinearProof.decide<A>(verifier:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v71 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v70 = v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v69 = v60 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v65 = v60 - v17;
  v18 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  *&v75 = a3;
  v21 = dispatch thunk of Collection.count.getter();
  v22 = *(a4 + 64);
  v74 = a2;
  v23 = a2;
  v24 = v22;
  v83 = a4;
  if (v21 == v22(v23, a4))
  {
    (*(v18 + 16))(v20, v73, v75);
    v79 = ArraySlice.init<A>(_:)();
    v80 = v25;
    v81 = v26;
    v82 = v27;
    v28 = v74;
    v29 = *(swift_getAssociatedConformanceWitness() + 8);
    v30 = v65;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v31 = type metadata accessor for ArraySlice();
    WitnessTable = swift_getWitnessTable();
    v33 = v69;
    v67 = WitnessTable;
    v68 = v31;
    RangeReplaceableCollection<>.removeFirst()();
    v66 = *(v29 + 8);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    v36 = v72 + 8;
    v35 = *(v72 + 8);
    v35(v33, AssociatedTypeWitness);
    v65 = v35;
    v35(v30, AssociatedTypeWitness);
    if (v34)
    {
      v37 = AssociatedTypeWitness;
      v38 = v83;
      v39 = *(v83 + 104);
      v63 = v83 + 104;
      v62 = v39;
      v64 = *(v39(v28, v83) + 16);

      v40 = 0;
      v60[2] = v38 + 144;
      v41 = 32;
      v72 = v36;
      v61 = v37;
      do
      {
        LODWORD(v69) = v64 == v40;
        if (v64 == v40)
        {
          break;
        }

        result = v62(v74, v83);
        if (v40 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v73 = v40 + 1;
        v43 = *(result + v41);

        v44 = v68;
        v45 = swift_getWitnessTable();
        RandomAccessCollection<>.popFirst(_:)(v43, v44, v45);
        v46 = v77;
        v47 = v78;
        v75 = v76;
        v48 = v70;
        RangeReplaceableCollection<>.removeFirst()();
        v76 = v75;
        v77 = v46;
        v78 = v47;
        v49 = v71;
        v50 = v45;
        v51 = v61;
        (*(v83 + 144))(v40, &v76, v44, v50, v74);
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        swift_unknownObjectRelease();
        v53 = v65;
        (v65)(v49, v51);
        v53(v48, v51);
        v41 += 40;
        v40 = v73;
      }

      while ((v52 & 1) != 0);
    }

    else
    {
      LODWORD(v69) = 0;
    }

    swift_unknownObjectRelease();
    v59 = v69;
  }

  else
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v79 = 0xD000000000000018;
    v80 = 0x8000000270C51BE0;
    *&v76 = dispatch thunk of Collection.count.getter();
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v54);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    *&v76 = v24(v74, v83);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v55);

    v56 = v79;
    v57 = v80;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v58 = v56;
    *(v58 + 8) = v57;
    *(v58 + 16) = 2;
    swift_willThrow();
  }

  return v59 & 1;
}

uint64_t FullyLinearProof.proveRandLength.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 104))(a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    v4 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v5 = v4;
    v6 = v17;
    v7 = *(v17 + 16);
    v8 = 32;
    do
    {
      v9 = *(v5 + v8);
      v10 = *(v17 + 24);
      if (v7 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
        v5 = v4;
      }

      *(v17 + 16) = v7 + 1;
      *(v17 + 8 * v7 + 32) = v9;
      v8 += 40;
      ++v7;
      --v3;
    }

    while (v3);

    v12 = *(v17 + 16);
    if (v12)
    {
LABEL_7:
      v13 = 0;
      v14 = (v6 + 32);
      while (1)
      {
        v15 = *v14++;
        v16 = __OFADD__(v13, v15);
        v13 += v15;
        if (v16)
        {
          break;
        }

        if (!--v12)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

uint64_t FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v115 = a6;
  v116 = a8;
  v114 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v107 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v106 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = v95 - v17;
  v117 = a2;
  v18 = MEMORY[0x2743B2830](a2, AssociatedTypeWitness);
  v19 = a7[6];
  v110 = v8;
  if (v18 != v19(a5, a7))
  {
    v120 = 0;
    v121 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v120 = 0xD00000000000001BLL;
    v121 = 0x8000000270C51C80;
    v119[0] = v18;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v55);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v56 = v19(a5, a7);
LABEL_9:
    v119[0] = v56;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v59);

    v60 = v120;
    v61 = v121;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v62 = v60;
    *(v62 + 8) = v61;
    *(v62 + 16) = 2;
    return swift_willThrow();
  }

  v20 = MEMORY[0x2743B2830](a3, AssociatedTypeWitness);
  v21 = a7[11];
  if (v20 != v21(a5, a7))
  {
    v120 = 0;
    v121 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v120 = 0xD000000000000019;
    v121 = 0x8000000270C51F80;
    v119[0] = v20;
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v57);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v56 = v21(a5, a7);
    goto LABEL_9;
  }

  v22 = MEMORY[0x2743B2830](a4, AssociatedTypeWitness);
  v23 = a7[10];
  if (v22 != v23(a5, a7))
  {
    v120 = 0;
    v121 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v120 = 0xD000000000000019;
    v121 = 0x8000000270C51CE0;
    v119[0] = v22;
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v58);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v56 = v23(a5, a7);
    goto LABEL_9;
  }

  v119[0] = a3;
  v24 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v103 = v24;
  v101 = WitnessTable;
  v120 = ArraySlice.init<A>(_:)();
  v121 = v26;
  v122 = v27;
  v123 = v28;
  v29 = a7[13];
  v105 = a7 + 13;
  v104 = v29;
  v30 = v29(a5, a7);
  v109 = a7;
  v112 = v95;
  v119[0] = v30;
  MEMORY[0x28223BE20](v30);
  v31 = v115;
  v95[-6] = a5;
  v95[-5] = v31;
  v32 = v116;
  v95[-4] = v109;
  v95[-3] = v32;
  v95[-2] = &v120;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF16GadgetParametersVGMd, &_sSay4VDAF16GadgetParametersVGMR);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = type metadata accessor for GadgetWireInputs(0, AssociatedTypeWitness, AssociatedConformanceWitness, v35);
  v37 = lazy protocol witness table accessor for type [GadgetParameters] and conformance [A]();
  v38 = v118;
  v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:), &v95[-8], v33, v36, MEMORY[0x277D84A98], v37, MEMORY[0x277D84AC0], v39);

  v112 = a4;
  v118 = v40;
  v119[0] = v40;
  MEMORY[0x28223BE20](v41);
  v42 = v115;
  v95[-4] = a5;
  v95[-3] = v42;
  v43 = v116;
  v95[-2] = v109;
  v95[-1] = v43;
  v44 = type metadata accessor for Array();
  v108 = AssociatedConformanceWitness;
  v46 = type metadata accessor for GadgetEvaluation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v45);
  v47 = swift_getWitnessTable();
  v48 = v109;
  v50 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:), &v95[-6], v44, v46, MEMORY[0x277D84A98], v47, MEMORY[0x277D84AC0], v49);
  v51 = v48;
  v52 = v48[17];
  v53 = v113;
  v52(v117, v112, 1, v50, a5, v51);
  if (v38)
  {

    return swift_unknownObjectRelease();
  }

  v95[1] = 0;
  v63 = *(v107 + 8);
  v107 += 8;
  v99 = v63;
  v63(v53, AssociatedTypeWitness);

  v100 = v36;
  result = MEMORY[0x2743B2830](v118, v36);
  if ((result & 0x8000000000000000) == 0)
  {
    v64 = v104;
    if (!result)
    {
LABEL_25:

      return swift_unknownObjectRelease();
    }

    v65 = 0;
    v97 = v51[19];
    v98 = v51 + 19;
    v102 = a5;
    v96 = result;
    while (1)
    {
      result = v64(a5, v51);
      if (v65 >= *(result + 16))
      {
        break;
      }

      v66 = *(result + 40 * v65 + 56);

      v113 = type metadata accessor for Polynomial(0, AssociatedTypeWitness, v108, v67);
      v124 = Array.init()();
      result = v64(a5, v109);
      if (v65 >= *(result + 16))
      {
        goto LABEL_27;
      }

      v68 = v65;
      v69 = *(result + 40 * v65 + 32);

      if (v69 < 0)
      {
        goto LABEL_28;
      }

      v70 = v108;
      v71 = v100;
      v112 = v66;
      if (v69)
      {
        v72 = v69;
        v73 = 0;
        v111 = v72;
        do
        {
          v117 = v73 + 1;
          v74 = v71;
          Array.subscript.getter();
          swift_beginAccess();
          Array.subscript.getter();
          v75 = v68;
          v76 = v119[4];
          swift_endAccess();

          static Polynomial.interpolateUsingRootsOfUnity(values:length:)(v76, v112, AssociatedTypeWitness, v70, v119);

          type metadata accessor for Array();
          Array.append(_:)();
          Array.subscript.getter();
          swift_beginAccess();
          Array.subscript.getter();
          Array.subscript.getter();
          swift_endAccess();

          v68 = v75;

          dispatch thunk of RangeReplaceableCollection.append(_:)();
          v71 = v74;
          v73 = v117;
        }

        while (v111 != v117);
      }

      v77 = v109;
      v78 = v102;
      result = v104(v102, v109);
      if (v68 >= *(result + 16))
      {
        goto LABEL_29;
      }

      v79 = *(result + 40 * v68 + 64);

      v117 = v68;
      v97(v119, v68, v124, v78, v77);

      v80 = v119[0];
      v81 = v113;
      result = Polynomial.degree.getter(v113);
      v82 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_30;
      }

      v83 = v79;
      v119[5] = v80;
      Polynomial.coefficients.getter(v81);

      if (v82 < 0)
      {
        goto LABEL_31;
      }

      specialized ArraySlice.subscript.getter(0, v82);
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v91 = v90;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v119[0] = v85;
      v119[1] = v87;
      v119[2] = v89;
      v119[3] = v91;
      type metadata accessor for ArraySlice();
      swift_getWitnessTable();
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      v92 = v106;
      result = dispatch thunk of static AdditiveArithmetic.zero.getter();
      v93 = v83 - v82;
      if (__OFSUB__(v83, v82))
      {
        goto LABEL_32;
      }

      v65 = v117 + 1;
      v94 = specialized Array.init(repeating:count:)(v92, v93, AssociatedTypeWitness);
      v99(v92, AssociatedTypeWitness);
      v119[0] = v94;
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      v51 = v109;
      a5 = v102;
      v64 = v104;
      if (v65 == v96)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
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

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidOutput(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x2743B2830](a1._rawValue, AssociatedTypeWitness);
  v8 = *(v3 + 72);
  if (v7 != (v8)(v4, v3))
  {
    _StringGuts.grow(_:)(30);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = 0xD000000000000016;
    *(v11 + 8) = 0x8000000270C519D0;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidMeasurement(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x2743B2830](a1._rawValue, AssociatedTypeWitness);
  v8 = *(v3 + 48);
  if (v7 != (v8)(v4, v3))
  {
    _StringGuts.grow(_:)(35);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = 0xD00000000000001BLL;
    *(v11 + 8) = 0x8000000270C51C80;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidJointRand(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x2743B2830](a1._rawValue, AssociatedTypeWitness);
  v8 = *(v3 + 80);
  if (v7 != (v8)(v4, v3))
  {
    _StringGuts.grow(_:)(33);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x8000000270C51CE0;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidGadgetEvaluationKinds(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for GadgetEvaluation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = MEMORY[0x2743B2830](a1._rawValue, v9);
  v11 = *(v3 + 104);
  v12 = *(v11(v4, v3) + 16);

  if (v10 != v12)
  {
    _StringGuts.grow(_:)(23);

    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v11(v4, v3);
    v14 = MEMORY[0x2743B2770]();
    v16 = v15;

    MEMORY[0x2743B25F0](v14, v16);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v17 = 0x2064696C61766E49;
    *(v17 + 8) = 0xEF203A746E756F63;
    *(v17 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t FullyLinearProof.prove(measurement:proveRand:jointRand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v17 = Array.init()();
  v9 = (*(a5 + 56))(a4, a5);
  v10 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v9);
  v11 = *(a5 + 168);
  WitnessTable = swift_getWitnessTable();
  v11(&v17, a1, a2, a3, v10, WitnessTable, a4, a5);
  v13 = v17;
  if (v16)
  {
  }

  return v13;
}

uint64_t FullyLinearProof.query(measurement:proof:queryRand:jointRand:numOfShares:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  v22 = Array.init()();
  v11 = (*(a7 + 64))(a6, a7);
  v12 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v11);
  v21 = a2;
  v13 = *(a7 + 184);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v13(&v22, a1, &v21, a3, a4, a5, v12, v12, WitnessTable, v15, a6, a7);
  if (v20)
  {
  }

  else
  {
    return v22;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidProveRand(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x2743B2830](a1._rawValue, AssociatedTypeWitness);
  v8 = *(v3 + 88);
  if (v7 != (v8)(v4, v3))
  {
    _StringGuts.grow(_:)(33);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x8000000270C51F80;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t FullyLinearProof.assertValidProof<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = dispatch thunk of Collection.count.getter();
  v8 = a2;
  v9 = a4;
  v10 = a4;
  v11 = *(a4 + 56);
  result = v11(v8, v10);
  if (v7 != result)
  {
    _StringGuts.grow(_:)(29);

    dispatch thunk of Collection.count.getter();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v11(v8, v9);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v15 = 0xD000000000000015;
    *(v15 + 8) = 0x8000000270C51CA0;
    *(v15 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullyLinearProof.assertValidQueryRand(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x2743B2830](a1._rawValue, AssociatedTypeWitness);
  v8 = *(v3 + 96);
  if (v7 != (v8)(v4, v3))
  {
    _StringGuts.grow(_:)(33);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v8(v4, v3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x8000000270C51CC0;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t FullyLinearProof.assertValidVerifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = dispatch thunk of Collection.count.getter();
  v8 = a2;
  v9 = a4;
  v10 = a4;
  v11 = *(a4 + 64);
  result = v11(v8, v10);
  if (v7 != result)
  {
    _StringGuts.grow(_:)(32);

    dispatch thunk of Collection.count.getter();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v11(v8, v9);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v15 = 0xD000000000000018;
    *(v15 + 8) = 0x8000000270C51BE0;
    *(v15 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)@<X0>(uint64_t *a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for GadgetWireInputs(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v10 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();
  RandomAccessCollection<>.popFirst(_:)(v5, v10, WitnessTable);
  v14[0] = v14[2];
  v14[1] = v14[3];
  v12 = specialized GadgetWireInputs.__allocating_init<A>(numOfCalls:proveRand:)(v6, v14, v10, WitnessTable);
  result = swift_unknownObjectRelease();
  *a4 = v12;
  return result;
}

char *closure #1 in FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40[1] = a5;
  v52 = a4;
  *&v44 = a2;
  v45 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v40 - v11;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v41 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v40 - v20;
  v22 = *(v44 + 16);
  v43 = *v44;
  v46 = v22;
  v40[0] = *(v44 + 32);
  Array.subscript.getter();
  *&v47 = *(&v46 + 1);
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v45 = v21;
  FieldElement.pow(_:)(v12, v13, AssociatedConformanceWitness, v19);
  (*(v42 + 8))(v12, AssociatedTypeWitness);
  v23 = v41;
  (*(AssociatedConformanceWitness + 72))(v13, AssociatedConformanceWitness);
  *&v44 = AssociatedConformanceWitness;
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v14 + 8);
  v25(v23, v13);
  v52 = v14 + 8;
  v25(v19, v13);
  if (v24)
  {
    v26 = *(&v46 + 1);
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD00000000000001ALL, 0x8000000270C51D00);
    v27 = v45;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](544434464, 0xE400000000000000);
    *&v51[0] = v26;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51D20);
    v30 = *(&v47 + 1);
    v29 = v47;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 3;
    swift_willThrow();
    v25(v27, v13);
  }

  else
  {
    v32 = type metadata accessor for ArraySlice();
    WitnessTable = swift_getWitnessTable();
    RandomAccessCollection<>.popFirst(_:)(v43, v32, WitnessTable);
    v41 = v25;
    v34 = v48;
    v42 = v47;
    v35 = v40[0];
    RandomAccessCollection<>.popFirst(_:)(v40[0], v32, WitnessTable);
    v36 = v48;
    type metadata accessor for QueryGadget(0, v13, v44, v37);
    v44 = v47;
    v51[0] = v47;
    v51[1] = v36;
    v50[0] = v42;
    v50[1] = v34;
    v47 = v43;
    v48 = v46;
    v49 = v35;
    v38 = v45;
    v29 = specialized QueryGadget.__allocating_init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(v51, v50, v45, &v47, v32, v32, WitnessTable, WitnessTable);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (v41)(v38, v13);
  }

  return v29;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed GadgetParameters) -> (@owned QueryGadget<A.FullyLinearProof.F>, @error @owned Error)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 64))(*a1, a1 + 1);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[GadgetParameters]> and conformance <> EnumeratedSequence<A>()
{
  result = lazy protocol witness table cache variable for type EnumeratedSequence<[GadgetParameters]> and conformance <> EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[GadgetParameters]> and conformance <> EnumeratedSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18EnumeratedSequenceVySay4VDAF16GadgetParametersVGGMd, &_ss18EnumeratedSequenceVySay4VDAF16GadgetParametersVGGMR);
    lazy protocol witness table accessor for type [GadgetParameters] and conformance [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnumeratedSequence<[GadgetParameters]> and conformance <> EnumeratedSequence<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [GadgetParameters] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GadgetParameters] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GadgetParameters] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay4VDAF16GadgetParametersVGMd, &_sSay4VDAF16GadgetParametersVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GadgetParameters] and conformance [A]);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FLPTypeError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
  result = lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_4VDAF12FLPTypeErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t destructiveInjectEnumTag for FLPTypeError(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

char *ClientLevelOutput.nextLevelInput(onPathDirections:prevParty0CtrlList:prevParty1CtrlList:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v63 = a6;
  v66 = *(a1 + 16);
  if (a6 >> 62)
  {
LABEL_57:
    v56 = a6 & 0xFFFFFFFFFFFFFF8;
    if ((a6 & 0x8000000000000000) != 0)
    {
      v56 = a6;
    }

    v57 = a1;
    v58 = a3;
    v59 = a4;
    v60 = a2;
    v61 = MEMORY[0x2743B2FD0](v56);
    a2 = v60;
    a4 = v59;
    a3 = v58;
    v8 = v66;
    a6 = v63;
    v11 = v61;
    a1 = v57;
  }

  else
  {
    v11 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v71 = a4 + 32;
  v72 = a1 + 32;
  v67 = a3 + 4;
  v68 = a2 + 32;
  v73 = *(a4 + 16);
  v64 = a6 & 0xC000000000000001;
  v69 = a3[2];
  v70 = *(a2 + 16);
  v62 = (a6 + 32);
  v87 = v9;
  v88 = v9;
  a3 = v9;
  v86 = v9;
  v75 = a5;
  v76 = v11;
  v65 = v11 & ~(v11 >> 63);
  while (1)
  {
    if (v12 == v8)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v12 == v73)
    {
      goto LABEL_53;
    }

    v89 = a3;
    v13 = *(v72 + v12);
    v14 = (v71 + 96 * v12);
    if (v13)
    {
      v15 = v14[5];
      v84 = v14[2];
      v85 = v14[3];
      outlined copy of Data._Representation(v84, v85);
      v16 = v14 + 11;
      v17 = (v14 + 9);
      v18 = v14 + 8;
    }

    else
    {
      v15 = v14[4];
      v84 = *v14;
      v85 = v14[1];
      outlined copy of Data._Representation(*v14, v85);
      v18 = v14 + 6;
      v16 = v14 + 10;
      v17 = (v14 + 7);
    }

    v19 = *v16;
    v20 = *v17;
    v21 = *v18;

    v82 = v21;
    v83 = v20;
    outlined copy of Data._Representation(v21, v20);
    v81 = v19;

    if (v12 == v70)
    {
      goto LABEL_54;
    }

    if (v12 == v69)
    {
      goto LABEL_55;
    }

    v22 = *(v68 + 8 * v12);
    v23 = v67[v12];
    v80 = v15;
    if (v76)
    {

      a1 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
      if (v76 < 0)
      {
        goto LABEL_56;
      }

      v74 = v23;
      v77 = v7;
      v24 = v9;
      v25 = v13 ? 24 : 16;
      if (v64)
      {
        v26 = 0;
        v27 = v63;
        do
        {
          v28 = *(MEMORY[0x2743B2D10](v26, v27) + v25);

          swift_unknownObjectRelease();
          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          if (v30 >= v29 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
            v27 = v63;
          }

          ++v26;
          *(v24 + 16) = v30 + 1;
          *(v24 + 8 * v30 + 32) = v28;
        }

        while (v76 != v26);
      }

      else
      {
        v31 = v62;
        v32 = v76;
        do
        {
          v33 = *(*v31 + v25);

          v35 = *(v24 + 16);
          v34 = *(v24 + 24);
          if (v35 >= v34 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
          }

          *(v24 + 16) = v35 + 1;
          *(v24 + 8 * v35 + 32) = v33;
          ++v31;
          --v32;
        }

        while (v32);
      }

      v7 = v77;
      v23 = v74;
      a5 = v75;
    }

    else
    {

      v24 = v9;
    }

    v36 = specialized ClientLevelOutput.nextLevelSeed(unadjusted:prevCtrl:correctionList:)(v84, v85, v22, a5);
    if (v7)
    {
      break;
    }

    v38 = v36;
    v39 = v37;
    v40 = v23;
    v7 = 0;
    v41 = specialized ClientLevelOutput.nextLevelSeed(unadjusted:prevCtrl:correctionList:)(v82, v83, v23, a5);
    v43 = v42;
    v78 = specialized ClientLevelOutput.nextLevelCtrlGroup(unadjusted:prevCtrl:ctrlCorrections:)(v80, v22, v24);

    v79 = specialized ClientLevelOutput.nextLevelCtrlGroup(unadjusted:prevCtrl:ctrlCorrections:)(v81, v40, v24);

    outlined copy of Data._Representation(v38, v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1, v87);
    }

    v45 = *(v87 + 2);
    v44 = *(v87 + 3);
    if (v45 >= v44 >> 1)
    {
      v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v87);
    }

    *(v87 + 2) = v45 + 1;
    v46 = &v87[16 * v45];
    *(v46 + 4) = v38;
    *(v46 + 5) = v39;
    outlined copy of Data._Representation(v41, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v88 + 2) + 1, 1, v88);
    }

    v48 = *(v88 + 2);
    v47 = *(v88 + 3);
    if (v48 >= v47 >> 1)
    {
      v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v88);
    }

    *(v88 + 2) = v48 + 1;
    v49 = &v88[16 * v48];
    *(v49 + 4) = v41;
    *(v49 + 5) = v43;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v50 = v89;
    }

    else
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
    }

    v52 = v50[2];
    v51 = v50[3];
    if (v52 >= v51 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v50);
    }

    v50[2] = v52 + 1;
    v90 = v50;
    v50[v52 + 4] = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86[2] + 1, 1, v86);
    }

    v54 = v86[2];
    v53 = v86[3];
    if (v54 >= v53 >> 1)
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v86);
    }

    ++v12;
    outlined consume of Data._Representation(v82, v83);

    outlined consume of Data._Representation(v84, v85);

    outlined consume of Data._Representation(v38, v39);
    a1 = outlined consume of Data._Representation(v41, v43);
    v86[2] = v54 + 1;
    v86[v54 + 4] = v79;
    v8 = v66;
    a3 = v90;
    a5 = v75;
    v9 = MEMORY[0x277D84F90];
    if (v12 == v66)
    {
      return v87;
    }
  }

  outlined consume of Data._Representation(v82, v83);

  outlined consume of Data._Representation(v84, v85);

  return v87;
}

uint64_t ClientLevelOutput.correctionWord.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a2;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF4SideOGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SideOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySbGGMd, &_ss23_ContiguousArrayStorageCySaySbGGMR, &_sSaySbGMd, &_sSaySbGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetEvaluationOyAC7Field40VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetEvaluationOyAC7Field40VGGMR, &_s4VDAF16GadgetEvaluationOyAA7Field40VGMd, &_s4VDAF16GadgetEvaluationOyAA7Field40VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySays5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySays5UInt8VGGMR, &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetEvaluationOyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetEvaluationOyAC7Field32VGGMR, &_s4VDAF16GadgetEvaluationOyAA7Field32VGMd, &_s4VDAF16GadgetEvaluationOyAA7Field32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetEvaluationOyAC7Field64VGGMd, "TS", &_s4VDAF16GadgetEvaluationOyAA7Field64VGMd, &_s4VDAF16GadgetEvaluationOyAA7Field64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16InnerCorrectionsVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16InnerCorrectionsVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF29OneBlockSparseInnerCorrectionVGMd, &_ss23_ContiguousArrayStorageCy4VDAF29OneBlockSparseInnerCorrectionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF20PreamblePrepareShareVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF20PreamblePrepareShareVyAC7Field32VGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4PairVyAC18SeedCtrlUnadjustedVGGMd, &_ss23_ContiguousArrayStorageCy4VDAF4PairVyAC18SeedCtrlUnadjustedVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedV16measurementShare_AE05proofG0AE24wraparoundJointRandBlindAE012verificationjkL0tGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedV16measurementShare_AE05proofG0AE24wraparoundJointRandBlindAE012verificationjkL0tGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedV16measurementShare_AC05proofD0AC24wraparoundJointRandBlindAC012verificationghI0tMd, &_s4VDAF4SeedV16measurementShare_AC05proofD0AC24wraparoundJointRandBlindAC012verificationghI0tMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi3key_Say4VDAF4LeafVyAD7Field32VGG5valuetGMd, &_ss23_ContiguousArrayStorageCySi3key_Say4VDAF4LeafVyAD7Field32VGG5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_Say4VDAF4LeafVyAB7Field32VGG5valuetMd, &_sSi3key_Say4VDAF4LeafVyAB7Field32VGG5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF22SiblingLeafCorrectionsVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF22SiblingLeafCorrectionsVyAC7Field32VGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF22SiblingLeafCorrectionsVyAA7Field32VGMd, &_s4VDAF22SiblingLeafCorrectionsVyAA7Field32VGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedV16measurementShare_AE05proofG0AESg14jointRandBlindtGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedV16measurementShare_AE05proofG0AESg14jointRandBlindtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedV16measurementShare_AC05proofD0ACSg14jointRandBlindtMd, &_s4VDAF4SeedV16measurementShare_AC05proofD0ACSg14jointRandBlindtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF25OneBlockSparsePublicShareVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF25OneBlockSparsePublicShareVyAC7Field32VGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25OneBlockSparsePublicShareVyAA7Field32VGMd, &_s4VDAF25OneBlockSparsePublicShareVyAA7Field32VGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2743B2D10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized ClientLevelOutput.nextLevelSeed(unadjusted:prevCtrl:correctionList:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v9 = a1;
  v10 = *(a3 + 16);
  result = outlined copy of Data._Representation(a1, a2);
  v12 = 0;
  v13 = a3 + 32;
  v14 = a4 + 24;
LABEL_2:
  v15 = (v14 + 16 * v12);
  while (1)
  {
    if (v10 == v12)
    {
      return v9;
    }

    if (v12 >= v10)
    {
      break;
    }

    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_14;
    }

    v17 = *(a4 + 16);
    if (v12 == v17)
    {
      return v9;
    }

    if (v12 >= v17)
    {
      goto LABEL_15;
    }

    v18 = *(v13 + v12++);
    v15 += 2;
    if (v18)
    {
      v25 = v14;
      v19 = *(v15 - 1);
      v20 = *v15;
      outlined copy of Data._Representation(v19, *v15);
      outlined copy of Data._Representation(v19, v20);
      v21 = Data.xor(_:)(v19, v20, v9, v8);
      if (!v5)
      {
        v23 = v22;
        v24 = v21;
        outlined consume of Data._Representation(v19, v20);
        outlined consume of Data._Representation(v9, v8);
        result = outlined consume of Data._Representation(v19, v20);
        v12 = v16;
        v9 = v24;
        v14 = v25;
        v8 = v23;
        v5 = 0;
        goto LABEL_2;
      }

      outlined consume of Data._Representation(v19, v20);
      outlined consume of Data._Representation(v9, v8);
      outlined consume of Data._Representation(v19, v20);
      return v9;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized ClientLevelOutput.nextLevelCtrlGroup(unadjusted:prevCtrl:ctrlCorrections:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (!v4)
  {

    return v3;
  }

  v6 = *(a3 + 16);
  v14 = a3 + 32;
  v15 = (a2 + 32);

  v8 = 0;
  while (!v6)
  {
LABEL_3:
    if (++v8 == v4)
    {
      return v3;
    }
  }

  if (v6 > *(a2 + 16))
  {
    goto LABEL_21;
  }

  v10 = v14;
  v9 = v15;
  v11 = v6;
  while (1)
  {
    if ((*v9 & 1) == 0)
    {
      goto LABEL_8;
    }

    if (v8 >= *(v3 + 16))
    {
      break;
    }

    if (v8 >= *(*v10 + 16))
    {
      goto LABEL_19;
    }

    v12 = *(v3 + v8 + 32);
    v13 = *(*v10 + v8 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
    }

    if (v8 >= *(v3 + 16))
    {
      goto LABEL_20;
    }

    *(v3 + v8 + 32) = v12 ^ v13;
LABEL_8:
    v10 += 8;
    ++v9;
    if (!--v11)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ClientLevelOutput(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ClientLevelOutput(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *QueryGadget.__allocating_init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = specialized QueryGadget.__allocating_init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(*(v8 + 80) - 8) + 8))(a3);
  (*(*(a6 - 8) + 8))(a2, a6);
  (*(*(a5 - 8) + 8))(a1, a5);
  return v14;
}

uint64_t QueryGadget.wireInputs.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t QueryGadget.wireOutputs.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t QueryGadget.numOfCalled.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t QueryGadget.numOfCalled.setter(uint64_t a1)
{
  v3 = *(*v1 + 128);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

__n128 QueryGadget.parameters.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + *(*v1 + 136);
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

char *QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  v15 = specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(*(v14 + 80) - 8) + 8))(a3);
  (*(*(a6 - 8) + 8))(a2, a6);
  (*(*(a5 - 8) + 8))(a1, a5);
  return v15;
}

char *QueryGadget.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t QueryGadget.__deallocating_deinit()
{
  QueryGadget.deinit();

  return swift_deallocClassInstance();
}

uint64_t QueryGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v45[0] = a3;
  v6 = *v3;
  v57 = *(*v3 + 80);
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v45 - v7;
  v9 = *(*(a2 + 8) + 8);
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = v45 - v16;
  v17 = *(v6 + 128);
  result = swift_beginAccess();
  v19 = *(v3 + v17);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = v3;
  v60 = v15;
  v51 = AssociatedTypeWitness;
  v23 = v9;
  v24 = v8;
  v25 = v17;
  *(v3 + v17) = v21;
  v26 = v23;
  result = dispatch thunk of Collection.count.getter();
  if (result < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = v57;
  v59 = v24;
  if (result)
  {
    v28 = v26;
    v29 = 0;
    v46 = (v56 + 8);
    v45[2] = v53 + 16;
    v45[1] = v53 + 40;
    v30 = 32;
    v49 = v11;
    v50 = a2;
    v47 = v17;
    v48 = a1;
    v58 = v28;
    do
    {
      v56 = v29 + 1;
      v57 = result;
      v31 = *(v22 + v25);
      v54 = v29;
      v55 = v31;
      dispatch thunk of Collection.startIndex.getter();
      v32 = v52;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v33 = *v46;
      v34 = v51;
      (*v46)(v60, v51);
      v35 = dispatch thunk of Collection.subscript.read();
      v36 = v53;
      (*(v53 + 16))(v59);
      v35(v61, 0);
      v33(v32, v34);
      swift_beginAccess();
      type metadata accessor for Array();
      type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v37 = v22[2];
      Array._checkSubscript_mutating(_:)(v54);
      Array._makeMutableAndUnique()();
      v38 = v55;
      Array._checkSubscript_mutating(_:)(v55);
      v39 = *(v37 + v30);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v41 = v39 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v41 = v39;
      }

      v42 = v41 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v38;
      v43 = *(v36 + 40);
      v25 = v47;
      v43(v42, v59, v27);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      swift_endAccess();
      v29 = v56;
      v30 += 8;
      result = v57 - 1;
    }

    while (v57 != 1);
  }

  v44 = *(v22 + *(*v22 + 120));
  if ((*(v22 + v25) * v44) >> 64 == (*(v22 + v25) * v44) >> 63)
  {
    swift_beginAccess();
    Array.subscript.getter();
    return swift_endAccess();
  }

LABEL_12:
  __break(1u);
  return result;
}

char *specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v84 = a2;
  v75 = a1;
  v14 = *v8;
  v86 = a8;
  v90 = *(*(a8 + 8) + 8);
  v85 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v92 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v66 - v18;
  v73 = *(a5 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v72 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v14[10];
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v19);
  v89 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v66 - v25;
  v27 = *(a4 + 4);
  *(v9 + v14[16]) = 0;
  v74 = specialized FixedWidthInteger.nextPowerOfTwo.getter(v27);
  v28 = v9 + *(*v9 + 136);
  v29 = *a4;
  v76 = a4[1];
  v30 = v76;
  *v28 = v29;
  *(v28 + 1) = v30;
  v88 = v29;
  *(v28 + 4) = v27;
  v31 = v14[11];
  result = dispatch thunk of static AdditiveArithmetic.zero.getter();
  if (__OFADD__(v76, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v69 = v31;
  v70 = a7;
  v71 = a5;
  v33 = specialized Array.init(repeating:count:)(v26, v76 + 1, v21);
  v34 = *(v22 + 8);
  v67 = v26;
  v34(v26, v21);
  v93 = v33;
  v35 = type metadata accessor for Array();
  v36 = specialized Array.init(repeating:count:)(&v93, v88, v35);

  v9[2] = v36;

  v38 = MEMORY[0x2743B2830](v37, v35);

  if (v38 < 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v66 = a3;
  v68 = v9;
  v87 = v22;
  v83 = v21;
  v81 = v35;
  v39 = AssociatedTypeWitness;
  if (v38)
  {
    v40 = 0;
    v78 = v87 + 16;
    ++v79;
    v77 = v87 + 40;
    v41 = 32;
    v80 = v9 + 2;
    do
    {
      *&v88 = v40 + 1;
      dispatch thunk of Collection.startIndex.getter();
      v42 = v38;
      v43 = v82;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v44 = *v79;
      (*v79)(v92, v39);
      v45 = dispatch thunk of Collection.subscript.read();
      v46 = v87;
      v47 = v83;
      (*(v87 + 16))(v89);
      v45(&v93, 0);
      v48 = v43;
      v49 = v42;
      v50 = v80;
      v44(v48, AssociatedTypeWitness);
      swift_beginAccess();
      type metadata accessor for Array();
      Array._makeMutableAndUnique()();
      v51 = *v50;
      Array._checkSubscript_mutating(_:)(v40);
      Array._makeMutableAndUnique()();
      Array._checkSubscript_mutating(_:)(0);
      v52 = *(v51 + v41);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v54 = v52 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v54 = v52;
      }

      v55 = v47;
      v39 = AssociatedTypeWitness;
      (*(v46 + 40))(v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v89, v55);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      swift_endAccess();
      v41 += 8;
      v40 = v88;
      v38 = v49 - 1;
    }

    while (v38);
  }

  v56 = v87;
  (*(v73 + 16))(v72, v75, v71);
  v57 = v83;
  v58 = Array.init<A>(_:)();
  v59 = v69;
  Polynomial.init(coefficients:)(v58, &v93);
  v60 = v93;
  v62 = type metadata accessor for Polynomial(0, v57, v59, v61);
  v63 = v74;
  result = Polynomial.evaluateUsingRootsOfUnity(count:)(v74, v62);
  v64 = v68;
  *(v68 + 3) = result;
  if (!*(&v76 + 1))
  {
    goto LABEL_14;
  }

  if (v63 != 0x8000000000000000 || *(&v76 + 1) != -1)
  {
    *&v64[*(*v64 + 120)] = v63 / *(&v76 + 1);
    v93 = v60;
    v65 = v67;
    Polynomial.evaluate(at:)(v66, v62, v67);

    (*(v56 + 32))(&v64[*(*v64 + 112)], v65, v57);
    return v64;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t type metadata completion function for QueryGadget(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AI24wraparoundJointRandBlindAI012verificationjkL0ts5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v25 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v25;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v22 = a3 + v8;
      a1(&v23, &v22);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v23;
      v13 = v24;
      v25 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        v18 = v24;
        v19 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v13 = v18;
        v12 = v19;
        v6 = v25;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 32 * v15;
      *(v16 + 32) = v12;
      *(v16 + 48) = v13;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void (*_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF8BitMasksCsAE_pTg5(void (*result)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *__return_ptr, uint64_t *, uint64_t *)
{
  v13 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    goto LABEL_21;
  }

  v6 = v4;
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v9 = 0;
    if (a4 <= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = a4;
    }

    v12 = v10 - a3 + 1;
    while (v9 < v5)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }

      v15 = a3 + v9;
      v13(&v16, &v15, &v14);
      if (v6)
      {
      }

      v6 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (a4 < a3)
      {
        goto LABEL_19;
      }

      if (v12 == ++v9)
      {
        goto LABEL_20;
      }

      if (v11 == v5)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sbs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}