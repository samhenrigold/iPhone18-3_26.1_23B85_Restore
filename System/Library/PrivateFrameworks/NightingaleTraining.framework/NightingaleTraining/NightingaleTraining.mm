uint64_t sub_25C4D9C70()
{

  return swift_deallocObject();
}

uint64_t sub_25C4D9E10()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_25C4DA16C()
{

  return swift_deallocObject();
}

uint64_t sub_25C4DA1B4()
{

  return swift_deallocObject();
}

uint64_t sub_25C4DA23C()
{

  return swift_deallocObject();
}

uint64_t sub_25C4DA284()
{

  return swift_deallocObject();
}

uint64_t sub_25C4DA2CC()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_25C4DA348()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25C4DA390()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0ts5Error_pGMd, &_sScCySDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0ts5Error_pGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_25C4DA478()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGs5Error_pGMd, &_sScCySDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGs5Error_pGMR);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_25C4DA574()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay19NightingaleTraining9Pregnancy_pSgGs5Error_pGMd, &_sScCySay19NightingaleTraining9Pregnancy_pSgGs5Error_pGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_25C4DA81C()
{

  return swift_deallocObject();
}

uint64_t sub_25C4DAF28()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_25C4DB464()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_25C4DB4B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = *(a3 + 16);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else
  {
    v4 = type metadata accessor for Optional();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 48), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_25C4DB618(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = type metadata accessor for Optional();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 48), a2, a2, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C4DB96C()
{

  return swift_deallocObject();
}

uint64_t Array<A>.sum.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGMd, &_sSaySbGMR);
  lazy protocol witness table accessor for type [Bool] and conformance [A]();
  Sequence.reduce<A>(_:_:)();
  return v2;
}

BOOL closure #1 in Array<A>.sum.getter@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  result = Bool.intValue.getter(*a2 & 1);
  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = v6 + result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type [Bool] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Bool] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Bool] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySbGMd, &_sSaySbGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Bool] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t Comparable.clamp(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v16 = a1;
  v23 = a2;
  v20 = a3;
  v27 = 0;
  v26 = 0;
  v28 = a2;
  v14 = *(a2 - 8);
  v15 = a2 - 8;
  v12 = v14[8];
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a3, a1);
  v21 = &v10 - v11;
  v13 = v11;
  v6 = MEMORY[0x28223BE20](&v10 - v11, v5);
  v22 = &v10 - v13;
  v27 = v7;
  v26 = v4;
  v18 = v14[2];
  v17 = v14 + 2;
  v18(v6);
  max<A>(_:_:)();
  v25 = v14[1];
  v24 = v14 + 1;
  v25(v21, v23);
  v8 = type metadata accessor for ClosedRange();
  (v18)(v21, v16 + *(v8 + 36), v23);
  min<A>(_:_:)();
  v25(v21, v23);
  return (v25)(v22, v23);
}

uint64_t BinaryFloatingPoint.clamp(to:nonFiniteValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v26 = a2;
  v27 = a3;
  v25 = a4;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v50 = a3;
  v28 = type metadata accessor for FloatingPointRoundingRule();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v27, v26);
  v32 = &v18 - v31;
  v33 = *(v5 - 8);
  v34 = v5 - 8;
  v40 = v33[8];
  v35 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v36 = &v18 - v35;
  v37 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v38 = &v18 - v37;
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v41 = &v18 - v39;
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v12);
  v43 = &v18 - v42;
  v49 = v13;
  v48 = v14;
  v47 = v4;
  v44 = *(v15 + 16);
  if (dispatch thunk of FloatingPoint.isFinite.getter())
  {
    (*(v29 + 104))(v32, *MEMORY[0x277D84678], v28);
    dispatch thunk of FloatingPoint.rounded(_:)();
    (*(v29 + 8))(v32, v28);
    v19 = v33[2];
    v18 = v33 + 2;
    v19(v36, v24, v27);
    v20 = *(*(v44 + 24) + 8);
    max<A>(_:_:)();
    v22 = v33[1];
    v21 = v33 + 1;
    v22(v36, v27);
    v22(v38, v27);
    v16 = type metadata accessor for ClosedRange();
    v19(v38, v24 + *(v16 + 36), v27);
    min<A>(_:_:)();
    v22(v38, v27);
    v22(v41, v27);
    lazy protocol witness table accessor for type Int and conformance Int();
    FixedWidthInteger.init<A>(_:)();
    return v45;
  }

  else
  {
    (v33[2])(v43, v26, v27);
    lazy protocol witness table accessor for type Int and conformance Int();
    FixedWidthInteger.init<A>(_:)();
    return v46;
  }
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

uint64_t static HIDPFLUtils.getDayAndHourInGMT(date:)(uint64_t a1)
{
  v42 = a1;
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v22 = 0;
  v45 = type metadata accessor for Calendar.Component();
  v32 = *(v45 - 8);
  v33 = v45 - 8;
  v19 = (v32[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](0, v1);
  v43 = v15 - v19;
  v20 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v15 - v19);
  v44 = v15 - v20;
  v21 = (*(*(type metadata accessor for TimeZone() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v4);
  v31 = v15 - v21;
  v30 = type metadata accessor for Calendar.Identifier();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v23 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v5);
  v29 = v15 - v23;
  v49 = type metadata accessor for Calendar();
  v34 = *(v49 - 8);
  v35 = v49 - 8;
  v25 = v34[8];
  v24 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v29, v6);
  v48 = v15 - v24;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7, v15 - v24);
  v36 = v15 - v26;
  v66 = v15 - v26;
  v65 = v42;
  (*(v27 + 104))(v8, *MEMORY[0x277CC9830]);
  Calendar.init(identifier:)();
  (*(v27 + 8))(v29, v30);
  static TimeZone.gmt.getter(v31);
  Calendar.timeZone.setter();
  v38 = v34[2];
  v37 = v34 + 2;
  v38(v48, v36, v49);
  v39 = MEMORY[0x277CC9968];
  v9 = *MEMORY[0x277CC9968];
  v41 = v32[13];
  v40 = v32 + 13;
  v41(v44, v9, v45);
  v41(v43, *MEMORY[0x277CC9988], v45);
  v10 = Calendar.ordinality(of:in:for:)();
  v11 = v48;
  v54 = v10;
  v55 = v12;
  v47 = v32[1];
  v46 = v32 + 1;
  v47(v43, v45);
  v47(v44, v45);
  v51 = v34[1];
  v50 = v34 + 1;
  v51(v11, v49);
  v63 = v54;
  v56 = 1;
  v64 = v55 & 1;
  v38(v11, v36, v49);
  v41(v44, *MEMORY[0x277CC9980], v45);
  v41(v43, *v39, v45);
  v52 = Calendar.ordinality(of:in:for:)();
  v53 = v13;
  v47(v43, v45);
  v47(v44, v45);
  v51(v48, v49);
  v61 = v52;
  v62 = v53 & 1 & v56;
  v59 = v54;
  if (v55 & 1 & v56)
  {
    v18 = 0;
  }

  else
  {
    v18 = v59;
  }

  v17 = v18;
  v57 = v52;
  v58 = v53 & 1;
  if (v53)
  {
    v16 = 0;
  }

  else
  {
    v16 = v57;
  }

  v15[1] = v16;
  v51(v36, v49);
  return v17;
}

uint64_t static TimeZone.gmt.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2);
  v8 = &v4 - v6;
  v7 = 0;
  TimeZone.init(secondsFromGMT:)();
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  result = (*(v10 + 48))(v8, 1);
  if (result != 1)
  {
    return (*(v10 + 32))(v5, v8, v9);
  }

  __break(1u);
  return result;
}

void static HIDPFLUtils.checkMetrics(_:)(uint64_t a1)
{
  lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
  v2 = swift_allocError();
  *v1 = 29;

  static PFLUtils.throwIfFalse(error:for:)();
}

unint64_t lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError()
{
  v2 = lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError;
  if (!lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError;
  if (!lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError;
  if (!lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in static HIDPFLUtils.checkMetrics(_:)(uint64_t a1)
{
  v2 = objc_opt_self();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [v2 isValidJSONObject_];
  swift_unknownObjectRelease();
  return v4;
}

uint64_t static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(uint64_t result, uint64_t a2)
{
  if (a2 <= 0)
  {
    return result;
  }

  if (a2 >= result)
  {
    return result;
  }

  v2 = result;
  v5 = v2 - v2 % a2;
  if (!__OFSUB__(v2, v2 % a2))
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t static HIDPFLUtils.inplaceSub(_:_:)(uint64_t *a1, void *a2)
{
  v3 = *a1;

  MEMORY[0x25F8895B0](v3, MEMORY[0x277D83A90]);

  lazy protocol witness table accessor for type Int and conformance Int();
  lazy protocol witness table accessor for type Int32 and conformance Int32();
  numericCast<A, B>(_:)();
  numericCast<A, B>(_:)();
  numericCast<A, B>(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  Array.reserveCapacity(_:)(0);

  cblas_saxpy_NEWLAPACK();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

void static HIDPFLUtils.findClosest<A>(_:target:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a6;
  v34 = a1;
  v33 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v46 = a3;
  v19 = *(a5 + 16);
  v29 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](AssociatedTypeWitness, v30);
  v22 = v16 - v21;
  v23 = *(v6 - 8);
  v24 = v6 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v21, v6);
  v26 = v16 - v25;
  v27 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v25, v8);
  v28 = v16 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = type metadata accessor for Optional();
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v34, v33);
  v41 = v16 - v36;
  v39 = *(TupleTypeMetadata2 - 8);
  v40 = TupleTypeMetadata2 - 8;
  v37 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v38 = v16 - v37;
  v45 = v16 - v37;
  v44 = v11;
  v43 = v12;
  static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v11, v12, v13, v14, v15);
  if ((*(v39 + 48))(v41, 1, TupleTypeMetadata2) == 1)
  {
    outlined destroy of (value: A, index: Int)?(v41, v30, TupleTypeMetadata2);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v17 = *(v23 + 8);
    v16[1] = v23 + 8;
    v17(v26, v30);
    static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(v34, v28, v30, v31, v18);
    v17(v28, v30);
  }

  else
  {
    outlined init with take of (value: A, index: Int)(v41, v38, v30, TupleTypeMetadata2);
    outlined init with copy of (value: A, index: Int)(v38, v18, v30, TupleTypeMetadata2);
    (*(v39 + 56))(v18, 0, 1, TupleTypeMetadata2);
    outlined destroy of (value: A, index: Int)(v38, v30);
  }
}

uint64_t static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v62 = a1;
  v71 = a2;
  v63 = a3;
  v53 = a4;
  v73 = MEMORY[0x277D83988];
  v54 = "Fatal error";
  v55 = "Unexpectedly found nil while unwrapping an Optional value";
  v56 = "NightingaleTraining/HIDPFLUtils.swift";
  v57 = MEMORY[0x277D83958];
  v84 = 0;
  v83 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v85 = a3;
  v58 = *(a3 - 8);
  v59 = a3 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a3);
  v61 = &v21 - v60;
  v64 = 0;
  v68 = *(*(type metadata accessor for Optional() - 8) + 64);
  v65 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v64, v63);
  v66 = &v21 - v65;
  v67 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v69 = &v21 - v67;
  v70 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8);
  v72 = &v21 - v70;
  v84 = v9;
  v83 = v71;
  v82 = v9;
  v74 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v52, 1);
  }

  else
  {
    v81 = v62;
    Collection.first.getter();
    v50 = *(v58 + 48);
    v51 = v58 + 48;
    if (v50(v72, 1, v63) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)(v54, 11, 2, v55, 57, 2, v56, 37, 2, 149, 0);
      __break(1u);
    }

    v49 = dispatch thunk of static Comparable.< infix(_:_:)();
    v47 = *(v58 + 8);
    v48 = v58 + 8;
    v47(v72, v63);
    if (v49)
    {
      v10 = swift_getTupleTypeMetadata2();
      return (*(*(v10 - 8) + 56))(v52, 1);
    }

    v80 = v62;
    v46 = swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    if (v50(v69, 1, v63) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)(v54, 11, 2, v55, 57, 2, v56, 37, 2, 153, 0);
      __break(1u);
    }

    v45 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v47(v69, v63);
    if (v45)
    {
      v43 = swift_getTupleTypeMetadata2();
      v44 = *(v43 + 48);
      v76 = v62;
      BidirectionalCollection.last.getter();
      if (v50(v66, 1, v63) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)(v54, 11, 2, v55, 57, 2, v56, 37, 2, 154, 0);
        __break(1u);
      }

      (*(v58 + 32))(v52, v66, v63);
      result = MEMORY[0x25F8895B0](v62, v63);
      v42 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        v13 = v43;
        *(v52 + v44) = v42;
        return (*(*(v13 - 8) + 56))();
      }

      goto LABEL_47;
    }

    v79 = 0;
    result = MEMORY[0x25F8895B0](v62, v63);
    v41 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v78 = v41;
    v39 = v41;
    for (i = 0; ; i = v26)
    {
      v36 = i;
      v37 = v39;
      v38 = v39;
      if (v39 < i)
      {
        break;
      }

      v35 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_44;
      }

      v32 = v35 / 2;
      v77 = v35 / 2;
      Array.subscript.getter();
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47(v61, v63);
      v34 = v32;
      if (v33)
      {
        v30 = v34;
        v31 = swift_getTupleTypeMetadata2();
        v29 = *(v31 + 48);
        (*(v58 + 16))(v52, v71, v63);
        v16 = v31;
        *(v52 + v29) = v30;
        return (*(*(v16 - 8) + 56))();
      }

      Array.subscript.getter();
      v28 = dispatch thunk of static Comparable.< infix(_:_:)();
      v47(v61, v63);
      result = v28;
      if (v28)
      {
        v27 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_46;
        }

        v79 = v27;
        v25 = v37;
        v26 = v27;
      }

      else
      {
        v24 = v32 - 1;
        if (__OFSUB__(v32, 1))
        {
          goto LABEL_45;
        }

        v78 = v24;
        v25 = v24;
        v26 = v36;
      }

      v39 = v25;
    }

    v22 = v38;
    v23 = swift_getTupleTypeMetadata2();
    v21 = *(v23 + 48);
    Array.subscript.getter();
    v19 = v23;
    *(v52 + v21) = v22;
    return (*(*(v19 - 8) + 56))();
  }
}

uint64_t outlined destroy of (value: A, index: Int)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*(a3 - 8) + 48))(a1, 1))
  {
    (*(*(a2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v59 = a1;
  v68 = a2;
  v60 = a3;
  v50 = a4;
  v70 = MEMORY[0x277D83988];
  v51 = MEMORY[0x277D83958];
  v52 = "Fatal error";
  v53 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = "NightingaleTraining/HIDPFLUtils.swift";
  v81 = 0;
  v80 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v82 = a3;
  v55 = *(a3 - 8);
  v56 = a3 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a3);
  v58 = &v20 - v57;
  v61 = 0;
  v65 = *(*(type metadata accessor for Optional() - 8) + 64);
  v62 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v61, v60);
  v63 = &v20 - v62;
  v64 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v66 = &v20 - v64;
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8);
  v69 = &v20 - v67;
  v81 = v9;
  v80 = v68;
  v79 = v9;
  v71 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v49, 1);
  }

  else
  {
    v78 = v59;
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v47 = *(v55 + 48);
    v48 = v55 + 48;
    if (v47(v69, 1, v60) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)(v52, 11, 2, v53, 57, 2, v54, 37, 2, 113, 0);
      __break(1u);
    }

    v46 = dispatch thunk of static Comparable.> infix(_:_:)();
    v44 = *(v55 + 8);
    v45 = v55 + 8;
    v44(v69, v60);
    if (v46)
    {
      v10 = swift_getTupleTypeMetadata2();
      return (*(*(v10 - 8) + 56))(v49, 1);
    }

    else
    {
      v77 = v59;
      Collection.first.getter();
      if (v47(v66, 1, v60) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)(v52, 11, 2, v53, 57, 2, v54, 37, 2, 117, 0);
        __break(1u);
      }

      v43 = dispatch thunk of static Comparable.<= infix(_:_:)();
      v44(v66, v60);
      if (v43)
      {
        v41 = swift_getTupleTypeMetadata2();
        v42 = *(v41 + 48);
        v73 = v59;
        Collection.first.getter();
        if (v47(v63, 1, v60) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)(v52, 11, 2, v53, 57, 2, v54, 37, 2, 118, 0);
          __break(1u);
        }

        (*(v55 + 32))(v49, v63, v60);
        v12 = v41;
        *(v49 + v42) = 0;
        return (*(*(v12 - 8) + 56))();
      }

      else
      {
        v76 = 0;
        result = MEMORY[0x25F8895B0](v59, v60);
        v40 = result - 1;
        if (__OFSUB__(result, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        else
        {
          v75 = v40;
          v38 = v40;
          for (i = 0; ; i = v25)
          {
            v35 = i;
            v36 = v38;
            v37 = i;
            if (v38 < i)
            {
              break;
            }

            v34 = v35 + v36;
            if (__OFADD__(v35, v36))
            {
              goto LABEL_40;
            }

            v31 = v34 / 2;
            v74 = v34 / 2;
            Array.subscript.getter();
            v32 = dispatch thunk of static Equatable.== infix(_:_:)();
            v44(v58, v60);
            v33 = v31;
            if (v32)
            {
              v29 = v33;
              v30 = swift_getTupleTypeMetadata2();
              v28 = *(v30 + 48);
              (*(v55 + 16))(v49, v68, v60);
              v15 = v30;
              *(v49 + v28) = v29;
              return (*(*(v15 - 8) + 56))();
            }

            Array.subscript.getter();
            v27 = dispatch thunk of static Comparable.< infix(_:_:)();
            v44(v58, v60);
            result = v27;
            if (v27)
            {
              v26 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_42;
              }

              v76 = v26;
              v24 = v36;
              v25 = v26;
            }

            else
            {
              v23 = v31 - 1;
              if (__OFSUB__(v31, 1))
              {
                goto LABEL_41;
              }

              v75 = v23;
              v24 = v23;
              v25 = v35;
            }

            v38 = v24;
          }

          v21 = v37;
          v22 = swift_getTupleTypeMetadata2();
          v20 = *(v22 + 48);
          Array.subscript.getter();
          v18 = v22;
          *(v49 + v20) = v21;
          return (*(*(v18 - 8) + 56))();
        }
      }
    }
  }

  return result;
}

uint64_t outlined init with take of (value: A, index: Int)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 32))();
  result = a2;
  *(a2 + *(a4 + 48)) = *(a1 + *(a4 + 48));
  return result;
}

uint64_t outlined init with copy of (value: A, index: Int)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  result = a2;
  *(a2 + *(a4 + 48)) = *(a1 + *(a4 + 48));
  return result;
}

unint64_t type metadata accessor for _HKPrivatePregnancyStartDateSource(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for _HKPrivatePregnancyStartDateSource;
  if (!lazy cache variable for type metadata for _HKPrivatePregnancyStartDateSource)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for _HKPrivatePregnancyStartDateSource);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HKCategoryValueSleepAnalysis(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKCategoryValueSleepAnalysis;
  if (!lazy cache variable for type metadata for HKCategoryValueSleepAnalysis)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKCategoryValueSleepAnalysis);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for HKQueryOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for HKQueryOptions;
  if (!lazy cache variable for type metadata for HKQueryOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKQueryOptions);
      return v2;
    }
  }

  return v5;
}

uint64_t protocol witness for SetAlgebra.init() in conformance HKQueryOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance HKQueryOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance HKQueryOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance HKQueryOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance _HKPrivatePregnancyStartDateSource(uint64_t a1@<X8>)
{
  _HKPrivatePregnancyStartDateSource.init(rawValue:)();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

__C::HKQueryOptions protocol witness for OptionSet.init(rawValue:) in conformance HKQueryOptions@<X0>(Swift::UInt *a1@<X0>, __C::HKQueryOptions *a2@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*a1).rawValue;
  a2->rawValue = result.rawValue;
  return result;
}

__C::HKQueryOptions protocol witness for RawRepresentable.init(rawValue:) in conformance HKQueryOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*a1).rawValue;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

__C::HKQueryOptions protocol witness for RawRepresentable.rawValue.getter in conformance HKQueryOptions@<X0>(__C::HKQueryOptions *a1@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*v1).rawValue;
  a1->rawValue = result.rawValue;
  return result;
}

unint64_t lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions()
{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis()
{
  v2 = lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis;
  if (!lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis;
  if (!lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis;
  if (!lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis;
  if (!lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource()
{
  v2 = lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource;
  if (!lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource)
  {
    type metadata accessor for _HKPrivatePregnancyStartDateSource(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource;
  if (!lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource)
  {
    type metadata accessor for _HKPrivatePregnancyStartDateSource(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource);
    return WitnessTable;
  }

  return v2;
}

Swift::UInt32_optional __swiftcall Date.toJulianDay()()
{
  v54 = "Fatal error";
  v55 = "Negative value is not representable";
  v56 = "Swift/Integers.swift";
  v57 = "Not enough bits to represent the passed value";
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v67 = 0;
  v58 = type metadata accessor for DateComponents();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v77 = &v23[-v61];
  v88 = &v23[-v61];
  v62 = type metadata accessor for Calendar();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v1);
  v66 = &v23[-v65];
  v87 = &v23[-v65];
  v86 = v2;
  static Calendar.current.getter();
  v75 = type metadata accessor for Calendar.Component();
  v74 = _allocateUninitializedArray<A>(_:)();
  v71 = v3;
  v68 = *(v75 - 8);
  v69 = v75 - 8;
  v73 = *(v68 + 104);
  v72 = v68 + 104;
  v73();
  v70 = *(v68 + 72);
  (v73)(v71 + v70, *MEMORY[0x277CC9998], v75);
  (v73)(v71 + 2 * v70, *MEMORY[0x277CC9968], v75);
  _finalizeUninitializedArray<A>(_:)();
  v76 = v4;
  lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  v78 = Set.init(arrayLiteral:)();
  Calendar.dateComponents(_:from:)();

  v79 = DateComponents.day.getter();
  if (v5)
  {
    goto LABEL_76;
  }

  v53 = v79;
  v51 = v79;
  v84 = v79;
  v52 = DateComponents.month.getter();
  if (v6)
  {
    goto LABEL_76;
  }

  v50 = v52;
  v48 = v52;
  v83 = v52;
  v7 = DateComponents.year.getter();
  v49 = v7;
  if (v8)
  {
    goto LABEL_76;
  }

  v47 = v49;
  v45 = v47;
  v82 = v47;
  v46 = v47 + 4800;
  if (__OFADD__(v47, 4800))
  {
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v44 = v48 - 14;
  if (__OFSUB__(v48, 14))
  {
    goto LABEL_79;
  }

  v43 = v46 + v44 / 12;
  if (__OFADD__(v46, v44 / 12))
  {
    goto LABEL_80;
  }

  v42 = 1461 * v43;
  if ((1461 * v43) >> 64 != (1461 * v43) >> 63)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v40 = v42 / 4;
  v41 = v48 - 2;
  if (__OFSUB__(v48, 2))
  {
    goto LABEL_82;
  }

  v39 = v48 - 14;
  if (__OFSUB__(v48, 14))
  {
    goto LABEL_83;
  }

  v38 = 12 * (v39 / 12);
  if ((12 * (v39 / 12)) >> 64 != v38 >> 63)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v37 = v41 - v38;
  if (__OFSUB__(v41, v38))
  {
    goto LABEL_85;
  }

  v36 = 367 * v37;
  if ((367 * v37) >> 64 != (367 * v37) >> 63)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v35 = v40 + v36 / 12;
  if (__OFADD__(v40, v36 / 12))
  {
    goto LABEL_87;
  }

  v34 = v45 + 4900;
  if (__OFADD__(v45, 4900))
  {
    goto LABEL_88;
  }

  v33 = v48 - 14;
  if (__OFSUB__(v48, 14))
  {
    goto LABEL_89;
  }

  v32 = v34 + v33 / 12;
  if (__OFADD__(v34, v33 / 12))
  {
    goto LABEL_90;
  }

  v31 = 3 * (v32 / 100);
  if ((3 * (v32 / 100)) >> 64 != v31 >> 63)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v30 = v35 - v31 / 4;
  if (__OFSUB__(v35, v31 / 4))
  {
    goto LABEL_92;
  }

  v29 = v30 + v51;
  if (__OFADD__(v30, v51))
  {
    goto LABEL_93;
  }

  v28 = v29 - 32075;
  if (__OFSUB__(v29, 32075))
  {
    goto LABEL_94;
  }

  v81 = v28;
  if (v28 < 2400001)
  {
LABEL_76:
    (*(v59 + 8))(v77, v58);
    (*(v63 + 8))(v66, v62);
    v25 = 0;
    v26 = 1;
    goto LABEL_77;
  }

  v27 = v28 - 2400001;
  if (__OFSUB__(v28, 2400001))
  {
LABEL_95:
    __break(1u);
    return v7;
  }

  if (v27 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)(v54, 11, 2, v55, 35, 2, v56, 20, 2, 3049, 0);
    __break(1u);
  }

  if (v27 > 0xFFFFFFFFLL)
  {
    _assertionFailure(_:_:file:line:flags:)(v54, 11, 2, v57, 45, 2, v56, 20, 2, 3053, 0);
    __break(1u);
    goto LABEL_76;
  }

  v24 = v27;
  v80 = v27;
  (*(v59 + 8))(v77, v58);
  (*(v63 + 8))(v66, v62);
  v25 = v24;
  v26 = 0;
LABEL_77:
  LODWORD(v85) = v25;
  BYTE4(v85) = v26 & 1;
  return v85;
}

unint64_t lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component()
{
  v2 = lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component;
  if (!lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component)
  {
    type metadata accessor for Calendar.Component();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
    return WitnessTable;
  }

  return v2;
}

uint64_t UInt32.getDateComponents()@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v49 = a1;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v45 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v46 = &v23 - v45;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v47 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5);
  v48 = &v23 - v47;
  v50 = type metadata accessor for DateComponents();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v49, v6);
  v54 = &v23 - v53;
  v65 = &v23 - v53;
  v64 = result;
  v55 = result + 2400001;
  if (__OFADD__(result, 2400001))
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v63 = v55;
  v43 = v55 + 1401;
  if (__OFADD__(v55, 1401))
  {
    goto LABEL_59;
  }

  v42 = 4 * v55;
  if ((4 * v55) >> 64 != (4 * v55) >> 63)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v41 = v42 + 274277;
  if (__OFADD__(v42, 274277))
  {
    goto LABEL_61;
  }

  v40 = 3 * (v41 / 146097);
  if ((v41 / 146097 * 3) >> 64 != v40 >> 63)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v39 = v43 + v40 / 4;
  if (__OFADD__(v43, v40 / 4))
  {
    goto LABEL_63;
  }

  v38 = v39 - 38;
  if (__OFSUB__(v39, 38))
  {
    goto LABEL_64;
  }

  v62 = v38;
  v37 = 4 * v38;
  if ((4 * v38) >> 64 != (4 * v38) >> 63)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v36 = v37 + 3;
  if (__OFADD__(v37, 3))
  {
    goto LABEL_66;
  }

  v61 = v36;
  v35 = v36 % 1461;
  v60 = v36 % 1461 / 4;
  v34 = 5 * v60;
  if ((5 * v60) >> 64 != (5 * v60) >> 63)
  {
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
    goto LABEL_74;
  }

  v33 = v34 + 2;
  if (__OFADD__(v34, 2))
  {
    goto LABEL_68;
  }

  v59 = v33;
  v32 = v33 % 153;
  v31 = v33 % 153 / 5 + 1;
  if (__OFADD__(v33 % 153 / 5, 1))
  {
    goto LABEL_69;
  }

  v58 = v31;
  v30 = v33 / 153 + 2;
  if (__OFADD__(v33 / 153, 2))
  {
    goto LABEL_70;
  }

  v29 = v30 % 12 + 1;
  if (__OFADD__(v30 % 12, 1))
  {
    goto LABEL_71;
  }

  v57 = v29;
  v28 = v36 / 1461 - 4716;
  if (__OFSUB__(v36 / 1461, 4716))
  {
    goto LABEL_72;
  }

  v27 = 14 - v29;
  if (__OFSUB__(14, v29))
  {
    goto LABEL_73;
  }

  v26 = v28 + v27 / 12;
  if (!__OFADD__(v28, v27 / 12))
  {
    v56 = v26;
    v23 = 0;
    v21 = *(*(type metadata accessor for Calendar() - 8) + 56);
    v24 = 1;
    v21(v48, 1);
    v22 = type metadata accessor for TimeZone();
    (*(*(v22 - 8) + 56))(v46, v24);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v25 = 0;
    DateComponents.day.setter();
    DateComponents.month.setter();
    DateComponents.year.setter();
    return (*(v51 + 32))(v44, v54, v50);
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t UInt32.toDate(calendar:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = a3;
  v7 = a2;
  v15 = 0;
  v14 = 0;
  v13 = type metadata accessor for DateComponents();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v6[-v8];
  v15 = a1;
  v14 = MEMORY[0x28223BE20](v7, v4);
  UInt32.getDateComponents()(v14, &v6[-v8]);
  Calendar.date(from:)();
  return (*(v10 + 8))(v12, v13);
}

uint64_t UInt32.toDate(atHour:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v15 = a1;
  v17 = a2;
  v11 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v16 = 0;
  v26 = 0;
  v23 = type metadata accessor for DateComponents();
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v13 = *(v19 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v11, v17);
  v21 = &v10[-v12];
  v14 = v12;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v22 = &v10[-v14];
  v29 = &v10[-v14];
  v28 = v7;
  v27 = v8;
  v26 = v6;
  UInt32.getDateComponents()(v6, &v10[-v14]);
  DateComponents.hour.setter();
  (*(v19 + 16))(v21, v22, v23);
  Calendar.date(from:)();
  v25 = *(v19 + 8);
  v24 = v19 + 8;
  v25(v21, v23);
  return (v25)(v22, v23);
}

uint64_t static UInt32.modifiedJulianStartDate()@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v36 = 0;
  v35 = 0;
  v21 = 0;
  v30 = type metadata accessor for Calendar();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v12 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v1);
  v29 = &v11 - v12;
  v36 = &v11 - v12;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v13 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v19 = &v11 - v13;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v4);
  v18 = &v11 - v14;
  v32 = type metadata accessor for DateComponents();
  v24 = *(v32 - 8);
  v25 = v32 - 8;
  v16 = *(v24 + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v18, v5);
  v26 = &v11 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6, &v11 - v15);
  v31 = &v11 - v17;
  v35 = &v11 - v17;
  v8 = *(v27 + 56);
  v20 = 1;
  v8(v7, 1);
  v9 = type metadata accessor for TimeZone();
  (*(*(v9 - 8) + 56))(v19, v20);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v22 = 0;
  DateComponents.day.setter();
  DateComponents.month.setter();
  DateComponents.year.setter();
  DateComponents.hour.setter();
  DateComponents.minute.setter();
  static Calendar.current.getter();
  (*(v24 + 16))(v26, v31, v32);
  Calendar.date(from:)();
  v34 = *(v24 + 8);
  v33 = v24 + 8;
  v34(v26, v32);
  (*(v27 + 8))(v29, v30);
  return (v34)(v31, v32);
}

uint64_t sleepDayInterval(morningIndex:calendar:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v31 = a1;
  v30 = a2;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v27 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4);
  v28 = &v19 - v27;
  v29 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v19 - v27, v6);
  v43 = &v19 - v29;
  v44 = type metadata accessor for Date();
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v37 = v41[8];
  v32 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v31, v30);
  v33 = &v19 - v32;
  v34 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v35 = &v19 - v34;
  v36 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v38 = &v19 - v36;
  v50 = &v19 - v36;
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v40 = &v19 - v39;
  v49 = &v19 - v39;
  v48 = v13;
  v47 = v14;
  sleepDayStartForMorningIndex(morningIndex:calendar:)(v13, v14, v15);
  v45 = v41[6];
  v46 = v41 + 6;
  if (v45(v43, 1, v44) == 1)
  {
    outlined destroy of Date?(v43);
LABEL_7:
    v18 = type metadata accessor for DateInterval();
    return (*(*(v18 - 8) + 56))(v26, 1);
  }

  v23 = v41[4];
  v24 = v41 + 4;
  result = v23(v40, v43, v44);
  v25 = v31 + 1;
  if (v31 != -1)
  {
    sleepDayStartForMorningIndex(morningIndex:calendar:)(v25, v30, v28);
    if (v45(v28, 1, v44) != 1)
    {
      v23(v38, v28, v44);
      v20 = v41[2];
      v19 = v41 + 2;
      v20(v35, v40, v44);
      v20(v33, v38, v44);
      DateInterval.init(start:end:)();
      v17 = type metadata accessor for DateInterval();
      (*(*(v17 - 8) + 56))(v26, 0, 1);
      v22 = v41[1];
      v21 = v41 + 1;
      v22(v38, v44);
      return (v22)(v40, v44);
    }

    outlined destroy of Date?(v28);
    (v41[1])(v40, v44);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sleepDayStartForMorningIndex(morningIndex:calendar:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    return UInt32.toDate(atHour:calendar:)(18, a2, result - 1, a3);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t NightingaleDReachLocation.description.getter(char a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginStarted", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CTEnrolled", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryPregnanciesCompleted", 0x19uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryUpdatingFeaturesCompleted", 0x1EuLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdatePregnanciesCompleted", 0x1AuLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CheckValidPregnanciesCompleted", 0x1EuLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchorCompleted", 0x1FuLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeaturesCompleted", 0x1EuLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DemographicsPeriodsCompleted", 0x1CuLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeaturizationCompleted", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingCompleted", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginCompleted", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 13:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginStopped", 0xDuLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

NightingaleTraining::NightingaleDReachLocation_optional __swiftcall NightingaleDReachLocation.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
    case 5:
      return 4;
    case 6:
      return 5;
    case 7:
      return 6;
    case 8:
      return 7;
    case 9:
      return 8;
    case 10:
      return 9;
    case 11:
      return 10;
    case 12:
      return 11;
    case 13:
      return 12;
    case 14:
      return 13;
  }

  return 14;
}

uint64_t NightingaleDReachLocation.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v2 = 1;
      break;
    case 2:
      v2 = 3;
      break;
    case 3:
      v2 = 4;
      break;
    case 4:
      v2 = 5;
      break;
    case 5:
      v2 = 6;
      break;
    case 6:
      v2 = 7;
      break;
    case 7:
      v2 = 8;
      break;
    case 8:
      v2 = 9;
      break;
    case 9:
      v2 = 10;
      break;
    case 10:
      v2 = 11;
      break;
    case 11:
      v2 = 12;
      break;
    case 12:
      v2 = 13;
      break;
    case 13:
      v2 = 14;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NightingaleDReachLocation and conformance NightingaleDReachLocation()
{
  v2 = lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation;
  if (!lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation;
  if (!lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation;
  if (!lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation);
    return WitnessTable;
  }

  return v2;
}

NightingaleTraining::NightingaleDReachLocation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance NightingaleDReachLocation@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::NightingaleDReachLocation_optional *a2@<X8>)
{
  result.value = NightingaleDReachLocation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NightingaleDReachLocation@<X0>(uint64_t *a1@<X8>)
{
  result = NightingaleDReachLocation.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t one-time initialization function for keyMetricsLoss()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Loss", 4uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsLoss = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Loss", 4uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsLoss = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsLoss.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsLoss != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsLoss;
}

uint64_t static NightingaleDPFLRunner.keyMetricsLoss.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsLoss.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyNumSlices()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumSlices", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyNumSlices = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumSlices", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyNumSlices = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor()
{
  if (one-time initialization token for keyNumSlices != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyNumSlices;
}

uint64_t static NightingaleDPFLRunner.keyNumSlices.getter()
{
  v1 = *NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsLossBeforeTraining()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LossBeforeTraining", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsLossBeforeTraining = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LossBeforeTraining", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsLossBeforeTraining = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsLossBeforeTraining != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsLossBeforeTraining;
}

uint64_t static NightingaleDPFLRunner.keyMetricsLossBeforeTraining.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleTrackingCheckDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleTrackingCheckDurationS", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleTrackingCheckDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfAllPregnancies()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfAllPregnancies", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfAllPregnancies != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies;
}

uint64_t static NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfPregnancyInitializerFailed()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfPregnancyInitializerFailed", 0x22uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfPregnancyInitializerFailed != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed;
}

uint64_t static NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsPregnanciesQueryDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PregnanciesQueryDurationS", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsPregnanciesQueryDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsUpdatingFeaturesQueryDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdatingFeaturesQueryDurationS", 0x1EuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsUpdatingFeaturesQueryDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsUpdatePregnanciesDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdatePregnanciesDurationS", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsUpdatePregnanciesDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfValidPregnancies()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfValidPregnancies", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfValidPregnancies != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies;
}

uint64_t static NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsUpdateSliceDeltaAnchorDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchorDurationS", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsUpdateSliceDeltaAnchorDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsRequiredFeaturesQueryDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequiredFeaturesQueryDurationS", 0x1EuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsRequiredFeaturesQueryDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSHRDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SHRDurationS", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsSHRDurationS = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SHRDurationS", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsSHRDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSHRDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsSHRDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsSHRDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsFeaturizationDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeaturizationDurationS", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsFeaturizationDurationS = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeaturizationDurationS", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsFeaturizationDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFeaturizationDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsFeaturizationDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsBMIDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIDurationS", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsBMIDurationS = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIDurationS", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsBMIDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsBMIDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsBMIDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsBMIDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsTrainingDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingDurationS", 0x11uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsTrainingDurationS = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingDurationS", 0x11uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsTrainingDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsTrainingDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsTrainingDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsTrainingDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsE2EDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("E2EPluginDurationS", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsE2EDurationS = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("E2EPluginDurationS", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsE2EDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsE2EDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsE2EDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsE2EDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsL2Norm()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("L2Norm", 6uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsL2Norm = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("L2Norm", 6uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsL2Norm = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsL2Norm.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsL2Norm != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsL2Norm;
}

uint64_t static NightingaleDPFLRunner.keyMetricsL2Norm.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsL2Norm.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsIterationElapsedTime()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IterationElapsedTime", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsIterationElapsedTime = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IterationElapsedTime", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsIterationElapsedTime = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsIterationElapsedTime != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsIterationElapsedTime;
}

uint64_t static NightingaleDPFLRunner.keyMetricsIterationElapsedTime.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsInvalidDurationPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InvalidDurationPregnanciesCount", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsInvalidDurationPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsInvalidLMPDeltaPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InvalidLMPDeltaPregnanciesCount", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsInvalidLMPDeltaPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsContainsFlowPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ContainsFlowPregnanciesCount", 0x1CuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsContainsFlowPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsInvalidLMPPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InvalidLMPPregnanciesCount", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsInvalidLMPPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsInvalidEndPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InvalidEndPregnanciesCount", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsInvalidEndPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsInvalidStartSourcePregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InvalidStartSourceCount", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsInvalidStartSourcePregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsFailedToQueryUpdatingFeaturesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedToQueryUpdatingFeaturesCount", 0x22uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFailedToQueryUpdatingFeaturesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsFailedToQuerySWTCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedToQuerySWTCount", 0x15uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFailedToQuerySWTCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsFailedToGetHistoricalPeriodsCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedToGetHistoricalPeriodsCount", 0x21uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFailedToGetHistoricalPeriodsCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsOverlappingPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OverlappingPregnanciesCount", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsOverlappingPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t NightingaleDPFLRunner.performanceMeasure.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t NightingaleDPFLRunner.performanceMeasure.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t NightingaleDPFLRunner.taskId.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t NightingaleDPFLRunner.taskId.setter(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  swift_endAccess();
}

uint64_t NightingaleDPFLRunner.useCase.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  v4 = *(v1 + 40);
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t NightingaleDPFLRunner.useCase.setter(char *a1)
{
  v3 = *a1;
  swift_beginAccess();
  *(v1 + 40) = v3;
  return swift_endAccess();
}

uint64_t outlined init with copy of HealthDataQuery(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t NightingaleDPFLRunner.__allocating_init(useCase:)(char *a1)
{
  v7 = 0;
  v7 = *a1;
  v6 = v7;
  v3 = type metadata accessor for HealthDataStoreQuery();
  type metadata accessor for HKHealthStore();
  v1.super.isa = HKHealthStore.__allocating_init()().super.isa;
  v5[3] = v3;
  v5[4] = &protocol witness table for HealthDataStoreQuery;
  v5[0] = HealthDataStoreQuery.__allocating_init(store:)(v1.super.isa);
  v4 = NightingaleDPFLRunner.__allocating_init(useCase:query:)(&v6, v5);

  v8 = v4;

  return v4;
}

unint64_t type metadata accessor for HKHealthStore()
{
  v2 = lazy cache variable for type metadata for HKHealthStore;
  if (!lazy cache variable for type metadata for HKHealthStore)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKHealthStore);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t NightingaleDPFLRunner.init(useCase:query:)(char *a1, void *a2)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = *a1;
  v4 = v10;
  v9 = a2;
  v8 = v2;
  *(v2 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  type metadata accessor for PerformanceMeasure();
  *(v6 + 16) = PerformanceMeasure.__allocating_init()();
  *(v6 + 40) = v4;
  outlined init with copy of HealthDataQuery(a2, v7);
  outlined init with take of HealthDataQuery(v7, (v6 + 48));
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t NightingaleDPFLRunner.performCustomConsent(taskPreferences:)(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  outlined init with copy of HealthDataQuery(v1 + 48, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v5 + 40))(0, 0, v4);
  if (!v3)
  {
    MEMORY[0x277D82BD8](v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 3536) = v4;
  *(v5 + 3528) = a1;
  *(v5 + 2632) = v5;
  *(v5 + 2640) = 0;
  *(v5 + 2520) = 0;
  *(v5 + 2528) = 0;
  *(v5 + 2648) = 0;
  *(v5 + 2656) = 0;
  *(v5 + 2664) = 0;
  *(v5 + 2672) = 0;
  *(v5 + 2680) = 0;
  *(v5 + 2688) = 0;
  *(v5 + 2696) = 0;
  *(v5 + 2704) = 0;
  *(v5 + 2712) = 0;
  *(v5 + 4352) = 0;
  *(v5 + 2536) = 0;
  *(v5 + 2544) = 0;
  *(v5 + 4240) = 0;
  *(v5 + 4248) = 0;
  *(v5 + 2720) = 0;
  *(v5 + 2728) = 0;
  *(v5 + 2736) = 0;
  *(v5 + 2744) = 0;
  *(v5 + 2752) = 0;
  *(v5 + 2760) = 0;
  *(v5 + 2768) = 0;
  *(v5 + 2776) = 0;
  *(v5 + 2784) = 0;
  *(v5 + 2792) = 0;
  *(v5 + 2800) = 0;
  *(v5 + 2808) = 0;
  *(v5 + 2816) = 0;
  *(v5 + 2824) = 0;
  *(v5 + 2832) = 0;
  *(v5 + 4256) = 0;
  *(v5 + 2840) = 0;
  *(v5 + 2848) = 0;
  *(v5 + 2856) = 0;
  *(v5 + 2872) = 0;
  *(v5 + 2888) = 0;
  *(v5 + 2904) = 0;
  *(v5 + 2472) = 0;
  *(v5 + 2480) = 0;
  *(v5 + 2488) = 0;
  *(v5 + 2912) = 0;
  *(v5 + 2920) = 0;
  *(v5 + 2928) = 0;
  *(v5 + 2936) = 0;
  *(v5 + 2952) = 0;
  *(v5 + 2968) = 0;
  *(v5 + 2984) = 0;
  *(v5 + 3000) = 0;
  *(v5 + 3016) = 0;
  *(v5 + 3032) = 0;
  *(v5 + 3048) = 0;
  *(v5 + 3056) = 0;
  *(v5 + 3064) = 0;
  *(v5 + 4264) = 0;
  *(v5 + 4272) = 0;
  *(v5 + 4280) = 0;
  *(v5 + 2428) = 0;
  *(v5 + 3096) = 0;
  *(v5 + 3112) = 0;
  *(v5 + 3120) = 0;
  *(v5 + 3128) = 0;
  *(v5 + 3136) = 0;
  *(v5 + 3144) = 0;
  *(v5 + 4288) = 0;
  *(v5 + 4296) = 0;
  *(v5 + 3152) = 0;
  *(v5 + 2568) = 0;
  *(v5 + 2576) = 0;
  *(v5 + 4304) = 0;
  *(v5 + 3168) = 0;
  *(v5 + 4312) = 0;
  *(v5 + 4320) = 0;
  *(v5 + 3208) = 0;
  *(v5 + 3216) = 0;
  *(v5 + 2496) = 0;
  *(v5 + 2504) = 0;
  *(v5 + 2512) = 0;
  *(v5 + 3264) = 0;
  *(v5 + 3272) = 0;
  *(v5 + 4328) = 0;
  *(v5 + 4336) = 0;
  *(v5 + 4344) = 0;
  *(v5 + 2452) = 0;
  *(v5 + 3344) = 0;
  *(v5 + 3352) = 0;
  *(v5 + 3368) = 0;
  *(v5 + 3384) = 0;
  *(v5 + 3456) = 0;
  v6 = type metadata accessor for Logger();
  *(v5 + 3544) = v6;
  *(v5 + 3552) = *(v6 - 8);
  *(v5 + 3560) = swift_task_alloc();
  *(v5 + 3568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24PrivateFederatedLearning8PFLErrorOSgMd, &_s24PrivateFederatedLearning8PFLErrorOSgMR);
  *(v5 + 3576) = swift_task_alloc();
  v7 = type metadata accessor for PFLError();
  *(v5 + 3584) = v7;
  *(v5 + 3592) = *(v7 - 8);
  *(v5 + 3600) = swift_task_alloc();
  *(v5 + 3608) = swift_task_alloc();
  v8 = type metadata accessor for DateComponents();
  *(v5 + 3616) = v8;
  *(v5 + 3624) = *(v8 - 8);
  *(v5 + 3632) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  *(v5 + 3640) = swift_task_alloc();
  v9 = type metadata accessor for PFLStats.StdMethod();
  *(v5 + 3648) = v9;
  *(v5 + 3656) = *(v9 - 8);
  *(v5 + 3664) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v5 + 3672) = v10;
  *(v5 + 3680) = *(v10 - 8);
  *(v5 + 3688) = swift_task_alloc();
  *(v5 + 2640) = a1;
  *(v5 + 2520) = a2;
  *(v5 + 2528) = a3;
  *(v5 + 2648) = a4;
  *(v5 + 2656) = v4;

  return MEMORY[0x2822009F8](NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v32 = *(v0 + 3536);
  v34 = *(v0 + 3528);
  *(v0 + 2632) = v0;
  v1 = PFLTask.taskId.getter();
  NightingaleDPFLRunner.taskId.setter(v1, v2);
  type metadata accessor for HyperParams();
  dispatch thunk of PFLTask.recipe.getter();
  v3 = _dictionaryUpCast<A, B, C, D>(_:)();
  v33 = HyperParams.__allocating_init(recipe:)(v3);
  *(v0 + 3696) = v33;

  *(v0 + 2664) = v33;
  v4 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_pluginStarted, v4);
  v5 = PFLTask.iterationElapsedTime()();
  *(v0 + 3704) = v5;
  *(v0 + 2672) = v5;
  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1);
  dispatch thunk of PerformanceMeasure.start(_:)();

  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CheckCycleTracking", 0x12uLL, 1);
  dispatch thunk of PerformanceMeasure.start(_:)();

  v35 = swift_task_alloc();
  v35[2] = v32;
  v35[3] = v33;
  v35[4] = v34;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo46NgtMenstrualAlgorithmsDayStreamProcessorConfigC_S2dSo0abc7MLModelG0CtMd, &_sSo46NgtMenstrualAlgorithmsDayStreamProcessorConfigC_S2dSo0abc7MLModelG0CtMR);
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(2, 1, v35, v6, v0 + 1952);

  v27 = *(v31 + 1952);
  *(v31 + 3712) = v27;
  v7 = *(v31 + 1960);
  *(v31 + 3720) = v7;
  v8 = *(v31 + 1968);
  *(v31 + 3728) = v8;
  v28 = *(v31 + 1976);
  *(v31 + 3736) = v28;
  *(v31 + 2680) = v27;
  *(v31 + 2688) = v7;
  *(v31 + 2696) = v8;
  *(v31 + 2704) = v28;
  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CheckCycleTracking", 0x12uLL, 1);
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v29 = v9;
  *(v31 + 3744) = v9;

  *(v31 + 2712) = v29;
  v10 = HyperParams.pflTaskType.getter();
  *(v31 + 4359) = v10;
  *(v31 + 4352) = v10;
  v30 = PFLTask.trainingModelPath(taskType:hyperParams:)(v10, v33);
  *(v31 + 3752) = v30;
  *(v31 + 3760) = v11;
  v24 = *(v31 + 3688);
  v23 = *(v31 + 3672);
  v22 = *(v31 + 3680);
  *(v31 + 2536) = v30;
  *(v31 + 2544) = v11;
  v21 = HyperParams.maximumDays.getter();
  *(v31 + 4240) = v21;
  Date.init()();
  *&v12 = Date.toJulianDay()();
  v25 = v12;
  *(v31 + 4260) = v12;
  v26 = BYTE4(v12);
  (*(v22 + 8))(v24, v23);
  if ((v26 & 1) != 0 || (*(v31 + 4248) = v25, v21 >= v25))
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v16 = 14;
    swift_willThrow();

    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v27);

    v17 = *(*(v31 + 2632) + 8);

    return v17();
  }

  else
  {
    v18 = *(v31 + 3536);
    *(v31 + 3768) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd, &_ss6UInt32V_s5UInt8VtMR);
    _allocateUninitializedArray<A>(_:)();
    *(v31 + 2720) = Dictionary.init(dictionaryLiteral:)();
    _allocateUninitializedArray<A>(_:)();
    *(v31 + 2728) = Dictionary.init(dictionaryLiteral:)();
    *(v31 + 3776) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SbtMd, &_ss6UInt32V_SbtMR);
    _allocateUninitializedArray<A>(_:)();
    *(v31 + 2736) = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_Says6UInt32V5start_AD3endtGtMd, &_ss5UInt8V_Says6UInt32V5start_AD3endtGtMR);
    _allocateUninitializedArray<A>(_:)();
    *(v31 + 3784) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
    *(v31 + 2744) = Dictionary.init(dictionaryLiteral:)();
    *(v31 + 3792) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_Sf_SSttMd, &_ss6UInt32V_Sf_SSttMR);
    _allocateUninitializedArray<A>(_:)();
    *(v31 + 3800) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd, &_sSf_SStMR);
    *(v31 + 2752) = Dictionary.init(dictionaryLiteral:)();
    *(v31 + 2760) = Dictionary.init()();
    *(v31 + 2768) = Dictionary.init()();
    *(v31 + 2776) = Dictionary.init()();
    *(v31 + 2784) = Dictionary.init()();
    *(v31 + 2792) = Dictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_Sf15periodStartMean_Sf0bC3StdttMd, &_ss6UInt32V_Sf15periodStartMean_Sf0bC3StdttMR);
    _allocateUninitializedArray<A>(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd, &_sSf15periodStartMean_Sf0aB3StdtMR);
    *(v31 + 2800) = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd, &_ss6UInt32V5start_AB3endtMR);
    *(v31 + 2808) = _allocateUninitializedArray<A>(_:)();
    NightingaleDPFLRunner.performanceMeasure.getter();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryPregnancies", 0x10uLL, 1);
    dispatch thunk of PerformanceMeasure.start(_:)();

    v19 = swift_task_alloc();
    *(v31 + 3808) = v19;
    *(v19 + 16) = v18;
    *(v19 + 24) = v33;
    v20 = swift_task_alloc();
    *(v31 + 3816) = v20;
    *(v20 + 16) = &async function pointer to partial apply for closure #2 in NightingaleDPFLRunner.run(task:useCase:context:);
    *(v20 + 24) = v19;
    v13 = swift_task_alloc();
    *(v31 + 3824) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SiSay19NightingaleTraining9Pregnancy_pGs6UInt32VtMd, &_sSi_SiSay19NightingaleTraining9Pregnancy_pGs6UInt32VtMR);
    *v13 = *(v31 + 2632);
    v13[1] = NightingaleDPFLRunner.run(task:useCase:context:);

    return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v31 + 2400, 3, 1, &async function pointer to partial apply for thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error), v20, v14);
  }
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 3832) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v16 = *(v0 + 4260);
  v9 = *(v0 + 3736);
  v11 = *(v0 + 3728);
  v10 = *(v0 + 3720);
  v12 = *(v0 + 3712);
  v13 = *(v0 + 3696);
  v14 = *(v0 + 3536);
  *(v0 + 2632) = v0;
  v1 = *(v0 + 2400);
  *(v0 + 3840) = v1;
  v2 = *(v0 + 2408);
  *(v0 + 3848) = v2;
  v8 = *(v0 + 2416);
  *(v0 + 3856) = v8;
  v15 = *(v0 + 2424);
  *(v0 + 4268) = v15;
  *(v0 + 2816) = v1;
  *(v0 + 2824) = v2;
  *(v0 + 2832) = v8;
  *(v0 + 4256) = v15;
  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryPregnancies", 0x10uLL, 1);
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v7 = v3;
  *(v0 + 3864) = v3;

  *(v0 + 2840) = v7;

  *(v0 + 2848) = v8;
  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryUpdatingFeatures", 0x15uLL, 1);
  dispatch thunk of PerformanceMeasure.start(_:)();

  type metadata accessor for CalendarPeriodPrediction();
  MEMORY[0x277D82BE0](v12);
  MEMORY[0x277D82BE0](v9);
  v4 = CalendarPeriodPrediction.__allocating_init(config:mlConfig:urCycleLength:urPeriodLength:)(v12, v9, v10, v11);
  *(v0 + 3872) = v4;
  *(v0 + 2856) = v4;

  v19 = swift_task_alloc();
  *(v0 + 3880) = v19;
  *(v19 + 16) = v13;
  *(v19 + 24) = v14;
  *(v19 + 32) = v15;
  *(v19 + 36) = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd, &_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMR);
  *(v0 + 3888) = v20;
  v18 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
  v5 = swift_task_alloc();
  *(v17 + 3896) = v5;
  *v5 = *(v17 + 2632);
  v5[1] = NightingaleDPFLRunner.run(task:useCase:context:);

  return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v17 + 2864, 4, v18 & 1, &async function pointer to partial apply for closure #3 in NightingaleDPFLRunner.run(task:useCase:context:), v19, v20);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 3904) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4080) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 2632) = v0;
  v47 = *(v0 + 3336);
  *(v0 + 3352) = v47;
  *(v0 + 4349) = 7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd, &_s19NightingaleTraining21HealthDataQueryResult_pMR);
  v1 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v0 + 4349, v47, &type metadata for HealthDataRawSampleType, v48, v1);
  if (*(v0 + 1736))
  {
    v45 = *(v46 + 1736);
    v43 = *(v46 + 1744);
    __swift_project_boxed_opaque_existential_1((v46 + 1712), v45);
    v44 = *(v43 + 16);
    *(v46 + 2200) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0((v46 + 2176));
    v44(v45, v43);
    __swift_destroy_boxed_opaque_existential_1((v46 + 1712));
  }

  else
  {
    outlined destroy of Pregnancy?((v46 + 1712));
    *(v46 + 2176) = 0;
    *(v46 + 2184) = 0;
    *(v46 + 2192) = 0;
    *(v46 + 2200) = 0;
  }

  if (*(v46 + 2200))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd, &_sSDys6UInt32VSf_SStGMR);
    if (swift_dynamicCast())
    {
      v42 = *(v46 + 3376);
    }

    else
    {
      v42 = 0;
    }

    v41 = v42;
  }

  else
  {
    outlined destroy of Pregnancy?((v46 + 2176));
    v41 = 0;
  }

  *(v46 + 3360) = v41;
  if (!*(v46 + 3360))
  {
    _allocateUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    if (*(v46 + 3360))
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }
  }

  v2 = *(v46 + 4080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd, &_sSDys6UInt32VSf_SStGMR);
  result = Dictionary.merge(_:uniquingKeysWith:)();
  if (!v2)
  {
    v40 = *(v46 + 4276);
    v32 = *(v46 + 3920);
    v36 = *(v46 + 3800);
    v39 = *(v46 + 4056);

    NightingaleDPFLRunner.performanceMeasure.getter();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1);
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v31 = v4;

    *(v46 + 3368) = v31;
    v5 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v5);
    v33 = *(v46 + 2848);

    v34 = MEMORY[0x25F8895B0](v33, v32);

    v35 = *(v46 + 2936);

    v37 = *(v46 + 2752);

    v38 = MEMORY[0x25F889130](v37, MEMORY[0x277D84CC0], v36, MEMORY[0x277D84CD0]);

    result = v38;
    if (v40 < v39)
    {
      __break(1u);
    }

    else
    {
      v18 = *(v46 + 3864);
      v22 = *(v46 + 3848);
      v20 = *(v46 + 3840);
      v26 = *(v46 + 3760);
      v25 = *(v46 + 3752);
      v17 = *(v46 + 3744);
      v19 = *(v46 + 3704);
      v28 = *(v46 + 3696);
      *(v46 + 4252) = v40 - v39;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      Float.init<A>(_:)();
      v27 = (v38 / v6) * 100.0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      _allocateUninitializedArray<A>(_:)();
      v24 = v7;
      v8 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v8, v24);
      v23 = MEMORY[0x277D839F8];
      v24[5] = MEMORY[0x277D839F8];
      v24[2] = v17;
      Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(Duration, v24 + 6);
      v24[11] = v23;
      v24[8] = v18;
      v10 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
      outlined init with copy of String(v10, v24 + 12);
      v24[17] = v23;
      v24[14] = v19;
      v11 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
      outlined init with copy of String(v11, v24 + 18);
      v21 = MEMORY[0x277D83B88];
      v24[23] = MEMORY[0x277D83B88];
      v24[20] = v20;
      v12 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
      outlined init with copy of String(v12, v24 + 24);
      v24[29] = v21;
      v24[26] = v22;
      v13 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v13, v24 + 30);
      v24[35] = v23;
      v24[32] = v31;
      _finalizeUninitializedArray<A>(_:)();
      v29 = Dictionary.init(dictionaryLiteral:)();
      v30 = NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)(v28, v25, v26, v34, v35, v29, v27);
      v15 = *(v46 + 3736);
      v16 = *(v46 + 3712);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);

      v14 = *(*(v46 + 2632) + 8);

      return v14(v30);
    }
  }

  return result;
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4104) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4136) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v459 = v0;
  v424 = v0;
  v425 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v426 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v427 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v428 = &async function pointer to partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  v429 = &async function pointer to partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  v0[329] = v0;
  v432 = v0 + 330;
  v450 = v0 + 315;
  v451 = v0 + 331;
  v452 = v0 + 332;
  v453 = v0 + 333;
  v454 = v0 + 334;
  v455 = v0 + 335;
  v456 = v0 + 336;
  v457 = v0 + 337;
  v449 = v0 + 338;
  v433 = v0 + 532;
  v434 = v0 + 355;
  v435 = v0 + 357;
  v436 = v0 + 361;
  v437 = v0 + 364;
  v438 = v0 + 365;
  v439 = v0 + 369;
  v431 = v0 + 373;
  v440 = v0 + 375;
  v441 = v0 + 377;
  v442 = v0 + 379;
  v443 = v0 + 381;
  v444 = v0 + 382;
  v445 = v0 + 383;
  v446 = v0 + 533;
  v447 = v0 + 534;
  v448 = v0 + 535;
  v458 = v0 + 2428;
  v430 = v0[517];
  v0[389] = 0;
  if (HyperParams.isSHRRequired()())
  {
    v418 = *(v424 + 1075);
    v419 = *(v424 + 1065);
    v417 = v424[462];
    v416 = v424[442];

    v1 = swift_task_alloc();
    v2 = v416;
    v3 = v417;
    v4 = v418;
    v5 = v419;
    v6 = v424;
    v421 = v1;
    v424[518] = v1;
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    *(v1 + 32) = v4;
    *(v1 + 36) = v5;
    *(v1 + 40) = v6 + 348;
    *(v1 + 48) = v6 + 349;
    *(v1 + 56) = v6 + 389;
    v422 = MEMORY[0x277D84F78] + 8;
    v420 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
    v7 = swift_task_alloc();
    v8 = v424;
    v9 = v420;
    v10 = v429;
    v11 = v421;
    v12 = v422;
    v13 = v7;
    v14 = v423;
    v424[519] = v13;
    *v13 = v8[329];
    v13[1] = NightingaleDPFLRunner.run(task:useCase:context:);
    v15 = 8;
    v16 = v9 & 1;

    return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v14, v15, v16, v10, v11, v12);
  }

  v389 = v424 + 330;
  v407 = v424 + 315;
  v408 = v424 + 331;
  v409 = v424 + 332;
  v410 = v424 + 333;
  v411 = v424 + 334;
  v412 = v424 + 335;
  v413 = v424 + 336;
  v414 = v424 + 337;
  v406 = v424 + 338;
  v390 = v424 + 532;
  v391 = v424 + 355;
  v392 = v424 + 357;
  v393 = v424 + 361;
  v394 = v424 + 364;
  v395 = v424 + 365;
  v396 = v424 + 369;
  v388 = v424 + 373;
  v397 = v424 + 375;
  v398 = v424 + 377;
  v399 = v424 + 379;
  v400 = v424 + 381;
  v401 = v424 + 382;
  v402 = v424 + 383;
  v403 = v424 + 533;
  v404 = v424 + 534;
  v405 = v424 + 535;
  v415 = v424 + 2428;
  if (HyperParams.isCalendarAlgorithmRequired()())
  {
    v381 = *(v424 + 1073);
    v379 = *(v424 + 1071);
    v384 = v424[484];
    v382 = *(v424 + 1065);
    v380 = v424[462];
    v383 = v424[442];

    v18 = swift_task_alloc();
    v19 = v379;
    v20 = v380;
    v21 = v381;
    v22 = v382;
    v23 = v383;
    v24 = v384;
    v25 = v424;
    v386 = v18;
    v424[521] = v18;
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v21;
    *(v18 + 36) = v22;
    *(v18 + 40) = v23;
    *(v18 + 48) = v25 + 340;
    *(v18 + 56) = v25 + 341;
    *(v18 + 64) = v25 + 342;
    *(v18 + 72) = v25 + 343;
    *(v18 + 80) = v24;
    *(v18 + 88) = v25 + 350;
    *(v18 + 96) = v25 + 351;
    v387 = MEMORY[0x277D84F78] + 8;
    v385 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
    v26 = swift_task_alloc();
    v27 = v424;
    v28 = v385;
    v10 = v428;
    v11 = v386;
    v12 = v387;
    v29 = v26;
    v14 = v423;
    v424[522] = v29;
    *v29 = v27[329];
    v29[1] = NightingaleDPFLRunner.run(task:useCase:context:);
    v15 = 8;
    v16 = v28 & 1;

    return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v14, v15, v16, v10, v11, v12);
  }

  v351 = v424 + 330;
  v369 = v424 + 315;
  v370 = v424 + 331;
  v371 = v424 + 332;
  v372 = v424 + 333;
  v373 = v424 + 334;
  v374 = v424 + 335;
  v375 = v424 + 336;
  v376 = v424 + 337;
  v377 = v424 + 338;
  v368 = v424 + 339;
  v352 = v424 + 355;
  v353 = v424 + 357;
  v354 = v424 + 361;
  v355 = v424 + 364;
  v356 = v424 + 365;
  v357 = v424 + 369;
  v358 = v424 + 371;
  v344 = v424 + 375;
  v359 = v424 + 377;
  v360 = v424 + 379;
  v361 = v424 + 381;
  v362 = v424 + 382;
  v363 = v424 + 383;
  v364 = v424 + 533;
  v365 = v424 + 534;
  v366 = v424 + 535;
  v367 = v424 + 2428;
  v349 = v424[462];
  v341 = v424[442];
  v339 = NightingaleDPFLRunner.performanceMeasure.getter();
  v345 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v340 = v30;

  v378 = v424 + 390;
  v424[390] = v340;
  v31 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v31);
  v343 = NightingaleDPFLRunner.performanceMeasure.getter();
  v342 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v345 & 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v32 = HyperParams.metricsProcessEngine.getter();
  v33 = v424;
  v347 = v424 + 4309;
  *(v424 + 4309) = v32 & v345;
  v346 = v33 + 4310;
  *(v33 + 4310) = 1;
  v348 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  v350 = == infix<A>(_:_:)();

  if (v350)
  {
    v337 = 1;
  }

  else
  {
    v34 = HyperParams.featurizerEngine.getter();
    v35 = v424;
    *(v424 + 4311) = v34 & 1;
    *(v35 + 4316) = 1;
    v337 = == infix<A>(_:_:)();
  }

  v336 = v337;

  if (v337)
  {
    static HIDMorpheusExtensions.extendMorpheus()();
    v335 = v430;
    if (v430)
    {
      v141 = v424[494];
      v142 = v424[484];
      v143 = v424[482];
      v144 = v424[470];
      v145 = v424[467];
      v146 = v424[464];
      v147 = v424[462];
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v145);
      MEMORY[0x277D82BD8](v146);

      v165 = v335;
      goto LABEL_35;
    }

    static Math.extendMorpheus()();
    v334 = 0;
    v333 = 0;
  }

  else
  {
    v333 = v430;
  }

  v36 = v333;
  v329 = *(v424 + 1065);
  v328 = v424[462];
  v325 = v424[442];
  v327 = v424[441];
  type metadata accessor for Featurizer();
  v37 = Featurizer.__allocating_init()();
  v38 = v424;
  v326 = v37;
  v424[524] = v37;
  v330 = v38 + 391;
  v38[391] = v37;

  v39 = swift_task_alloc();
  v40 = v326;
  v41 = v327;
  v42 = v328;
  v43 = v329;
  v44 = v424;
  v331 = v39;
  v424[525] = v39;
  *(v39 + 16) = v40;
  *(v39 + 24) = v41;
  *(v39 + 32) = v44 + 366;
  *(v39 + 40) = v44 + 344;
  *(v39 + 48) = v44 + 345;
  *(v39 + 56) = v44 + 347;
  *(v39 + 64) = v44 + 346;
  *(v39 + 72) = v44 + 348;
  *(v39 + 80) = v44 + 349;
  *(v39 + 88) = v44 + 350;
  *(v39 + 96) = v44 + 351;
  *(v39 + 104) = v44 + 343;
  *(v39 + 112) = v42;
  *(v39 + 120) = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd, &_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMR);
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v331, v45, (v424 + 2));
  v332 = v36;
  if (v36)
  {
    v134 = v424[494];
    v135 = v424[484];
    v136 = v424[482];
    v137 = v424[470];
    v138 = v424[467];
    v139 = v424[464];
    v140 = v424[462];
    v133 = v424[441];

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](v139);

    v165 = v332;
    goto LABEL_35;
  }

  v263 = v424[514];
  v261 = v424[505];
  v291 = v424[504];
  v288 = v424[503];
  v286 = v424[502];
  v284 = v424[501];
  v282 = v424[500];
  v280 = v424[499];
  v278 = v424[498];
  v276 = v424[495];
  v259 = v424[489];
  v257 = v424[483];
  v274 = v424[481];
  v272 = v424[480];
  v255 = v424[468];
  v270 = v424[463];
  v252 = v424[462];
  v251 = v424[441];

  v294 = v424 + 23;
  v317 = v424 + 2;
  memcpy(v424 + 23, v424 + 2, 0xA8uLL);
  v254 = NightingaleDPFLRunner.performanceMeasure.getter();
  v253 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v267 = v46;

  v318 = v424 + 392;
  v424[392] = v267;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  v293 = _allocateUninitializedArray<A>(_:)();
  v290 = v47;
  v48 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v48, v290);
  v49 = v255;
  v50 = v290;
  v269 = MEMORY[0x277D839F8];
  v290[5] = MEMORY[0x277D839F8];
  v50[2] = v49;
  v256 = v50 + 6;
  Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(Duration, v256);
  v52 = v257;
  v53 = v290;
  v290[11] = v269;
  v53[8] = v52;
  v258 = v53 + 12;
  v54 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v54, v258);
  v55 = v259;
  v56 = v290;
  v290[17] = v269;
  v56[14] = v55;
  v260 = v56 + 18;
  updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
  outlined init with copy of String(updated, v260);
  v58 = v261;
  v59 = v290;
  v290[23] = v269;
  v59[20] = v58;
  v262 = v59 + 24;
  v60 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v60, v262);
  v61 = v263;
  v62 = v290;
  v290[29] = v269;
  v62[26] = v61;
  v264 = v62 + 30;
  v63 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v63, v264);
  v64 = v290;
  v65 = v424[389];
  v290[35] = v269;
  v64[32] = v65;
  v265 = v64 + 36;
  v66 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v66, v265);
  v67 = v340;
  v68 = v290;
  v290[41] = v269;
  v68[38] = v67;
  v266 = v68 + 42;
  v69 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v69, v266);
  v70 = v267;
  v71 = v290;
  v290[47] = v269;
  v71[44] = v70;
  v268 = v71 + 48;
  v72 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
  outlined init with copy of String(v72, v268);
  v73 = v270;
  v74 = v290;
  v290[53] = v269;
  v74[50] = v73;
  v271 = v74 + 54;
  v75 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v75, v271);
  v76 = v272;
  v77 = v290;
  v295 = MEMORY[0x277D83B88];
  v290[59] = MEMORY[0x277D83B88];
  v77[56] = v76;
  v273 = v77 + 60;
  v78 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
  outlined init with copy of String(v78, v273);
  v79 = v274;
  v80 = v290;
  v290[65] = v295;
  v80[62] = v79;
  v275 = v80 + 66;
  v81 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v81, v275);
  v82 = v276;
  v83 = v290;
  v290[71] = v295;
  v83[68] = v82;
  v277 = v83 + 72;
  v84 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v84, v277);
  v85 = v278;
  v86 = v290;
  v290[77] = v295;
  v86[74] = v85;
  v279 = v86 + 78;
  v87 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v87, v279);
  v88 = v280;
  v89 = v290;
  v290[83] = v295;
  v89[80] = v88;
  v281 = v89 + 84;
  v90 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v90, v281);
  v91 = v282;
  v92 = v290;
  v290[89] = v295;
  v92[86] = v91;
  v283 = v92 + 90;
  v93 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v93, v283);
  v94 = v284;
  v95 = v290;
  v290[95] = v295;
  v95[92] = v94;
  v285 = v95 + 96;
  v96 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v96, v285);
  v97 = v286;
  v98 = v290;
  v290[101] = v295;
  v98[98] = v97;
  v287 = v98 + 102;
  v99 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v99, v287);
  v100 = v288;
  v101 = v290;
  v290[107] = v295;
  v101[104] = v100;
  v289 = v101 + 108;
  started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(started, v289);
  v103 = v290;
  v104 = v291;
  v290[113] = v295;
  v103[110] = v104;
  _finalizeUninitializedArray<A>(_:)();
  v320 = MEMORY[0x277D837D0];
  v321 = MEMORY[0x277D84F70] + 8;
  v322 = MEMORY[0x277D837E0];
  v319 = Dictionary.init(dictionaryLiteral:)();
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v294, v424 + 44);
  v296 = v424[23];
  v297 = v424[24];
  v298 = v424[25];
  v299 = v424[26];
  v300 = v424[27];
  v301 = v424[28];
  v302 = v424[29];
  v303 = v424[30];
  v304 = v424[31];
  v305 = v424[32];
  v306 = v424[33];
  v307 = v424[34];
  v308 = v424[35];
  v309 = v424[36];
  v310 = v424[37];
  v311 = v424[38];
  v312 = v424[39];
  v313 = v424[40];
  v314 = v424[41];
  v315 = v424[42];
  v316 = v424[43];
  _dictionaryUpCast<A, B, C, D>(_:)();
  v323 = Dictionary.merging(_:uniquingKeysWith:)();
  v424[526] = v323;
  v324 = 0;
  v249 = v424[506];
  v248 = *(v424 + 4359);

  v105 = v248;
  v106 = v424;
  v250 = v424 + 393;
  v424[393] = v323;
  *(v106 + 4317) = v105;
  *(v106 + 4318) = 0;
  if (== infix<A>(_:_:)())
  {
    v107 = v324;
    v222 = *(v424 + 1065);
    v218 = v424[470];
    v217 = v424[469];
    v219 = v424[462];
    v223 = v424[441];
    v220 = v424[351];

    v221 = v424[356];

    outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v424 + 23, v424 + 128);
    v224 = v424[23];
    v242 = v424[24];
    v244 = v424[25];
    v245 = v424[26];
    v225 = v424[27];
    v226 = v424[28];
    v227 = v424[29];
    v228 = v424[30];
    v229 = v424[31];
    v230 = v424[32];
    v231 = v424[33];
    v232 = v424[34];
    v233 = v424[35];
    v234 = v424[36];
    v235 = v424[37];
    v236 = v424[38];
    v237 = v424[39];
    v238 = v424[40];
    v239 = v424[41];
    v240 = v424[42];
    v241 = v424[43];
    v243 = v122;
    v246 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v223, v217, v218, v219, v220, v221, v222, v224, v242, v244, v245, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v323);
    v247 = v107;
    if (!v107)
    {
      v209 = v424[494];
      v210 = v424[484];
      v211 = v424[482];
      v212 = v424[470];
      v213 = v424[467];
      v214 = v424[464];
      v215 = v424[462];

      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v213);
      MEMORY[0x277D82BD8](v214);

      v216 = v246;
      goto LABEL_28;
    }

    v126 = v424[494];
    v127 = v424[484];
    v128 = v424[482];
    v129 = v424[470];
    v130 = v424[467];
    v131 = v424[464];
    v132 = v424[462];

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v130);
    MEMORY[0x277D82BD8](v131);

    v165 = v247;
LABEL_35:
    v122[21] = v424[458];
    v122[22] = v424[455];
    v122[23] = v424[454];
    v122[24] = v424[451];
    v122[25] = v424[450];
    v122[26] = v424[447];
    v122[27] = v424[446];
    v122[28] = v424[445];

    v120 = v423;
    v121 = *(v424[329] + 8);

    return v121(v120);
  }

  v108 = v424;
  *(v424 + 4319) = *(v424 + 4359);
  *(v108 + 4324) = 1;
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v109 = v424;
    *(v424 + 4325) = *(v424 + 4359);
    *(v109 + 4326) = 2;
    if (== infix<A>(_:_:)())
    {
      v169 = v424[484];
      v168 = *(v424 + 1067);
      v166 = v424[462];
      v167 = v424[442];

      v110 = swift_task_alloc();
      v111 = v166;
      v112 = v167;
      v113 = v168;
      v114 = v169;
      v115 = v424;
      v170 = v110;
      v424[527] = v110;
      *(v110 + 16) = v111;
      *(v110 + 24) = v115 + 356;
      *(v110 + 32) = v112;
      *(v110 + 40) = v113;
      *(v110 + 48) = v115 + 340;
      *(v110 + 56) = v115 + 341;
      *(v110 + 64) = v115 + 342;
      *(v110 + 72) = v115 + 343;
      *(v110 + 80) = v115 + 351;
      *(v110 + 88) = v114;
      v116 = swift_task_alloc();
      v424[528] = v116;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd, &_ss6UInt32V_ABtMR);
      v118 = v424;
      v10 = v427;
      v11 = v170;
      v12 = v117;
      *v116 = v424[329];
      v116[1] = NightingaleDPFLRunner.run(task:useCase:context:);
      v14 = v118 + 2436;
      v15 = 9;
      v16 = 1;

      return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v14, v15, v16, v10, v11, v12);
    }

    v157 = v424[494];
    v158 = v424[484];
    v159 = v424[482];
    v160 = v424[470];
    v161 = v424[467];
    v162 = v424[464];
    v163 = v424[462];
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v164 = swift_allocError();
    *v119 = 69;
    swift_willThrow();

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v161);
    MEMORY[0x277D82BD8](v162);

    v165 = v164;
    goto LABEL_35;
  }

  v207 = PFLTask.evalModelNames(taskType:hyperParams:)(*(v424 + 4359), v424[462]);
  v208 = v324;
  if (v324)
  {
    v122[36] = v424[494];
    v122[37] = v424[484];
    v122[38] = v424[482];
    v122[39] = v424[470];
    v123 = v424[467];
    v124 = v424[464];
    v125 = v424[462];

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v124);

    v165 = v208;
    goto LABEL_35;
  }

  v182 = *(v424 + 1065);
  v179 = v424[462];
  v178 = v424[441];
  v180 = v424[351];

  v181 = v424[356];

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v424 + 23, v424 + 107);
  v183 = v424[23];
  v184 = v424[24];
  v202 = v424[25];
  v204 = v424[26];
  v185 = v424[27];
  v186 = v424[28];
  v187 = v424[29];
  v188 = v424[30];
  v189 = v424[31];
  v190 = v424[32];
  v191 = v424[33];
  v192 = v424[34];
  v193 = v424[35];
  v194 = v424[36];
  v195 = v424[37];
  v196 = v424[38];
  v197 = v424[39];
  v198 = v424[40];
  v199 = v424[41];
  v200 = v424[42];
  v201 = v424[43];
  v203 = v122;
  v205 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v207, v178, v179, v180, v181, v182, v183, v184, v202, v204, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v323);
  v206 = 0;
  v171 = v424[494];
  v172 = v424[484];
  v173 = v424[482];
  v174 = v424[470];
  v175 = v424[467];
  v176 = v424[464];
  v177 = v424[462];

  outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v175);
  MEMORY[0x277D82BD8](v176);

  v216 = v205;
LABEL_28:
  v156 = v216;
  v148 = v424[458];
  v149 = v424[455];
  v150 = v424[454];
  v151 = v424[451];
  v152 = v424[450];
  v153 = v424[447];
  v154 = v424[446];
  v155 = v424[445];

  v120 = v156;
  v121 = *(v424[329] + 8);

  return v121(v120);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4160) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v413 = v0;
  v379 = v0;
  v380 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v381 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v382 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v383 = &async function pointer to partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  *(v0 + 2632) = v0;
  v386 = v0 + 2640;
  v404 = v0 + 2520;
  v405 = v0 + 2648;
  v406 = v0 + 2656;
  v407 = v0 + 2664;
  v408 = v0 + 2672;
  v409 = v0 + 2680;
  v410 = v0 + 2688;
  v411 = v0 + 2696;
  v403 = v0 + 2704;
  v387 = v0 + 4256;
  v388 = v0 + 2840;
  v389 = v0 + 2856;
  v390 = v0 + 2888;
  v391 = v0 + 2912;
  v392 = v0 + 2920;
  v393 = v0 + 2952;
  v385 = v0 + 2984;
  v394 = v0 + 3000;
  v395 = v0 + 3016;
  v396 = v0 + 3032;
  v397 = v0 + 3048;
  v398 = v0 + 3056;
  v399 = v0 + 3064;
  v400 = v0 + 4264;
  v401 = v0 + 4272;
  v402 = v0 + 4280;
  v412 = v0 + 2428;
  v384 = *(v0 + 4160);
  if (HyperParams.isCalendarAlgorithmRequired()())
  {
    v371 = *(v379 + 4292);
    v369 = *(v379 + 4284);
    v374 = *(v379 + 3872);
    v372 = *(v379 + 4260);
    v370 = *(v379 + 3696);
    v373 = *(v379 + 3536);

    v1 = swift_task_alloc();
    v2 = v369;
    v3 = v370;
    v4 = v371;
    v5 = v372;
    v6 = v373;
    v7 = v374;
    v8 = v379;
    v376 = v1;
    *(v379 + 4168) = v1;
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    *(v1 + 32) = v4;
    *(v1 + 36) = v5;
    *(v1 + 40) = v6;
    *(v1 + 48) = v8 + 2720;
    *(v1 + 56) = v8 + 2728;
    *(v1 + 64) = v8 + 2736;
    *(v1 + 72) = v8 + 2744;
    *(v1 + 80) = v7;
    *(v1 + 88) = v8 + 2800;
    *(v1 + 96) = v8 + 2808;
    v377 = MEMORY[0x277D84F78] + 8;
    v375 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
    v9 = swift_task_alloc();
    v10 = v379;
    v11 = v375;
    v12 = v383;
    v13 = v376;
    v14 = v377;
    v15 = v9;
    v16 = v378;
    *(v379 + 4176) = v15;
    *v15 = *(v10 + 2632);
    v15[1] = NightingaleDPFLRunner.run(task:useCase:context:);
    v17 = 8;
    v18 = v11 & 1;

    return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v16, v17, v18, v12, v13, v14);
  }

  v341 = v379 + 2640;
  v359 = v379 + 2520;
  v360 = v379 + 2648;
  v361 = v379 + 2656;
  v362 = v379 + 2664;
  v363 = v379 + 2672;
  v364 = v379 + 2680;
  v365 = v379 + 2688;
  v366 = v379 + 2696;
  v367 = v379 + 2704;
  v358 = v379 + 2712;
  v342 = v379 + 2840;
  v343 = v379 + 2856;
  v344 = v379 + 2888;
  v345 = v379 + 2912;
  v346 = v379 + 2920;
  v347 = v379 + 2952;
  v348 = v379 + 2968;
  v334 = v379 + 3000;
  v349 = v379 + 3016;
  v350 = v379 + 3032;
  v351 = v379 + 3048;
  v352 = v379 + 3056;
  v353 = v379 + 3064;
  v354 = v379 + 4264;
  v355 = v379 + 4272;
  v356 = v379 + 4280;
  v357 = v379 + 2428;
  v339 = *(v379 + 3696);
  v331 = *(v379 + 3536);
  v329 = NightingaleDPFLRunner.performanceMeasure.getter();
  v335 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v330 = v20;

  v368 = v379 + 3120;
  *(v379 + 3120) = v330;
  v21 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v21);
  v333 = NightingaleDPFLRunner.performanceMeasure.getter();
  v332 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v335 & 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v22 = HyperParams.metricsProcessEngine.getter();
  v23 = v379;
  v337 = v379 + 4309;
  *(v379 + 4309) = v22 & v335;
  v336 = v23 + 4310;
  *(v23 + 4310) = 1;
  v338 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  v340 = == infix<A>(_:_:)();

  if (v340)
  {
    v327 = 1;
  }

  else
  {
    v24 = HyperParams.featurizerEngine.getter();
    v25 = v379;
    *(v379 + 4311) = v24 & 1;
    *(v25 + 4316) = 1;
    v327 = == infix<A>(_:_:)();
  }

  v326 = v327;

  if (v327)
  {
    static HIDMorpheusExtensions.extendMorpheus()();
    v325 = v384;
    if (v384)
    {
      v131 = *(v379 + 3952);
      v132 = *(v379 + 3872);
      v133 = *(v379 + 3856);
      v134 = *(v379 + 3760);
      v135 = *(v379 + 3736);
      v136 = *(v379 + 3712);
      v137 = *(v379 + 3696);
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v135);
      MEMORY[0x277D82BD8](v136);

      v155 = v325;
      goto LABEL_31;
    }

    static Math.extendMorpheus()();
    v324 = 0;
    v323 = 0;
  }

  else
  {
    v323 = v384;
  }

  v26 = v323;
  v319 = *(v379 + 4260);
  v318 = *(v379 + 3696);
  v315 = *(v379 + 3536);
  v317 = *(v379 + 3528);
  type metadata accessor for Featurizer();
  v27 = Featurizer.__allocating_init()();
  v28 = v379;
  v316 = v27;
  *(v379 + 4192) = v27;
  v320 = v28 + 3128;
  *(v28 + 3128) = v27;

  v29 = swift_task_alloc();
  v30 = v316;
  v31 = v317;
  v32 = v318;
  v33 = v319;
  v34 = v379;
  v321 = v29;
  *(v379 + 4200) = v29;
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  *(v29 + 32) = v34 + 2928;
  *(v29 + 40) = v34 + 2752;
  *(v29 + 48) = v34 + 2760;
  *(v29 + 56) = v34 + 2776;
  *(v29 + 64) = v34 + 2768;
  *(v29 + 72) = v34 + 2784;
  *(v29 + 80) = v34 + 2792;
  *(v29 + 88) = v34 + 2800;
  *(v29 + 96) = v34 + 2808;
  *(v29 + 104) = v34 + 2744;
  *(v29 + 112) = v32;
  *(v29 + 120) = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd, &_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMR);
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v321, v35, v379 + 16);
  v322 = v26;
  if (v26)
  {
    v124 = *(v379 + 3952);
    v125 = *(v379 + 3872);
    v126 = *(v379 + 3856);
    v127 = *(v379 + 3760);
    v128 = *(v379 + 3736);
    v129 = *(v379 + 3712);
    v130 = *(v379 + 3696);
    v123 = *(v379 + 3528);

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v129);

    v155 = v322;
    goto LABEL_31;
  }

  v253 = *(v379 + 4112);
  v251 = *(v379 + 4040);
  v281 = *(v379 + 4032);
  v278 = *(v379 + 4024);
  v276 = *(v379 + 4016);
  v274 = *(v379 + 4008);
  v272 = *(v379 + 4000);
  v270 = *(v379 + 3992);
  v268 = *(v379 + 3984);
  v266 = *(v379 + 3960);
  v249 = *(v379 + 3912);
  v247 = *(v379 + 3864);
  v264 = *(v379 + 3848);
  v262 = *(v379 + 3840);
  v245 = *(v379 + 3744);
  v260 = *(v379 + 3704);
  v242 = *(v379 + 3696);
  v241 = *(v379 + 3528);

  v284 = (v379 + 184);
  v307 = v379 + 16;
  memcpy((v379 + 184), (v379 + 16), 0xA8uLL);
  v244 = NightingaleDPFLRunner.performanceMeasure.getter();
  v243 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v257 = v36;

  v308 = v379 + 3136;
  *(v379 + 3136) = v257;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  v283 = _allocateUninitializedArray<A>(_:)();
  v280 = v37;
  v38 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v38, v280);
  v39 = v245;
  v40 = v280;
  v259 = MEMORY[0x277D839F8];
  v280[5] = MEMORY[0x277D839F8];
  v40[2] = v39;
  v246 = v40 + 6;
  Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(Duration, v246);
  v42 = v247;
  v43 = v280;
  v280[11] = v259;
  v43[8] = v42;
  v248 = v43 + 12;
  v44 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v44, v248);
  v45 = v249;
  v46 = v280;
  v280[17] = v259;
  v46[14] = v45;
  v250 = v46 + 18;
  updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
  outlined init with copy of String(updated, v250);
  v48 = v251;
  v49 = v280;
  v280[23] = v259;
  v49[20] = v48;
  v252 = v49 + 24;
  v50 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v50, v252);
  v51 = v253;
  v52 = v280;
  v280[29] = v259;
  v52[26] = v51;
  v254 = v52 + 30;
  v53 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v53, v254);
  v54 = v280;
  v55 = *(v379 + 3112);
  v280[35] = v259;
  v54[32] = v55;
  v255 = v54 + 36;
  v56 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v56, v255);
  v57 = v330;
  v58 = v280;
  v280[41] = v259;
  v58[38] = v57;
  v256 = v58 + 42;
  v59 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v59, v256);
  v60 = v257;
  v61 = v280;
  v280[47] = v259;
  v61[44] = v60;
  v258 = v61 + 48;
  v62 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
  outlined init with copy of String(v62, v258);
  v63 = v260;
  v64 = v280;
  v280[53] = v259;
  v64[50] = v63;
  v261 = v64 + 54;
  v65 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v65, v261);
  v66 = v262;
  v67 = v280;
  v285 = MEMORY[0x277D83B88];
  v280[59] = MEMORY[0x277D83B88];
  v67[56] = v66;
  v263 = v67 + 60;
  v68 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
  outlined init with copy of String(v68, v263);
  v69 = v264;
  v70 = v280;
  v280[65] = v285;
  v70[62] = v69;
  v265 = v70 + 66;
  v71 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v71, v265);
  v72 = v266;
  v73 = v280;
  v280[71] = v285;
  v73[68] = v72;
  v267 = v73 + 72;
  v74 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v74, v267);
  v75 = v268;
  v76 = v280;
  v280[77] = v285;
  v76[74] = v75;
  v269 = v76 + 78;
  v77 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v77, v269);
  v78 = v270;
  v79 = v280;
  v280[83] = v285;
  v79[80] = v78;
  v271 = v79 + 84;
  v80 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v80, v271);
  v81 = v272;
  v82 = v280;
  v280[89] = v285;
  v82[86] = v81;
  v273 = v82 + 90;
  v83 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v83, v273);
  v84 = v274;
  v85 = v280;
  v280[95] = v285;
  v85[92] = v84;
  v275 = v85 + 96;
  v86 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v86, v275);
  v87 = v276;
  v88 = v280;
  v280[101] = v285;
  v88[98] = v87;
  v277 = v88 + 102;
  v89 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v89, v277);
  v90 = v278;
  v91 = v280;
  v280[107] = v285;
  v91[104] = v90;
  v279 = v91 + 108;
  started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(started, v279);
  v93 = v280;
  v94 = v281;
  v280[113] = v285;
  v93[110] = v94;
  _finalizeUninitializedArray<A>(_:)();
  v310 = MEMORY[0x277D837D0];
  v311 = MEMORY[0x277D84F70] + 8;
  v312 = MEMORY[0x277D837E0];
  v309 = Dictionary.init(dictionaryLiteral:)();
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v284, (v379 + 352));
  v286 = *(v379 + 184);
  v287 = *(v379 + 192);
  v288 = *(v379 + 200);
  v289 = *(v379 + 208);
  v290 = *(v379 + 216);
  v291 = *(v379 + 224);
  v292 = *(v379 + 232);
  v293 = *(v379 + 240);
  v294 = *(v379 + 248);
  v295 = *(v379 + 256);
  v296 = *(v379 + 264);
  v297 = *(v379 + 272);
  v298 = *(v379 + 280);
  v299 = *(v379 + 288);
  v300 = *(v379 + 296);
  v301 = *(v379 + 304);
  v302 = *(v379 + 312);
  v303 = *(v379 + 320);
  v304 = *(v379 + 328);
  v305 = *(v379 + 336);
  v306 = *(v379 + 344);
  _dictionaryUpCast<A, B, C, D>(_:)();
  v313 = Dictionary.merging(_:uniquingKeysWith:)();
  *(v379 + 4208) = v313;
  v314 = 0;
  v239 = *(v379 + 4048);
  v238 = *(v379 + 4359);

  v95 = v238;
  v96 = v379;
  v240 = v379 + 3144;
  *(v379 + 3144) = v313;
  *(v96 + 4317) = v95;
  *(v96 + 4318) = 0;
  if (== infix<A>(_:_:)())
  {
    v97 = v314;
    v212 = *(v379 + 4260);
    v208 = *(v379 + 3760);
    v207 = *(v379 + 3752);
    v209 = *(v379 + 3696);
    v213 = *(v379 + 3528);
    v210 = *(v379 + 2808);

    v211 = *(v379 + 2848);

    outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v379 + 184), (v379 + 1024));
    v214 = *(v379 + 184);
    v232 = *(v379 + 192);
    v234 = *(v379 + 200);
    v235 = *(v379 + 208);
    v215 = *(v379 + 216);
    v216 = *(v379 + 224);
    v217 = *(v379 + 232);
    v218 = *(v379 + 240);
    v219 = *(v379 + 248);
    v220 = *(v379 + 256);
    v221 = *(v379 + 264);
    v222 = *(v379 + 272);
    v223 = *(v379 + 280);
    v224 = *(v379 + 288);
    v225 = *(v379 + 296);
    v226 = *(v379 + 304);
    v227 = *(v379 + 312);
    v228 = *(v379 + 320);
    v229 = *(v379 + 328);
    v230 = *(v379 + 336);
    v231 = *(v379 + 344);
    v233 = v112;
    v236 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v213, v207, v208, v209, v210, v211, v212, v214, v232, v234, v235, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v313);
    v237 = v97;
    if (!v97)
    {
      v199 = *(v379 + 3952);
      v200 = *(v379 + 3872);
      v201 = *(v379 + 3856);
      v202 = *(v379 + 3760);
      v203 = *(v379 + 3736);
      v204 = *(v379 + 3712);
      v205 = *(v379 + 3696);

      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v203);
      MEMORY[0x277D82BD8](v204);

      v206 = v236;
      goto LABEL_24;
    }

    v116 = *(v379 + 3952);
    v117 = *(v379 + 3872);
    v118 = *(v379 + 3856);
    v119 = *(v379 + 3760);
    v120 = *(v379 + 3736);
    v121 = *(v379 + 3712);
    v122 = *(v379 + 3696);

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v121);

    v155 = v237;
LABEL_31:
    v112[22] = *(v379 + 3664);
    v112[23] = *(v379 + 3640);
    v112[24] = *(v379 + 3632);
    v112[25] = *(v379 + 3608);
    v112[26] = *(v379 + 3600);
    v112[27] = *(v379 + 3576);
    v112[28] = *(v379 + 3568);
    v112[29] = *(v379 + 3560);

    v110 = v378;
    v111 = *(*(v379 + 2632) + 8);

    return v111(v110);
  }

  v98 = v379;
  *(v379 + 4319) = *(v379 + 4359);
  *(v98 + 4324) = 1;
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v99 = v379;
    *(v379 + 4325) = *(v379 + 4359);
    *(v99 + 4326) = 2;
    if (== infix<A>(_:_:)())
    {
      v159 = *(v379 + 3872);
      v158 = *(v379 + 4268);
      v156 = *(v379 + 3696);
      v157 = *(v379 + 3536);

      v100 = swift_task_alloc();
      v101 = v156;
      v102 = v157;
      v103 = v158;
      v104 = v159;
      v105 = v379;
      v160 = v100;
      *(v379 + 4216) = v100;
      *(v100 + 16) = v101;
      *(v100 + 24) = v105 + 2848;
      *(v100 + 32) = v102;
      *(v100 + 40) = v103;
      *(v100 + 48) = v105 + 2720;
      *(v100 + 56) = v105 + 2728;
      *(v100 + 64) = v105 + 2736;
      *(v100 + 72) = v105 + 2744;
      *(v100 + 80) = v105 + 2808;
      *(v100 + 88) = v104;
      v106 = swift_task_alloc();
      *(v379 + 4224) = v106;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd, &_ss6UInt32V_ABtMR);
      v108 = v379;
      v12 = v382;
      v13 = v160;
      v14 = v107;
      *v106 = *(v379 + 2632);
      v106[1] = NightingaleDPFLRunner.run(task:useCase:context:);
      v16 = v108 + 2436;
      v17 = 9;
      v18 = 1;

      return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v16, v17, v18, v12, v13, v14);
    }

    v147 = *(v379 + 3952);
    v148 = *(v379 + 3872);
    v149 = *(v379 + 3856);
    v150 = *(v379 + 3760);
    v151 = *(v379 + 3736);
    v152 = *(v379 + 3712);
    v153 = *(v379 + 3696);
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v154 = swift_allocError();
    *v109 = 69;
    swift_willThrow();

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v151);
    MEMORY[0x277D82BD8](v152);

    v155 = v154;
    goto LABEL_31;
  }

  v197 = PFLTask.evalModelNames(taskType:hyperParams:)(*(v379 + 4359), *(v379 + 3696));
  v198 = v314;
  if (v314)
  {
    v112[37] = *(v379 + 3952);
    v112[38] = *(v379 + 3872);
    v112[39] = *(v379 + 3856);
    v112[40] = *(v379 + 3760);
    v113 = *(v379 + 3736);
    v114 = *(v379 + 3712);
    v115 = *(v379 + 3696);

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);

    v155 = v198;
    goto LABEL_31;
  }

  v172 = *(v379 + 4260);
  v169 = *(v379 + 3696);
  v168 = *(v379 + 3528);
  v170 = *(v379 + 2808);

  v171 = *(v379 + 2848);

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v379 + 184), (v379 + 856));
  v173 = *(v379 + 184);
  v174 = *(v379 + 192);
  v192 = *(v379 + 200);
  v194 = *(v379 + 208);
  v175 = *(v379 + 216);
  v176 = *(v379 + 224);
  v177 = *(v379 + 232);
  v178 = *(v379 + 240);
  v179 = *(v379 + 248);
  v180 = *(v379 + 256);
  v181 = *(v379 + 264);
  v182 = *(v379 + 272);
  v183 = *(v379 + 280);
  v184 = *(v379 + 288);
  v185 = *(v379 + 296);
  v186 = *(v379 + 304);
  v187 = *(v379 + 312);
  v188 = *(v379 + 320);
  v189 = *(v379 + 328);
  v190 = *(v379 + 336);
  v191 = *(v379 + 344);
  v193 = v112;
  v195 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v197, v168, v169, v170, v171, v172, v173, v174, v192, v194, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v313);
  v196 = 0;
  v161 = *(v379 + 3952);
  v162 = *(v379 + 3872);
  v163 = *(v379 + 3856);
  v164 = *(v379 + 3760);
  v165 = *(v379 + 3736);
  v166 = *(v379 + 3712);
  v167 = *(v379 + 3696);

  outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v165);
  MEMORY[0x277D82BD8](v166);

  v206 = v195;
LABEL_24:
  v146 = v206;
  v138 = *(v379 + 3664);
  v139 = *(v379 + 3640);
  v140 = *(v379 + 3632);
  v141 = *(v379 + 3608);
  v142 = *(v379 + 3600);
  v143 = *(v379 + 3576);
  v144 = *(v379 + 3568);
  v145 = *(v379 + 3560);

  v110 = v146;
  v111 = *(*(v379 + 2632) + 8);

  return v111(v110);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4184) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v359 = v0;
  v325 = v0;
  v313 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v314 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v315 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v0[329] = v0;
  v331 = v0 + 330;
  v349 = v0 + 315;
  v350 = v0 + 331;
  v351 = v0 + 332;
  v352 = v0 + 333;
  v353 = v0 + 334;
  v354 = v0 + 335;
  v355 = v0 + 336;
  v356 = v0 + 337;
  v357 = v0 + 338;
  v348 = v0 + 339;
  v332 = v0 + 355;
  v333 = v0 + 357;
  v334 = v0 + 361;
  v335 = v0 + 364;
  v336 = v0 + 365;
  v337 = v0 + 369;
  v338 = v0 + 371;
  v323 = v0 + 375;
  v339 = v0 + 377;
  v340 = v0 + 379;
  v341 = v0 + 381;
  v342 = v0 + 382;
  v343 = v0 + 383;
  v344 = v0 + 533;
  v345 = v0 + 534;
  v346 = v0 + 535;
  v347 = v0 + 2428;
  v316 = v0[523];
  v329 = v0[462];
  v320 = v0[442];
  v318 = NightingaleDPFLRunner.performanceMeasure.getter();
  v324 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v319 = v1;

  v358 = v325 + 390;
  v325[390] = v319;
  v2 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v2);
  v322 = NightingaleDPFLRunner.performanceMeasure.getter();
  v321 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v324 & 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v3 = HyperParams.metricsProcessEngine.getter();
  v4 = v325;
  v327 = v325 + 4309;
  *(v325 + 4309) = v3 & v324;
  v326 = v4 + 4310;
  *(v4 + 4310) = 1;
  v328 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  v330 = == infix<A>(_:_:)();

  if (v330)
  {
    v312 = 1;
  }

  else
  {
    v5 = HyperParams.featurizerEngine.getter();
    v6 = v325;
    *(v325 + 4311) = v5 & 1;
    *(v6 + 4316) = 1;
    v312 = == infix<A>(_:_:)();
  }

  v311 = v312;

  if (v312)
  {
    static HIDMorpheusExtensions.extendMorpheus()();
    v310 = v316;
    if (v316)
    {
      v115 = v325[494];
      v116 = v325[484];
      v117 = v325[482];
      v118 = v325[470];
      v119 = v325[467];
      v120 = v325[464];
      v121 = v325[462];
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v120);

      v139 = v310;
      goto LABEL_27;
    }

    static Math.extendMorpheus()();
    v308 = 0;
    v307 = 0;
  }

  else
  {
    v307 = v316;
  }

  v7 = v307;
  v303 = *(v325 + 1065);
  v302 = v325[462];
  v299 = v325[442];
  v301 = v325[441];
  type metadata accessor for Featurizer();
  v8 = Featurizer.__allocating_init()();
  v9 = v325;
  v300 = v8;
  v325[524] = v8;
  v304 = v9 + 391;
  v9[391] = v8;

  v10 = swift_task_alloc();
  v11 = v300;
  v12 = v301;
  v13 = v302;
  v14 = v303;
  v15 = v325;
  v305 = v10;
  v325[525] = v10;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v15 + 366;
  *(v10 + 40) = v15 + 344;
  *(v10 + 48) = v15 + 345;
  *(v10 + 56) = v15 + 347;
  *(v10 + 64) = v15 + 346;
  *(v10 + 72) = v15 + 348;
  *(v10 + 80) = v15 + 349;
  *(v10 + 88) = v15 + 350;
  *(v10 + 96) = v15 + 351;
  *(v10 + 104) = v15 + 343;
  *(v10 + 112) = v13;
  *(v10 + 120) = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd, &_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMR);
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v305, v16, (v325 + 2));
  v306 = v7;
  if (v7)
  {
    v108 = v325[494];
    v109 = v325[484];
    v110 = v325[482];
    v111 = v325[470];
    v112 = v325[467];
    v113 = v325[464];
    v114 = v325[462];
    v107 = v325[441];

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);

    v139 = v306;
    goto LABEL_27;
  }

  v237 = v325[514];
  v235 = v325[505];
  v265 = v325[504];
  v262 = v325[503];
  v260 = v325[502];
  v258 = v325[501];
  v256 = v325[500];
  v254 = v325[499];
  v252 = v325[498];
  v250 = v325[495];
  v233 = v325[489];
  v231 = v325[483];
  v248 = v325[481];
  v246 = v325[480];
  v229 = v325[468];
  v244 = v325[463];
  v226 = v325[462];
  v225 = v325[441];

  v268 = v325 + 23;
  v291 = v325 + 2;
  memcpy(v325 + 23, v325 + 2, 0xA8uLL);
  v228 = NightingaleDPFLRunner.performanceMeasure.getter();
  v227 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v241 = v17;

  v292 = v325 + 392;
  v325[392] = v241;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  v267 = _allocateUninitializedArray<A>(_:)();
  v264 = v18;
  v19 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v19, v264);
  v20 = v229;
  v21 = v264;
  v243 = MEMORY[0x277D839F8];
  v264[5] = MEMORY[0x277D839F8];
  v21[2] = v20;
  v230 = v21 + 6;
  Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(Duration, v230);
  v23 = v231;
  v24 = v264;
  v264[11] = v243;
  v24[8] = v23;
  v232 = v24 + 12;
  v25 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v25, v232);
  v26 = v233;
  v27 = v264;
  v264[17] = v243;
  v27[14] = v26;
  v234 = v27 + 18;
  updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
  outlined init with copy of String(updated, v234);
  v29 = v235;
  v30 = v264;
  v264[23] = v243;
  v30[20] = v29;
  v236 = v30 + 24;
  v31 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v31, v236);
  v32 = v237;
  v33 = v264;
  v264[29] = v243;
  v33[26] = v32;
  v238 = v33 + 30;
  v34 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v34, v238);
  v35 = v264;
  v36 = v325[389];
  v264[35] = v243;
  v35[32] = v36;
  v239 = v35 + 36;
  v37 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v37, v239);
  v38 = v319;
  v39 = v264;
  v264[41] = v243;
  v39[38] = v38;
  v240 = v39 + 42;
  v40 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v40, v240);
  v41 = v241;
  v42 = v264;
  v264[47] = v243;
  v42[44] = v41;
  v242 = v42 + 48;
  v43 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
  outlined init with copy of String(v43, v242);
  v44 = v244;
  v45 = v264;
  v264[53] = v243;
  v45[50] = v44;
  v245 = v45 + 54;
  v46 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v46, v245);
  v47 = v246;
  v48 = v264;
  v269 = MEMORY[0x277D83B88];
  v264[59] = MEMORY[0x277D83B88];
  v48[56] = v47;
  v247 = v48 + 60;
  v49 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
  outlined init with copy of String(v49, v247);
  v50 = v248;
  v51 = v264;
  v264[65] = v269;
  v51[62] = v50;
  v249 = v51 + 66;
  v52 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v52, v249);
  v53 = v250;
  v54 = v264;
  v264[71] = v269;
  v54[68] = v53;
  v251 = v54 + 72;
  v55 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v55, v251);
  v56 = v252;
  v57 = v264;
  v264[77] = v269;
  v57[74] = v56;
  v253 = v57 + 78;
  v58 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v58, v253);
  v59 = v254;
  v60 = v264;
  v264[83] = v269;
  v60[80] = v59;
  v255 = v60 + 84;
  v61 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v61, v255);
  v62 = v256;
  v63 = v264;
  v264[89] = v269;
  v63[86] = v62;
  v257 = v63 + 90;
  v64 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v64, v257);
  v65 = v258;
  v66 = v264;
  v264[95] = v269;
  v66[92] = v65;
  v259 = v66 + 96;
  v67 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v67, v259);
  v68 = v260;
  v69 = v264;
  v264[101] = v269;
  v69[98] = v68;
  v261 = v69 + 102;
  v70 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v70, v261);
  v71 = v262;
  v72 = v264;
  v264[107] = v269;
  v72[104] = v71;
  v263 = v72 + 108;
  started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(started, v263);
  v74 = v264;
  v75 = v265;
  v264[113] = v269;
  v74[110] = v75;
  _finalizeUninitializedArray<A>(_:)();
  v294 = MEMORY[0x277D837D0];
  v295 = MEMORY[0x277D84F70] + 8;
  v296 = MEMORY[0x277D837E0];
  v293 = Dictionary.init(dictionaryLiteral:)();
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v268, v325 + 44);
  v270 = v325[23];
  v271 = v325[24];
  v272 = v325[25];
  v273 = v325[26];
  v274 = v325[27];
  v275 = v325[28];
  v276 = v325[29];
  v277 = v325[30];
  v278 = v325[31];
  v279 = v325[32];
  v280 = v325[33];
  v281 = v325[34];
  v282 = v325[35];
  v283 = v325[36];
  v284 = v325[37];
  v285 = v325[38];
  v286 = v325[39];
  v287 = v325[40];
  v288 = v325[41];
  v289 = v325[42];
  v290 = v325[43];
  _dictionaryUpCast<A, B, C, D>(_:)();
  v297 = Dictionary.merging(_:uniquingKeysWith:)();
  v325[526] = v297;
  v298 = 0;
  v223 = v325[506];
  v222 = *(v325 + 4359);

  v76 = v222;
  v77 = v325;
  v224 = v325 + 393;
  v325[393] = v297;
  *(v77 + 4317) = v76;
  *(v77 + 4318) = 0;
  if (== infix<A>(_:_:)())
  {
    v78 = v298;
    v196 = *(v325 + 1065);
    v192 = v325[470];
    v191 = v325[469];
    v193 = v325[462];
    v197 = v325[441];
    v194 = v325[351];

    v195 = v325[356];

    outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v325 + 23, v325 + 128);
    v198 = v325[23];
    v216 = v325[24];
    v218 = v325[25];
    v219 = v325[26];
    v199 = v325[27];
    v200 = v325[28];
    v201 = v325[29];
    v202 = v325[30];
    v203 = v325[31];
    v204 = v325[32];
    v205 = v325[33];
    v206 = v325[34];
    v207 = v325[35];
    v208 = v325[36];
    v209 = v325[37];
    v210 = v325[38];
    v211 = v325[39];
    v212 = v325[40];
    v213 = v325[41];
    v214 = v325[42];
    v215 = v325[43];
    v217 = v96;
    v220 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v197, v191, v192, v193, v194, v195, v196, v198, v216, v218, v219, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v297);
    v221 = v78;
    if (!v78)
    {
      v183 = v325[494];
      v184 = v325[484];
      v185 = v325[482];
      v186 = v325[470];
      v187 = v325[467];
      v188 = v325[464];
      v189 = v325[462];

      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v187);
      MEMORY[0x277D82BD8](v188);

      v190 = v220;
      goto LABEL_20;
    }

    v100 = v325[494];
    v101 = v325[484];
    v102 = v325[482];
    v103 = v325[470];
    v104 = v325[467];
    v105 = v325[464];
    v106 = v325[462];

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](v105);

    v139 = v221;
    goto LABEL_27;
  }

  v79 = v325;
  *(v325 + 4319) = *(v325 + 4359);
  *(v79 + 4324) = 1;
  if (== infix<A>(_:_:)())
  {
    v181 = PFLTask.evalModelNames(taskType:hyperParams:)(*(v325 + 4359), v325[462]);
    v182 = v298;
    if (!v298)
    {
      v156 = *(v325 + 1065);
      v153 = v325[462];
      v152 = v325[441];
      v154 = v325[351];

      v155 = v325[356];

      outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v325 + 23, v325 + 107);
      v157 = v325[23];
      v158 = v325[24];
      v176 = v325[25];
      v178 = v325[26];
      v159 = v325[27];
      v160 = v325[28];
      v161 = v325[29];
      v162 = v325[30];
      v163 = v325[31];
      v164 = v325[32];
      v165 = v325[33];
      v166 = v325[34];
      v167 = v325[35];
      v168 = v325[36];
      v169 = v325[37];
      v170 = v325[38];
      v171 = v325[39];
      v172 = v325[40];
      v173 = v325[41];
      v174 = v325[42];
      v175 = v325[43];
      v177 = v96;
      v179 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v181, v152, v153, v154, v155, v156, v157, v158, v176, v178, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v297);
      v180 = 0;
      v145 = v325[494];
      v146 = v325[484];
      v147 = v325[482];
      v148 = v325[470];
      v149 = v325[467];
      v150 = v325[464];
      v151 = v325[462];

      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v149);
      MEMORY[0x277D82BD8](v150);

      v190 = v179;
LABEL_20:
      v130 = v190;
      v122 = v325[458];
      v123 = v325[455];
      v124 = v325[454];
      v125 = v325[451];
      v126 = v325[450];
      v127 = v325[447];
      v128 = v325[446];
      v129 = v325[445];

      v94 = v130;
      v95 = *(v325[329] + 8);

      return v95(v94);
    }

    v96[36] = v325[494];
    v96[37] = v325[484];
    v96[38] = v325[482];
    v96[39] = v325[470];
    v97 = v325[467];
    v98 = v325[464];
    v99 = v325[462];

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);

    v139 = v182;
LABEL_27:
    v96[21] = v325[458];
    v96[22] = v325[455];
    v96[23] = v325[454];
    v96[24] = v325[451];
    v96[25] = v325[450];
    v96[26] = v325[447];
    v96[27] = v325[446];
    v96[28] = v325[445];

    v94 = v309;
    v95 = *(v325[329] + 8);

    return v95(v94);
  }

  v80 = v325;
  *(v325 + 4325) = *(v325 + 4359);
  *(v80 + 4326) = 2;
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v131 = v325[494];
    v132 = v325[484];
    v133 = v325[482];
    v134 = v325[470];
    v135 = v325[467];
    v136 = v325[464];
    v137 = v325[462];
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v138 = swift_allocError();
    *v93 = 69;
    swift_willThrow();

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](v136);

    v139 = v138;
    goto LABEL_27;
  }

  v143 = v325[484];
  v142 = *(v325 + 1067);
  v140 = v325[462];
  v141 = v325[442];

  v81 = swift_task_alloc();
  v82 = v140;
  v83 = v141;
  v84 = v142;
  v85 = v143;
  v86 = v325;
  v144 = v81;
  v325[527] = v81;
  *(v81 + 16) = v82;
  *(v81 + 24) = v86 + 356;
  *(v81 + 32) = v83;
  *(v81 + 40) = v84;
  *(v81 + 48) = v86 + 340;
  *(v81 + 56) = v86 + 341;
  *(v81 + 64) = v86 + 342;
  *(v81 + 72) = v86 + 343;
  *(v81 + 80) = v86 + 351;
  *(v81 + 88) = v85;
  v87 = swift_task_alloc();
  v325[528] = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd, &_ss6UInt32V_ABtMR);
  v89 = v325;
  v90 = v315;
  v91 = v144;
  *v87 = v325[329];
  v87[1] = NightingaleDPFLRunner.run(task:useCase:context:);

  return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v89 + 2436, 9, 1, v90, v91, v88);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4232) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 2632) = v0;
  v39 = *(v0 + 2436);
  v40 = *(v0 + 2440);
  *(v0 + 4288) = v39;
  *(v0 + 4296) = v40;
  *(v0 + 3152) = Array.init()();
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v0 + 184), (v0 + 520));
  *(v0 + 3160) = *(v0 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  Collection<>.makeIterator()();

  for (i = *(v0 + 4232); ; i = 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySays6UInt32VGGMd, &_ss16IndexingIteratorVySays6UInt32VGGMR);
    IndexingIterator.next()();
    v37 = *(v38 + 2460);
    if (*(v38 + 2464))
    {
      break;
    }

    *(v38 + 4304) = v37;
    *(v38 + 3168) = Set.init()();
    result = HyperParams.sliceSize.getter();
    v36 = v37 - result;
    if (v37 < result)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v35 = v36 + 1;
    if (v36 == -1)
    {
      goto LABEL_21;
    }

    if (v37 < v35)
    {
      return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
    }

    *(v38 + 2444) = v35;
    *(v38 + 2448) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys6UInt32VGMd, &_sShys6UInt32VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd, &_sSNys6UInt32VGMR);
    lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
    Set.formUnion<A>(_:)();
    v30 = *(v38 + 2752);

    *(v38 + 3176) = v30;
    v31 = swift_task_alloc();
    *(v31 + 16) = v38 + 3168;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd, &_sSDys6UInt32VSf_SStGMR);
    v2 = lazy protocol witness table accessor for type [UInt32 : (Float, String)] and conformance [A : B]();
    result = _sSTsE5count5whereSiSb7ElementQzqd__YKXE_tqd__YKs5ErrorRd__lF(partial apply for closure #39 in NightingaleDPFLRunner.run(task:useCase:context:), v31, v32, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v33);
    v34 = result;
    if (i)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    *(v38 + 2468) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    Array.append(_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  v28 = *(v38 + 3712);
  v25 = *(v38 + 3664);
  v24 = *(v38 + 3648);
  v23 = *(v38 + 3656);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v21 = *(v38 + 2848);

  v22 = *(v38 + 2808);

  (*(v23 + 104))(v25, *MEMORY[0x277D41408], v24);
  v42 = static PFLStats.meanAndStd(_:_:)();
  v26 = v3;
  (*(v23 + 8))(v25, v24);

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v38 + 184), (v38 + 688));
  v27 = MEMORY[0x25F8895B0]();

  v29 = [v28 birthDateComponents];
  if (v29)
  {
    v20 = *(v38 + 3640);
    v18 = *(v38 + 3632);
    v19 = *(v38 + 3616);
    v17 = *(v38 + 3624);
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v17 + 32))(v20, v18, v19);
    (*(v17 + 56))(v20, 0, 1, v19);
    MEMORY[0x277D82BD8](v29);
  }

  else
  {
    (*(*(v38 + 3624) + 56))(*(v38 + 3640), 1, 1, *(v38 + 3616));
  }

  v16 = *(v38 + 3640);
  v4 = HyperParams.birthDateRequired.getter();
  v43 = calculateAge(components:birthDateRequired:)(v16, v4 & 1);
  if (i)
  {
    v7 = *(v38 + 3736);
    v8 = *(v38 + 3712);
    outlined destroy of DateComponents?(*(v38 + 3640));

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);

    v5 = v33;
    v6 = *(*(v38 + 2632) + 8);
  }

  else
  {
    v11 = *(v38 + 4208);
    v13 = *(v38 + 3760);
    v12 = *(v38 + 3752);
    v14 = *(v38 + 3696);
    outlined destroy of DateComponents?(*(v38 + 3640));
    LODWORD(v44) = v42;
    BYTE4(v44) = BYTE4(v42) & 1;
    LODWORD(v45) = v26;
    BYTE4(v45) = 0;
    LODWORD(v46) = v43;
    BYTE4(v46) = BYTE4(v43) & 1;
    v15 = NightingaleDPFLRunner.runDemographics(hyperParams:modelPath:pregnancies:historicalPeriods:swtAvailabilityStats:numberOfSlices:age:earliestPregrancyLMP:latestPregrancyEndDay:existingMetrics:)(v14, v12, v13, v21, v22, v44, v45, v46, v27, v39, v40, v11);
    v9 = *(v38 + 3736);
    v10 = *(v38 + 3712);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);

    v5 = v15;
    v6 = *(*(v38 + 2632) + 8);
  }

  return v6(v5);
}

{
  v3 = v0[467];
  v4 = v0[464];
  v0[329] = v0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[329] + 8);

  return v1();
}

{
  v14 = *(v0 + 4080);
  v16 = *(v0 + 3920);
  v19 = *(v0 + 3864);
  v25 = *(v0 + 3848);
  v22 = *(v0 + 3840);
  v27 = *(v0 + 3760);
  v26 = *(v0 + 3752);
  v18 = *(v0 + 3744);
  v21 = *(v0 + 3704);
  v30 = *(v0 + 3696);
  *(v0 + 2632) = v0;

  v1 = v14;
  *(v0 + 3344) = v14;
  v15 = *(v0 + 2848);

  v28 = MEMORY[0x25F8895B0](v15, v16);

  *(v0 + 4348) = 9;
  v17 = *(v0 + 2928);

  MEMORY[0x25F8895B0](v17, v16);

  Array.init(repeating:count:)();
  v29 = static Array.+ infix(_:_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v24 = v2;
  v3 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v3, v24);
  v20 = MEMORY[0x277D839F8];
  v24[5] = MEMORY[0x277D839F8];
  v24[2] = v18;
  Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(Duration, v24 + 6);
  v24[11] = v20;
  v24[8] = v19;
  v5 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
  outlined init with copy of String(v5, v24 + 12);
  v24[17] = v20;
  v24[14] = v21;
  v6 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v6, v24 + 18);
  v23 = MEMORY[0x277D83B88];
  v24[23] = MEMORY[0x277D83B88];
  v24[20] = v22;
  v7 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
  outlined init with copy of String(v7, v24 + 24);
  v24[29] = v23;
  v24[26] = v25;
  _finalizeUninitializedArray<A>(_:)();
  v31 = Dictionary.init(dictionaryLiteral:)();
  v32 = NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)(v30, v26, v27, v28, v29, v31, -1.0);
  v10 = v13[510];
  v11 = v13[467];
  v12 = v13[464];

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v8 = *(v13[329] + 8);

  return v8(v32);
}

{
  v3 = v0[467];
  v4 = v0[464];
  v0[329] = v0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[329] + 8);

  return v1();
}

{
  v3 = v0[467];
  v4 = v0[464];
  v0[329] = v0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[329] + 8);

  return v1();
}

{
  v3 = v0[467];
  v4 = v0[464];
  v0[329] = v0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[329] + 8);

  return v1();
}

{
  v3 = v0[467];
  v4 = v0[464];
  v0[329] = v0;

  outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[329] + 8);

  return v1();
}

uint64_t NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2)
{
  v708 = v2;
  MEMORY[0x28223BE20](a1, a2);
  v677 = v2;
  v678 = closure #4 in NightingaleDPFLRunner.run(task:useCase:context:);
  v679 = closure #4 in NightingaleDPFLRunner.run(task:useCase:context:);
  v680 = closure #6 in NightingaleDPFLRunner.run(task:useCase:context:);
  v681 = closure #7 in NightingaleDPFLRunner.run(task:useCase:context:);
  v682 = closure #19 in NightingaleDPFLRunner.run(task:useCase:context:);
  v683 = "Fatal error";
  v684 = "Range requires lowerBound <= upperBound";
  v685 = "Swift/Range.swift";
  v686 = partial apply for closure #29 in NightingaleDPFLRunner.run(task:useCase:context:);
  v687 = partial apply for closure #29 in NightingaleDPFLRunner.run(task:useCase:context:);
  v688 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v689 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v690 = closure #32 in NightingaleDPFLRunner.run(task:useCase:context:);
  v691 = "Swift/ClosedRange.swift";
  v692 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v693 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v694 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v695 = &async function pointer to partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  v696 = &async function pointer to partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  v697 = &async function pointer to partial apply for closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  *(v2 + 2632) = v2;
  v698 = *(v2 + 3200);
  v702 = v2 + 3216;
  *(v2 + 3216) = v698;
  v700 = v2 + 4335;
  *(v2 + 4335) = 0;
  v699 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd, &_s19NightingaleTraining21HealthDataQueryResult_pMR);
  v701 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v700, v698, &type metadata for HealthDataRawSampleType, v699);
  if (*(v2 + 1416))
  {
    v675 = *(v677 + 1416);
    v672 = *(v677 + 1424);
    v676 = (v677 + 1392);
    __swift_project_boxed_opaque_existential_1((v677 + 1392), v675);
    v674 = *(v672 + 16);
    v673 = v672 + 16;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = v677;
    *(v677 + 2008) = AssociatedTypeWitness;
    __swift_allocate_boxed_opaque_existential_0((v4 + 1984));
    v674(v675, v672);
    __swift_destroy_boxed_opaque_existential_1(v676);
  }

  else
  {
    outlined destroy of Pregnancy?((v677 + 1392));
    v35 = v677;
    *(v677 + 1984) = 0;
    v35[249] = 0;
    v35[250] = 0;
    v35[251] = 0;
  }

  if (*(v677 + 2008))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd, &_sSDys6UInt32Vs5UInt8VGMR);
    if (swift_dynamicCast())
    {
      v671 = *(v677 + 3312);
    }

    else
    {
      v671 = 0;
    }

    v670 = v671;
  }

  else
  {
    outlined destroy of Pregnancy?((v677 + 1984));
    v670 = 0;
  }

  v5 = v677;
  *(v677 + 3224) = v670;
  if (*(v5 + 3224))
  {
    v703 = *(v677 + 3224);
  }

  else
  {
    _allocateUninitializedArray<A>(_:)();
    v703 = Dictionary.init(dictionaryLiteral:)();
    if (*(v677 + 3224))
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }
  }

  v6 = *(v677 + 4104);
  v667 = v703;
  v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd, &_sSDys6UInt32Vs5UInt8VGMR);
  result = Dictionary.merge(_:uniquingKeysWith:)();
  v669 = v6;
  if (!v6)
  {
    *(v677 + 4340) = 2;
    MEMORY[0x25F8891D0]();
    if (*(v677 + 1456))
    {
      v665 = *(v677 + 1456);
      v662 = *(v677 + 1464);
      v666 = (v677 + 1432);
      __swift_project_boxed_opaque_existential_1((v677 + 1432), v665);
      v664 = *(v662 + 16);
      v663 = v662 + 16;
      v8 = swift_getAssociatedTypeWitness();
      v9 = v677;
      *(v677 + 2040) = v8;
      __swift_allocate_boxed_opaque_existential_0((v9 + 2016));
      v664(v665, v662);
      __swift_destroy_boxed_opaque_existential_1(v666);
    }

    else
    {
      outlined destroy of Pregnancy?((v677 + 1432));
      v34 = v677;
      *(v677 + 2016) = 0;
      v34[253] = 0;
      v34[254] = 0;
      v34[255] = 0;
    }

    if (*(v677 + 2040))
    {
      v661 = (swift_dynamicCast() & 1) != 0 ? *(v677 + 3304) : 0;
      v660 = v661;
    }

    else
    {
      outlined destroy of Pregnancy?((v677 + 2016));
      v660 = 0;
    }

    v10 = v677;
    *(v677 + 3232) = v660;
    if (*(v10 + 3232))
    {
      v704 = *(v677 + 3232);
    }

    else
    {
      _allocateUninitializedArray<A>(_:)();
      v704 = Dictionary.init(dictionaryLiteral:)();
      if (*(v677 + 3232))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    result = Dictionary.merge(_:uniquingKeysWith:)();
    v659 = v669;
    if (!v669)
    {
      *(v677 + 4341) = 1;
      MEMORY[0x25F8891D0]();
      if (*(v677 + 1496))
      {
        v657 = *(v677 + 1496);
        v654 = *(v677 + 1504);
        v658 = (v677 + 1472);
        __swift_project_boxed_opaque_existential_1((v677 + 1472), v657);
        v656 = *(v654 + 16);
        v655 = v654 + 16;
        v11 = swift_getAssociatedTypeWitness();
        v12 = v677;
        *(v677 + 2072) = v11;
        __swift_allocate_boxed_opaque_existential_0((v12 + 2048));
        v656(v657, v654);
        __swift_destroy_boxed_opaque_existential_1(v658);
      }

      else
      {
        outlined destroy of Pregnancy?((v677 + 1472));
        v33 = v677;
        *(v677 + 2048) = 0;
        v33[257] = 0;
        v33[258] = 0;
        v33[259] = 0;
      }

      if (*(v677 + 2072))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd, &_sSDys6UInt32VSbGMR);
        v653 = (swift_dynamicCast() & 1) != 0 ? *(v677 + 3296) : 0;
        v652 = v653;
      }

      else
      {
        outlined destroy of Pregnancy?((v677 + 2048));
        v652 = 0;
      }

      v13 = v677;
      *(v677 + 3240) = v652;
      if (*(v13 + 3240))
      {
        v705 = *(v677 + 3240);
      }

      else
      {
        _allocateUninitializedArray<A>(_:)();
        v705 = Dictionary.init(dictionaryLiteral:)();
        if (*(v677 + 3240))
        {
          outlined destroy of [(start: UInt32, end: UInt32)]();
        }
      }

      v650 = v705;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd, &_sSDys6UInt32VSbGMR);
      result = Dictionary.merge(_:uniquingKeysWith:)();
      v651 = v659;
      if (!v659)
      {
        *(v677 + 4342) = 3;
        MEMORY[0x25F8891D0]();
        if (*(v677 + 1536))
        {
          v648 = *(v677 + 1536);
          v645 = *(v677 + 1544);
          v649 = (v677 + 1512);
          __swift_project_boxed_opaque_existential_1((v677 + 1512), v648);
          v647 = *(v645 + 16);
          v646 = v645 + 16;
          v14 = swift_getAssociatedTypeWitness();
          v15 = v677;
          *(v677 + 2104) = v14;
          __swift_allocate_boxed_opaque_existential_0((v15 + 2080));
          v647(v648, v645);
          __swift_destroy_boxed_opaque_existential_1(v649);
        }

        else
        {
          outlined destroy of Pregnancy?((v677 + 1512));
          v32 = v677;
          *(v677 + 2080) = 0;
          v32[261] = 0;
          v32[262] = 0;
          v32[263] = 0;
        }

        if (*(v677 + 2104))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V_ADtGGMd, &_sSDys5UInt8VSays6UInt32V_ADtGGMR);
          v644 = (swift_dynamicCast() & 1) != 0 ? *(v677 + 3288) : 0;
          v643 = v644;
        }

        else
        {
          outlined destroy of Pregnancy?((v677 + 2080));
          v643 = 0;
        }

        v16 = v677;
        *(v677 + 3248) = v643;
        if (*(v16 + 3248))
        {
          v706 = *(v677 + 3248);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_Says6UInt32V_ADtGtMd, &_ss5UInt8V_Says6UInt32V_ADtGtMR);
          v642 = _allocateUninitializedArray<A>(_:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd, &_sSays6UInt32V_ABtGMR);
          v706 = Dictionary.init(dictionaryLiteral:)();
          if (*(v677 + 3248))
          {
            outlined destroy of [(start: UInt32, end: UInt32)]();
          }
        }

        v638 = *(v677 + 3784);
        v639 = v706;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd, &_sSays6UInt32V_ABtGMR);
        v640 = _dictionaryUpCast<A, B, C, D>(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd, &_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMR);
        result = Dictionary.merge(_:uniquingKeysWith:)();
        v641 = v651;
        if (!v651)
        {

          *(v677 + 4343) = 7;
          MEMORY[0x25F8891D0]();
          if (*(v677 + 1576))
          {
            v636 = *(v677 + 1576);
            v633 = *(v677 + 1584);
            v637 = (v677 + 1552);
            __swift_project_boxed_opaque_existential_1((v677 + 1552), v636);
            v635 = *(v633 + 16);
            v634 = v633 + 16;
            v17 = swift_getAssociatedTypeWitness();
            v18 = v677;
            *(v677 + 2136) = v17;
            __swift_allocate_boxed_opaque_existential_0((v18 + 2112));
            v635(v636, v633);
            __swift_destroy_boxed_opaque_existential_1(v637);
          }

          else
          {
            outlined destroy of Pregnancy?((v677 + 1552));
            v31 = v677;
            *(v677 + 2112) = 0;
            v31[265] = 0;
            v31[266] = 0;
            v31[267] = 0;
          }

          if (*(v677 + 2136))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd, &_sSDys6UInt32VSf_SStGMR);
            v632 = (swift_dynamicCast() & 1) != 0 ? *(v677 + 3280) : 0;
            v631 = v632;
          }

          else
          {
            outlined destroy of Pregnancy?((v677 + 2112));
            v631 = 0;
          }

          v19 = v677;
          *(v677 + 3256) = v631;
          if (*(v19 + 3256))
          {
            v707 = *(v677 + 3256);
          }

          else
          {
            v630 = *(v677 + 3800);
            _allocateUninitializedArray<A>(_:)();
            v707 = Dictionary.init(dictionaryLiteral:)();
            if (*(v677 + 3256))
            {
              outlined destroy of [(start: UInt32, end: UInt32)]();
            }
          }

          v628 = v707;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd, &_sSDys6UInt32VSf_SStGMR);
          result = Dictionary.merge(_:uniquingKeysWith:)();
          v629 = v641;
          if (!v641)
          {
            v625 = *(v677 + 3920);
            v626 = *(v677 + 2928);

            v627 = MEMORY[0x25F8895B0](v626, v625);

            if (v627 < 0)
            {
              return _assertionFailure(_:_:file:line:flags:)(v683, 11, 2, v684, 39, 2, v685, 17, 2, 760, 0);
            }

            v20 = v677;
            v21 = v627;
            *(v677 + 2584) = 0;
            *(v20 + 2592) = v21;
            Collection<>.makeIterator()();
            for (i = v629; ; i = 0)
            {
              v621 = i;
              v622 = v677 + 2616;
              IndexingIterator.next()();
              v623 = *(v677 + 2616);
              if (*(v677 + 2624))
              {
                break;
              }

              v22 = v621;
              v23 = v677;
              v611 = *(v677 + 3920);
              v612 = v677 + 3264;
              *(v677 + 3264) = v623;
              v613 = *(v23 + 2720);

              v614 = *(v677 + 2728);

              v615 = *(v677 + 2736);

              v616 = *(v677 + 2744);

              v617 = *(v677 + 2752);

              v618 = v677 + 1592;
              Array.subscript.getter();
              v24._rawValue = v613;
              v25._rawValue = v614;
              v26._rawValue = v615;
              v27._rawValue = v616;
              v28._rawValue = v617;
              v619 = CalendarPeriodPrediction.predictOvu(flow:otr:spotting:cycleFactors:swt:pregnancy:)(v24, v25, v26, v27, v28, (v677 + 1592));
              v620 = v22;
              if (v22)
              {
                v207 = *(v677 + 3696);
                __swift_destroy_boxed_opaque_existential_1((v677 + 1592));

                v179 = v620;
                v206 = v677 + 3272;
                *(v677 + 3272) = v620;

                static PFLUtils.throwIfFalse(error:for:)();
                v208 = 0;
              }

              else
              {
                v604 = *(v677 + 3968);
                __swift_destroy_boxed_opaque_existential_1((v677 + 1592));

                v29 = v677;
                v609 = v677 + 4328;
                *(v677 + 4328) = v619;
                v607 = v29 + 2144;
                v608 = Array.subscript.modify();
                v605 = *(v30 + 24);
                v606 = *(v30 + 32);
                __swift_mutable_project_boxed_opaque_existential_1(v30, v605);
                (*(v606 + 120))(v619, 1, v605);
                v608();
              }

              v610 = 0;
            }

            v603 = v621;
            v36 = v621;
            v593 = v677 + 2640;
            v594 = v677 + 2520;
            v595 = v677 + 2648;
            v596 = v677 + 2656;
            v597 = v677 + 2664;
            v598 = v677 + 2672;
            v599 = v677 + 2680;
            v600 = v677 + 2688;
            v574 = v677 + 2696;
            v601 = v677 + 2704;
            v591 = v677 + 2712;
            v576 = v677 + 4256;
            v577 = v677 + 2840;
            v578 = v677 + 2856;
            v579 = v677 + 2888;
            v580 = v677 + 2912;
            v581 = v677 + 2952;
            v582 = v677 + 2968;
            v583 = v677 + 2984;
            v584 = v677 + 3000;
            v585 = v677 + 3016;
            v586 = v677 + 3032;
            v587 = v677 + 3048;
            v588 = v677 + 3056;
            v590 = *(v677 + 3976);
            v589 = *(v677 + 3968);
            v570 = *(v677 + 3536);
            v568 = NightingaleDPFLRunner.performanceMeasure.getter();
            v571 = 1;
            object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchor", 0x16uLL, 1)._object;
            dispatch thunk of PerformanceMeasure.finish(_:)();
            v569 = v37;
            *(v677 + 4112) = v37;

            v592 = v677 + 3064;
            *(v677 + 3064) = v569;
            v38 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
            NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_updateSliceDeltaAnchorCompleted, v38);
            v573 = NightingaleDPFLRunner.performanceMeasure.getter();
            v572 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, v571 & 1)._object;
            dispatch thunk of PerformanceMeasure.start(_:)();

            v575 = *(v677 + 2928);

            *(v677 + 3072) = v575;
            result = Sequence.min(by:)();
            v602 = v36;
            if (!v36)
            {
              outlined destroy of [(start: UInt32, end: UInt32)]();
              if (*(v677 + 1216))
              {
                v562 = *(v677 + 1216);
                v561 = *(v677 + 1224);
                v563 = v677 + 1192;
                __swift_project_boxed_opaque_existential_1((v677 + 1192), v562);
                v564 = (*(v561 + 64))(v562);
                __swift_destroy_boxed_opaque_existential_1((v677 + 1192));
                v565 = v564;
                v566 = 0;
              }

              else
              {
                outlined destroy of Pregnancy?((v677 + 1192));
                v565 = 0;
                v566 = 1;
              }

              v39 = v566;
              v560 = v565;
              *(v677 + 4284) = v565;
              if (v39)
              {
                goto LABEL_146;
              }

              v40 = v677;
              v41 = v602;
              v558 = *(v677 + 3976);
              v557 = *(v677 + 3968);
              v556 = v677 + 4264;
              *(v677 + 4264) = v560;
              v555 = *(v40 + 2928);

              *(v677 + 3080) = v555;
              result = Sequence.max(by:)();
              v559 = v41;
              if (v41)
              {
                return result;
              }

              outlined destroy of [(start: UInt32, end: UInt32)]();
              if (*(v677 + 1256))
              {
                v550 = *(v677 + 1256);
                v549 = *(v677 + 1264);
                v551 = v677 + 1232;
                __swift_project_boxed_opaque_existential_1((v677 + 1232), v550);
                v552 = (*(v549 + 64))(v550);
                __swift_destroy_boxed_opaque_existential_1((v677 + 1232));
                v553 = v552;
                v554 = 0;
              }

              else
              {
                outlined destroy of Pregnancy?((v677 + 1232));
                v553 = 0;
                v554 = 1;
              }

              v42 = v554;
              v548 = v553;
              *(v677 + 4292) = v553;
              if (v42)
              {
                goto LABEL_146;
              }

              v43 = v677;
              v44 = v559;
              v546 = *(v677 + 3976);
              v545 = *(v677 + 3968);
              v544 = v677 + 4272;
              *(v677 + 4272) = v548;
              v543 = *(v43 + 2928);

              *(v677 + 3088) = v543;
              result = Sequence.min(by:)();
              v547 = v44;
              if (v44)
              {
                return result;
              }

              outlined destroy of [(start: UInt32, end: UInt32)]();
              if (*(v677 + 1296))
              {
                v538 = *(v677 + 1296);
                v537 = *(v677 + 1304);
                v539 = v677 + 1272;
                __swift_project_boxed_opaque_existential_1((v677 + 1272), v538);
                v540 = (*(v537 + 8))(v538);
                __swift_destroy_boxed_opaque_existential_1((v677 + 1272));
                v541 = v540;
                v542 = 0;
              }

              else
              {
                outlined destroy of Pregnancy?((v677 + 1272));
                v541 = 0;
                v542 = 1;
              }

              v536 = v541;
              if (v542)
              {
LABEL_146:
                v218 = *(v677 + 3952);
                v219 = *(v677 + 3872);
                v220 = *(v677 + 3856);
                v221 = *(v677 + 3760);
                v222 = *(v677 + 3736);
                v223 = *(v677 + 3712);
                v224 = *(v677 + 3696);
                lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
                v225 = swift_allocError();
                *v176 = 106;
                swift_willThrow();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();

                outlined destroy of [(start: UInt32, end: UInt32)]();

                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();

                MEMORY[0x277D82BD8](v222);
                MEMORY[0x277D82BD8](v223);

                v234 = v225;
                goto LABEL_163;
              }

              *(v677 + 4280) = v536;
              result = HyperParams.featureLookbackDays.getter();
              v535 = v536 - result;
              v45 = v536 < result;
              *(v677 + 4300) = v536 - result;
              if (!v45)
              {
                if (*(v677 + 4260) < v535)
                {
                  return _assertionFailure(_:_:file:line:flags:)(v683, 11, 2, v684, 39, 2, v691, 23, 2, 409, 0);
                }

                v46 = v677;
                v47 = *(v677 + 4260);
                v534 = v677 + 2428;
                *(v677 + 2428) = v535;
                *(v46 + 2432) = v47;
                *(v677 + 3096) = _allocateUninitializedArray<A>(_:)();
                if (HyperParams.isHRVRequired()())
                {
                  v533 = v677 + 4334;
                  *(v677 + 4334) = 8;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
                  Array.append(_:)();
                }

                if (HyperParams.isSpO2Required()())
                {
                  v532 = v677 + 4333;
                  *(v677 + 4333) = 10;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
                  Array.append(_:)();
                }

                if (HyperParams.isRespiratoryRateRequired()())
                {
                  v531 = v677 + 4332;
                  *(v677 + 4332) = 9;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
                  Array.append(_:)();
                }

                if (HyperParams.isSWTRequired()())
                {
                  v530 = v677 + 4327;
                  *(v677 + 4327) = 7;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
                  Array.append(_:)();
                }

                v528 = *(v677 + 3096);

                *(v677 + 3104) = v528;
                v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
                lazy protocol witness table accessor for type [HealthDataRawSampleType] and conformance [A]();
                v529 = Collection.isEmpty.getter();

                if ((v529 & 1) == 0)
                {
                  v522 = *(v677 + 4260);
                  v520 = *(v677 + 3696);
                  v521 = *(v677 + 3536);

                  v48 = swift_task_alloc();
                  v49 = v520;
                  v50 = v521;
                  v51 = v535;
                  v52 = v522;
                  v53 = v677;
                  v524 = v48;
                  *(v677 + 4120) = v48;
                  *(v48 + 16) = v49;
                  *(v48 + 24) = v53 + 3096;
                  *(v48 + 32) = v50;
                  *(v48 + 40) = v51;
                  *(v48 + 44) = v52;
                  *(v48 + 48) = v53 + 2760;
                  *(v48 + 56) = v53 + 2768;
                  *(v48 + 64) = v53 + 2776;
                  *(v48 + 72) = v53 + 2752;
                  v525 = MEMORY[0x277D84F78] + 8;
                  v523 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
                  v54 = swift_task_alloc();
                  v55 = v677;
                  v56 = v523;
                  v57 = v697;
                  v58 = v524;
                  v59 = v525;
                  v60 = v54;
                  v61 = v526;
                  *(v677 + 4128) = v60;
                  *v60 = *(v55 + 2632);
                  v60[1] = NightingaleDPFLRunner.run(task:useCase:context:);
                  v62 = 8;
                  v63 = v56 & 1;

                  return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v61, v62, v63, v57, v58, v59);
                }

                v493 = v677 + 2640;
                v511 = v677 + 2520;
                v512 = v677 + 2648;
                v513 = v677 + 2656;
                v514 = v677 + 2664;
                v515 = v677 + 2672;
                v516 = v677 + 2680;
                v517 = v677 + 2688;
                v518 = v677 + 2696;
                v510 = v677 + 2704;
                v494 = v677 + 4256;
                v495 = v677 + 2840;
                v496 = v677 + 2856;
                v497 = v677 + 2888;
                v498 = v677 + 2912;
                v499 = v677 + 2920;
                v500 = v677 + 2952;
                v492 = v677 + 2984;
                v501 = v677 + 3000;
                v502 = v677 + 3016;
                v503 = v677 + 3032;
                v504 = v677 + 3048;
                v505 = v677 + 3056;
                v506 = v677 + 3064;
                v507 = v677 + 4264;
                v508 = v677 + 4272;
                v509 = v677 + 4280;
                v519 = v677 + 2428;
                *(v677 + 3112) = 0;
                if (HyperParams.isSHRRequired()())
                {
                  v487 = *(v677 + 4300);
                  v488 = *(v677 + 4260);
                  v486 = *(v677 + 3696);
                  v485 = *(v677 + 3536);

                  v64 = swift_task_alloc();
                  v65 = v485;
                  v66 = v486;
                  v67 = v487;
                  v68 = v488;
                  v69 = v677;
                  v490 = v64;
                  *(v677 + 4144) = v64;
                  *(v64 + 16) = v65;
                  *(v64 + 24) = v66;
                  *(v64 + 32) = v67;
                  *(v64 + 36) = v68;
                  *(v64 + 40) = v69 + 2784;
                  *(v64 + 48) = v69 + 2792;
                  *(v64 + 56) = v69 + 3112;
                  v491 = MEMORY[0x277D84F78] + 8;
                  v489 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
                  v70 = swift_task_alloc();
                  v71 = v677;
                  v72 = v489;
                  v57 = v696;
                  v58 = v490;
                  v59 = v491;
                  v73 = v70;
                  v61 = v526;
                  *(v677 + 4152) = v73;
                  *v73 = *(v71 + 2632);
                  v73[1] = NightingaleDPFLRunner.run(task:useCase:context:);
                  v62 = 8;
                  v63 = v72 & 1;

                  return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v61, v62, v63, v57, v58, v59);
                }

                v458 = v677 + 2640;
                v476 = v677 + 2520;
                v477 = v677 + 2648;
                v478 = v677 + 2656;
                v479 = v677 + 2664;
                v480 = v677 + 2672;
                v481 = v677 + 2680;
                v482 = v677 + 2688;
                v483 = v677 + 2696;
                v475 = v677 + 2704;
                v459 = v677 + 4256;
                v460 = v677 + 2840;
                v461 = v677 + 2856;
                v462 = v677 + 2888;
                v463 = v677 + 2912;
                v464 = v677 + 2920;
                v465 = v677 + 2952;
                v457 = v677 + 2984;
                v466 = v677 + 3000;
                v467 = v677 + 3016;
                v468 = v677 + 3032;
                v469 = v677 + 3048;
                v470 = v677 + 3056;
                v471 = v677 + 3064;
                v472 = v677 + 4264;
                v473 = v677 + 4272;
                v474 = v677 + 4280;
                v484 = v677 + 2428;
                if (HyperParams.isCalendarAlgorithmRequired()())
                {
                  v450 = *(v677 + 4292);
                  v448 = *(v677 + 4284);
                  v453 = *(v677 + 3872);
                  v451 = *(v677 + 4260);
                  v449 = *(v677 + 3696);
                  v452 = *(v677 + 3536);

                  v74 = swift_task_alloc();
                  v75 = v448;
                  v76 = v449;
                  v77 = v450;
                  v78 = v451;
                  v79 = v452;
                  v80 = v453;
                  v81 = v677;
                  v455 = v74;
                  *(v677 + 4168) = v74;
                  *(v74 + 16) = v75;
                  *(v74 + 24) = v76;
                  *(v74 + 32) = v77;
                  *(v74 + 36) = v78;
                  *(v74 + 40) = v79;
                  *(v74 + 48) = v81 + 2720;
                  *(v74 + 56) = v81 + 2728;
                  *(v74 + 64) = v81 + 2736;
                  *(v74 + 72) = v81 + 2744;
                  *(v74 + 80) = v80;
                  *(v74 + 88) = v81 + 2800;
                  *(v74 + 96) = v81 + 2808;
                  v456 = MEMORY[0x277D84F78] + 8;
                  v454 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
                  v82 = swift_task_alloc();
                  v83 = v677;
                  v84 = v454;
                  v57 = v695;
                  v58 = v455;
                  v59 = v456;
                  v85 = v82;
                  v61 = v526;
                  *(v677 + 4176) = v85;
                  *v85 = *(v83 + 2632);
                  v85[1] = NightingaleDPFLRunner.run(task:useCase:context:);
                  v62 = 8;
                  v63 = v84 & 1;

                  return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v61, v62, v63, v57, v58, v59);
                }

                v420 = v677 + 2640;
                v438 = v677 + 2520;
                v439 = v677 + 2648;
                v440 = v677 + 2656;
                v441 = v677 + 2664;
                v442 = v677 + 2672;
                v443 = v677 + 2680;
                v444 = v677 + 2688;
                v445 = v677 + 2696;
                v446 = v677 + 2704;
                v437 = v677 + 2712;
                v421 = v677 + 2840;
                v422 = v677 + 2856;
                v423 = v677 + 2888;
                v424 = v677 + 2912;
                v425 = v677 + 2920;
                v426 = v677 + 2952;
                v427 = v677 + 2968;
                v413 = v677 + 3000;
                v428 = v677 + 3016;
                v429 = v677 + 3032;
                v430 = v677 + 3048;
                v431 = v677 + 3056;
                v432 = v677 + 3064;
                v433 = v677 + 4264;
                v434 = v677 + 4272;
                v435 = v677 + 4280;
                v436 = v677 + 2428;
                v418 = *(v677 + 3696);
                v410 = *(v677 + 3536);
                v408 = NightingaleDPFLRunner.performanceMeasure.getter();
                v414 = 1;
                v407 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
                dispatch thunk of PerformanceMeasure.finish(_:)();
                v409 = v86;

                v447 = v677 + 3120;
                *(v677 + 3120) = v409;
                v87 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
                NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v87);
                v412 = NightingaleDPFLRunner.performanceMeasure.getter();
                v411 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v414 & 1)._object;
                dispatch thunk of PerformanceMeasure.start(_:)();

                v88 = HyperParams.metricsProcessEngine.getter();
                v89 = v677;
                v416 = v677 + 4309;
                *(v677 + 4309) = v88 & v414;
                v415 = v89 + 4310;
                *(v89 + 4310) = 1;
                v417 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
                v419 = == infix<A>(_:_:)();

                if (v419)
                {
                  v406 = 1;
                }

                else
                {
                  v90 = HyperParams.featurizerEngine.getter();
                  v91 = v677;
                  *(v677 + 4311) = v90 & 1;
                  *(v91 + 4316) = 1;
                  v406 = == infix<A>(_:_:)();
                }

                v405 = v406;

                if (v406)
                {
                  static HIDMorpheusExtensions.extendMorpheus()();
                  v404 = v547;
                  if (v547)
                  {
                    v199 = *(v677 + 3952);
                    v200 = *(v677 + 3872);
                    v201 = *(v677 + 3856);
                    v202 = *(v677 + 3760);
                    v203 = *(v677 + 3736);
                    v204 = *(v677 + 3712);
                    v205 = *(v677 + 3696);
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    MEMORY[0x277D82BD8](v203);
                    MEMORY[0x277D82BD8](v204);

                    v234 = v404;
                    goto LABEL_163;
                  }

                  static Math.extendMorpheus()();
                  v403 = 0;
                  v402 = 0;
                }

                else
                {
                  v402 = v547;
                }

                v92 = v402;
                v398 = *(v677 + 4260);
                v397 = *(v677 + 3696);
                v394 = *(v677 + 3536);
                v396 = *(v677 + 3528);
                type metadata accessor for Featurizer();
                v93 = Featurizer.__allocating_init()();
                v94 = v677;
                v395 = v93;
                *(v677 + 4192) = v93;
                v399 = v94 + 3128;
                *(v94 + 3128) = v93;

                v95 = swift_task_alloc();
                v96 = v395;
                v97 = v396;
                v98 = v397;
                v99 = v398;
                v100 = v677;
                v400 = v95;
                *(v677 + 4200) = v95;
                *(v95 + 16) = v96;
                *(v95 + 24) = v97;
                *(v95 + 32) = v100 + 2928;
                *(v95 + 40) = v100 + 2752;
                *(v95 + 48) = v100 + 2760;
                *(v95 + 56) = v100 + 2776;
                *(v95 + 64) = v100 + 2768;
                *(v95 + 72) = v100 + 2784;
                *(v95 + 80) = v100 + 2792;
                *(v95 + 88) = v100 + 2800;
                *(v95 + 96) = v100 + 2808;
                *(v95 + 104) = v100 + 2744;
                *(v95 + 112) = v98;
                *(v95 + 120) = v99;
                v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd, &_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMR);
                NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v400, v101, v677 + 16);
                v401 = v92;
                if (v92)
                {
                  v192 = *(v677 + 3952);
                  v193 = *(v677 + 3872);
                  v194 = *(v677 + 3856);
                  v195 = *(v677 + 3760);
                  v196 = *(v677 + 3736);
                  v197 = *(v677 + 3712);
                  v198 = *(v677 + 3696);
                  v191 = *(v677 + 3528);

                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  MEMORY[0x277D82BD8](v196);
                  MEMORY[0x277D82BD8](v197);

                  v234 = v401;
                }

                else
                {
                  v332 = *(v677 + 4112);
                  v330 = *(v677 + 4040);
                  v360 = *(v677 + 4032);
                  v357 = *(v677 + 4024);
                  v355 = *(v677 + 4016);
                  v353 = *(v677 + 4008);
                  v351 = *(v677 + 4000);
                  v349 = *(v677 + 3992);
                  v347 = *(v677 + 3984);
                  v345 = *(v677 + 3960);
                  v328 = *(v677 + 3912);
                  v326 = *(v677 + 3864);
                  v343 = *(v677 + 3848);
                  v341 = *(v677 + 3840);
                  v324 = *(v677 + 3744);
                  v339 = *(v677 + 3704);
                  v321 = *(v677 + 3696);
                  v320 = *(v677 + 3528);

                  v363 = (v677 + 184);
                  v386 = v677 + 16;
                  memcpy((v677 + 184), (v677 + 16), 0xA8uLL);
                  v323 = NightingaleDPFLRunner.performanceMeasure.getter();
                  v322 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
                  dispatch thunk of PerformanceMeasure.finish(_:)();
                  v336 = v102;

                  v387 = v677 + 3136;
                  *(v677 + 3136) = v336;
                  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
                  v362 = _allocateUninitializedArray<A>(_:)();
                  v359 = v103;
                  v104 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v104, v359);
                  v105 = v324;
                  v106 = v359;
                  v338 = MEMORY[0x277D839F8];
                  v359[5] = MEMORY[0x277D839F8];
                  v106[2] = v105;
                  v325 = v106 + 6;
                  Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(Duration, v325);
                  v108 = v326;
                  v109 = v359;
                  v359[11] = v338;
                  v109[8] = v108;
                  v327 = v109 + 12;
                  v110 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v110, v327);
                  v111 = v328;
                  v112 = v359;
                  v359[17] = v338;
                  v112[14] = v111;
                  v329 = v112 + 18;
                  updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(updated, v329);
                  v114 = v330;
                  v115 = v359;
                  v359[23] = v338;
                  v115[20] = v114;
                  v331 = v115 + 24;
                  v116 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v116, v331);
                  v117 = v332;
                  v118 = v359;
                  v359[29] = v338;
                  v118[26] = v117;
                  v333 = v118 + 30;
                  v119 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v119, v333);
                  v120 = v359;
                  v121 = *(v677 + 3112);
                  v359[35] = v338;
                  v120[32] = v121;
                  v334 = v120 + 36;
                  v122 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v122, v334);
                  v123 = v409;
                  v124 = v359;
                  v359[41] = v338;
                  v124[38] = v123;
                  v335 = v124 + 42;
                  v125 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v125, v335);
                  v126 = v336;
                  v127 = v359;
                  v359[47] = v338;
                  v127[44] = v126;
                  v337 = v127 + 48;
                  v128 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
                  outlined init with copy of String(v128, v337);
                  v129 = v339;
                  v130 = v359;
                  v359[53] = v338;
                  v130[50] = v129;
                  v340 = v130 + 54;
                  v131 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
                  outlined init with copy of String(v131, v340);
                  v132 = v341;
                  v133 = v359;
                  v364 = MEMORY[0x277D83B88];
                  v359[59] = MEMORY[0x277D83B88];
                  v133[56] = v132;
                  v342 = v133 + 60;
                  v134 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
                  outlined init with copy of String(v134, v342);
                  v135 = v343;
                  v136 = v359;
                  v359[65] = v364;
                  v136[62] = v135;
                  v344 = v136 + 66;
                  v137 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v137, v344);
                  v138 = v345;
                  v139 = v359;
                  v359[71] = v364;
                  v139[68] = v138;
                  v346 = v139 + 72;
                  v140 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
                  outlined init with copy of String(v140, v346);
                  v141 = v347;
                  v142 = v359;
                  v359[77] = v364;
                  v142[74] = v141;
                  v348 = v142 + 78;
                  v143 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v143, v348);
                  v144 = v349;
                  v145 = v359;
                  v359[83] = v364;
                  v145[80] = v144;
                  v350 = v145 + 84;
                  v146 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v146, v350);
                  v147 = v351;
                  v148 = v359;
                  v359[89] = v364;
                  v148[86] = v147;
                  v352 = v148 + 90;
                  v149 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v149, v352);
                  v150 = v353;
                  v151 = v359;
                  v359[95] = v364;
                  v151[92] = v150;
                  v354 = v151 + 96;
                  v152 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v152, v354);
                  v153 = v355;
                  v154 = v359;
                  v359[101] = v364;
                  v154[98] = v153;
                  v356 = v154 + 102;
                  v155 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v155, v356);
                  v156 = v357;
                  v157 = v359;
                  v359[107] = v364;
                  v157[104] = v156;
                  v358 = v157 + 108;
                  started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(started, v358);
                  v159 = v359;
                  v160 = v360;
                  v359[113] = v364;
                  v159[110] = v160;
                  _finalizeUninitializedArray<A>(_:)();
                  v389 = MEMORY[0x277D837D0];
                  v390 = MEMORY[0x277D84F70] + 8;
                  v391 = MEMORY[0x277D837E0];
                  v388 = Dictionary.init(dictionaryLiteral:)();
                  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v363, (v677 + 352));
                  v365 = *(v677 + 184);
                  v366 = *(v677 + 192);
                  v367 = *(v677 + 200);
                  v368 = *(v677 + 208);
                  v369 = *(v677 + 216);
                  v370 = *(v677 + 224);
                  v371 = *(v677 + 232);
                  v372 = *(v677 + 240);
                  v373 = *(v677 + 248);
                  v374 = *(v677 + 256);
                  v375 = *(v677 + 264);
                  v376 = *(v677 + 272);
                  v377 = *(v677 + 280);
                  v378 = *(v677 + 288);
                  v379 = *(v677 + 296);
                  v380 = *(v677 + 304);
                  v381 = *(v677 + 312);
                  v382 = *(v677 + 320);
                  v383 = *(v677 + 328);
                  v384 = *(v677 + 336);
                  v385 = *(v677 + 344);
                  _dictionaryUpCast<A, B, C, D>(_:)();
                  v392 = Dictionary.merging(_:uniquingKeysWith:)();
                  *(v677 + 4208) = v392;
                  v393 = 0;
                  v318 = *(v677 + 4048);
                  v317 = *(v677 + 4359);

                  v161 = v317;
                  v162 = v677;
                  v319 = v677 + 3144;
                  *(v677 + 3144) = v392;
                  *(v162 + 4317) = v161;
                  *(v162 + 4318) = 0;
                  if (== infix<A>(_:_:)())
                  {
                    v163 = v393;
                    v291 = *(v677 + 4260);
                    v287 = *(v677 + 3760);
                    v286 = *(v677 + 3752);
                    v288 = *(v677 + 3696);
                    v292 = *(v677 + 3528);
                    v289 = *(v677 + 2808);

                    v290 = *(v677 + 2848);

                    outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v677 + 184), (v677 + 1024));
                    v293 = *(v677 + 184);
                    v311 = *(v677 + 192);
                    v313 = *(v677 + 200);
                    v314 = *(v677 + 208);
                    v294 = *(v677 + 216);
                    v295 = *(v677 + 224);
                    v296 = *(v677 + 232);
                    v297 = *(v677 + 240);
                    v298 = *(v677 + 248);
                    v299 = *(v677 + 256);
                    v300 = *(v677 + 264);
                    v301 = *(v677 + 272);
                    v302 = *(v677 + 280);
                    v303 = *(v677 + 288);
                    v304 = *(v677 + 296);
                    v305 = *(v677 + 304);
                    v306 = *(v677 + 312);
                    v307 = *(v677 + 320);
                    v308 = *(v677 + 328);
                    v309 = *(v677 + 336);
                    v310 = *(v677 + 344);
                    v312 = v180;
                    v315 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v292, v286, v287, v288, v289, v290, v291, v293, v311, v313, v314, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v392);
                    v316 = v163;
                    if (!v163)
                    {
                      v278 = *(v677 + 3952);
                      v279 = *(v677 + 3872);
                      v280 = *(v677 + 3856);
                      v281 = *(v677 + 3760);
                      v282 = *(v677 + 3736);
                      v283 = *(v677 + 3712);
                      v284 = *(v677 + 3696);

                      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      MEMORY[0x277D82BD8](v282);
                      MEMORY[0x277D82BD8](v283);

                      v285 = v315;
                      goto LABEL_147;
                    }

                    v184 = *(v677 + 3952);
                    v185 = *(v677 + 3872);
                    v186 = *(v677 + 3856);
                    v187 = *(v677 + 3760);
                    v188 = *(v677 + 3736);
                    v189 = *(v677 + 3712);
                    v190 = *(v677 + 3696);

                    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    MEMORY[0x277D82BD8](v188);
                    MEMORY[0x277D82BD8](v189);

                    v234 = v316;
                  }

                  else
                  {
                    v164 = v677;
                    *(v677 + 4319) = *(v677 + 4359);
                    *(v164 + 4324) = 1;
                    if (== infix<A>(_:_:)())
                    {
                      v276 = PFLTask.evalModelNames(taskType:hyperParams:)(*(v677 + 4359), *(v677 + 3696));
                      v277 = v393;
                      if (!v393)
                      {
                        v251 = *(v677 + 4260);
                        v248 = *(v677 + 3696);
                        v247 = *(v677 + 3528);
                        v249 = *(v677 + 2808);

                        v250 = *(v677 + 2848);

                        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v677 + 184), (v677 + 856));
                        v252 = *(v677 + 184);
                        v253 = *(v677 + 192);
                        v271 = *(v677 + 200);
                        v273 = *(v677 + 208);
                        v254 = *(v677 + 216);
                        v255 = *(v677 + 224);
                        v256 = *(v677 + 232);
                        v257 = *(v677 + 240);
                        v258 = *(v677 + 248);
                        v259 = *(v677 + 256);
                        v260 = *(v677 + 264);
                        v261 = *(v677 + 272);
                        v262 = *(v677 + 280);
                        v263 = *(v677 + 288);
                        v264 = *(v677 + 296);
                        v265 = *(v677 + 304);
                        v266 = *(v677 + 312);
                        v267 = *(v677 + 320);
                        v268 = *(v677 + 328);
                        v269 = *(v677 + 336);
                        v270 = *(v677 + 344);
                        v272 = v180;
                        v274 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v276, v247, v248, v249, v250, v251, v252, v253, v271, v273, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v392);
                        v275 = 0;
                        v240 = *(v677 + 3952);
                        v241 = *(v677 + 3872);
                        v242 = *(v677 + 3856);
                        v243 = *(v677 + 3760);
                        v244 = *(v677 + 3736);
                        v245 = *(v677 + 3712);
                        v246 = *(v677 + 3696);

                        outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();

                        outlined destroy of [(start: UInt32, end: UInt32)]();

                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();

                        MEMORY[0x277D82BD8](v244);
                        MEMORY[0x277D82BD8](v245);

                        v285 = v274;
LABEL_147:
                        v217 = v285;
                        v209 = *(v677 + 3664);
                        v210 = *(v677 + 3640);
                        v211 = *(v677 + 3632);
                        v212 = *(v677 + 3608);
                        v213 = *(v677 + 3600);
                        v214 = *(v677 + 3576);
                        v215 = *(v677 + 3568);
                        v216 = *(v677 + 3560);

                        v177 = v217;
                        v178 = *(*(v677 + 2632) + 8);

                        return v178(v177);
                      }

                      v180[37] = *(v677 + 3952);
                      v180[38] = *(v677 + 3872);
                      v180[39] = *(v677 + 3856);
                      v180[40] = *(v677 + 3760);
                      v181 = *(v677 + 3736);
                      v182 = *(v677 + 3712);
                      v183 = *(v677 + 3696);

                      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      MEMORY[0x277D82BD8](v181);
                      MEMORY[0x277D82BD8](v182);

                      v234 = v277;
                    }

                    else
                    {
                      v165 = v677;
                      *(v677 + 4325) = *(v677 + 4359);
                      *(v165 + 4326) = 2;
                      if (== infix<A>(_:_:)())
                      {
                        v238 = *(v677 + 3872);
                        v237 = *(v677 + 4268);
                        v235 = *(v677 + 3696);
                        v236 = *(v677 + 3536);

                        v166 = swift_task_alloc();
                        v167 = v235;
                        v168 = v236;
                        v169 = v237;
                        v170 = v238;
                        v171 = v677;
                        v239 = v166;
                        *(v677 + 4216) = v166;
                        *(v166 + 16) = v167;
                        *(v166 + 24) = v171 + 2848;
                        *(v166 + 32) = v168;
                        *(v166 + 40) = v169;
                        *(v166 + 48) = v171 + 2720;
                        *(v166 + 56) = v171 + 2728;
                        *(v166 + 64) = v171 + 2736;
                        *(v166 + 72) = v171 + 2744;
                        *(v166 + 80) = v171 + 2808;
                        *(v166 + 88) = v170;
                        v172 = swift_task_alloc();
                        *(v677 + 4224) = v172;
                        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd, &_ss6UInt32V_ABtMR);
                        v174 = v677;
                        v57 = v694;
                        v58 = v239;
                        v59 = v173;
                        *v172 = *(v677 + 2632);
                        v172[1] = NightingaleDPFLRunner.run(task:useCase:context:);
                        v61 = v174 + 2436;
                        v62 = 9;
                        v63 = 1;

                        return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v61, v62, v63, v57, v58, v59);
                      }

                      v226 = *(v677 + 3952);
                      v227 = *(v677 + 3872);
                      v228 = *(v677 + 3856);
                      v229 = *(v677 + 3760);
                      v230 = *(v677 + 3736);
                      v231 = *(v677 + 3712);
                      v232 = *(v677 + 3696);
                      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
                      v233 = swift_allocError();
                      *v175 = 69;
                      swift_willThrow();

                      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      MEMORY[0x277D82BD8](v230);
                      MEMORY[0x277D82BD8](v231);

                      v234 = v233;
                    }
                  }
                }

LABEL_163:
                v180[22] = *(v677 + 3664);
                v180[23] = *(v677 + 3640);
                v180[24] = *(v677 + 3632);
                v180[25] = *(v677 + 3608);
                v180[26] = *(v677 + 3600);
                v180[27] = *(v677 + 3576);
                v180[28] = *(v677 + 3568);
                v180[29] = *(v677 + 3560);

                v177 = v526;
                v178 = *(*(v677 + 2632) + 8);

                return v178(v177);
              }

              __break(1u);
            }
          }
        }
      }
    }
  }

  return result;
}

{
  v1096 = v2;
  MEMORY[0x28223BE20](a1, a2);
  v1051 = v2;
  v1052 = partial apply for closure #1 in osLogInternal(_:log:type:);
  v1053 = partial apply for closure #8 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1054 = partial apply for closure #1 in osLogInternal(_:log:type:);
  v1055 = "Fatal error";
  v1056 = "Range requires lowerBound <= upperBound";
  v1057 = "Swift/Range.swift";
  v1058 = partial apply for closure #9 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1059 = closure #10 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1060 = closure #11 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1061 = closure #12 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1062 = closure #13 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1063 = closure #14 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1064 = closure #15 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1065 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1066 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1067 = closure #32 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1068 = "Swift/ClosedRange.swift";
  v1069 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1070 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1071 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1072 = &async function pointer to partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1073 = &async function pointer to partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1074 = &async function pointer to partial apply for closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1075 = closure #20 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1076 = closure #20 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1077 = &async function pointer to partial apply for closure #22 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1078 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1079 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1080 = "Negative value is not representable";
  v1081 = "Swift/Integers.swift";
  v1082 = &async function pointer to partial apply for closure #18 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1083 = "Not enough bits to represent the passed value";
  v1086 = *(v2 + 3904);
  v1087 = *(v2 + 4359);
  v1084 = *(v2 + 3696);
  v1085 = *(v2 + 3536);
  *(v2 + 2632) = v2;

  v3 = v1086;
  v4 = v1087;
  v1090 = v2 + 2872;
  *(v2 + 2872) = v1086;
  v1089 = v2 + 2465;
  *(v2 + 2465) = v4;
  v1088 = v2 + 2466;
  *(v2 + 2466) = 4;
  lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType();
  if (== infix<A>(_:_:)())
  {
    v428 = *(v1051 + 3864);
    v437 = *(v1051 + 3848);
    v433 = *(v1051 + 3840);
    v441 = *(v1051 + 3760);
    v440 = *(v1051 + 3752);
    v426 = *(v1051 + 3744);
    v431 = *(v1051 + 3704);
    v444 = *(v1051 + 3696);
    v421 = *(v1051 + 2848);

    v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd, &_s19NightingaleTraining9Pregnancy_pMR);
    v442 = MEMORY[0x25F8895B0](v421);

    v253 = v1051;
    v424 = v1051 + 4354;
    *(v1051 + 4354) = 7;
    v423 = *(v253 + 2848);

    v425 = MEMORY[0x25F8895B0](v423, v422);

    v443 = Array.init(repeating:count:)();
    v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    v439 = _allocateUninitializedArray<A>(_:)();
    v436 = v254;
    v255 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v255, v436);
    v256 = v426;
    v257 = v436;
    v430 = MEMORY[0x277D839F8];
    v436[5] = MEMORY[0x277D839F8];
    v257[2] = v256;
    v427 = v257 + 6;
    Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
    outlined init with copy of String(Duration, v427);
    v259 = v428;
    v260 = v436;
    v436[11] = v430;
    v260[8] = v259;
    v429 = v260 + 12;
    v261 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
    outlined init with copy of String(v261, v429);
    v262 = v431;
    v263 = v436;
    v436[17] = v430;
    v263[14] = v262;
    v432 = v263 + 18;
    v264 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
    outlined init with copy of String(v264, v432);
    v265 = v433;
    v266 = v436;
    v435 = MEMORY[0x277D83B88];
    v436[23] = MEMORY[0x277D83B88];
    v266[20] = v265;
    v434 = v266 + 24;
    v267 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
    outlined init with copy of String(v267, v434);
    v268 = v436;
    v269 = v437;
    v436[29] = v435;
    v268[26] = v269;
    _finalizeUninitializedArray<A>(_:)();
    v445 = Dictionary.init(dictionaryLiteral:)();
    v446 = NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)(v444, v440, v441, v442, v443, v445, -1.0);
    v447 = 0;
    v414 = *(v1051 + 3904);
    v415 = *(v1051 + 3872);
    v416 = *(v1051 + 3856);
    v417 = *(v1051 + 3760);
    v418 = *(v1051 + 3736);
    v419 = *(v1051 + 3712);
    v420 = *(v1051 + 3696);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v418);
    MEMORY[0x277D82BD8](v419);

    v563 = v446;
    goto LABEL_136;
  }

  v412 = *(v1051 + 3696);
  started = HyperParams.useFactorStartDateAsLMP.getter();

  if (started)
  {
    v411 = 1;
  }

  else
  {
    v411 = HyperParams.useTestDateAsLMP.getter();
  }

  v410 = v411;

  if ((v411 & 1) == 0)
  {
    v406 = *(v1051 + 3904);
    v408 = *(v1051 + 3584);
    v409 = *(v1051 + 3576);
    v270 = v406;
    v407 = v1051 + 2880;
    *(v1051 + 2880) = v406;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      (*(*(v1051 + 3592) + 56))(*(v1051 + 3576), 0, 1, *(v1051 + 3584));
    }

    else
    {
      (*(*(v1051 + 3592) + 56))(*(v1051 + 3576), 1, 1, *(v1051 + 3584));
    }

    if ((*(*(v1051 + 3592) + 48))(*(v1051 + 3576), 1, *(v1051 + 3584)) == 1)
    {
      outlined destroy of PFLError?(*(v1051 + 3576));
    }

    else
    {
      v402 = *(v1051 + 3608);
      v405 = *(v1051 + 3600);
      v271 = *(v1051 + 3592);
      v404 = *(v1051 + 3584);
      v401 = v271;
      v403 = v271;
      (*(v271 + 32))();
      (*(v401 + 16))(v405, v402, v404);
      if ((*(v403 + 88))(v405, v404) == *MEMORY[0x277D413F0])
      {
        v389 = *(v1051 + 3904);
        v390 = *(v1051 + 3872);
        v391 = *(v1051 + 3856);
        v392 = *(v1051 + 3760);
        v393 = *(v1051 + 3736);
        v394 = *(v1051 + 3712);
        v395 = *(v1051 + 3696);
        v385 = *(v1051 + 3608);
        v274 = *(v1051 + 3600);
        v275 = *(v1051 + 3592);
        v386 = *(v1051 + 3584);
        v388 = *(v275 + 8);
        v387 = v275 + 8;
        v388(v274);
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v396 = swift_allocError();
        *v276 = 5;
        swift_willThrow();
        (v388)(v385, v386);

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v393);
        MEMORY[0x277D82BD8](v394);

        v922 = v396;
        goto LABEL_168;
      }

      v397 = *(v1051 + 3608);
      v272 = *(v1051 + 3600);
      v273 = *(v1051 + 3592);
      v398 = *(v1051 + 3584);
      v400 = *(v273 + 8);
      v399 = v273 + 8;
      v400(v272);
      (v400)(v397, v398);
    }

    v378 = *(v1051 + 3904);
    v379 = *(v1051 + 3872);
    v380 = *(v1051 + 3856);
    v381 = *(v1051 + 3760);
    v382 = *(v1051 + 3736);
    v383 = *(v1051 + 3712);
    v384 = *(v1051 + 3696);
    swift_willThrow();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v382);
    MEMORY[0x277D82BD8](v383);

    v922 = *(v1051 + 3904);
LABEL_168:
    v293[22] = *(v1051 + 3664);
    v293[23] = *(v1051 + 3640);
    v293[24] = *(v1051 + 3632);
    v293[25] = *(v1051 + 3608);
    v293[26] = *(v1051 + 3600);
    v293[27] = *(v1051 + 3576);
    v293[28] = *(v1051 + 3568);
    v293[29] = *(v1051 + 3560);

    v251 = v1003;
    v252 = *(*(v1051 + 2632) + 8);

    return v252(v251);
  }

  v277 = *(v1051 + 3568);
  v278 = *(v1051 + 3552);
  v374 = *(v1051 + 3544);
  v373 = v278;
  v279 = Logging.default.unsafeMutableAddressor();
  (*(v373 + 16))(v277, v279, v374);
  oslog = Logger.logObject.getter();
  v375 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v377 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v375))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v362 = 0;
    v364 = createStorage<A>(capacity:type:)(0, v361, v361);
    v280 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v281 = v364;
    v282 = v1051;
    v365 = v280;
    v283 = (v1051 + 3424);
    v367 = (v1051 + 3424);
    *(v1051 + 3424) = buf;
    v368 = v282 + 3432;
    *(v282 + 3432) = v281;
    v369 = v282 + 3440;
    *(v282 + 3440) = v280;
    v366 = 0;
    serialize(_:at:)(0, v283);
    serialize(_:at:)(0, v367);
    *(v1051 + 3448) = v377;
    v284 = swift_task_alloc();
    v285 = v368;
    v286 = v369;
    v370 = v284;
    v284[2] = v367;
    v284[3] = v285;
    v284[4] = v286;
    v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v372 = 0;

    _os_log_impl(&dword_25C4D8000, oslog, v375, "Ignore failed to query updating features.", buf, 2u);
    v359 = 0;
    destroyStorage<A>(_:count:)(v364, 0, v361);
    destroyStorage<A>(_:count:)(v365, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x25F8899D0](buf, MEMORY[0x277D84B78]);
  }

  v360 = 0;
  v335 = *(v1051 + 3904);
  v333 = *(v1051 + 3568);
  v287 = *(v1051 + 3552);
  v334 = *(v1051 + 3544);
  v332 = v287;
  MEMORY[0x277D82BD8](oslog);
  (*(v332 + 8))(v333, v334);

  v357 = v1051 + 2640;
  v344 = v1051 + 2696;
  v345 = v1051 + 2704;
  v346 = v1051 + 2712;
  v347 = v1051 + 4352;
  v358 = v1051 + 2536;
  v348 = v1051 + 4248;
  v349 = v1051 + 2816;
  v350 = v1051 + 2824;
  v351 = v1051 + 2832;
  v352 = v1051 + 4256;
  v353 = v1051 + 2840;
  v354 = v1051 + 2856;
  v343 = *(v1051 + 3872);
  v356 = *(v1051 + 3784);
  v340 = *(v1051 + 3536);
  v337 = NightingaleDPFLRunner.performanceMeasure.getter();
  v339 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryUpdatingFeatures", 0x15uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v338 = v288;
  *(v1051 + 3912) = v288;

  v355 = v1051 + 2888;
  *(v1051 + 2888) = v338;
  v289 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryUpdatingFeaturesCompleted, v289);
  v342 = NightingaleDPFLRunner.performanceMeasure.getter();
  v341 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdatePregnancies", 0x11uLL, v339 & 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v290 = swift_task_alloc();
  v291 = v1051;
  v1045 = v290;
  v290[2] = v343;
  v290[3] = v291 + 2720;
  v290[4] = v291 + 2728;
  v290[5] = v291 + 2736;
  v290[6] = v291 + 2744;
  v292 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(5, v292 & 1, v1045, v356, v1051 + 2896);
  v1046 = 0;
  v1048 = 0;
  v1047 = *(v1051 + 3872);

  *(v1051 + 2808) = *(v1051 + 2896);

  v1049 = v1048;
  v1050 = 0;
  v1040 = v1050;
  v1041 = v1049;
  v1091 = 0;
  v1043 = *(v1051 + 2848);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd, &_s19NightingaleTraining9Pregnancy_pMR);
  v6 = v1043;
  v1042 = v5;
  *(v1051 + 3920) = v5;
  v1044 = MEMORY[0x25F8895B0](v6);

  v1092 = v1044;
  if (v1044 < v1091)
  {
    return _assertionFailure(_:_:file:line:flags:)(v1055, 11, 2, v1056, 39, 2, v1057, 17, 2, 760, 0);
  }

  v8 = v1051;
  v1093 = v1091;
  v1094 = v1092;
  v9 = v1092;
  *(v1051 + 2552) = v1091;
  *(v8 + 2560) = v9;
  v1038 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  *(v1051 + 3928) = v1038;
  *(v1051 + 3936) = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  for (i = v1040; ; i = v1035)
  {
    v1035 = i;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    v11 = v1051;
    *(v1051 + 3944) = v10;
    v1036 = v11 + 2600;
    IndexingIterator.next()();
    v1037 = *(v1051 + 2600);
    if (*(v1036 + 8))
    {
      break;
    }

    v12 = v1051;
    v1033 = v1051 + 3384;
    *(v1051 + 3384) = v1037;
    v1032 = (v12 + 1752);
    Array.subscript.getter();
    v1027 = *(v1051 + 1776);
    v1024 = *(v1051 + 1784);
    v1023 = __swift_project_boxed_opaque_existential_1(v1032, v1027);
    v1025 = *(v1027 - 8);
    v1026 = v1027 - 8;
    v1031 = swift_task_alloc();
    (*(v1025 + 16))(v1031, v1023, v1027);
    v1028 = (*(v1024 + 48))(v1027);
    (*(v1025 + 8))(v1031, v1027);
    v13 = v1051;
    v1030 = v1051 + 4350;
    *(v1051 + 4350) = v1028;
    v1029 = v13 + 4351;
    *(v13 + 4351) = 2;
    lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
    v1034 = == infix<A>(_:_:)();

    __swift_destroy_boxed_opaque_existential_1(v1032);
    if (v1034)
    {
      v1015 = *(v1051 + 3696);
      v1022 = *(v1051 + 2808);

      v1016 = HyperParams.useSeahorseInferredStartdate.getter();
      v1017 = HyperParams.useTestDateAsLMP.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
      v1020 = v1051 + 2240;
      v1021 = Array.subscript.modify();
      v1018 = *(v14 + 24);
      v1019 = *(v14 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v14, v1018);
      (*(v1019 + 112))(v1022, v1016 & 1, v1017 & 1, v1018);
      v1021();
    }

    else
    {
      v1007 = *(v1051 + 3696);
      v1014 = *(v1051 + 2808);

      v1008 = HyperParams.useSeahorseInferredStartdate.getter();
      v1009 = HyperParams.useFactorStartDateAsLMP.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
      v1012 = v1051 + 2208;
      v1013 = Array.subscript.modify();
      v1010 = *(v15 + 24);
      v1011 = *(v15 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v15, v1010);
      (*(v1011 + 112))(v1014, v1008 & 1, v1009 & 1, v1010);
      v1013();
    }
  }

  v16 = v1041;
  v1004 = *(v1051 + 2848);

  v17 = HyperParams.overlapPregnanciesStrategy.getter();
  v1005 = mergePregnancies(pregnancies:strategy:)(v1004, v17 & 1);
  *(v1051 + 3952) = v1005;
  v1006 = v16;
  if (v16)
  {
    v326 = *(v1051 + 3872);
    v327 = *(v1051 + 3856);
    v328 = *(v1051 + 3760);
    v329 = *(v1051 + 3736);
    v330 = *(v1051 + 3712);
    v331 = *(v1051 + 3696);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v329);
    MEMORY[0x277D82BD8](v330);

    v922 = v1006;
    goto LABEL_168;
  }

  v1000 = *(v1051 + 3848);
  v1001 = *(v1051 + 3840);

  v23 = v1000;
  v24 = v1001;
  *(v1051 + 2912) = v1005;
  v1002 = v24 - v23;
  if (__OFSUB__(v24, v23))
  {
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v18 = MEMORY[0x25F8895B0](v1005, v1042);
  v999 = v1002 - v18;
  v26 = __OFSUB__(v1002, v18);
  *(v1051 + 3960) = v1002 - v18;
  if (v26)
  {
    goto LABEL_172;
  }

  v27 = v1006;
  v991 = *(v1051 + 3696);
  v994 = v1051 + 2920;
  *(v1051 + 2920) = v999;
  v990 = 0;
  v992 = v1051 + 2928;
  *(v1051 + 2928) = _allocateUninitializedArray<A>(_:)();
  v28 = _allocateUninitializedArray<A>(_:)();
  v29 = v1005;
  v30 = v1051;
  v993 = v1051 + 2936;
  *(v1051 + 2936) = v28;
  *(v30 + 2944) = v29;

  v31 = swift_task_alloc();
  v32 = v992;
  v33 = v993;
  v34 = v1051;
  v995 = v31;
  v31[2] = v991;
  v31[3] = v34 + 2720;
  v31[4] = v32;
  v31[5] = v33;
  v996 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
  *(v1051 + 3968) = v996;
  v997 = lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
  *(v1051 + 3976) = v997;
  Sequence.forEach(_:)();
  v998 = v27;
  if (v27)
  {
    v325 = *(v1051 + 3696);
  }

  v981 = *(v1051 + 3696);

  v982 = *(v1051 + 2928);

  v35 = MEMORY[0x25F8895B0](v982, v1042);
  v36 = v1051;
  v983 = v35;
  *(v1051 + 3984) = v35;
  v985 = v36 + 2952;
  *(v36 + 2952) = v35;

  v984 = *(v1051 + 2936);

  *(v1051 + 2960) = v984;
  v986 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining22PregnancyInvalidReasonOGMd, &_sSay19NightingaleTraining22PregnancyInvalidReasonOGMR);
  v987 = lazy protocol witness table accessor for type [PregnancyInvalidReason] and conformance [A]();
  v988 = _ArrayProtocol.filter(_:)();
  v989 = 0;
  v37 = MEMORY[0x25F8895B0](v988, &type metadata for PregnancyInvalidReason);
  v38 = v1051;
  *(v1051 + 3992) = v37;
  v978 = v38 + 2968;
  *(v38 + 2968) = v37;

  *(v1051 + 2976) = v984;
  v979 = _ArrayProtocol.filter(_:)();
  v980 = 0;
  v39 = MEMORY[0x25F8895B0](v979, &type metadata for PregnancyInvalidReason);
  v40 = v1051;
  *(v1051 + 4000) = v39;
  v975 = v40 + 2984;
  *(v40 + 2984) = v39;

  *(v1051 + 2992) = v984;
  v976 = _ArrayProtocol.filter(_:)();
  v977 = 0;
  v41 = MEMORY[0x25F8895B0](v976, &type metadata for PregnancyInvalidReason);
  v42 = v1051;
  *(v1051 + 4008) = v41;
  v972 = v42 + 3000;
  *(v42 + 3000) = v41;

  *(v1051 + 3008) = v984;
  v973 = _ArrayProtocol.filter(_:)();
  v974 = 0;
  v43 = MEMORY[0x25F8895B0](v973, &type metadata for PregnancyInvalidReason);
  v44 = v1051;
  *(v1051 + 4016) = v43;
  v969 = v44 + 3016;
  *(v44 + 3016) = v43;

  *(v1051 + 3024) = v984;
  v970 = _ArrayProtocol.filter(_:)();
  v971 = 0;
  v45 = MEMORY[0x25F8895B0](v970, &type metadata for PregnancyInvalidReason);
  v46 = v1051;
  *(v1051 + 4024) = v45;
  v966 = v46 + 3032;
  *(v46 + 3032) = v45;

  *(v1051 + 3040) = v984;
  v967 = _ArrayProtocol.filter(_:)();
  v968 = 0;
  v960 = *(v1051 + 3536);
  v47 = MEMORY[0x25F8895B0](v967, &type metadata for PregnancyInvalidReason);
  v48 = v1051;
  *(v1051 + 4032) = v47;
  v964 = v48 + 3048;
  *(v48 + 3048) = v47;

  v962 = NightingaleDPFLRunner.performanceMeasure.getter();
  v961 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdatePregnancies", 0x11uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v963 = v49;
  *(v1051 + 4040) = v49;

  v965 = v1051 + 3056;
  *(v1051 + 3056) = v963;
  v50 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_updatePregnanciesCompleted, v50);
  if (v983 <= 0)
  {
    v227 = v1051;
    v228 = *(v1051 + 4359);
    v496 = v1051 + 2610;
    *(v1051 + 2610) = v228;
    v495 = v227 + 2611;
    *(v227 + 2611) = 4;
    lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType();
    if ((== infix<A>(_:_:)() & 1) == 0)
    {
      v458 = *(v1051 + 3872);
      v459 = *(v1051 + 3856);
      v460 = *(v1051 + 3760);
      v461 = *(v1051 + 3736);
      v462 = *(v1051 + 3712);
      v463 = *(v1051 + 3696);
      v457 = 58;
      v249 = HIDPFLError.rawValue.getter(58);
      NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_checkValidPregnanciesCompleted, v249);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v464 = swift_allocError();
      *v250 = 58;
      swift_willThrow();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v461);
      MEMORY[0x277D82BD8](v462);

      v922 = v464;
      goto LABEL_168;
    }

    v229 = v968;
    v474 = *(v1051 + 3864);
    v481 = *(v1051 + 3848);
    v478 = *(v1051 + 3840);
    v488 = *(v1051 + 3760);
    v487 = *(v1051 + 3752);
    v472 = *(v1051 + 3744);
    v476 = *(v1051 + 3704);
    v491 = *(v1051 + 3696);
    v471 = *(v1051 + 2848);

    v489 = MEMORY[0x25F8895B0](v471, v1042);

    v490 = *(v1051 + 2936);

    v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    v486 = _allocateUninitializedArray<A>(_:)();
    v484 = v230;
    v231 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v231, v484);
    v232 = v472;
    v233 = v484;
    v483 = MEMORY[0x277D839F8];
    v484[5] = MEMORY[0x277D839F8];
    v233[2] = v232;
    v473 = v233 + 6;
    v234 = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v234, v473);
    v235 = v474;
    v236 = v484;
    v484[11] = v483;
    v236[8] = v235;
    v475 = v236 + 12;
    v237 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
    outlined init with copy of String(v237, v475);
    v238 = v476;
    v239 = v484;
    v484[17] = v483;
    v239[14] = v238;
    v477 = v239 + 18;
    v240 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
    outlined init with copy of String(v240, v477);
    v241 = v478;
    v242 = v484;
    v480 = MEMORY[0x277D83B88];
    v484[23] = MEMORY[0x277D83B88];
    v242[20] = v241;
    v479 = v242 + 24;
    v243 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
    outlined init with copy of String(v243, v479);
    v244 = v481;
    v245 = v484;
    v484[29] = v480;
    v245[26] = v244;
    v482 = v245 + 30;
    updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
    outlined init with copy of String(updated, v482);
    v247 = v484;
    v248 = v963;
    v484[35] = v483;
    v247[32] = v248;
    _finalizeUninitializedArray<A>(_:)();
    v492 = Dictionary.init(dictionaryLiteral:)();
    v493 = NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)(v491, v487, v488, v489, v490, v492, -1.0);
    v494 = v229;
    if (v229)
    {
      v319 = *(v1051 + 3872);
      v320 = *(v1051 + 3856);
      v321 = *(v1051 + 3760);
      v322 = *(v1051 + 3736);
      v323 = *(v1051 + 3712);
      v324 = *(v1051 + 3696);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v322);
      MEMORY[0x277D82BD8](v323);

      v922 = v494;
      goto LABEL_168;
    }

    v465 = *(v1051 + 3872);
    v466 = *(v1051 + 3856);
    v467 = *(v1051 + 3760);
    v468 = *(v1051 + 3736);
    v469 = *(v1051 + 3712);
    v470 = *(v1051 + 3696);

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v468);
    MEMORY[0x277D82BD8](v469);

    v563 = v493;
    goto LABEL_136;
  }

  v957 = *(v1051 + 4359);
  v51 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_checkValidPregnanciesCompleted, v51);
  v52 = v1051;
  v959 = v1051 + 2625;
  *(v1051 + 2625) = v957;
  v958 = v52 + 2626;
  *(v52 + 2626) = 4;
  *(v1051 + 4048) = lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType();
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v909 = *(v1051 + 3696);
    v911 = NightingaleDPFLRunner.performanceMeasure.getter();
    v912 = 1;
    v910 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchor", 0x16uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.start(_:)();

    v81 = HyperParams.sliceDeltaAnchor.getter();
    v82 = v1051;
    v914 = v1051 + 2627;
    *(v1051 + 2627) = v81 & 1;
    v913 = v82 + 4308;
    *(v82 + 4308) = 1;
    lazy protocol witness table accessor for type SliceDeltaAnchor and conformance SliceDeltaAnchor();
    if (== infix<A>(_:_:)())
    {
      v83 = v968;
      v907 = *(v1051 + 2928);

      *(v1051 + 3184) = v907;
      result = Sequence.min(by:)();
      v908 = v83;
      if (!v83)
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
        if (*(v1051 + 1336))
        {
          v902 = *(v1051 + 1336);
          v901 = *(v1051 + 1344);
          v903 = v1051 + 1312;
          __swift_project_boxed_opaque_existential_1((v1051 + 1312), v902);
          v904 = (*(v901 + 16))(v902);
          __swift_destroy_boxed_opaque_existential_1((v1051 + 1312));
          v905 = v904;
          v906 = 0;
        }

        else
        {
          outlined destroy of Pregnancy?((v1051 + 1312));
          v905 = 0;
          v906 = 1;
        }

        v900 = v905;
        if (v906 & 1) != 0 || ((v84 = v1051, v899 = v1051 + 4312, *(v1051 + 4312) = v900, v898 = *(v84 + 2928), , *(v1051 + 3192) = v898, Sequence.max(by:)(), outlined destroy of [(start: UInt32, end: UInt32)](), !*(v1051 + 1376)) ? (outlined destroy of Pregnancy?((v1051 + 1352)), v896 = 0, v897 = 1) : (v893 = *(v1051 + 1376), v892 = *(v1051 + 1384), v894 = v1051 + 1352, __swift_project_boxed_opaque_existential_1((v1051 + 1352), v893), v895 = (*(v892 + 16))(v893), __swift_destroy_boxed_opaque_existential_1((v1051 + 1352)), v896 = v895, v897 = 0), v891 = v896, (v897))
        {
          v879 = *(v1051 + 3872);
          v880 = *(v1051 + 3856);
          v881 = *(v1051 + 3760);
          v882 = *(v1051 + 3736);
          v883 = *(v1051 + 3712);
          v884 = *(v1051 + 3696);
          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v885 = swift_allocError();
          *v92 = 105;
          swift_willThrow();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v882);
          MEMORY[0x277D82BD8](v883);

          v922 = v885;
          goto LABEL_168;
        }

        v887 = *(v1051 + 3696);
        v886 = *(v1051 + 3536);
        v888 = v1051 + 4320;
        *(v1051 + 4320) = v891;
        v889 = HyperParams.rawSampleTimeout.getter();

        v85 = swift_allocObject();
        v86 = v886;
        v87 = v900;
        v88 = v887;
        v89 = v891;
        v890 = v85;
        *(v1051 + 4088) = v85;
        *(v85 + 16) = v86;
        *(v85 + 24) = v87;
        *(v85 + 32) = v88;
        *(v85 + 40) = v89;
        v90 = swift_task_alloc();
        v91 = v1051;
        v22.n128_f64[0] = v889;
        v19 = v1077;
        v20 = v890;
        *(v1051 + 4096) = v90;
        *v90 = *(v91 + 2632);
        v90[1] = NightingaleDPFLRunner.run(task:useCase:context:);
        v21 = *(v91 + 3888);
        v18 = v91 + 3200;

        return MEMORY[0x2821A2088](v18, v19, v20, v21, v22);
      }

      return result;
    }

    v870 = v1051 + 2640;
    v871 = v1051 + 2520;
    v872 = v1051 + 2648;
    v873 = v1051 + 2656;
    v874 = v1051 + 2664;
    v875 = v1051 + 2672;
    v876 = v1051 + 2680;
    v851 = v1051 + 2696;
    v877 = v1051 + 2704;
    v868 = v1051 + 2712;
    v853 = v1051 + 4256;
    v854 = v1051 + 2840;
    v855 = v1051 + 2856;
    v856 = v1051 + 2888;
    v857 = v1051 + 2912;
    v858 = v1051 + 2952;
    v859 = v1051 + 2968;
    v860 = v1051 + 2984;
    v861 = v1051 + 3000;
    v862 = v1051 + 3016;
    v863 = v1051 + 3032;
    v864 = v1051 + 3048;
    v865 = v1051 + 3056;
    v867 = *(v1051 + 3976);
    v866 = *(v1051 + 3968);
    v847 = *(v1051 + 3536);
    v845 = NightingaleDPFLRunner.performanceMeasure.getter();
    v848 = 1;
    v844 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchor", 0x16uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v846 = v93;
    *(v1051 + 4112) = v93;

    v869 = v1051 + 3064;
    *(v1051 + 3064) = v846;
    v94 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_updateSliceDeltaAnchorCompleted, v94);
    v850 = NightingaleDPFLRunner.performanceMeasure.getter();
    v849 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, v848 & 1)._object;
    dispatch thunk of PerformanceMeasure.start(_:)();

    v852 = *(v1051 + 2928);

    *(v1051 + 3072) = v852;
    result = Sequence.min(by:)();
    v878 = v968;
    if (v968)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v1051 + 1216))
    {
      v839 = *(v1051 + 1216);
      v838 = *(v1051 + 1224);
      v840 = v1051 + 1192;
      __swift_project_boxed_opaque_existential_1((v1051 + 1192), v839);
      v841 = (*(v838 + 64))(v839);
      __swift_destroy_boxed_opaque_existential_1((v1051 + 1192));
      v842 = v841;
      v843 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?((v1051 + 1192));
      v842 = 0;
      v843 = 1;
    }

    v95 = v843;
    v837 = v842;
    *(v1051 + 4284) = v842;
    if (v95)
    {
      goto LABEL_131;
    }

    v96 = v1051;
    v97 = v878;
    v835 = *(v1051 + 3976);
    v834 = *(v1051 + 3968);
    v833 = v1051 + 4264;
    *(v1051 + 4264) = v837;
    v832 = *(v96 + 2928);

    *(v1051 + 3080) = v832;
    result = Sequence.max(by:)();
    v836 = v97;
    if (v97)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v1051 + 1256))
    {
      v827 = *(v1051 + 1256);
      v826 = *(v1051 + 1264);
      v828 = v1051 + 1232;
      __swift_project_boxed_opaque_existential_1((v1051 + 1232), v827);
      v829 = (*(v826 + 64))(v827);
      __swift_destroy_boxed_opaque_existential_1((v1051 + 1232));
      v830 = v829;
      v831 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?((v1051 + 1232));
      v830 = 0;
      v831 = 1;
    }

    v98 = v831;
    v825 = v830;
    *(v1051 + 4292) = v830;
    if (v98)
    {
      goto LABEL_131;
    }

    v99 = v1051;
    v100 = v836;
    v823 = *(v1051 + 3976);
    v822 = *(v1051 + 3968);
    v821 = v1051 + 4272;
    *(v1051 + 4272) = v825;
    v820 = *(v99 + 2928);

    *(v1051 + 3088) = v820;
    result = Sequence.min(by:)();
    v824 = v100;
    if (v100)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v1051 + 1296))
    {
      v815 = *(v1051 + 1296);
      v814 = *(v1051 + 1304);
      v816 = v1051 + 1272;
      __swift_project_boxed_opaque_existential_1((v1051 + 1272), v815);
      v817 = (*(v814 + 8))(v815);
      __swift_destroy_boxed_opaque_existential_1((v1051 + 1272));
      v818 = v817;
      v819 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?((v1051 + 1272));
      v818 = 0;
      v819 = 1;
    }

    v813 = v818;
    if (v819)
    {
LABEL_131:
      v497 = *(v1051 + 3952);
      v498 = *(v1051 + 3872);
      v499 = *(v1051 + 3856);
      v500 = *(v1051 + 3760);
      v501 = *(v1051 + 3736);
      v502 = *(v1051 + 3712);
      v503 = *(v1051 + 3696);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v504 = swift_allocError();
      *v226 = 106;
      swift_willThrow();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v501);
      MEMORY[0x277D82BD8](v502);

      v922 = v504;
      goto LABEL_168;
    }

    *(v1051 + 4280) = v813;
    v18 = HyperParams.featureLookbackDays.getter();
    v812 = v813 - v18;
    v101 = v813 < v18;
    *(v1051 + 4300) = v813 - v18;
    if (!v101)
    {
      if (*(v1051 + 4260) < v812)
      {
        return _assertionFailure(_:_:file:line:flags:)(v1055, 11, 2, v1056, 39, 2, v1068, 23, 2, 409, 0);
      }

      v102 = v1051;
      v103 = *(v1051 + 4260);
      v811 = v1051 + 2428;
      *(v1051 + 2428) = v812;
      *(v102 + 2432) = v103;
      *(v1051 + 3096) = _allocateUninitializedArray<A>(_:)();
      if (HyperParams.isHRVRequired()())
      {
        v810 = v1051 + 4334;
        *(v1051 + 4334) = 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
        Array.append(_:)();
      }

      if (HyperParams.isSpO2Required()())
      {
        v809 = v1051 + 4333;
        *(v1051 + 4333) = 10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
        Array.append(_:)();
      }

      if (HyperParams.isRespiratoryRateRequired()())
      {
        v808 = v1051 + 4332;
        *(v1051 + 4332) = 9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
        Array.append(_:)();
      }

      if (HyperParams.isSWTRequired()())
      {
        v807 = v1051 + 4327;
        *(v1051 + 4327) = 7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
        Array.append(_:)();
      }

      v805 = *(v1051 + 3096);

      *(v1051 + 3104) = v805;
      v804 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
      lazy protocol witness table accessor for type [HealthDataRawSampleType] and conformance [A]();
      v806 = Collection.isEmpty.getter();

      if ((v806 & 1) == 0)
      {
        v800 = *(v1051 + 4260);
        v798 = *(v1051 + 3696);
        v799 = *(v1051 + 3536);

        v104 = swift_task_alloc();
        v105 = v798;
        v106 = v799;
        v107 = v812;
        v108 = v800;
        v109 = v1051;
        v802 = v104;
        *(v1051 + 4120) = v104;
        *(v104 + 16) = v105;
        *(v104 + 24) = v109 + 3096;
        *(v104 + 32) = v106;
        *(v104 + 40) = v107;
        *(v104 + 44) = v108;
        *(v104 + 48) = v109 + 2760;
        *(v104 + 56) = v109 + 2768;
        *(v104 + 64) = v109 + 2776;
        *(v104 + 72) = v109 + 2752;
        v803 = MEMORY[0x277D84F78] + 8;
        v801 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
        v110 = swift_task_alloc();
        v111 = v1051;
        v112 = v801;
        v74 = v1074;
        v75 = v802;
        v76 = v803;
        v113 = v110;
        v77 = v1003;
        *(v1051 + 4128) = v113;
        *v113 = *(v111 + 2632);
        v113[1] = NightingaleDPFLRunner.run(task:useCase:context:);
        v78 = 8;
        v79 = v112 & 1;

        return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v77, v78, v79, v74, v75, v76);
      }

      v771 = v1051 + 2640;
      v789 = v1051 + 2520;
      v790 = v1051 + 2648;
      v791 = v1051 + 2656;
      v792 = v1051 + 2664;
      v793 = v1051 + 2672;
      v794 = v1051 + 2680;
      v795 = v1051 + 2688;
      v796 = v1051 + 2696;
      v788 = v1051 + 2704;
      v772 = v1051 + 4256;
      v773 = v1051 + 2840;
      v774 = v1051 + 2856;
      v775 = v1051 + 2888;
      v776 = v1051 + 2912;
      v777 = v1051 + 2920;
      v778 = v1051 + 2952;
      v770 = v1051 + 2984;
      v779 = v1051 + 3000;
      v780 = v1051 + 3016;
      v781 = v1051 + 3032;
      v782 = v1051 + 3048;
      v783 = v1051 + 3056;
      v784 = v1051 + 3064;
      v785 = v1051 + 4264;
      v786 = v1051 + 4272;
      v787 = v1051 + 4280;
      v797 = v1051 + 2428;
      *(v1051 + 3112) = 0;
      if (HyperParams.isSHRRequired()())
      {
        v765 = *(v1051 + 4300);
        v766 = *(v1051 + 4260);
        v764 = *(v1051 + 3696);
        v763 = *(v1051 + 3536);

        v114 = swift_task_alloc();
        v115 = v763;
        v116 = v764;
        v117 = v765;
        v118 = v766;
        v119 = v1051;
        v768 = v114;
        *(v1051 + 4144) = v114;
        *(v114 + 16) = v115;
        *(v114 + 24) = v116;
        *(v114 + 32) = v117;
        *(v114 + 36) = v118;
        *(v114 + 40) = v119 + 2784;
        *(v114 + 48) = v119 + 2792;
        *(v114 + 56) = v119 + 3112;
        v769 = MEMORY[0x277D84F78] + 8;
        v767 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
        v120 = swift_task_alloc();
        v121 = v1051;
        v122 = v767;
        v74 = v1073;
        v75 = v768;
        v76 = v769;
        v123 = v120;
        v77 = v1003;
        *(v1051 + 4152) = v123;
        *v123 = *(v121 + 2632);
        v123[1] = NightingaleDPFLRunner.run(task:useCase:context:);
        v78 = 8;
        v79 = v122 & 1;

        return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v77, v78, v79, v74, v75, v76);
      }

      v736 = v1051 + 2640;
      v754 = v1051 + 2520;
      v755 = v1051 + 2648;
      v756 = v1051 + 2656;
      v757 = v1051 + 2664;
      v758 = v1051 + 2672;
      v759 = v1051 + 2680;
      v760 = v1051 + 2688;
      v761 = v1051 + 2696;
      v753 = v1051 + 2704;
      v737 = v1051 + 4256;
      v738 = v1051 + 2840;
      v739 = v1051 + 2856;
      v740 = v1051 + 2888;
      v741 = v1051 + 2912;
      v742 = v1051 + 2920;
      v743 = v1051 + 2952;
      v735 = v1051 + 2984;
      v744 = v1051 + 3000;
      v745 = v1051 + 3016;
      v746 = v1051 + 3032;
      v747 = v1051 + 3048;
      v748 = v1051 + 3056;
      v749 = v1051 + 3064;
      v750 = v1051 + 4264;
      v751 = v1051 + 4272;
      v752 = v1051 + 4280;
      v762 = v1051 + 2428;
      if (HyperParams.isCalendarAlgorithmRequired()())
      {
        v728 = *(v1051 + 4292);
        v726 = *(v1051 + 4284);
        v731 = *(v1051 + 3872);
        v729 = *(v1051 + 4260);
        v727 = *(v1051 + 3696);
        v730 = *(v1051 + 3536);

        v124 = swift_task_alloc();
        v125 = v726;
        v126 = v727;
        v127 = v728;
        v128 = v729;
        v129 = v730;
        v130 = v731;
        v131 = v1051;
        v733 = v124;
        *(v1051 + 4168) = v124;
        *(v124 + 16) = v125;
        *(v124 + 24) = v126;
        *(v124 + 32) = v127;
        *(v124 + 36) = v128;
        *(v124 + 40) = v129;
        *(v124 + 48) = v131 + 2720;
        *(v124 + 56) = v131 + 2728;
        *(v124 + 64) = v131 + 2736;
        *(v124 + 72) = v131 + 2744;
        *(v124 + 80) = v130;
        *(v124 + 88) = v131 + 2800;
        *(v124 + 96) = v131 + 2808;
        v734 = MEMORY[0x277D84F78] + 8;
        v732 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
        v132 = swift_task_alloc();
        v133 = v1051;
        v134 = v732;
        v74 = v1072;
        v75 = v733;
        v76 = v734;
        v135 = v132;
        v77 = v1003;
        *(v1051 + 4176) = v135;
        *v135 = *(v133 + 2632);
        v135[1] = NightingaleDPFLRunner.run(task:useCase:context:);
        v78 = 8;
        v79 = v134 & 1;

        return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v77, v78, v79, v74, v75, v76);
      }

      v698 = v1051 + 2640;
      v716 = v1051 + 2520;
      v717 = v1051 + 2648;
      v718 = v1051 + 2656;
      v719 = v1051 + 2664;
      v720 = v1051 + 2672;
      v721 = v1051 + 2680;
      v722 = v1051 + 2688;
      v723 = v1051 + 2696;
      v724 = v1051 + 2704;
      v715 = v1051 + 2712;
      v699 = v1051 + 2840;
      v700 = v1051 + 2856;
      v701 = v1051 + 2888;
      v702 = v1051 + 2912;
      v703 = v1051 + 2920;
      v704 = v1051 + 2952;
      v705 = v1051 + 2968;
      v691 = v1051 + 3000;
      v706 = v1051 + 3016;
      v707 = v1051 + 3032;
      v708 = v1051 + 3048;
      v709 = v1051 + 3056;
      v710 = v1051 + 3064;
      v711 = v1051 + 4264;
      v712 = v1051 + 4272;
      v713 = v1051 + 4280;
      v714 = v1051 + 2428;
      v696 = *(v1051 + 3696);
      v688 = *(v1051 + 3536);
      v686 = NightingaleDPFLRunner.performanceMeasure.getter();
      v692 = 1;
      v685 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
      dispatch thunk of PerformanceMeasure.finish(_:)();
      v687 = v136;

      v725 = v1051 + 3120;
      *(v1051 + 3120) = v687;
      v137 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
      NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v137);
      v690 = NightingaleDPFLRunner.performanceMeasure.getter();
      v689 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v692 & 1)._object;
      dispatch thunk of PerformanceMeasure.start(_:)();

      v138 = HyperParams.metricsProcessEngine.getter();
      v139 = v1051;
      v694 = v1051 + 4309;
      *(v1051 + 4309) = v138 & v692;
      v693 = v139 + 4310;
      *(v139 + 4310) = 1;
      v695 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
      v697 = == infix<A>(_:_:)();

      if (v697)
      {
        v684 = 1;
      }

      else
      {
        v140 = HyperParams.featurizerEngine.getter();
        v141 = v1051;
        *(v1051 + 4311) = v140 & 1;
        *(v141 + 4316) = 1;
        v684 = == infix<A>(_:_:)();
      }

      v683 = v684;

      if (v684)
      {
        static HIDMorpheusExtensions.extendMorpheus()();
        v682 = v824;
        if (v824)
        {
          v312 = *(v1051 + 3952);
          v313 = *(v1051 + 3872);
          v314 = *(v1051 + 3856);
          v315 = *(v1051 + 3760);
          v316 = *(v1051 + 3736);
          v317 = *(v1051 + 3712);
          v318 = *(v1051 + 3696);
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v316);
          MEMORY[0x277D82BD8](v317);

          v922 = v682;
          goto LABEL_168;
        }

        static Math.extendMorpheus()();
        v681 = 0;
        v680 = 0;
      }

      else
      {
        v680 = v824;
      }

      v142 = v680;
      v676 = *(v1051 + 4260);
      v675 = *(v1051 + 3696);
      v672 = *(v1051 + 3536);
      v674 = *(v1051 + 3528);
      type metadata accessor for Featurizer();
      v143 = Featurizer.__allocating_init()();
      v144 = v1051;
      v673 = v143;
      *(v1051 + 4192) = v143;
      v677 = v144 + 3128;
      *(v144 + 3128) = v143;

      v145 = swift_task_alloc();
      v146 = v673;
      v147 = v674;
      v148 = v675;
      v149 = v676;
      v150 = v1051;
      v678 = v145;
      *(v1051 + 4200) = v145;
      *(v145 + 16) = v146;
      *(v145 + 24) = v147;
      *(v145 + 32) = v150 + 2928;
      *(v145 + 40) = v150 + 2752;
      *(v145 + 48) = v150 + 2760;
      *(v145 + 56) = v150 + 2776;
      *(v145 + 64) = v150 + 2768;
      *(v145 + 72) = v150 + 2784;
      *(v145 + 80) = v150 + 2792;
      *(v145 + 88) = v150 + 2800;
      *(v145 + 96) = v150 + 2808;
      *(v145 + 104) = v150 + 2744;
      *(v145 + 112) = v148;
      *(v145 + 120) = v149;
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd, &_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMR);
      NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v678, v151, v1051 + 16);
      v679 = v142;
      if (v142)
      {
        v305 = *(v1051 + 3952);
        v306 = *(v1051 + 3872);
        v307 = *(v1051 + 3856);
        v308 = *(v1051 + 3760);
        v309 = *(v1051 + 3736);
        v310 = *(v1051 + 3712);
        v311 = *(v1051 + 3696);
        v304 = *(v1051 + 3528);

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v309);
        MEMORY[0x277D82BD8](v310);

        v922 = v679;
        goto LABEL_168;
      }

      v610 = *(v1051 + 4112);
      v608 = *(v1051 + 4040);
      v638 = *(v1051 + 4032);
      v635 = *(v1051 + 4024);
      v633 = *(v1051 + 4016);
      v631 = *(v1051 + 4008);
      v629 = *(v1051 + 4000);
      v627 = *(v1051 + 3992);
      v625 = *(v1051 + 3984);
      v623 = *(v1051 + 3960);
      v606 = *(v1051 + 3912);
      v604 = *(v1051 + 3864);
      v621 = *(v1051 + 3848);
      v619 = *(v1051 + 3840);
      v602 = *(v1051 + 3744);
      v617 = *(v1051 + 3704);
      v599 = *(v1051 + 3696);
      v598 = *(v1051 + 3528);

      v641 = (v1051 + 184);
      v664 = v1051 + 16;
      memcpy((v1051 + 184), (v1051 + 16), 0xA8uLL);
      v601 = NightingaleDPFLRunner.performanceMeasure.getter();
      v600 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
      dispatch thunk of PerformanceMeasure.finish(_:)();
      v614 = v152;

      v665 = v1051 + 3136;
      *(v1051 + 3136) = v614;
      v639 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      v640 = _allocateUninitializedArray<A>(_:)();
      v637 = v153;
      v154 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v154, v637);
      v155 = v602;
      v156 = v637;
      v616 = MEMORY[0x277D839F8];
      v637[5] = MEMORY[0x277D839F8];
      v156[2] = v155;
      v603 = v156 + 6;
      v157 = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v157, v603);
      v158 = v604;
      v159 = v637;
      v637[11] = v616;
      v159[8] = v158;
      v605 = v159 + 12;
      v160 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v160, v605);
      v161 = v606;
      v162 = v637;
      v637[17] = v616;
      v162[14] = v161;
      v607 = v162 + 18;
      v163 = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v163, v607);
      v164 = v608;
      v165 = v637;
      v637[23] = v616;
      v165[20] = v164;
      v609 = v165 + 24;
      v166 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v166, v609);
      v167 = v610;
      v168 = v637;
      v637[29] = v616;
      v168[26] = v167;
      v611 = v168 + 30;
      v169 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v169, v611);
      v170 = v637;
      v171 = *(v1051 + 3112);
      v637[35] = v616;
      v170[32] = v171;
      v612 = v170 + 36;
      v172 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v172, v612);
      v173 = v687;
      v174 = v637;
      v637[41] = v616;
      v174[38] = v173;
      v613 = v174 + 42;
      v175 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v175, v613);
      v176 = v614;
      v177 = v637;
      v637[47] = v616;
      v177[44] = v176;
      v615 = v177 + 48;
      v178 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
      outlined init with copy of String(v178, v615);
      v179 = v617;
      v180 = v637;
      v637[53] = v616;
      v180[50] = v179;
      v618 = v180 + 54;
      v181 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
      outlined init with copy of String(v181, v618);
      v182 = v619;
      v183 = v637;
      v642 = MEMORY[0x277D83B88];
      v637[59] = MEMORY[0x277D83B88];
      v183[56] = v182;
      v620 = v183 + 60;
      v184 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
      outlined init with copy of String(v184, v620);
      v185 = v621;
      v186 = v637;
      v637[65] = v642;
      v186[62] = v185;
      v622 = v186 + 66;
      v187 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v187, v622);
      v188 = v623;
      v189 = v637;
      v637[71] = v642;
      v189[68] = v188;
      v624 = v189 + 72;
      v190 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
      outlined init with copy of String(v190, v624);
      v191 = v625;
      v192 = v637;
      v637[77] = v642;
      v192[74] = v191;
      v626 = v192 + 78;
      v193 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v193, v626);
      v194 = v627;
      v195 = v637;
      v637[83] = v642;
      v195[80] = v194;
      v628 = v195 + 84;
      v196 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v196, v628);
      v197 = v629;
      v198 = v637;
      v637[89] = v642;
      v198[86] = v197;
      v630 = v198 + 90;
      v199 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v199, v630);
      v200 = v631;
      v201 = v637;
      v637[95] = v642;
      v201[92] = v200;
      v632 = v201 + 96;
      v202 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v202, v632);
      v203 = v633;
      v204 = v637;
      v637[101] = v642;
      v204[98] = v203;
      v634 = v204 + 102;
      v205 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v205, v634);
      v206 = v635;
      v207 = v637;
      v637[107] = v642;
      v207[104] = v206;
      v636 = v207 + 108;
      v208 = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v208, v636);
      v209 = v637;
      v210 = v638;
      v637[113] = v642;
      v209[110] = v210;
      _finalizeUninitializedArray<A>(_:)();
      v667 = MEMORY[0x277D837D0];
      v668 = MEMORY[0x277D84F70] + 8;
      v669 = MEMORY[0x277D837E0];
      v666 = Dictionary.init(dictionaryLiteral:)();
      outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v641, (v1051 + 352));
      v643 = *(v1051 + 184);
      v644 = *(v1051 + 192);
      v645 = *(v1051 + 200);
      v646 = *(v1051 + 208);
      v647 = *(v1051 + 216);
      v648 = *(v1051 + 224);
      v649 = *(v1051 + 232);
      v650 = *(v1051 + 240);
      v651 = *(v1051 + 248);
      v652 = *(v1051 + 256);
      v653 = *(v1051 + 264);
      v654 = *(v1051 + 272);
      v655 = *(v1051 + 280);
      v656 = *(v1051 + 288);
      v657 = *(v1051 + 296);
      v658 = *(v1051 + 304);
      v659 = *(v1051 + 312);
      v660 = *(v1051 + 320);
      v661 = *(v1051 + 328);
      v662 = *(v1051 + 336);
      v663 = *(v1051 + 344);
      _dictionaryUpCast<A, B, C, D>(_:)();
      v670 = Dictionary.merging(_:uniquingKeysWith:)();
      *(v1051 + 4208) = v670;
      v671 = 0;
      v596 = *(v1051 + 4048);
      v595 = *(v1051 + 4359);

      v211 = v595;
      v212 = v1051;
      v597 = v1051 + 3144;
      *(v1051 + 3144) = v670;
      *(v212 + 4317) = v211;
      *(v212 + 4318) = 0;
      if (== infix<A>(_:_:)())
      {
        v213 = v671;
        v569 = *(v1051 + 4260);
        v565 = *(v1051 + 3760);
        v564 = *(v1051 + 3752);
        v566 = *(v1051 + 3696);
        v570 = *(v1051 + 3528);
        v567 = *(v1051 + 2808);

        v568 = *(v1051 + 2848);

        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v1051 + 184), (v1051 + 1024));
        v571 = *(v1051 + 184);
        v589 = *(v1051 + 192);
        v591 = *(v1051 + 200);
        v592 = *(v1051 + 208);
        v572 = *(v1051 + 216);
        v573 = *(v1051 + 224);
        v574 = *(v1051 + 232);
        v575 = *(v1051 + 240);
        v576 = *(v1051 + 248);
        v577 = *(v1051 + 256);
        v578 = *(v1051 + 264);
        v579 = *(v1051 + 272);
        v580 = *(v1051 + 280);
        v581 = *(v1051 + 288);
        v582 = *(v1051 + 296);
        v583 = *(v1051 + 304);
        v584 = *(v1051 + 312);
        v585 = *(v1051 + 320);
        v586 = *(v1051 + 328);
        v587 = *(v1051 + 336);
        v588 = *(v1051 + 344);
        v590 = v293;
        v593 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v570, v564, v565, v566, v567, v568, v569, v571, v589, v591, v592, v572, v573, v574, v575, v576, v577, v578, v579, v580, v581, v582, v583, v584, v585, v586, v587, v588, v670);
        v594 = v213;
        if (v213)
        {
          v297 = *(v1051 + 3952);
          v298 = *(v1051 + 3872);
          v299 = *(v1051 + 3856);
          v300 = *(v1051 + 3760);
          v301 = *(v1051 + 3736);
          v302 = *(v1051 + 3712);
          v303 = *(v1051 + 3696);

          outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v301);
          MEMORY[0x277D82BD8](v302);

          v922 = v594;
          goto LABEL_168;
        }

        v556 = *(v1051 + 3952);
        v557 = *(v1051 + 3872);
        v558 = *(v1051 + 3856);
        v559 = *(v1051 + 3760);
        v560 = *(v1051 + 3736);
        v561 = *(v1051 + 3712);
        v562 = *(v1051 + 3696);

        outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v560);
        MEMORY[0x277D82BD8](v561);

        v563 = v593;
      }

      else
      {
        v214 = v1051;
        *(v1051 + 4319) = *(v1051 + 4359);
        *(v214 + 4324) = 1;
        if ((== infix<A>(_:_:)() & 1) == 0)
        {
          v215 = v1051;
          *(v1051 + 4325) = *(v1051 + 4359);
          *(v215 + 4326) = 2;
          if ((== infix<A>(_:_:)() & 1) == 0)
          {
            v505 = *(v1051 + 3952);
            v506 = *(v1051 + 3872);
            v507 = *(v1051 + 3856);
            v508 = *(v1051 + 3760);
            v509 = *(v1051 + 3736);
            v510 = *(v1051 + 3712);
            v511 = *(v1051 + 3696);
            lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
            v512 = swift_allocError();
            *v225 = 69;
            swift_willThrow();

            outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();

            MEMORY[0x277D82BD8](v509);
            MEMORY[0x277D82BD8](v510);

            v922 = v512;
            goto LABEL_168;
          }

          v516 = *(v1051 + 3872);
          v515 = *(v1051 + 4268);
          v513 = *(v1051 + 3696);
          v514 = *(v1051 + 3536);

          v216 = swift_task_alloc();
          v217 = v513;
          v218 = v514;
          v219 = v515;
          v220 = v516;
          v221 = v1051;
          v517 = v216;
          *(v1051 + 4216) = v216;
          *(v216 + 16) = v217;
          *(v216 + 24) = v221 + 2848;
          *(v216 + 32) = v218;
          *(v216 + 40) = v219;
          *(v216 + 48) = v221 + 2720;
          *(v216 + 56) = v221 + 2728;
          *(v216 + 64) = v221 + 2736;
          *(v216 + 72) = v221 + 2744;
          *(v216 + 80) = v221 + 2808;
          *(v216 + 88) = v220;
          v222 = swift_task_alloc();
          *(v1051 + 4224) = v222;
          v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd, &_ss6UInt32V_ABtMR);
          v224 = v1051;
          v74 = v1071;
          v75 = v517;
          v76 = v223;
          *v222 = *(v1051 + 2632);
          v222[1] = NightingaleDPFLRunner.run(task:useCase:context:);
          v77 = v224 + 2436;
          v78 = 9;
          v79 = 1;

          return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v77, v78, v79, v74, v75, v76);
        }

        v554 = PFLTask.evalModelNames(taskType:hyperParams:)(*(v1051 + 4359), *(v1051 + 3696));
        v555 = v671;
        if (v671)
        {
          v293[37] = *(v1051 + 3952);
          v293[38] = *(v1051 + 3872);
          v293[39] = *(v1051 + 3856);
          v293[40] = *(v1051 + 3760);
          v294 = *(v1051 + 3736);
          v295 = *(v1051 + 3712);
          v296 = *(v1051 + 3696);

          outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v294);
          MEMORY[0x277D82BD8](v295);

          v922 = v555;
          goto LABEL_168;
        }

        v529 = *(v1051 + 4260);
        v526 = *(v1051 + 3696);
        v525 = *(v1051 + 3528);
        v527 = *(v1051 + 2808);

        v528 = *(v1051 + 2848);

        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v1051 + 184), (v1051 + 856));
        v530 = *(v1051 + 184);
        v531 = *(v1051 + 192);
        v549 = *(v1051 + 200);
        v551 = *(v1051 + 208);
        v532 = *(v1051 + 216);
        v533 = *(v1051 + 224);
        v534 = *(v1051 + 232);
        v535 = *(v1051 + 240);
        v536 = *(v1051 + 248);
        v537 = *(v1051 + 256);
        v538 = *(v1051 + 264);
        v539 = *(v1051 + 272);
        v540 = *(v1051 + 280);
        v541 = *(v1051 + 288);
        v542 = *(v1051 + 296);
        v543 = *(v1051 + 304);
        v544 = *(v1051 + 312);
        v545 = *(v1051 + 320);
        v546 = *(v1051 + 328);
        v547 = *(v1051 + 336);
        v548 = *(v1051 + 344);
        v550 = v293;
        v552 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v554, v525, v526, v527, v528, v529, v530, v531, v549, v551, v532, v533, v534, v535, v536, v537, v538, v539, v540, v541, v542, v543, v544, v545, v546, v547, v548, v670);
        v553 = 0;
        v518 = *(v1051 + 3952);
        v519 = *(v1051 + 3872);
        v520 = *(v1051 + 3856);
        v521 = *(v1051 + 3760);
        v522 = *(v1051 + 3736);
        v523 = *(v1051 + 3712);
        v524 = *(v1051 + 3696);

        outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v522);
        MEMORY[0x277D82BD8](v523);

        v563 = v552;
      }

LABEL_136:
      v456 = v563;
      v448 = *(v1051 + 3664);
      v449 = *(v1051 + 3640);
      v450 = *(v1051 + 3632);
      v451 = *(v1051 + 3608);
      v452 = *(v1051 + 3600);
      v453 = *(v1051 + 3576);
      v454 = *(v1051 + 3568);
      v455 = *(v1051 + 3560);

      v251 = v456;
      v252 = *(*(v1051 + 2632) + 8);

      return v252(v251);
    }

LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v53 = v968;
  v954 = NightingaleDPFLRunner.performanceMeasure.getter();
  v953 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v955 = *(v1051 + 2928);

  *(v1051 + 3320) = v955;
  result = Sequence.min(by:)();
  v956 = v53;
  if (!v53)
  {
    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v1051 + 1656))
    {
      v948 = *(v1051 + 1656);
      v947 = *(v1051 + 1664);
      v949 = v1051 + 1632;
      __swift_project_boxed_opaque_existential_1((v1051 + 1632), v948);
      v950 = (*(v947 + 64))(v948);
      __swift_destroy_boxed_opaque_existential_1((v1051 + 1632));
      v951 = v950;
      v952 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?((v1051 + 1632));
      v951 = 0;
      v952 = 1;
    }

    v946 = v951;
    if (v952 & 1) != 0 || ((v54 = v1051, v945 = v1051 + 4336, *(v1051 + 4336) = v946, v944 = *(v54 + 2928), , *(v1051 + 3328) = v944, Sequence.max(by:)(), outlined destroy of [(start: UInt32, end: UInt32)](), !*(v1051 + 1696)) ? (outlined destroy of Pregnancy?((v1051 + 1672)), v942 = 0, v943 = 1) : (v939 = *(v1051 + 1696), v938 = *(v1051 + 1704), v940 = v1051 + 1672, __swift_project_boxed_opaque_existential_1((v1051 + 1672), v939), v941 = (*(v938 + 64))(v939), __swift_destroy_boxed_opaque_existential_1((v1051 + 1672)), v942 = v941, v943 = 0), v937 = v942, (v943))
    {
      v915 = *(v1051 + 3872);
      v916 = *(v1051 + 3856);
      v917 = *(v1051 + 3760);
      v918 = *(v1051 + 3736);
      v919 = *(v1051 + 3712);
      v920 = *(v1051 + 3696);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v921 = swift_allocError();
      *v80 = 55;
      swift_willThrow();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v918);
      MEMORY[0x277D82BD8](v919);

      v922 = v921;
      goto LABEL_168;
    }

    v55 = v946;
    *(v1051 + 4344) = v937;
    v1095 = v55;
    v935 = v55;
    v18 = HyperParams.minSliceAnchorDelta.getter();
    v936 = v935 + v18;
    if (!__OFADD__(v935, v18))
    {
      v18 = HyperParams.sliceSize.getter();
      v934 = v936 - v18;
      if (!__OFSUB__(v936, v18))
      {
        v933 = v934 + 1;
        v58 = __OFADD__(v934, 1);
        *(v1051 + 4056) = v934 + 1;
        if (!v58)
        {
          if (v933 < 0)
          {
            return _assertionFailure(_:_:file:line:flags:)(v1055, 11, 2, v1080, 35, 2, v1081, 20, 2, 3049, 0);
          }

          if (v933 > 0xFFFFFFFFLL)
          {
            return _assertionFailure(_:_:file:line:flags:)(v1055, 11, 2, v1083, 45, 2, v1081, 20, 2, 3053, 0);
          }

          v930 = v933;
          v931 = v937;
          v18 = HyperParams.maxSliceAnchorDelta.getter();
          v932 = v937 + v18;
          if (!__OFADD__(v937, v18))
          {
            if (v932 < 0)
            {
              return _assertionFailure(_:_:file:line:flags:)(v1055, 11, 2, v1080, 35, 2, v1081, 20, 2, 3049, 0);
            }

            if (v932 > 0xFFFFFFFFLL)
            {
              return _assertionFailure(_:_:file:line:flags:)(v1055, 11, 2, v1083, 45, 2, v1081, 20, 2, 3053, 0);
            }

            v60 = v1051;
            v61 = *(v1051 + 4260);
            *(v1051 + 2628) = v932;
            *(v60 + 4244) = v61;
            min<A>(_:_:)();
            v62 = v930;
            v63 = *(v1051 + 2612);
            v929 = v63;
            *(v1051 + 4276) = v63;
            if (v63 < v62)
            {
              return _assertionFailure(_:_:file:line:flags:)(v1055, 11, 2, v1056, 39, 2, v1068, 23, 2, 409, 0);
            }

            v64 = v1051;
            v65 = v929;
            v925 = *(v1051 + 3888);
            v923 = *(v1051 + 3696);
            v924 = *(v1051 + 3536);
            v926 = v1051 + 2452;
            *(v1051 + 2452) = v933;
            *(v64 + 2456) = v65;

            v66 = swift_task_alloc();
            v67 = v923;
            v68 = v924;
            v69 = v933;
            v70 = v929;
            v928 = v66;
            *(v1051 + 4064) = v66;
            *(v66 + 16) = v67;
            *(v66 + 24) = v68;
            *(v66 + 32) = v69;
            *(v66 + 36) = v70;
            v927 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
            v71 = swift_task_alloc();
            v72 = v1051;
            v73 = v927;
            v74 = v1082;
            v75 = v928;
            *(v1051 + 4072) = v71;
            *v71 = *(v72 + 2632);
            v71[1] = NightingaleDPFLRunner.run(task:useCase:context:);
            v76 = *(v72 + 3888);
            v77 = v72 + 3336;
            v78 = 8;
            v79 = v73 & 1;

            return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v77, v78, v79, v74, v75, v76);
          }

          goto LABEL_177;
        }

LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        return MEMORY[0x2821A2088](v18, v19, v20, v21, v22);
      }

LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  return result;
}

{
  v609 = v2;
  MEMORY[0x28223BE20](a1, a2);
  v577 = v2;
  v594 = partial apply for closure #29 in NightingaleDPFLRunner.run(task:useCase:context:);
  v565 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v566 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v567 = closure #32 in NightingaleDPFLRunner.run(task:useCase:context:);
  v568 = "Fatal error";
  v569 = "Range requires lowerBound <= upperBound";
  v570 = "Swift/ClosedRange.swift";
  v571 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v572 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v573 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v574 = &async function pointer to partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  v575 = &async function pointer to partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  v576 = &async function pointer to partial apply for closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  *(v2 + 2632) = v2;

  v579 = v577 + 2640;
  v597 = v577 + 2520;
  v598 = v577 + 2648;
  v599 = v577 + 2656;
  v600 = v577 + 2664;
  v601 = v577 + 2672;
  v602 = v577 + 2680;
  v603 = v577 + 2688;
  v604 = v577 + 2696;
  v578 = v577 + 2704;
  v596 = v577 + 4352;
  v580 = v577 + 2840;
  v581 = v577 + 2856;
  v582 = v577 + 2888;
  v583 = v577 + 2912;
  v584 = v577 + 2920;
  v585 = v577 + 2968;
  v586 = v577 + 2984;
  v587 = v577 + 3000;
  v588 = v577 + 3016;
  v589 = v577 + 3032;
  v590 = v577 + 3048;
  v591 = v577 + 3056;
  v592 = v577 + 4312;
  v593 = v577 + 4320;
  v606 = *(v577 + 4104);
  v595 = *(v577 + 3696);
  v3 = v606;
  v605 = v577 + 3208;
  *(v577 + 3208) = v606;

  static PFLUtils.throwIfFalse(error:for:)();
  v608 = 0;

  v199 = v577 + 2640;
  v200 = v577 + 2520;
  v201 = v577 + 2648;
  v202 = v577 + 2656;
  v203 = v577 + 2664;
  v204 = v577 + 2672;
  v205 = v577 + 2680;
  v180 = v577 + 2696;
  v206 = v577 + 2704;
  v197 = v577 + 2712;
  v182 = v577 + 4256;
  v183 = v577 + 2840;
  v184 = v577 + 2856;
  v185 = v577 + 2888;
  v186 = v577 + 2912;
  v187 = v577 + 2952;
  v188 = v577 + 2968;
  v189 = v577 + 2984;
  v190 = v577 + 3000;
  v191 = v577 + 3016;
  v192 = v577 + 3032;
  v193 = v577 + 3048;
  v194 = v577 + 3056;
  v196 = *(v577 + 3976);
  v195 = *(v577 + 3968);
  v176 = *(v577 + 3536);
  v174 = NightingaleDPFLRunner.performanceMeasure.getter();
  v177 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchor", 0x16uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v175 = v144;
  *(v577 + 4112) = v144;

  v198 = v577 + 3064;
  *(v577 + 3064) = v175;
  v145 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_updateSliceDeltaAnchorCompleted, v145);
  v179 = NightingaleDPFLRunner.performanceMeasure.getter();
  v178 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, v177 & 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v181 = *(v577 + 2928);

  *(v577 + 3072) = v181;
  result = Sequence.min(by:)();
  v552 = v608;
  if (!v608)
  {
    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v577 + 1216))
    {
      v560 = *(v577 + 1216);
      v559 = *(v577 + 1224);
      v561 = v577 + 1192;
      __swift_project_boxed_opaque_existential_1((v577 + 1192), v560);
      v562 = (*(v559 + 64))(v560);
      __swift_destroy_boxed_opaque_existential_1((v577 + 1192));
      v563 = v562;
      v564 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?((v577 + 1192));
      v563 = 0;
      v564 = 1;
    }

    v4 = v564;
    v558 = v563;
    *(v577 + 4284) = v563;
    if (v4)
    {
      goto LABEL_58;
    }

    v5 = v577;
    v6 = v552;
    v556 = *(v577 + 3976);
    v555 = *(v577 + 3968);
    v554 = v577 + 4264;
    *(v577 + 4264) = v558;
    v553 = *(v5 + 2928);

    *(v577 + 3080) = v553;
    result = Sequence.max(by:)();
    v557 = v6;
    if (v6)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v577 + 1256))
    {
      v547 = *(v577 + 1256);
      v546 = *(v577 + 1264);
      v548 = v577 + 1232;
      __swift_project_boxed_opaque_existential_1((v577 + 1232), v547);
      v549 = (*(v546 + 64))(v547);
      __swift_destroy_boxed_opaque_existential_1((v577 + 1232));
      v550 = v549;
      v551 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?((v577 + 1232));
      v550 = 0;
      v551 = 1;
    }

    v7 = v551;
    v545 = v550;
    *(v577 + 4292) = v550;
    if (v7)
    {
      goto LABEL_58;
    }

    v8 = v577;
    v9 = v557;
    v543 = *(v577 + 3976);
    v542 = *(v577 + 3968);
    v541 = v577 + 4272;
    *(v577 + 4272) = v545;
    v540 = *(v8 + 2928);

    *(v577 + 3088) = v540;
    result = Sequence.min(by:)();
    v544 = v9;
    if (v9)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v577 + 1296))
    {
      v535 = *(v577 + 1296);
      v534 = *(v577 + 1304);
      v536 = v577 + 1272;
      __swift_project_boxed_opaque_existential_1((v577 + 1272), v535);
      v537 = (*(v534 + 8))(v535);
      __swift_destroy_boxed_opaque_existential_1((v577 + 1272));
      v538 = v537;
      v539 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?((v577 + 1272));
      v538 = 0;
      v539 = 1;
    }

    v533 = v538;
    if (v539)
    {
LABEL_58:
      v216 = *(v577 + 3952);
      v217 = *(v577 + 3872);
      v218 = *(v577 + 3856);
      v219 = *(v577 + 3760);
      v220 = *(v577 + 3736);
      v221 = *(v577 + 3712);
      v222 = *(v577 + 3696);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v223 = swift_allocError();
      *v141 = 106;
      swift_willThrow();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v220);
      MEMORY[0x277D82BD8](v221);

      v232 = v223;
      goto LABEL_70;
    }

    *(v577 + 4280) = v533;
    result = HyperParams.featureLookbackDays.getter();
    v532 = v533 - result;
    v10 = v533 < result;
    *(v577 + 4300) = v533 - result;
    if (v10)
    {
      __break(1u);
      return result;
    }

    if (*(v577 + 4260) < v532)
    {
      return _assertionFailure(_:_:file:line:flags:)(v568, 11, 2, v569, 39, 2, v570, 23, 2, 409, 0);
    }

    v11 = v577;
    v12 = *(v577 + 4260);
    v531 = v577 + 2428;
    *(v577 + 2428) = v532;
    *(v11 + 2432) = v12;
    *(v577 + 3096) = _allocateUninitializedArray<A>(_:)();
    if (HyperParams.isHRVRequired()())
    {
      v530 = v577 + 4334;
      *(v577 + 4334) = 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
      Array.append(_:)();
    }

    if (HyperParams.isSpO2Required()())
    {
      v529 = v577 + 4333;
      *(v577 + 4333) = 10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
      Array.append(_:)();
    }

    if (HyperParams.isRespiratoryRateRequired()())
    {
      v528 = v577 + 4332;
      *(v577 + 4332) = 9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
      Array.append(_:)();
    }

    if (HyperParams.isSWTRequired()())
    {
      v527 = v577 + 4327;
      *(v577 + 4327) = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
      Array.append(_:)();
    }

    v525 = *(v577 + 3096);

    *(v577 + 3104) = v525;
    v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
    lazy protocol witness table accessor for type [HealthDataRawSampleType] and conformance [A]();
    v526 = Collection.isEmpty.getter();

    if ((v526 & 1) == 0)
    {
      v520 = *(v577 + 4260);
      v518 = *(v577 + 3696);
      v519 = *(v577 + 3536);

      v13 = swift_task_alloc();
      v14 = v518;
      v15 = v519;
      v16 = v532;
      v17 = v520;
      v18 = v577;
      v522 = v13;
      *(v577 + 4120) = v13;
      *(v13 + 16) = v14;
      *(v13 + 24) = v18 + 3096;
      *(v13 + 32) = v15;
      *(v13 + 40) = v16;
      *(v13 + 44) = v17;
      *(v13 + 48) = v18 + 2760;
      *(v13 + 56) = v18 + 2768;
      *(v13 + 64) = v18 + 2776;
      *(v13 + 72) = v18 + 2752;
      v523 = MEMORY[0x277D84F78] + 8;
      v521 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
      v19 = swift_task_alloc();
      v20 = v577;
      v21 = v521;
      v22 = v576;
      v23 = v522;
      v24 = v523;
      v25 = v19;
      v26 = v607;
      *(v577 + 4128) = v25;
      *v25 = *(v20 + 2632);
      v25[1] = NightingaleDPFLRunner.run(task:useCase:context:);
      v27 = 8;
      v28 = v21 & 1;

      return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v26, v27, v28, v22, v23, v24);
    }

    v491 = v577 + 2640;
    v509 = v577 + 2520;
    v510 = v577 + 2648;
    v511 = v577 + 2656;
    v512 = v577 + 2664;
    v513 = v577 + 2672;
    v514 = v577 + 2680;
    v515 = v577 + 2688;
    v516 = v577 + 2696;
    v508 = v577 + 2704;
    v492 = v577 + 4256;
    v493 = v577 + 2840;
    v494 = v577 + 2856;
    v495 = v577 + 2888;
    v496 = v577 + 2912;
    v497 = v577 + 2920;
    v498 = v577 + 2952;
    v490 = v577 + 2984;
    v499 = v577 + 3000;
    v500 = v577 + 3016;
    v501 = v577 + 3032;
    v502 = v577 + 3048;
    v503 = v577 + 3056;
    v504 = v577 + 3064;
    v505 = v577 + 4264;
    v506 = v577 + 4272;
    v507 = v577 + 4280;
    v517 = v577 + 2428;
    *(v577 + 3112) = 0;
    if (HyperParams.isSHRRequired()())
    {
      v485 = *(v577 + 4300);
      v486 = *(v577 + 4260);
      v484 = *(v577 + 3696);
      v483 = *(v577 + 3536);

      v29 = swift_task_alloc();
      v30 = v483;
      v31 = v484;
      v32 = v485;
      v33 = v486;
      v34 = v577;
      v488 = v29;
      *(v577 + 4144) = v29;
      *(v29 + 16) = v30;
      *(v29 + 24) = v31;
      *(v29 + 32) = v32;
      *(v29 + 36) = v33;
      *(v29 + 40) = v34 + 2784;
      *(v29 + 48) = v34 + 2792;
      *(v29 + 56) = v34 + 3112;
      v489 = MEMORY[0x277D84F78] + 8;
      v487 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
      v35 = swift_task_alloc();
      v36 = v577;
      v37 = v487;
      v22 = v575;
      v23 = v488;
      v24 = v489;
      v38 = v35;
      v26 = v607;
      *(v577 + 4152) = v38;
      *v38 = *(v36 + 2632);
      v38[1] = NightingaleDPFLRunner.run(task:useCase:context:);
      v27 = 8;
      v28 = v37 & 1;

      return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v26, v27, v28, v22, v23, v24);
    }

    v456 = v577 + 2640;
    v474 = v577 + 2520;
    v475 = v577 + 2648;
    v476 = v577 + 2656;
    v477 = v577 + 2664;
    v478 = v577 + 2672;
    v479 = v577 + 2680;
    v480 = v577 + 2688;
    v481 = v577 + 2696;
    v473 = v577 + 2704;
    v457 = v577 + 4256;
    v458 = v577 + 2840;
    v459 = v577 + 2856;
    v460 = v577 + 2888;
    v461 = v577 + 2912;
    v462 = v577 + 2920;
    v463 = v577 + 2952;
    v455 = v577 + 2984;
    v464 = v577 + 3000;
    v465 = v577 + 3016;
    v466 = v577 + 3032;
    v467 = v577 + 3048;
    v468 = v577 + 3056;
    v469 = v577 + 3064;
    v470 = v577 + 4264;
    v471 = v577 + 4272;
    v472 = v577 + 4280;
    v482 = v577 + 2428;
    if (HyperParams.isCalendarAlgorithmRequired()())
    {
      v448 = *(v577 + 4292);
      v446 = *(v577 + 4284);
      v451 = *(v577 + 3872);
      v449 = *(v577 + 4260);
      v447 = *(v577 + 3696);
      v450 = *(v577 + 3536);

      v39 = swift_task_alloc();
      v40 = v446;
      v41 = v447;
      v42 = v448;
      v43 = v449;
      v44 = v450;
      v45 = v451;
      v46 = v577;
      v453 = v39;
      *(v577 + 4168) = v39;
      *(v39 + 16) = v40;
      *(v39 + 24) = v41;
      *(v39 + 32) = v42;
      *(v39 + 36) = v43;
      *(v39 + 40) = v44;
      *(v39 + 48) = v46 + 2720;
      *(v39 + 56) = v46 + 2728;
      *(v39 + 64) = v46 + 2736;
      *(v39 + 72) = v46 + 2744;
      *(v39 + 80) = v45;
      *(v39 + 88) = v46 + 2800;
      *(v39 + 96) = v46 + 2808;
      v454 = MEMORY[0x277D84F78] + 8;
      v452 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
      v47 = swift_task_alloc();
      v48 = v577;
      v49 = v452;
      v22 = v574;
      v23 = v453;
      v24 = v454;
      v50 = v47;
      v26 = v607;
      *(v577 + 4176) = v50;
      *v50 = *(v48 + 2632);
      v50[1] = NightingaleDPFLRunner.run(task:useCase:context:);
      v27 = 8;
      v28 = v49 & 1;

      return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v26, v27, v28, v22, v23, v24);
    }

    v418 = v577 + 2640;
    v436 = v577 + 2520;
    v437 = v577 + 2648;
    v438 = v577 + 2656;
    v439 = v577 + 2664;
    v440 = v577 + 2672;
    v441 = v577 + 2680;
    v442 = v577 + 2688;
    v443 = v577 + 2696;
    v444 = v577 + 2704;
    v435 = v577 + 2712;
    v419 = v577 + 2840;
    v420 = v577 + 2856;
    v421 = v577 + 2888;
    v422 = v577 + 2912;
    v423 = v577 + 2920;
    v424 = v577 + 2952;
    v425 = v577 + 2968;
    v411 = v577 + 3000;
    v426 = v577 + 3016;
    v427 = v577 + 3032;
    v428 = v577 + 3048;
    v429 = v577 + 3056;
    v430 = v577 + 3064;
    v431 = v577 + 4264;
    v432 = v577 + 4272;
    v433 = v577 + 4280;
    v434 = v577 + 2428;
    v416 = *(v577 + 3696);
    v408 = *(v577 + 3536);
    v406 = NightingaleDPFLRunner.performanceMeasure.getter();
    v412 = 1;
    v405 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v407 = v51;

    v445 = v577 + 3120;
    *(v577 + 3120) = v407;
    v52 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v52);
    v410 = NightingaleDPFLRunner.performanceMeasure.getter();
    v409 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v412 & 1)._object;
    dispatch thunk of PerformanceMeasure.start(_:)();

    v53 = HyperParams.metricsProcessEngine.getter();
    v54 = v577;
    v414 = v577 + 4309;
    *(v577 + 4309) = v53 & v412;
    v413 = v54 + 4310;
    *(v54 + 4310) = 1;
    v415 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
    v417 = == infix<A>(_:_:)();

    if (v417)
    {
      v404 = 1;
    }

    else
    {
      v55 = HyperParams.featurizerEngine.getter();
      v56 = v577;
      *(v577 + 4311) = v55 & 1;
      *(v56 + 4316) = 1;
      v404 = == infix<A>(_:_:)();
    }

    v403 = v404;

    if (v404)
    {
      static HIDMorpheusExtensions.extendMorpheus()();
      v402 = v544;
      if (v544)
      {
        v166 = *(v577 + 3952);
        v167 = *(v577 + 3872);
        v168 = *(v577 + 3856);
        v169 = *(v577 + 3760);
        v170 = *(v577 + 3736);
        v171 = *(v577 + 3712);
        v172 = *(v577 + 3696);
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v170);
        MEMORY[0x277D82BD8](v171);

        v232 = v402;
        goto LABEL_70;
      }

      static Math.extendMorpheus()();
      v401 = 0;
      v400 = 0;
    }

    else
    {
      v400 = v544;
    }

    v57 = v400;
    v396 = *(v577 + 4260);
    v395 = *(v577 + 3696);
    v392 = *(v577 + 3536);
    v394 = *(v577 + 3528);
    type metadata accessor for Featurizer();
    v58 = Featurizer.__allocating_init()();
    v59 = v577;
    v393 = v58;
    *(v577 + 4192) = v58;
    v397 = v59 + 3128;
    *(v59 + 3128) = v58;

    v60 = swift_task_alloc();
    v61 = v393;
    v62 = v394;
    v63 = v395;
    v64 = v396;
    v65 = v577;
    v398 = v60;
    *(v577 + 4200) = v60;
    *(v60 + 16) = v61;
    *(v60 + 24) = v62;
    *(v60 + 32) = v65 + 2928;
    *(v60 + 40) = v65 + 2752;
    *(v60 + 48) = v65 + 2760;
    *(v60 + 56) = v65 + 2776;
    *(v60 + 64) = v65 + 2768;
    *(v60 + 72) = v65 + 2784;
    *(v60 + 80) = v65 + 2792;
    *(v60 + 88) = v65 + 2800;
    *(v60 + 96) = v65 + 2808;
    *(v60 + 104) = v65 + 2744;
    *(v60 + 112) = v63;
    *(v60 + 120) = v64;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd, &_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMR);
    NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v398, v66, v577 + 16);
    v399 = v57;
    if (v57)
    {
      v159 = *(v577 + 3952);
      v160 = *(v577 + 3872);
      v161 = *(v577 + 3856);
      v162 = *(v577 + 3760);
      v163 = *(v577 + 3736);
      v164 = *(v577 + 3712);
      v165 = *(v577 + 3696);
      v158 = *(v577 + 3528);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v163);
      MEMORY[0x277D82BD8](v164);

      v232 = v399;
    }

    else
    {
      v330 = *(v577 + 4112);
      v328 = *(v577 + 4040);
      v358 = *(v577 + 4032);
      v355 = *(v577 + 4024);
      v353 = *(v577 + 4016);
      v351 = *(v577 + 4008);
      v349 = *(v577 + 4000);
      v347 = *(v577 + 3992);
      v345 = *(v577 + 3984);
      v343 = *(v577 + 3960);
      v326 = *(v577 + 3912);
      v324 = *(v577 + 3864);
      v341 = *(v577 + 3848);
      v339 = *(v577 + 3840);
      v322 = *(v577 + 3744);
      v337 = *(v577 + 3704);
      v319 = *(v577 + 3696);
      v318 = *(v577 + 3528);

      v361 = (v577 + 184);
      v384 = v577 + 16;
      memcpy((v577 + 184), (v577 + 16), 0xA8uLL);
      v321 = NightingaleDPFLRunner.performanceMeasure.getter();
      v320 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
      dispatch thunk of PerformanceMeasure.finish(_:)();
      v334 = v67;

      v385 = v577 + 3136;
      *(v577 + 3136) = v334;
      v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      v360 = _allocateUninitializedArray<A>(_:)();
      v357 = v68;
      v69 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v69, v357);
      v70 = v322;
      v71 = v357;
      v336 = MEMORY[0x277D839F8];
      v357[5] = MEMORY[0x277D839F8];
      v71[2] = v70;
      v323 = v71 + 6;
      Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(Duration, v323);
      v73 = v324;
      v74 = v357;
      v357[11] = v336;
      v74[8] = v73;
      v325 = v74 + 12;
      v75 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v75, v325);
      v76 = v326;
      v77 = v357;
      v357[17] = v336;
      v77[14] = v76;
      v327 = v77 + 18;
      updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
      outlined init with copy of String(updated, v327);
      v79 = v328;
      v80 = v357;
      v357[23] = v336;
      v80[20] = v79;
      v329 = v80 + 24;
      v81 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v81, v329);
      v82 = v330;
      v83 = v357;
      v357[29] = v336;
      v83[26] = v82;
      v331 = v83 + 30;
      v84 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v84, v331);
      v85 = v357;
      v86 = *(v577 + 3112);
      v357[35] = v336;
      v85[32] = v86;
      v332 = v85 + 36;
      v87 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v87, v332);
      v88 = v407;
      v89 = v357;
      v357[41] = v336;
      v89[38] = v88;
      v333 = v89 + 42;
      v90 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v90, v333);
      v91 = v334;
      v92 = v357;
      v357[47] = v336;
      v92[44] = v91;
      v335 = v92 + 48;
      v93 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
      outlined init with copy of String(v93, v335);
      v94 = v337;
      v95 = v357;
      v357[53] = v336;
      v95[50] = v94;
      v338 = v95 + 54;
      v96 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
      outlined init with copy of String(v96, v338);
      v97 = v339;
      v98 = v357;
      v362 = MEMORY[0x277D83B88];
      v357[59] = MEMORY[0x277D83B88];
      v98[56] = v97;
      v340 = v98 + 60;
      v99 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
      outlined init with copy of String(v99, v340);
      v100 = v341;
      v101 = v357;
      v357[65] = v362;
      v101[62] = v100;
      v342 = v101 + 66;
      v102 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v102, v342);
      v103 = v343;
      v104 = v357;
      v357[71] = v362;
      v104[68] = v103;
      v344 = v104 + 72;
      v105 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
      outlined init with copy of String(v105, v344);
      v106 = v345;
      v107 = v357;
      v357[77] = v362;
      v107[74] = v106;
      v346 = v107 + 78;
      v108 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v108, v346);
      v109 = v347;
      v110 = v357;
      v357[83] = v362;
      v110[80] = v109;
      v348 = v110 + 84;
      v111 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v111, v348);
      v112 = v349;
      v113 = v357;
      v357[89] = v362;
      v113[86] = v112;
      v350 = v113 + 90;
      v114 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v114, v350);
      v115 = v351;
      v116 = v357;
      v357[95] = v362;
      v116[92] = v115;
      v352 = v116 + 96;
      v117 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v117, v352);
      v118 = v353;
      v119 = v357;
      v357[101] = v362;
      v119[98] = v118;
      v354 = v119 + 102;
      v120 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v120, v354);
      v121 = v355;
      v122 = v357;
      v357[107] = v362;
      v122[104] = v121;
      v356 = v122 + 108;
      started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(started, v356);
      v124 = v357;
      v125 = v358;
      v357[113] = v362;
      v124[110] = v125;
      _finalizeUninitializedArray<A>(_:)();
      v387 = MEMORY[0x277D837D0];
      v388 = MEMORY[0x277D84F70] + 8;
      v389 = MEMORY[0x277D837E0];
      v386 = Dictionary.init(dictionaryLiteral:)();
      outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v361, (v577 + 352));
      v363 = *(v577 + 184);
      v364 = *(v577 + 192);
      v365 = *(v577 + 200);
      v366 = *(v577 + 208);
      v367 = *(v577 + 216);
      v368 = *(v577 + 224);
      v369 = *(v577 + 232);
      v370 = *(v577 + 240);
      v371 = *(v577 + 248);
      v372 = *(v577 + 256);
      v373 = *(v577 + 264);
      v374 = *(v577 + 272);
      v375 = *(v577 + 280);
      v376 = *(v577 + 288);
      v377 = *(v577 + 296);
      v378 = *(v577 + 304);
      v379 = *(v577 + 312);
      v380 = *(v577 + 320);
      v381 = *(v577 + 328);
      v382 = *(v577 + 336);
      v383 = *(v577 + 344);
      _dictionaryUpCast<A, B, C, D>(_:)();
      v390 = Dictionary.merging(_:uniquingKeysWith:)();
      *(v577 + 4208) = v390;
      v391 = 0;
      v316 = *(v577 + 4048);
      v315 = *(v577 + 4359);

      v126 = v315;
      v127 = v577;
      v317 = v577 + 3144;
      *(v577 + 3144) = v390;
      *(v127 + 4317) = v126;
      *(v127 + 4318) = 0;
      if (== infix<A>(_:_:)())
      {
        v128 = v391;
        v289 = *(v577 + 4260);
        v285 = *(v577 + 3760);
        v284 = *(v577 + 3752);
        v286 = *(v577 + 3696);
        v290 = *(v577 + 3528);
        v287 = *(v577 + 2808);

        v288 = *(v577 + 2848);

        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v577 + 184), (v577 + 1024));
        v291 = *(v577 + 184);
        v309 = *(v577 + 192);
        v311 = *(v577 + 200);
        v312 = *(v577 + 208);
        v292 = *(v577 + 216);
        v293 = *(v577 + 224);
        v294 = *(v577 + 232);
        v295 = *(v577 + 240);
        v296 = *(v577 + 248);
        v297 = *(v577 + 256);
        v298 = *(v577 + 264);
        v299 = *(v577 + 272);
        v300 = *(v577 + 280);
        v301 = *(v577 + 288);
        v302 = *(v577 + 296);
        v303 = *(v577 + 304);
        v304 = *(v577 + 312);
        v305 = *(v577 + 320);
        v306 = *(v577 + 328);
        v307 = *(v577 + 336);
        v308 = *(v577 + 344);
        v310 = v147;
        v313 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v290, v284, v285, v286, v287, v288, v289, v291, v309, v311, v312, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v390);
        v314 = v128;
        if (!v128)
        {
          v276 = *(v577 + 3952);
          v277 = *(v577 + 3872);
          v278 = *(v577 + 3856);
          v279 = *(v577 + 3760);
          v280 = *(v577 + 3736);
          v281 = *(v577 + 3712);
          v282 = *(v577 + 3696);

          outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v280);
          MEMORY[0x277D82BD8](v281);

          v283 = v313;
          goto LABEL_59;
        }

        v151 = *(v577 + 3952);
        v152 = *(v577 + 3872);
        v153 = *(v577 + 3856);
        v154 = *(v577 + 3760);
        v155 = *(v577 + 3736);
        v156 = *(v577 + 3712);
        v157 = *(v577 + 3696);

        outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v155);
        MEMORY[0x277D82BD8](v156);

        v232 = v314;
      }

      else
      {
        v129 = v577;
        *(v577 + 4319) = *(v577 + 4359);
        *(v129 + 4324) = 1;
        if (== infix<A>(_:_:)())
        {
          v274 = PFLTask.evalModelNames(taskType:hyperParams:)(*(v577 + 4359), *(v577 + 3696));
          v275 = v391;
          if (!v391)
          {
            v249 = *(v577 + 4260);
            v246 = *(v577 + 3696);
            v245 = *(v577 + 3528);
            v247 = *(v577 + 2808);

            v248 = *(v577 + 2848);

            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v577 + 184), (v577 + 856));
            v250 = *(v577 + 184);
            v251 = *(v577 + 192);
            v269 = *(v577 + 200);
            v271 = *(v577 + 208);
            v252 = *(v577 + 216);
            v253 = *(v577 + 224);
            v254 = *(v577 + 232);
            v255 = *(v577 + 240);
            v256 = *(v577 + 248);
            v257 = *(v577 + 256);
            v258 = *(v577 + 264);
            v259 = *(v577 + 272);
            v260 = *(v577 + 280);
            v261 = *(v577 + 288);
            v262 = *(v577 + 296);
            v263 = *(v577 + 304);
            v264 = *(v577 + 312);
            v265 = *(v577 + 320);
            v266 = *(v577 + 328);
            v267 = *(v577 + 336);
            v268 = *(v577 + 344);
            v270 = v147;
            v272 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v274, v245, v246, v247, v248, v249, v250, v251, v269, v271, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v390);
            v273 = 0;
            v238 = *(v577 + 3952);
            v239 = *(v577 + 3872);
            v240 = *(v577 + 3856);
            v241 = *(v577 + 3760);
            v242 = *(v577 + 3736);
            v243 = *(v577 + 3712);
            v244 = *(v577 + 3696);

            outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();

            MEMORY[0x277D82BD8](v242);
            MEMORY[0x277D82BD8](v243);

            v283 = v272;
LABEL_59:
            v215 = v283;
            v207 = *(v577 + 3664);
            v208 = *(v577 + 3640);
            v209 = *(v577 + 3632);
            v210 = *(v577 + 3608);
            v211 = *(v577 + 3600);
            v212 = *(v577 + 3576);
            v213 = *(v577 + 3568);
            v214 = *(v577 + 3560);

            v142 = v215;
            v143 = *(*(v577 + 2632) + 8);

            return v143(v142);
          }

          v147[37] = *(v577 + 3952);
          v147[38] = *(v577 + 3872);
          v147[39] = *(v577 + 3856);
          v147[40] = *(v577 + 3760);
          v148 = *(v577 + 3736);
          v149 = *(v577 + 3712);
          v150 = *(v577 + 3696);

          outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v148);
          MEMORY[0x277D82BD8](v149);

          v232 = v275;
        }

        else
        {
          v130 = v577;
          *(v577 + 4325) = *(v577 + 4359);
          *(v130 + 4326) = 2;
          if (== infix<A>(_:_:)())
          {
            v236 = *(v577 + 3872);
            v235 = *(v577 + 4268);
            v233 = *(v577 + 3696);
            v234 = *(v577 + 3536);

            v131 = swift_task_alloc();
            v132 = v233;
            v133 = v234;
            v134 = v235;
            v135 = v236;
            v136 = v577;
            v237 = v131;
            *(v577 + 4216) = v131;
            *(v131 + 16) = v132;
            *(v131 + 24) = v136 + 2848;
            *(v131 + 32) = v133;
            *(v131 + 40) = v134;
            *(v131 + 48) = v136 + 2720;
            *(v131 + 56) = v136 + 2728;
            *(v131 + 64) = v136 + 2736;
            *(v131 + 72) = v136 + 2744;
            *(v131 + 80) = v136 + 2808;
            *(v131 + 88) = v135;
            v137 = swift_task_alloc();
            *(v577 + 4224) = v137;
            v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd, &_ss6UInt32V_ABtMR);
            v139 = v577;
            v22 = v573;
            v23 = v237;
            v24 = v138;
            *v137 = *(v577 + 2632);
            v137[1] = NightingaleDPFLRunner.run(task:useCase:context:);
            v26 = v139 + 2436;
            v27 = 9;
            v28 = 1;

            return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v26, v27, v28, v22, v23, v24);
          }

          v224 = *(v577 + 3952);
          v225 = *(v577 + 3872);
          v226 = *(v577 + 3856);
          v227 = *(v577 + 3760);
          v228 = *(v577 + 3736);
          v229 = *(v577 + 3712);
          v230 = *(v577 + 3696);
          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v231 = swift_allocError();
          *v140 = 69;
          swift_willThrow();

          outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v228);
          MEMORY[0x277D82BD8](v229);

          v232 = v231;
        }
      }
    }

LABEL_70:
    v147[22] = *(v577 + 3664);
    v147[23] = *(v577 + 3640);
    v147[24] = *(v577 + 3632);
    v147[25] = *(v577 + 3608);
    v147[26] = *(v577 + 3600);
    v147[27] = *(v577 + 3576);
    v147[28] = *(v577 + 3568);
    v147[29] = *(v577 + 3560);

    v142 = v607;
    v143 = *(*(v577 + 2632) + 8);

    return v143(v142);
  }

  return result;
}