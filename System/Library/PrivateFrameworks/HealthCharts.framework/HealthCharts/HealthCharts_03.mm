uint64_t specialized AxisDomain<>.outputStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v20 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8);
  type metadata accessor for FloatingPointFormatStyle<Double>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  v21 = vdupq_n_s64(4uLL);
  _sSNySdGMaTm_1(0, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0]);
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  static NumberFormatStyleConfiguration.Precision.significantDigits<A>(_:)();
  MEMORY[0x253075120](v7, v10);
  (*(v5 + 8))(v7, v4);
  v17 = *(v11 + 8);
  v17(v13, v10);
  static NumberFormatStyleConfiguration.Notation.scientific.getter();
  MEMORY[0x253075110](v3, v10);
  (*(v1 + 8))(v3, v20);
  return (v17)(v16, v10);
}

void key path getter for NSUnit.symbol : NSDimension(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 symbol];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2513F60DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t _s16HealthChartsCore0aB4UnitVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of FixedQuantity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FixedQuantity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for FloatingPointFormatStyle<Double>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FloatingPointFormatStyle<Double>)
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    v1 = type metadata accessor for FloatingPointFormatStyle();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>);
    }
  }
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

uint64_t instantiation function for generic protocol witness table for FixedQuantity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FixedQuantity and conformance FixedQuantity(&lazy protocol witness table cache variable for type FixedQuantity and conformance FixedQuantity, &protocol conformance descriptor for FixedQuantity);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type FixedQuantity and conformance FixedQuantity(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FixedQuantity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2513F63B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for HealthChartsUnit();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2513F6474(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HealthChartsUnit();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for FixedQuantity(uint64_t a1)
{
  result = type metadata accessor for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthChartsUnit();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>()
{
  result = lazy cache variable for type metadata for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>;
  if (!lazy cache variable for type metadata for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>);
  }

  return result;
}

void _sSNySdGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for ClosedRange();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>()
{
  result = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>)
  {
    _sSNySdGMaTm_1(255, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>);
  }

  return result;
}

id static HealthChartsQuantityDataProvider.provider<A>(quantityType:context:preferredDataShape:statisticsOptions:preferredUnit:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a8@<X8>)
{
  v27 = a4;
  v28 = a1;
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for HealthChartsContext?, type metadata accessor for HealthChartsContext);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for HealthChartsContext(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of HealthChartsContext?(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of HealthChartsContext?(v14);
  }

  else
  {
    outlined init with take of HealthChartsContext(v14, v18);
    v19 = *v18;
    v20 = *v18;
    outlined destroy of HealthChartsErrors(v18, type metadata accessor for HealthChartsContext);
    if (v19)
    {
      goto LABEL_5;
    }
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
LABEL_5:
  v21 = type metadata accessor for HealthChartsDataShape();
  a8[4] = v21;
  a8[5] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 1);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, a3, v21);
  *a8 = v20;
  v23 = v27;
  a8[6] = v28;
  a8[7] = v23;
  a8[8] = a5;
  v24 = a5;
  v25 = v28;

  return v25;
}

uint64_t outlined init with copy of HealthChartsContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for HealthChartsContext?, type metadata accessor for HealthChartsContext);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HealthChartsContext?(uint64_t a1)
{
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for HealthChartsContext?, type metadata accessor for HealthChartsContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of HealthChartsContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HealthChartsErrors(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void HealthChartsQuantityDataProvider.query(interval:aggregation:results:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a3;
  v50 = a4;
  v51 = a2;
  v52 = a1;
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990]);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v45 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v53 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for HealthChartsData.Aggregation();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v47 = *v5;
  v18 = *(v5 + 56);
  v48 = *(v5 + 48);
  v46 = v18;
  outlined init with copy of HealthChartsQuantityDataProvider(v5, v56);
  (*(v16 + 16))(&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v15);
  v19 = (*(v16 + 80) + 104) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v21 = v50;
  *(v20 + 16) = v49;
  *(v20 + 24) = v21;
  v22 = v56[3];
  *(v20 + 64) = v56[2];
  *(v20 + 80) = v22;
  *(v20 + 96) = v57;
  v23 = v56[1];
  *(v20 + 32) = v56[0];
  *(v20 + 48) = v23;
  (*(v16 + 32))(v20 + v19, &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v24 = objc_opt_self();
  v47 = v47;
  v25 = v48;

  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v27 = *(v10 + 8);
  v27(v14, v9);
  DateInterval.end.getter();
  v28 = Date._bridgeToObjectiveC()().super.isa;
  v49 = v10 + 8;
  v50 = v9;
  v48 = v27;
  v27(v14, v9);
  v29 = [v24 predicateForSamplesWithStartDate:isa endDate:v28 options:0];

  v45 = v25;
  v30 = v53;
  DateInterval.start.getter();
  v31 = v54;
  HealthChartsData.Aggregation.intervalDateComponents()();
  v32 = type metadata accessor for DateComponents();
  v33 = *(v32 - 8);
  v34 = v31;
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = objc_allocWithZone(MEMORY[0x277CCDA60]);
    v36 = v29;
    v37 = Date._bridgeToObjectiveC()().super.isa;
    v38 = v34;
    v39 = DateComponents._bridgeToObjectiveC()().super.isa;
    v40 = v35;
    v41 = v45;
    v52 = v36;
    v42 = [v40 initWithQuantityType:v45 quantitySamplePredicate:v36 options:v46 anchorDate:v37 intervalComponents:v39];

    v48(v30, v50);
    (*(v33 + 8))(v38, v32);
    aBlock[4] = partial apply for closure #1 in HealthChartsQuantityDataProvider.query(interval:aggregation:results:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_0;
    v43 = _Block_copy(aBlock);

    [v42 setInitialResultsHandler_];
    _Block_release(v43);
    v44 = v47;
    [v47 executeQuery_];
  }
}

void type metadata accessor for HealthChartsContext?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t closure #1 in HealthChartsQuantityDataProvider.query(interval:aggregation:results:)(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a7;
  v39 = a2;
  v11 = type metadata accessor for HealthChartsData();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HealthChartsErrors(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Result<HealthChartsData, Error>(0);
  MEMORY[0x28223BE20](v17);
  v19 = (v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    *v19 = a3;
    swift_storeEnumTagMultiPayload();
    v20 = a3;
    a4(v19);
    v21 = type metadata accessor for Result<HealthChartsData, Error>;
    v22 = v19;
    return outlined destroy of HealthChartsErrors(v22, v21);
  }

  v35[0] = v11;
  v35[1] = a5;
  v36 = a4;
  v24 = v39;
  if (!v39)
  {
    v28 = *(a6 + 48);
    v29 = [v28 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *v16 = v30;
    v16[1] = v32;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type HealthChartsErrors and conformance HealthChartsErrors();
    v33 = swift_allocError();
    outlined init with copy of HealthChartsErrors(v16, v34);
    *v19 = v33;
    swift_storeEnumTagMultiPayload();
    v36(v19);
    outlined destroy of HealthChartsErrors(v19, type metadata accessor for Result<HealthChartsData, Error>);
    v21 = type metadata accessor for HealthChartsErrors;
    v22 = v16;
    return outlined destroy of HealthChartsErrors(v22, v21);
  }

  __swift_project_boxed_opaque_existential_1((a6 + 8), *(a6 + 32));
  v25 = v24;
  dispatch thunk of PlotDataShape.buildData(from:aggregation:with:preferredUnit:)();
  v26 = v38;
  v27 = v35[0];
  (*(v38 + 16))(v19, v13, v35[0]);
  swift_storeEnumTagMultiPayload();
  v36(v19);

  outlined destroy of HealthChartsErrors(v19, type metadata accessor for Result<HealthChartsData, Error>);
  return (*(v26 + 8))(v13, v27);
}

uint64_t sub_2513F7434()
{
  v1 = type metadata accessor for HealthChartsData.Aggregation();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in HealthChartsQuantityDataProvider.query(interval:aggregation:results:)(uint64_t a1, void *a2, void *a3)
{
  v7 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 104) & ~*(v7 + 80));

  return closure #1 in HealthChartsQuantityDataProvider.query(interval:aggregation:results:)(a1, a2, a3, v8, v9, v3 + 32, v10);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsQuantityDataProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for HealthChartsQuantityDataProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsErrors and conformance HealthChartsErrors()
{
  result = lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors;
  if (!lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors)
  {
    type metadata accessor for HealthChartsErrors(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors);
  }

  return result;
}

uint64_t outlined init with copy of HealthChartsErrors(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsErrors(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HealthChartsErrors(uint64_t a1)
{
  result = type metadata singleton initialization cache for HealthChartsErrors;
  if (!type metadata singleton initialization cache for HealthChartsErrors)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for HealthChartsErrors(uint64_t a1)
{
  type metadata accessor for HKObjectType();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HealthStaticChartKey(319, &lazy cache variable for type metadata for HealthStaticChartKey, &protocol descriptor for HealthStaticChartKey);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HealthStaticChartKey(319, &lazy cache variable for type metadata for Error, MEMORY[0x277D84948]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DateInterval();
        if (v4 <= 0x3F)
        {
          type metadata accessor for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape)(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for (createDomain: String, dataDomain: String)();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for HKObjectType()
{
  result = lazy cache variable for type metadata for HKObjectType;
  if (!lazy cache variable for type metadata for HKObjectType)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKObjectType);
  }

  return result;
}

uint64_t type metadata accessor for HealthStaticChartKey(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape))
  {
    type metadata accessor for HealthChartsData.SeriesDataShape();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape));
    }
  }
}

void type metadata accessor for (createDomain: String, dataDomain: String)()
{
  if (!lazy cache variable for type metadata for (createDomain: String, dataDomain: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (createDomain: String, dataDomain: String));
    }
  }
}

uint64_t RangeQuantity.localizedMessage(for:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsData.Series();
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x28223BE20](v4);
  v89 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  type metadata accessor for HealthChartsUnit?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v81 - v8;
  v88 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle<Double>(0);
  v93 = v10;
  v96 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v95 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = &v81 - v13;
  MEMORY[0x28223BE20](v14);
  v94 = &v81 - v15;
  v16 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v16 - 8);
  v102 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v18 - 8);
  v101 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HealthChartsData.DescriptionKey();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v97 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  type metadata accessor for HealthChartsUnit?(0, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], v6);
  MEMORY[0x28223BE20](v26 - 8);
  v98 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v81 - v29;
  v99 = *(type metadata accessor for DescriptionContext(0) + 20);
  v100 = a1;
  HealthChartsData.description.getter();
  v31 = type metadata accessor for HealthChartsData.Description();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v30, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], MEMORY[0x277D83D88], type metadata accessor for HealthChartsUnit?);
LABEL_9:
    type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_25145AB10;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v43 = String.init(localized:table:bundle:locale:comment:)();
    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    print(_:separator:terminator:)();

    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v84 = a2;
  v34 = HealthChartsData.Description.substitutionValues.getter();
  v83 = *(v32 + 8);
  v83(v30, v31);
  v35 = *(v21 + 104);
  v35(v25, *MEMORY[0x277D10260], v20);
  if (!*(v34 + 16) || (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v37 & 1) == 0))
  {

    (*(v21 + 8))(v25, v20);
    goto LABEL_8;
  }

  v38 = *(*(v34 + 56) + 8 * v36);
  v39 = *(v21 + 8);
  v40 = v20;
  v82 = v39;
  v39(v25, v20);

  v41 = v98;
  HealthChartsData.description.getter();
  if (v33(v41, 1, v31) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v41, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], MEMORY[0x277D83D88], type metadata accessor for HealthChartsUnit?);
LABEL_8:
    a2 = v84;
    goto LABEL_9;
  }

  v46 = HealthChartsData.Description.substitutionValues.getter();
  v83(v41, v31);
  v47 = v97;
  v35(v97, *MEMORY[0x277D10258], v40);
  if (!*(v46 + 16) || (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v47), (v49 & 1) == 0))
  {

    v82(v47, v40);
    goto LABEL_8;
  }

  v50 = *(*(v46 + 56) + 8 * v48);
  v82(v47, v40);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v101 = String.init(localized:table:bundle:locale:comment:)();
  v98 = v51;
  static Locale.autoupdatingCurrent.getter();
  v97 = lazy protocol witness table accessor for type Double and conformance Double();
  v52 = v85;
  FloatingPointFormatStyle.init(locale:)();
  v103 = 0.0;
  v104 = v38 < 1.0;
  type metadata accessor for ClosedRange<Int>();
  v83 = v53;
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>, type metadata accessor for ClosedRange<Int>, MEMORY[0x277D83660]);
  v54 = v86;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  v55 = v93;
  MEMORY[0x253075120](v54, v93);
  v56 = *(v87 + 8);
  v57 = v88;
  v56(v54, v88);
  v59 = v96 + 8;
  v58 = *(v96 + 8);
  v58(v52, v55);
  static Locale.autoupdatingCurrent.getter();
  FloatingPointFormatStyle.init(locale:)();
  v103 = 0.0;
  v104 = v50 < 1.0;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  MEMORY[0x253075120](v54, v55);
  v60 = v54;
  v61 = v58;
  v56(v60, v57);
  v62 = v55;
  v96 = v59;
  v58(v52, v55);
  v63 = v89;
  HealthChartsData.series.getter();
  v64 = v92;
  HealthChartsData.Series.unit.getter();
  (*(v90 + 8))(v63, v91);
  v65 = type metadata accessor for HealthChartsUnit();
  v66 = *(v65 - 8);
  if ((*(v66 + 48))(v64, 1, v65) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v64, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88], type metadata accessor for HealthChartsUnit?);
    v67 = 0;
    v68 = 0;
  }

  else
  {
    swift_getKeyPath();
    v67 = HealthChartsUnit.subscript.getter();
    v68 = v69;

    (*(v66 + 8))(v64, v65);
  }

  v103 = v38;
  v70 = FloatingPointFormatStyle.format(_:)();
  v72 = v71;
  v103 = v50;
  v74 = FloatingPointFormatStyle.format(_:)();
  v75 = v73;
  v76 = v84;
  if (v74 == v70 && v73 == v72)
  {
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v70 = v74;
  }

  else
  {
    v103 = *&v70;
    v104 = v72;
    MEMORY[0x2530761B0](45, 0xE100000000000000);
    MEMORY[0x2530761B0](v74, v75);

    v70 = *&v103;
    v75 = v104;
  }

  v77 = DescriptionContext.DataXScale.dateString.getter();
  v79 = v78;
  v61(v95, v62);
  result = (v61)(v94, v62);
  v80 = v98;
  *v76 = v101;
  v76[1] = v80;
  v76[2] = v70;
  v76[3] = v75;
  v76[4] = v67;
  v76[5] = v68;
  v76[6] = v77;
  v76[7] = v79;
  return result;
}

uint64_t RangeQuantity.content(with:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  RangeQuantity.localizedMessage(for:)(a1, &v19);
  v3 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v5 = v24;
    v4 = v25;
    v7 = v22;
    v6 = v23;
    v9 = v20;
    v8 = v21;
    v10 = v19;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  *&v15 = v10;
  *(&v15 + 1) = *(&v19 + 1);
  *&v16 = v9;
  *(&v16 + 1) = v8;
  *&v17 = v7;
  *(&v17 + 1) = v6;
  *&v18 = v5;
  *(&v18 + 1) = v4;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  v12 = v18;
  a2[2] = v17;
  a2[3] = v12;
  *&v19 = v10;
  *(&v19 + 1) = v3;
  v20 = v9;
  v21 = v8;
  v22 = v7;
  v23 = v6;
  v24 = v5;
  v25 = v4;
  outlined init with copy of CommonChartDescription?(&v15, &v14);
  return outlined destroy of HealthChartsData.Description?(&v19, &lazy cache variable for type metadata for CommonChartDescription?, &type metadata for CommonChartDescription, MEMORY[0x277D83D88], type metadata accessor for _ContiguousArrayStorage<Any>);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x253076620](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  type metadata accessor for HealthChartsData.DescriptionKey();
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey, MEMORY[0x277D10288], MEMORY[0x277D10290]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

void type metadata accessor for ClosedRange<Int>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Int>)
  {
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Int>);
    }
  }
}

uint64_t outlined destroy of HealthChartsData.Description?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of CommonChartDescription?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for CommonChartDescription?, &type metadata for CommonChartDescription, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<Any>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for RangeQuantity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RangeQuantity(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RangeQuantity(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(CommonChartDescription?, EmptyView)> and conformance TupleView<A>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type TupleView<(CommonChartDescription?, EmptyView)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(CommonChartDescription?, EmptyView)> and conformance TupleView<A>)
  {
    type metadata accessor for HealthChartsUnit?(255, &lazy cache variable for type metadata for TupleView<(CommonChartDescription?, EmptyView)>, type metadata accessor for (CommonChartDescription?, EmptyView), MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(CommonChartDescription?, EmptyView)> and conformance TupleView<A>);
  }

  return result;
}

void type metadata accessor for HealthChartsUnit?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (CommonChartDescription?, EmptyView)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (CommonChartDescription?, EmptyView))
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for CommonChartDescription?, &type metadata for CommonChartDescription, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CommonChartDescription?, EmptyView));
    }
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v20 = a1;
  v4 = type metadata accessor for HealthChartsData.DescriptionKey();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey, MEMORY[0x277D10288], MEMORY[0x277D10298]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for AxisDomain.axisContent(seriesScale:seriesUnit:finestAggregation:) in conformance AutomaticNumeric()
{
  v0 = type metadata accessor for AxisMarkPosition();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for AxisMarkPreset();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for AxisMarkValues();
  MEMORY[0x28223BE20](v2 - 8);
  static AxisMarkValues.automatic.getter();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  return AxisMarks.init<>(preset:position:values:stroke:)();
}

uint64_t AxisDomain<>.axisContent(seriesScale:seriesUnit:finestAggregation:)()
{
  v0 = type metadata accessor for AxisMarkPosition();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for AxisMarkPreset();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for AxisMarkValues();
  MEMORY[0x28223BE20](v2 - 8);
  static AxisMarkValues.automatic.getter();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  return AxisMarks.init<>(preset:position:values:stroke:)();
}

uint64_t ScalarDomain.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  a4[4] = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  a4[5] = v10;
  *a4 = implicit closure #1 in ScalarDomain.init<A>(_:)(a1, a2, a3);
  a4[1] = v11;
  v12 = *(v8 + 32);
  v12(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (v12)(v14 + v13, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[2] = partial apply for closure #1 in ScalarDomain.init<A>(_:);
  a4[3] = v14;
  return result;
}

uint64_t ScalarDomain.debugDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ScalarDomain.debugDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t (*implicit closure #1 in ScalarDomain.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
}

uint64_t closure #1 in ScalarDomain.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  v17 = a3 & 1;
  v14 = *(a7 + 64);
  a8[3] = swift_getAssociatedTypeWitness();
  a8[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a8);
  return v14(v16, a4, a5, a6, a7);
}

unint64_t instantiation function for generic protocol witness table for ScalarDomain(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain()
{
  result = lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain;
  if (!lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain;
  if (!lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain);
  }

  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScalarDomain()
{
  v1 = *(v0 + 32);

  return v1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScalarDomain(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ScalarDomain(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>()
{
  result = lazy protocol witness table cache variable for type AxisMarks<Never> and conformance AxisMarks<A>;
  if (!lazy protocol witness table cache variable for type AxisMarks<Never> and conformance AxisMarks<A>)
  {
    type metadata accessor for AxisMarks<Never>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AxisMarks<Never> and conformance AxisMarks<A>);
  }

  return result;
}

void type metadata accessor for AxisMarks<Never>()
{
  if (!lazy cache variable for type metadata for AxisMarks<Never>)
  {
    v0 = type metadata accessor for AxisMarks();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AxisMarks<Never>);
    }
  }
}

double specialized AxisDomain<>.convertRangeIfNeeded<A>(from:to:defaultRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for HealthChartsUnit();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  IntervalChartValue.asClosedRange()();
  v21 = v30;
  outlined init with copy of HealthChartsUnit?(a1, v13);
  v22 = *(v15 + 48);
  if (v22(v13, 1, v14) == 1)
  {
    outlined destroy of HealthChartsUnit?(v13);
  }

  else
  {
    v23 = *(v15 + 32);
    v23(v20, v13, v14);
    outlined init with copy of HealthChartsUnit?(v29, v10);
    if (v22(v10, 1, v14) == 1)
    {
      outlined destroy of HealthChartsUnit?(v10);
      type metadata accessor for _ContiguousArrayStorage<Any>();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_25145AB10;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 32) = 0xD00000000000006ALL;
      *(v24 + 40) = 0x8000000251464200;
      print(_:separator:terminator:)();

      (*(v15 + 8))(v20, v14);
    }

    else
    {
      v23(v17, v10, v14);
      HealthChartsUnit.convert(_:to:)();
      v21 = v25;
      v26 = *(v15 + 8);
      v26(v17, v14);
      v26(v20, v14);
    }
  }

  return v21;
}

void type metadata accessor for _ContiguousArrayStorage<Any>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Any>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>);
    }
  }
}

uint64_t objectdestroyTm()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 24);
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3 & 1;
  return (*(v7 + 56))(v9, a4, a5);
}

uint64_t outlined init with copy of HealthStaticChartKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for HealthChartModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for HealthChartModel;
  if (!type metadata singleton initialization cache for HealthChartModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HealthChartModel.init<A>(_:providedData:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  a6[3] = a4;
  a6[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v12 = type metadata accessor for HealthChartModel(0);
  outlined init with take of HealthChartsContext(a3, a6 + *(v12 + 20), type metadata accessor for HealthChartsContext);
  return outlined init with take of HealthChartsAttributes<DateDomain>(a2, a6 + *(v12 + 24), &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8], type metadata accessor for HealthChartsData?);
}

uint64_t outlined init with take of HealthChartsAttributes<DateDomain>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t HealthChartModel.attributes()@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v95 = *(v3 - 8);
  v96 = v3;
  MEMORY[0x28223BE20](v3);
  v104 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = (&v88 - v6);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v102 = v7;
  MEMORY[0x28223BE20](v7);
  *&v101 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChartAttributes<DateDomain>(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v10 = v9;
  MEMORY[0x28223BE20](v9);
  v99 = &v88 - v11;
  type metadata accessor for ChartAttributes<DateDomain>(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v105 = v12;
  MEMORY[0x28223BE20](v12);
  v98 = &v88 - v13;
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v88 - v15;
  v17 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v93 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1[3];
  v20 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v21);
  v97 = type metadata accessor for HealthChartModel(0);
  v22 = *(v97 + 20);
  v103 = v1;
  v23 = v1 + v22;
  (*(v20 + 24))(v1 + v22, v21, v20);
  v24 = type metadata accessor for HealthChartsContext(0);
  outlined init with copy of ChartAttributes<DateDomain>(&v23[*(v24 + 28)], v16, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan, type metadata accessor for HealthChartsData?);
  v25 = (*(v18 + 48))(v16, 1, v17);
  v94 = v10;
  if (v25 == 1)
  {
    outlined destroy of DateDomain.ViewDateSpan?(v16, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
    v26 = v99;
    v27 = a1;
  }

  else
  {
    v28 = v16;
    v29 = v93;
    outlined init with take of HealthChartsContext(v28, v93, type metadata accessor for DateDomain.ViewDateSpan);
    v30 = v105;
    v27 = a1;
    v31 = (a1 + *(v105 + 36));
    v32 = v31[3];
    v92 = v31[4];
    v91 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v33 = *a1;
    v34 = *(v10 + 36);
    LODWORD(v88) = *(a1 + v34);
    v35 = v101;
    outlined init with copy of HealthChartsContext(a1 + v34, v101, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
    v36 = *(v102 + 13);
    v37 = v99;
    v38 = &v99[*(v10 + 36)];
    outlined init with copy of ChartAttributes<DateDomain>(v35 + v36, &v38[v36], &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, type metadata accessor for HealthChartsData?);
    v90 = type metadata accessor for DateDomain(0);
    outlined init with copy of HealthChartsContext(v29, &v38[v36 + *(v90 + 20)], type metadata accessor for DateDomain.ViewDateSpan);
    v39 = outlined destroy of DateDomain(v35 + v36, type metadata accessor for DateDomain);
    v89 = &v88;
    *v38 = v88;
    v40 = *(v10 + 40);
    v41 = v27 + v40;
    v42 = *(v27 + v40);
    v43 = *(v27 + v40 + 8);
    v45 = *(v27 + v40 + 32);
    v44 = *(v27 + v40 + 40);
    *v37 = v33;
    v46 = v37 + v40;
    *v46 = v42;
    v47 = *(v41 + 6);
    *(v46 + 1) = v43;
    v88 = *(v41 + 1);
    *(v46 + 1) = v88;
    *(v46 + 4) = v45;
    *(v46 + 5) = v44;
    *(v46 + 6) = v47;
    v48 = MEMORY[0x28223BE20](v39);
    v50 = &v88 - v49;
    (*(v51 + 16))(&v88 - v49, v91, v32, v48);
    v106[0] = *(v27 + *(v30 + 40));
    v52 = lazy protocol witness table accessor for type DateDomain and conformance DateDomain();

    v53 = v98;
    HealthChartsAttributes.init<A>(chartAttributes:description:series:)(v37, v50, v106, v90, v32, v52, v92, v98);
    outlined destroy of DateDomain(v29, type metadata accessor for DateDomain.ViewDateSpan);
    outlined destroy of ChartAttributes<DateDomain>(v27, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
    outlined init with take of HealthChartsAttributes<DateDomain>(v53, v27, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes, type metadata accessor for ChartAttributes<DateDomain>);
    v26 = v37;
  }

  v54 = MEMORY[0x277D102A8];
  v55 = v100;
  outlined init with copy of ChartAttributes<DateDomain>(v103 + *(v97 + 24), v100, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8], type metadata accessor for HealthChartsData?);
  v56 = type metadata accessor for HealthChartsData();
  v57 = (*(*(v56 - 8) + 48))(v55, 1, v56);
  result = outlined destroy of DateDomain.ViewDateSpan?(v55, &lazy cache variable for type metadata for HealthChartsData?, v54);
  if (v57 == 1)
  {
    v59 = v104;
    HealthChartModel.queryIntervalAggregation()(v104);
    v60 = (v27 + *(v105 + 36));
    v61 = v60[3];
    v103 = v60[4];
    v100 = __swift_project_boxed_opaque_existential_1(v60, v61);
    v62 = *v27;
    v63 = v94;
    v64 = *(v94 + 36);
    v65 = v26;
    v66 = *(v27 + v64);
    v67 = v101;
    outlined init with copy of HealthChartsContext(v27 + v64, v101, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
    v68 = *(v102 + 13);
    v69 = v67 + v68;
    v70 = v65 + *(v63 + 36);
    v71 = &v70[v68];
    outlined init with copy of HealthChartsContext(v59, &v70[v68], type metadata accessor for DateDomain.IntervalAggregation);
    (*(v95 + 56))(v71, 0, 1, v96);
    v72 = type metadata accessor for DateDomain(0);
    outlined init with copy of HealthChartsContext(v69 + *(v72 + 20), &v71[*(v72 + 20)], type metadata accessor for DateDomain.ViewDateSpan);
    v73 = outlined destroy of DateDomain(v69, type metadata accessor for DateDomain);
    v102 = &v88;
    *v70 = v66;
    v74 = *(v63 + 40);
    v75 = v27 + v74;
    v76 = *(v27 + v74);
    v77 = *(v27 + v74 + 8);
    v79 = *(v27 + v74 + 32);
    v78 = *(v27 + v74 + 40);
    *v65 = v62;
    v80 = v65 + v74;
    *v80 = v76;
    v81 = *(v75 + 6);
    *(v80 + 1) = v77;
    v101 = *(v75 + 1);
    *(v80 + 1) = v101;
    *(v80 + 4) = v79;
    *(v80 + 5) = v78;
    *(v80 + 6) = v81;
    v82 = MEMORY[0x28223BE20](v73);
    v84 = &v88 - v83;
    (*(v85 + 16))(&v88 - v83, v100, v61, v82);
    v106[0] = *(v27 + *(v105 + 40));
    v86 = lazy protocol witness table accessor for type DateDomain and conformance DateDomain();

    v87 = v98;
    HealthChartsAttributes.init<A>(chartAttributes:description:series:)(v65, v84, v106, v72, v61, v86, v103, v98);
    outlined destroy of DateDomain(v104, type metadata accessor for DateDomain.IntervalAggregation);
    outlined destroy of ChartAttributes<DateDomain>(v27, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
    return outlined init with take of HealthChartsAttributes<DateDomain>(v87, v27, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes, type metadata accessor for ChartAttributes<DateDomain>);
  }

  return result;
}

uint64_t HealthChartModel.queryIntervalAggregation()@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = type metadata accessor for HealthChartsData.Aggregation();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v33 - v4;
  v5 = type metadata accessor for Date();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x277CC88A8];
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  HealthChartModel.viewSpan()(v18);
  v19 = v1 + *(type metadata accessor for HealthChartModel(0) + 20);
  v20 = type metadata accessor for HealthChartsContext(0);
  outlined init with copy of ChartAttributes<DateDomain>(v19 + *(v20 + 24), v11, &lazy cache variable for type metadata for DateInterval?, v8, type metadata accessor for HealthChartsData?);
  v21 = (*(v13 + 48))(v11, 1, v12);
  v34 = v7;
  v39 = v12;
  if (v21 == 1)
  {
    outlined destroy of DateDomain.ViewDateSpan?(v11, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
    Date.init()();
    DateInterval.init(start:duration:)();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v22 = *(v20 + 20);
  v24 = v37;
  v23 = v38;
  v25 = v40;
  (*(v37 + 104))(v38, *MEMORY[0x277D10200], v40);
  v26 = v41;
  DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v19 + v22, v15, v23, v41);
  v27 = v23;
  v28 = v26;
  (*(v24 + 8))(v27, v25);
  v29 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v30 = *(*(v29 - 8) + 48);
  if (v30(v28, 1, v29) == 1)
  {
    v31 = v34;
    Date.init()();
    static DateDomain.ViewDateSpan.defaultIntervalAndAggregation(calendar:onDate:)(v19 + v22, v31, v42);
    (*(v35 + 8))(v31, v36);
    (*(v13 + 8))(v15, v39);
    outlined destroy of DateDomain(v18, type metadata accessor for DateDomain.ViewDateSpan);
    result = v30(v28, 1, v29);
    if (result != 1)
    {
      return outlined destroy of DateDomain.ViewDateSpan?(v28, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
    }
  }

  else
  {
    (*(v13 + 8))(v15, v39);
    outlined destroy of DateDomain(v18, type metadata accessor for DateDomain.ViewDateSpan);
    return outlined init with take of HealthChartsContext(v28, v42, type metadata accessor for DateDomain.IntervalAggregation);
  }

  return result;
}

uint64_t HealthChartModel.data(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = type metadata accessor for DateDomain.IntervalAggregation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D102A8];
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for HealthChartsData();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HealthChartModel(0);
  outlined init with copy of ChartAttributes<DateDomain>(v2 + *(v16 + 24), v11, &lazy cache variable for type metadata for HealthChartsData?, v8, type metadata accessor for HealthChartsData?);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of DateDomain.ViewDateSpan?(v11, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
    HealthChartModel.queryIntervalAggregation()(v7);
    HealthChartModel.queryData(intervalAggregation:_:)(v7, a1, a2);
    return outlined destroy of DateDomain(v7, type metadata accessor for DateDomain.IntervalAggregation);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    a1(v15);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t HealthChartModel.queryData(intervalAggregation:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for HealthChartsData();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 3);
  v12 = *(v3 + 4);
  __swift_project_boxed_opaque_existential_1(v3, v11);
  v13 = type metadata accessor for HealthChartModel(0);
  (*(v12 + 16))(&v18, &v3[*(v13 + 20)], v11, v12);
  if (v19)
  {
    outlined init with take of HealthChartsDataProvider(&v18, v20);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    type metadata accessor for DateDomain.IntervalAggregation(0);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    dispatch thunk of HealthChartsDataProvider.query(interval:aggregation:results:)();

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    outlined destroy of DateDomain(&v18, type metadata accessor for HealthChartsDataProvider?);
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_25145AB10;
    *(v16 + 56) = type metadata accessor for HealthChartsErrors(0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
    outlined init with copy of HealthStaticChartKey(v4, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    print(_:separator:terminator:)();

    static HealthChartsData.empty.getter();
    a2(v10);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t closure #1 in HealthChartModel.queryData(intervalAggregation:_:)(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for HealthChartsData();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Result<HealthChartsData, Error>(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of HealthChartsContext(a1, v10, type metadata accessor for Result<HealthChartsData, Error>);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25145AB10;
    swift_getErrorValue();
    v13 = v17;
    v14 = v18;
    *(v12 + 56) = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v13, v14);
    print(_:separator:terminator:)();

    static HealthChartsData.empty.getter();
    a2(v7);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    a2(v7);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HealthChartModel.viewSpan()@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v3 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChartAttributes<DateDomain>(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  type metadata accessor for ChartAttributes<DateDomain>(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = v1 + *(type metadata accessor for HealthChartModel(0) + 20);
  v17 = type metadata accessor for HealthChartsContext(0);
  outlined init with copy of ChartAttributes<DateDomain>(&v16[*(v17 + 28)], v15, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan, type metadata accessor for HealthChartsData?);
  v18 = type metadata accessor for DateDomain.ViewDateSpan(0);
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) != 1)
  {
    return outlined init with take of HealthChartsContext(v15, v25, type metadata accessor for DateDomain.ViewDateSpan);
  }

  outlined destroy of DateDomain.ViewDateSpan?(v15, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  v19 = v1[3];
  v20 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v19);
  (*(v20 + 24))(v16, v19, v20);
  outlined init with copy of ChartAttributes<DateDomain>(v12, v9, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes, type metadata accessor for ChartAttributes<DateDomain>);
  outlined destroy of ChartAttributes<DateDomain>(v12, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  outlined init with copy of HealthChartsContext(&v9[*(v7 + 36)], v5, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
  outlined destroy of ChartAttributes<DateDomain>(v9, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v21 = &v5[*(v3 + 52)];
  v22 = type metadata accessor for DateDomain(0);
  outlined init with copy of HealthChartsContext(v21 + *(v22 + 20), v25, type metadata accessor for DateDomain.ViewDateSpan);
  return outlined destroy of DateDomain(v21, type metadata accessor for DateDomain);
}

unint64_t lazy protocol witness table accessor for type DateDomain and conformance DateDomain()
{
  result = lazy protocol witness table cache variable for type DateDomain and conformance DateDomain;
  if (!lazy protocol witness table cache variable for type DateDomain and conformance DateDomain)
  {
    type metadata accessor for DateDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateDomain and conformance DateDomain);
  }

  return result;
}

void type metadata accessor for ChartAttributes<DateDomain>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateDomain(255);
    v7 = lazy protocol witness table accessor for type DateDomain and conformance DateDomain();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for HealthChartsData?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of ChartAttributes<DateDomain>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  type metadata accessor for ChartAttributes<DateDomain>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2513FBD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for HealthChartsContext(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2513FBE5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for HealthChartsContext(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

void type metadata completion function for HealthChartModel(uint64_t a1)
{
  type metadata accessor for HealthStaticChartKey(319, &lazy cache variable for type metadata for HealthStaticChartKey, &protocol descriptor for HealthStaticChartKey);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HealthChartsContext(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HealthChartsData?(319, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t outlined destroy of DateDomain(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for HealthChartsDataProvider?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HealthChartsDataProvider?)
  {
    type metadata accessor for HealthStaticChartKey(255, &lazy cache variable for type metadata for HealthChartsDataProvider, MEMORY[0x277D101A0]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HealthChartsDataProvider?);
    }
  }
}

uint64_t outlined init with take of HealthChartsDataProvider(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2513FC144()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of HealthChartsContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ChartAttributes<DateDomain>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of DateDomain.ViewDateSpan?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for HealthChartsData?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of HealthChartsContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

double BloodPressureMessage.localizedBloodPressure(context:)@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v128 = a2;
  v116 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v119 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle<Double>(0);
  v118 = v5;
  v113 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v117 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v114 = &v107 - v8;
  MEMORY[0x28223BE20](v9);
  v112 = &v107 - v10;
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8);
  v129 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v13 - 8);
  v125 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HealthChartsData.DescriptionKey();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v120 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v122 = &v107 - v19;
  MEMORY[0x28223BE20](v20);
  v124 = &v107 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v107 - v23;
  type metadata accessor for HealthChartsData.Description?(0);
  MEMORY[0x28223BE20](v25 - 8);
  v121 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = &v107 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v107 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v107 - v33;
  v35 = type metadata accessor for HealthChartsData();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(type metadata accessor for DescriptionContext(0) + 20);
  v126 = v36;
  v40 = *(v36 + 16);
  v111 = a1;
  v127 = v35;
  v40(v38, a1 + v39, v35);
  v130 = v38;
  HealthChartsData.description.getter();
  v41 = type metadata accessor for HealthChartsData.Description();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  if (v43(v34, 1, v41) == 1)
  {
    outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v34, type metadata accessor for HealthChartsData.Description?);
LABEL_8:
    v49 = v130;
    goto LABEL_9;
  }

  v44 = HealthChartsData.Description.substitutionValues.getter();
  v110 = *(v42 + 8);
  v110(v34, v41);
  v45 = *MEMORY[0x277D10260];
  v109 = *(v16 + 104);
  v109(v24, v45, v15);
  if (!*(v44 + 16) || (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v47 & 1) == 0))
  {

    (*(v16 + 8))(v24, v15);
    goto LABEL_8;
  }

  v48 = *(*(v44 + 56) + 8 * v46);
  v108 = *(v16 + 8);
  v108(v24, v15);

  v49 = v130;
  HealthChartsData.description.getter();
  if (v43(v31, 1, v41) == 1)
  {
    outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v31, type metadata accessor for HealthChartsData.Description?);
LABEL_9:
    type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_25145AB10;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v51 = String.init(localized:table:bundle:locale:comment:)();
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    print(_:separator:terminator:)();

    (*(v126 + 8))(v49, v127);
    _s12HealthCharts26CommonDescriptionViewModelV_ACtSgWOi0_(&v131);
    goto LABEL_10;
  }

  v59 = HealthChartsData.Description.substitutionValues.getter();
  v110(v31, v41);
  v60 = v124;
  v109(v124, *MEMORY[0x277D10258], v15);
  if (!*(v59 + 16) || (v61 = specialized __RawDictionaryStorage.find<A>(_:)(v60), (v62 & 1) == 0))
  {

    v108(v60, v15);
    goto LABEL_9;
  }

  v63 = *(*(v59 + 56) + 8 * v61);
  v108(v60, v15);

  v64 = v123;
  HealthChartsData.description.getter();
  if (v43(v64, 1, v41) == 1)
  {
LABEL_14:
    outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v64, type metadata accessor for HealthChartsData.Description?);
    goto LABEL_9;
  }

  v65 = HealthChartsData.Description.substitutionValues.getter();
  v110(v64, v41);
  v66 = v122;
  v109(v122, *MEMORY[0x277D10270], v15);
  if (!*(v65 + 16) || (v67 = specialized __RawDictionaryStorage.find<A>(_:)(v66), (v68 & 1) == 0))
  {

    v93 = v66;
LABEL_26:
    v108(v93, v15);
    goto LABEL_9;
  }

  v69 = *(*(v65 + 56) + 8 * v67);
  v108(v66, v15);

  v64 = v121;
  HealthChartsData.description.getter();
  if (v43(v64, 1, v41) == 1)
  {
    goto LABEL_14;
  }

  v70 = HealthChartsData.Description.substitutionValues.getter();
  v110(v64, v41);
  v71 = v120;
  v109(v120, *MEMORY[0x277D10268], v15);
  if (!*(v70 + 16) || (v72 = specialized __RawDictionaryStorage.find<A>(_:)(v71), (v73 & 1) == 0))
  {

    v93 = v71;
    goto LABEL_26;
  }

  v74 = *(*(v70 + 56) + 8 * v72);
  v108(v71, v15);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v124 = String.init(localized:table:bundle:locale:comment:)();
  v123 = v75;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v125 = String.init(localized:table:bundle:locale:comment:)();
  v122 = v76;
  v121 = DescriptionContext.DataXScale.dateString.getter();
  v120 = v77;
  static Locale.autoupdatingCurrent.getter();
  v78 = lazy protocol witness table accessor for type Double and conformance Double();
  v79 = v114;
  v111 = v78;
  FloatingPointFormatStyle.init(locale:)();
  type metadata accessor for ClosedRange<Int>();
  v81 = v80;
  lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(&lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>, type metadata accessor for ClosedRange<Int>, MEMORY[0x277D83660]);
  v131 = 0uLL;
  v82 = v115;
  v110 = v81;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  v83 = v112;
  v84 = v118;
  MEMORY[0x253075120](v82, v118);
  v85 = *(v119 + 8);
  v119 += 8;
  v85(v82, v116);
  v86 = *(v113 + 8);
  v86(v79, v84);
  *&v131 = v48;
  v87 = FloatingPointFormatStyle.format(_:)();
  v89 = v88;
  *&v131 = v63;
  v91 = FloatingPointFormatStyle.format(_:)();
  v92 = v90;
  if (v91 == v87 && v90 == v89 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v113 = v92;
    v86(v83, v84);
  }

  else
  {
    *&v131 = v87;
    *(&v131 + 1) = v89;
    MEMORY[0x2530761B0](45, 0xE100000000000000);
    MEMORY[0x2530761B0](v91, v92);

    v113 = *(&v131 + 1);
    v91 = v131;
    v86(v83, v84);
  }

  v94 = v84;
  v95 = [objc_opt_self() millimetersOfMercury];
  v96 = [v95 symbol];

  v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v97;

  static Locale.autoupdatingCurrent.getter();
  v98 = v114;
  FloatingPointFormatStyle.init(locale:)();
  v131 = 0uLL;
  v99 = v115;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  MEMORY[0x253075120](v99, v94);
  v85(v99, v116);
  v86(v98, v94);
  *&v131 = v69;
  v100 = FloatingPointFormatStyle.format(_:)();
  v102 = v101;
  *&v131 = v74;
  v104 = FloatingPointFormatStyle.format(_:)();
  v105 = v103;
  if (v104 == v100 && v103 == v102)
  {
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v100 = v104;
  }

  else
  {
    *&v131 = v100;
    *(&v131 + 1) = v102;
    MEMORY[0x2530761B0](45, 0xE100000000000000);
    MEMORY[0x2530761B0](v104, v105);

    v105 = *(&v131 + 1);
    v100 = v131;
  }

  v106 = v113;
  v86(v117, v118);
  (*(v126 + 8))(v130, v127);
  *&v131 = v124;
  *(&v131 + 1) = v123;
  *&v132 = v91;
  *(&v132 + 1) = v106;
  v133 = 0uLL;
  *&v134 = v121;
  *(&v134 + 1) = v120;
  *&v135 = v125;
  *(&v135 + 1) = v122;
  *&v136 = v100;
  *(&v136 + 1) = v105;
  *&v137 = v112;
  *(&v137 + 1) = v109;
  v138 = 0uLL;
  destructiveProjectEnumData for HealthChartsErrors();
LABEL_10:
  v53 = v136;
  v54 = v128;
  v128[4] = v135;
  v54[5] = v53;
  v55 = v138;
  v54[6] = v137;
  v54[7] = v55;
  v56 = v132;
  *v54 = v131;
  v54[1] = v56;
  result = *&v133;
  v58 = v134;
  v54[2] = v133;
  v54[3] = v58;
  return result;
}

uint64_t BloodPressureMessage.content(with:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BloodPressureMessage.localizedBloodPressure(context:)(a1, v15);
  v9 = 1;
  if (_s12HealthCharts26CommonDescriptionViewModelV_ACtSgWOg(v15) != 1)
  {
    v13[0] = v15[0];
    v13[1] = v15[1];
    v13[2] = v15[2];
    v13[3] = v15[3];
    v14[0] = v16[0];
    v14[1] = v16[1];
    v14[2] = v16[2];
    v14[3] = v16[3];
    *v8 = static VerticalAlignment.top.getter();
    *(v8 + 1) = 0;
    v8[16] = 1;
    type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>(0);
    closure #1 in BloodPressureMessage.content(with:)(v13, v14, &v8[*(v10 + 44)], v11);
    outlined destroy of CommonDescriptionViewModel(v15);
    outlined destroy of CommonDescriptionViewModel(v16);
    outlined init with take of HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>(v8, a2);
    v9 = 0;
  }

  return (*(v6 + 56))(a2, v9, 1, v5);
}

void type metadata accessor for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>)
  {
    type metadata accessor for TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>(255);
    lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(&lazy protocol witness table cache variable for type TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>, MEMORY[0x277CE14C0]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>);
    }
  }
}

void type metadata accessor for (SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for (SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>))
  {
    type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(255, a2);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>));
    }
  }
}

void type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)
  {
    type metadata accessor for _ShapeView<BasicChartSymbolShape, Color>(255, a2);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(&lazy protocol witness table cache variable for type _ShapeView<BasicChartSymbolShape, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<BasicChartSymbolShape, Color>, MEMORY[0x277CDF3A8]);
    v7 = type metadata accessor for SymbolTitleDescription(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>);
    }
  }
}

void type metadata accessor for _ShapeView<BasicChartSymbolShape, Color>(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for _ShapeView<BasicChartSymbolShape, Color>)
  {
    type metadata accessor for BasicChartSymbolShape();
    lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(&lazy protocol witness table cache variable for type BasicChartSymbolShape and conformance BasicChartSymbolShape, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3A8]);
    v2 = type metadata accessor for _ShapeView();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for _ShapeView<BasicChartSymbolShape, Color>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s12HealthCharts26CommonDescriptionViewModelV_ACtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t closure #1 in BloodPressureMessage.content(with:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(0, a4);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v41 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v41 - v18;
  type metadata accessor for MainActor();
  v41[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = &v19[*(v8 + 36)];
  v21 = a1[1];
  *v20 = *a1;
  *(v20 + 1) = v21;
  v22 = a1[3];
  *(v20 + 2) = a1[2];
  *(v20 + 3) = v22;
  outlined init with copy of CommonDescriptionViewModel(a1, v42);
  static ChartSymbolShape<>.circle.getter();
  v23 = objc_opt_self();
  v24 = [v23 labelColor];
  v25 = Color.init(uiColor:)();
  type metadata accessor for _ShapeView<BasicChartSymbolShape, Color>(0, v26);
  v28 = v27;
  *&v19[*(v27 + 52)] = v25;
  *&v19[*(v27 + 56)] = 256;
  v29 = &v16[*(v8 + 36)];
  v30 = a2[1];
  *v29 = *a2;
  *(v29 + 1) = v30;
  v31 = a2[3];
  *(v29 + 2) = a2[2];
  *(v29 + 3) = v31;
  outlined init with copy of CommonDescriptionViewModel(a2, v42);
  static ChartSymbolShape<>.diamond.getter();
  v32 = [v23 systemPinkColor];
  *&v16[*(v28 + 52)] = Color.init(uiColor:)();
  *&v16[*(v28 + 56)] = 256;
  outlined init with copy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v19, v13, v33);
  outlined init with copy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v16, v10, v34);
  outlined init with copy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v13, a3, v35);
  type metadata accessor for (SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)(0, v36);
  v38 = a3 + *(v37 + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  outlined init with copy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v10, a3 + *(v37 + 64), v39);
  outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v16, type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>);
  outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v19, type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>);
  outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v10, type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>);
  outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v13, type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>);
}

void type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>)
  {
    type metadata accessor for TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>(255);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>);
    }
  }
}

uint64_t outlined init with take of HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t instantiation function for generic protocol witness table for BloodPressureMessage(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BloodPressureMessage and conformance BloodPressureMessage();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>? and conformance <A> A?)
  {
    type metadata accessor for TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>(255, &lazy cache variable for type metadata for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>?, type metadata accessor for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>, MEMORY[0x277D83D88]);
    lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(&lazy protocol witness table cache variable for type HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for SymbolTitleDescription(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolTitleDescription(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 64;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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

double storeEnumTagSinglePayload for SymbolTitleDescription(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 64;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFC0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFC0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFC0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 64);
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
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v19 + 56) = 0;
      result = 0.0;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 8) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t SymbolTitleDescription.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(255, &lazy cache variable for type metadata for CommonDescriptionDate?, &type metadata for CommonDescriptionDate, MEMORY[0x277D83D88]);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for VStack();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  static HorizontalAlignment.leading.getter();
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  static ChartContentBuilder.buildExpression<A>(_:)();
  return (v12)(v10, v4);
}

uint64_t closure #1 in SymbolTitleDescription.body.getter@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v32 = a4;
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  type metadata accessor for MainActor();
  v31 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = static VerticalAlignment.center.getter();
  MEMORY[0x28223BE20](v13);
  v14 = v30;
  *(&v27 - 4) = a2;
  *(&v27 - 3) = v14;
  *(&v27 - 2) = a1;
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)();
  v29 = *(v7 + 8);
  v29(v9, v6);
  v16 = &a1[*(type metadata accessor for SymbolTitleDescription(0, a2, v14, v15) + 36)];
  v17 = v12;
  v27 = v12;
  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  v21 = *(v16 + 4);
  v20 = *(v16 + 5);
  v22 = *(v16 + 7);
  if (v22)
  {
    v23 = *(v16 + 6);
  }

  else
  {
    v23 = 0;
  }

  (*(v7 + 16))(v9, v17, v6);
  v38[0] = v19;
  v38[1] = v18;
  v38[2] = v21;
  v38[3] = v20;
  v39[0] = v9;
  v39[1] = v38;
  v37[0] = v23;
  v37[1] = v22;
  v39[2] = v37;

  v36[0] = v6;
  v36[1] = &type metadata for CommonDescriptionValue;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for CommonDescriptionDate?, &type metadata for CommonDescriptionDate, MEMORY[0x277D83D88]);
  v36[2] = v24;
  v33 = WitnessTable;
  v34 = lazy protocol witness table accessor for type CommonDescriptionValue and conformance CommonDescriptionValue();
  v35 = lazy protocol witness table accessor for type CommonDescriptionDate? and conformance <A> A?();
  static ViewBuilder.buildBlock<each A>(_:)(v39, 3uLL, v36);
  v25 = v29;
  v29(v27, v6);

  v25(v9, v6);
}

uint64_t closure #1 in closure #1 in SymbolTitleDescription.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  type metadata accessor for MainActor();
  v22[0] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Alignment.center.getter();
  v14 = *(a3 + 8);
  View.frame(width:height:alignment:)();
  v25[2] = v14;
  v25[3] = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v18 = (a1 + *(type metadata accessor for SymbolTitleDescription(0, a2, a3, v17) + 36));
  v20 = *v18;
  v19 = v18[1];
  (*(v8 + 16))(v10, v13, v7);
  v24[0] = v20;
  v24[1] = v19;
  v25[0] = v10;
  v25[1] = v24;

  v23[0] = v7;
  v23[1] = &type metadata for CommonDescriptionTitle;
  v22[2] = WitnessTable;
  v22[3] = lazy protocol witness table accessor for type CommonDescriptionTitle and conformance CommonDescriptionTitle();
  static ViewBuilder.buildBlock<each A>(_:)(v25, 2uLL, v23);
  v16(v13, v7);

  v16(v10, v7);
}

unint64_t lazy protocol witness table accessor for type CommonDescriptionValue and conformance CommonDescriptionValue()
{
  result = lazy protocol witness table cache variable for type CommonDescriptionValue and conformance CommonDescriptionValue;
  if (!lazy protocol witness table cache variable for type CommonDescriptionValue and conformance CommonDescriptionValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonDescriptionValue and conformance CommonDescriptionValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonDescriptionDate? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CommonDescriptionDate? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CommonDescriptionDate? and conformance <A> A?)
  {
    type metadata accessor for HealthChartsQuantityDistributionDataProvider?(255, &lazy cache variable for type metadata for CommonDescriptionDate?, &type metadata for CommonDescriptionDate, MEMORY[0x277D83D88]);
    lazy protocol witness table accessor for type CommonDescriptionDate and conformance CommonDescriptionDate();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonDescriptionDate? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonDescriptionDate and conformance CommonDescriptionDate()
{
  result = lazy protocol witness table cache variable for type CommonDescriptionDate and conformance CommonDescriptionDate;
  if (!lazy protocol witness table cache variable for type CommonDescriptionDate and conformance CommonDescriptionDate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonDescriptionDate and conformance CommonDescriptionDate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonDescriptionTitle and conformance CommonDescriptionTitle()
{
  result = lazy protocol witness table cache variable for type CommonDescriptionTitle and conformance CommonDescriptionTitle;
  if (!lazy protocol witness table cache variable for type CommonDescriptionTitle and conformance CommonDescriptionTitle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonDescriptionTitle and conformance CommonDescriptionTitle);
  }

  return result;
}

uint64_t outlined init with copy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double _s12HealthCharts26CommonDescriptionViewModelV_ACtSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2513FEEEC(void *a1)
{
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(255, &lazy cache variable for type metadata for CommonDescriptionDate?, &type metadata for CommonDescriptionDate, MEMORY[0x277D83D88]);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t BarSeries.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BarSeries.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = type metadata accessor for HealthChartsData.SeriesData();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t BarSeries.init(seriesData:attributes:marks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *(a2 + 32);
  v16 = *(a2 + 40);
  v18 = *(a2 + 48);
  UUID.init()();
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v19 = type metadata accessor for BarSeries(0, &v27);
  v20 = a9 + v19[16];
  v21 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v21;
  *(v20 + 32) = v17;
  *(v20 + 40) = v16;
  *(v20 + 48) = v18;
  *(a9 + v19[17]) = a3;
  v22 = v19[15];
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v23 = type metadata accessor for HealthChartsData.SeriesData();
  return (*(*(v23 - 8) + 32))(a9 + v22, a1, v23);
}

uint64_t BarSeries.body.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  specialized _copySequenceToContiguousArray<A>(_:)(*(v1 + *(v6 + 68)), v5);
  v13[1] = v7;
  swift_getKeyPath();
  (*(v3 + 16))(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v8 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = *(a1 + 32);
  *(v9 + 16) = *(a1 + 16);
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 48);
  (*(v3 + 32))(v9 + v8, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in BarSeries.body.getter;
  *(v11 + 24) = v9;
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for [(offset: Int, element: RectangleMark)], type metadata accessor for (offset: Int, element: RectangleMark), MEMORY[0x277D83940]);
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB300], MEMORY[0x277CBB378]);
  lazy protocol witness table accessor for type [(offset: Int, element: RectangleMark)] and conformance [A]();
  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark> and conformance <> BuilderConditional<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in BarSeries.body.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v19 = a4;
  *(&v19 + 1) = a5;
  *&v20 = a6;
  *(&v20 + 1) = a7;
  *&v21 = a8;
  v16 = (a3 + *(type metadata accessor for BarSeries(0, &v19) + 64));
  v17 = v16[1];
  v19 = *v16;
  v20 = v17;
  v21 = v16[2];
  v22 = *(v16 + 48);
  specialized ChartContent.apply(_:)(&v19, x8_0);
}

uint64_t BarSeries.init<>(dateIntervalData:attributes:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  *&v46 = type metadata accessor for DateInterval();
  *(&v46 + 1) = a3;
  v9 = v46;
  v24 = v46;
  *&v47 = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
  *(&v47 + 1) = a4;
  v10 = v47;
  v23 = v47;
  v11 = type metadata accessor for HealthChartsData.SeriesData();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v15 = a2[1];
  v46 = *a2;
  v47 = v15;
  v48 = a2[2];
  v31 = *(a2 + 48);
  v49 = v31;
  v16 = *(a2 + 1);
  v30 = *a2;
  v29 = v16;
  v28 = *(a2 + 16);
  v27 = *(a2 + 3);
  v26 = *(a2 + 32);
  v25 = *(a2 + 5);
  v45 = HealthChartsData.SeriesData.points.getter();
  v34 = a3;
  v35 = a4;
  v36 = &v46;
  v37 = a1;
  v38 = v9;
  v39 = a3;
  v40 = v10;
  v41 = a4;
  type metadata accessor for HealthChartsData.SeriesPoint();
  v17 = type metadata accessor for Array();
  v18 = type metadata accessor for RectangleMark();
  WitnessTable = swift_getWitnessTable();
  v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in BarSeries.init<>(dateIntervalData:attributes:), v33, v17, v18, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);

  (*(v12 + 16))(v14, a1, v11);
  v38 = v30;
  v39 = v29;
  v40 = v28;
  v41 = v27;
  v42 = v26;
  v43 = v25;
  v44 = v31;
  BarSeries.init(seriesData:attributes:marks:)(v14, &v38, v21, v24, a3, v23, a4, MEMORY[0x277CBB1E8], v32);
  return (*(v12 + 8))(a1, v11);
}

uint64_t specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v51 = a4;
  v43 = a3;
  v45 = a2;
  v49 = a1;
  v4 = type metadata accessor for DateInterval();
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, MEMORY[0x277D10248]);
  v7 = v6;
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = type metadata accessor for HealthChartsData.Aggregation();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for Calendar.Component();
  v39 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v38 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v48 = type metadata accessor for RectangleMark();
  v21 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v47 = &v37 - v24;
  type metadata accessor for MainActor();
  v46 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(v45 + 32))
  {
    type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, MEMORY[0x277D101A8]);
    HealthChartsData.SeriesData.aggregation.getter();
    HealthChartsData.Aggregation.intervalCalendarComponent()();
    (*(v40 + 8))(v12, v41);
    v25 = v39;
    if ((*(v39 + 48))(v15, 1, v16) == 1)
    {
      outlined destroy of Calendar.Component?(v15, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0]);
      v26 = v50;
      (*(v50 + 16))(v9, v49, v7);
      v27 = v44;
      HealthChartsData.SeriesPoint.x.getter();
      HealthChartsData.SeriesPoint.y.getter();
      v28 = v42;
      _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufC10Foundation04DateF0V_AM0L0VSNySdGTt2g5(v27, v42);
      (*(v26 + 8))(v9, v7);
    }

    else
    {
      (*(v25 + 32))(v20, v15, v16);
      (*(v50 + 16))(v9, v49, v7);
      v32 = v38;
      (*(v25 + 16))(v38, v20, v16);
      v28 = v42;
      _s6Charts13RectangleMarkV06HealthA0E3for4unitAC0dA4Core0dA4DataV11SeriesPointVy_10Foundation12DateIntervalVxG_AL8CalendarV9ComponentOtcAG0M10ChartValueRzSd5BoundRtzlufCSNySdG_Tt2g5(v9, v32, v42);
      (*(v25 + 8))(v20, v16);
    }

    v33 = *(v21 + 32);
    v35 = v47;
    v34 = v48;
    v33(v47, v28, v48);
    v33(v51, v35, v34);
  }

  else
  {
    v29 = v50;
    (*(v50 + 16))(v9, v49, v7);
    v30 = v44;
    HealthChartsData.SeriesPoint.x.getter();
    HealthChartsData.SeriesPoint.y.getter();
    v31 = v47;
    _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufC10Foundation04DateI0V_AQ0O0VSNySdGTt3g5(v30, v47);
    (*(v29 + 8))(v9, v7);
    (*(v21 + 32))(v51, v31, v48);
  }
}

{
  return specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:)(a1, a2, a3, a4);
}

uint64_t closure #1 in BarSeries.init<>(dateIntervalData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v52 = a6;
  v44 = a3;
  v45 = a2;
  v50 = a1;
  v51 = type metadata accessor for DateInterval();
  v56 = v51;
  v57 = a4;
  v53 = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
  v54 = a4;
  v58 = v53;
  v59 = a5;
  v55 = a5;
  v48 = type metadata accessor for HealthChartsData.SeriesPoint();
  v8 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v49 = &v38 - v9;
  v42 = type metadata accessor for HealthChartsData.Aggregation();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Calendar.Component();
  v41 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v39 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v47 = type metadata accessor for RectangleMark();
  v20 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  type metadata accessor for MainActor();
  v46 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(v45 + 32))
  {
    v25 = v51;
    v56 = v51;
    v57 = v54;
    v58 = v53;
    v59 = v55;
    type metadata accessor for HealthChartsData.SeriesData();
    HealthChartsData.SeriesData.aggregation.getter();
    HealthChartsData.Aggregation.intervalCalendarComponent()();
    (*(v40 + 8))(v11, v42);
    v26 = v41;
    if ((*(v41 + 48))(v14, 1, v15) == 1)
    {
      outlined destroy of Calendar.Component?(v14, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0]);
      v27 = v49;
      (*(v8 + 16))(v49, v50, v48);
      v28 = type metadata accessor for Date();
      v29 = v43;
      RectangleMark.init<A, B, C>(for:)(v27, v25, v28, v54, v53, MEMORY[0x277CBB1E8], v55, v43);
    }

    else
    {
      (*(v26 + 32))(v19, v14, v15);
      v33 = v49;
      (*(v8 + 16))(v49, v50, v48);
      v34 = v39;
      (*(v26 + 16))(v39, v19, v15);
      v29 = v43;
      RectangleMark.init<A>(for:unit:)(v33, v34, v54, v55, v43);
      (*(v26 + 8))(v19, v15);
    }

    v35 = *(v20 + 32);
    v36 = v47;
    v35(v24, v29, v47);
    v35(v52, v24, v36);
  }

  else
  {
    v30 = *(v45 + 24);
    v31 = v49;
    (*(v8 + 16))(v49, v50, v48);
    v32 = type metadata accessor for Date();
    RectangleMark.init<A, B, C>(for:width:)(v31, v51, v32, v54, v53, MEMORY[0x277CBB1E8], v55, v30, v24);
    (*(v20 + 32))(v52, v24, v47);
  }
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E3for4unitAC0dA4Core0dA4DataV11SeriesPointVy_10Foundation12DateIntervalVxG_AL8CalendarV9ComponentOtcAG0M10ChartValueRzSd5BoundRtzlufCSNySdG_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v56 = a3;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v43 - v7;
  v51 = MEMORY[0x277CC99E8];
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v43 - v9;
  v57 = type metadata accessor for Date();
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  type metadata accessor for PlottableValue<Date>(0);
  MEMORY[0x28223BE20](v19 - 8);
  v45 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Calendar.Component();
  v22 = *(v21 - 8);
  v47 = v21;
  v48 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DateInterval();
  v52 = *(v25 - 8);
  v53 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, MEMORY[0x277D10248]);
  v49 = v28;
  v50 = a1;
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  v29 = *(v22 + 16);
  v43 = v24;
  v29(v24, v58, v21);
  v60 = 29560;
  v61 = 0xE200000000000000;
  v60 = String.init<A>(_:)();
  v61 = v30;
  v44 = v27;
  DateInterval.start.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v31 = *(v10 + 8);
  v32 = v15;
  v33 = v57;
  v31(v32, v57);
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v31(v12, v33);
  Date.init(timeIntervalSinceReferenceDate:)();
  v34 = type metadata accessor for Calendar();
  v35 = v46;
  (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:unit:calendar:)();
  outlined destroy of Calendar.Component?(v35, &lazy cache variable for type metadata for Calendar?, v51);
  v31(v18, v33);

  v60 = 29561;
  v61 = 0xE200000000000000;
  v60 = String.init<A>(_:)();
  v61 = v36;
  ClosedRange<>.start.getter();
  v59 = v37;
  static PlottableValue.value<A>(_:_:)();

  v60 = 25977;
  v61 = 0xE200000000000000;
  v60 = String.init<A>(_:)();
  v61 = v38;
  ClosedRange<>.end.getter();
  v59 = v39;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
  v40 = v47;
  v41 = *(v48 + 8);
  v41(v58, v47);
  (*(*(v49 - 8) + 8))(v50);
  v41(v43, v40);
  return (*(v52 + 8))(v44, v53);
}

uint64_t BarSeries.init<>(datePointData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v84 = type metadata accessor for Date();
  v6 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, Double>, MEMORY[0x277D10248]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v86 = v58 - v11;
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0);
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x28223BE20](v12);
  v80 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v58 - v15;
  v17 = type metadata accessor for HealthChartsData.Aggregation();
  MEMORY[0x28223BE20](v17 - 8);
  v62 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, MEMORY[0x277D101A8]);
  v20 = v19;
  v72 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v71 = v58 - v21;
  v22 = *(a2 + 1);
  v90[0] = *a2;
  v90[1] = v22;
  v90[2] = *(a2 + 2);
  v70 = *(a2 + 48);
  v91 = v70;
  v23 = a2[1];
  v68 = *a2;
  v67 = v23;
  v69 = *(a2 + 16);
  v65 = a2[3];
  v66 = *(a2 + 32);
  v64 = a2[5];
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, Double>, MEMORY[0x277D101A8]);
  v63 = v24;
  v25 = HealthChartsData.SeriesData.points.getter();
  v27 = *(v25 + 16);
  v73 = a1;
  if (v27)
  {
    v59 = v16;
    v60 = v20;
    v61 = a3;
    v89 = MEMORY[0x277D84F90];
    v28 = v25;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0, v26);
    v29 = type metadata accessor for MainActor();
    v31 = *(v10 + 16);
    v30 = v10 + 16;
    v77 = v31;
    v78 = v29;
    v32 = v89;
    v33 = (*(v30 + 64) + 32) & ~*(v30 + 64);
    v34 = v6;
    v58[1] = v28;
    v35 = v28 + v33;
    v76 = *(v30 + 56);
    v75 = (v34 + 8);
    v74 = (v30 - 8);
    v79 = v30;
    do
    {
      v85 = v32;
      v77(v86, v35, v9);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v36 = v83;
      v37 = v86;
      HealthChartsData.SeriesPoint.x.getter();
      lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
      v38 = v80;
      v39 = v9;
      v40 = v84;
      IntervalChartValue.asDateInterval<>()();
      v41 = v40;
      v9 = v39;
      (*v75)(v36, v41);
      HealthChartsData.SeriesPoint.y.getter();
      v87 = v88;
      IntervalChartValue.asClosedRange()();
      (*v74)(v37, v39);

      v32 = v85;
      v89 = v85;
      v44 = *(v85 + 16);
      v43 = *(v85 + 24);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v42);
        v32 = v89;
      }

      *(v32 + 16) = v44 + 1;
      outlined init with take of (DateInterval, ClosedRange<Double>)(v38, v32 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v44);
      v35 += v76;
      --v27;
    }

    while (v27);

    a3 = v61;
    v20 = v60;
    v16 = v59;
  }

  else
  {
  }

  v45 = v63;
  HealthChartsData.SeriesData.aggregation.getter();
  v46 = type metadata accessor for HealthChartsUnit();
  (*(*(v46 - 8) + 56))(v16, 1, 1, v46);
  type metadata accessor for DateInterval();
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
  lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  v47 = v71;
  HealthChartsData.SeriesData.init(_:aggregation:unit:)();
  v48 = HealthChartsData.SeriesData.points.getter();
  MEMORY[0x28223BE20](v48);
  v58[-2] = v90;
  v58[-1] = v47;
  v49 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGGG_0E013RectangleMarkVs5NeverOTg5(partial apply for specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:), &v58[-4], v48);

  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>(0);
  v51 = v50;
  v52 = v72;
  (*(v72 + 16))(a3 + *(v50 + 60), v47, v20);
  UUID.init()();
  (*(*(v45 - 8) + 8))(v73, v45);
  v53 = a3 + *(v51 + 64);
  v54 = v67;
  *v53 = v68;
  *(v53 + 8) = v54;
  v55 = v65;
  *(v53 + 16) = v69;
  *(v53 + 24) = v55;
  v56 = v64;
  *(v53 + 32) = v66;
  *(v53 + 40) = v56;
  *(v53 + 48) = v70;
  *(a3 + *(v51 + 68)) = v49;
  return (*(v52 + 8))(v47, v20);
}

uint64_t BarSeries.init<>(_:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v86 = type metadata accessor for Date();
  v6 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, MEMORY[0x277D10248]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v88 = v60 - v11;
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12);
  v82 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v60 - v15;
  v17 = type metadata accessor for HealthChartsData.Aggregation();
  MEMORY[0x28223BE20](v17 - 8);
  v63 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D101A8];
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, MEMORY[0x277D101A8]);
  v21 = v20;
  v73 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v72 = v60 - v22;
  v23 = *(a2 + 1);
  v90[0] = *a2;
  v90[1] = v23;
  v90[2] = *(a2 + 2);
  v71 = *(a2 + 48);
  v91 = v71;
  v24 = a2[1];
  v69 = *a2;
  v68 = v24;
  v70 = *(a2 + 16);
  v66 = a2[3];
  v67 = *(a2 + 32);
  v65 = a2[5];
  v25 = a1;
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, v19);
  v64 = v26;
  v27 = HealthChartsData.SeriesData.points.getter();
  v29 = *(v27 + 16);
  v75 = v25;
  v74 = v21;
  if (v29)
  {
    v61 = v16;
    v62 = a3;
    v89 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0, v28);
    v30 = type metadata accessor for MainActor();
    v31 = v89;
    v33 = *(v10 + 16);
    v32 = v10 + 16;
    v79 = v33;
    v80 = v30;
    v34 = (*(v32 + 64) + 32) & ~*(v32 + 64);
    v60[1] = v27;
    v35 = v27 + v34;
    v36 = *(v32 + 56);
    v77 = (v6 + 8);
    v78 = v36;
    v76 = (v32 - 8);
    v81 = v32;
    do
    {
      v87 = v31;
      v79(v88, v35, v9);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v37 = v85;
      v38 = v88;
      HealthChartsData.SeriesPoint.x.getter();
      lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
      v39 = v82;
      v40 = v9;
      v41 = v86;
      IntervalChartValue.asDateInterval<>()();
      v42 = v41;
      v9 = v40;
      (*v77)(v37, v42);
      HealthChartsData.SeriesPoint.y.getter();
      (*v76)(v38, v40);

      v31 = v87;
      v89 = v87;
      v45 = *(v87 + 16);
      v44 = *(v87 + 24);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
        v31 = v89;
      }

      *(v31 + 16) = v45 + 1;
      outlined init with take of (DateInterval, ClosedRange<Double>)(v39, v31 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v45);
      v35 += v78;
      --v29;
    }

    while (v29);

    a3 = v62;
    v16 = v61;
  }

  else
  {
  }

  v46 = v64;
  HealthChartsData.SeriesData.aggregation.getter();
  v47 = type metadata accessor for HealthChartsUnit();
  (*(*(v47 - 8) + 56))(v16, 1, 1, v47);
  type metadata accessor for DateInterval();
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
  lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  v48 = v72;
  HealthChartsData.SeriesData.init(_:aggregation:unit:)();
  v49 = v74;
  v50 = HealthChartsData.SeriesData.points.getter();
  MEMORY[0x28223BE20](v50);
  v60[-2] = v90;
  v60[-1] = v48;
  v51 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGGG_0E013RectangleMarkVs5NeverOTg5(closure #1 in BarSeries.init<>(dateIntervalData:attributes:)specialized partial apply, &v60[-4], v50);

  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>(0);
  v53 = v52;
  v54 = v73;
  (*(v73 + 16))(a3 + *(v52 + 60), v48, v49);
  UUID.init()();
  (*(*(v46 - 8) + 8))(v75, v46);
  v55 = a3 + *(v53 + 64);
  v56 = v68;
  *v55 = v69;
  *(v55 + 8) = v56;
  v57 = v66;
  *(v55 + 16) = v70;
  *(v55 + 24) = v57;
  v58 = v65;
  *(v55 + 32) = v67;
  *(v55 + 40) = v58;
  *(v55 + 48) = v71;
  *(a3 + *(v53 + 68)) = v51;
  return (*(v54 + 8))(v48, v49);
}

uint64_t BarSeries.init<>(scalarRangeData:attributes:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D10248]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v51 = type metadata accessor for RectangleMark();
  v11 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v52 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v43 = a2[1];
  v42 = v13;
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v41 = *(a2 + 48);
  type metadata accessor for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D101A8]);
  v40 = v16;
  v17 = HealthChartsData.SeriesData.points.getter();
  v19 = *(v17 + 16);
  if (v19)
  {
    v36 = v15;
    v38 = a1;
    v39 = a3;
    v53 = MEMORY[0x277D84F90];
    v50 = v19;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0, v18);
    v20 = v8;
    v21 = v53;
    v49 = v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    result = type metadata accessor for MainActor();
    v23 = 0;
    v47 = v20 + 16;
    v48 = result;
    v45 = v11 + 32;
    v46 = (v20 + 8);
    v37 = v14;
    v44 = (v43 == 0xFF) | v14;
    v24 = v20;
    while (v23 < *(v17 + 16))
    {
      v25 = v17;
      v26 = v24;
      (*(v24 + 16))(v10, v49 + *(v24 + 72) * v23, v7);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v44)
      {
        HealthChartsData.SeriesPoint.x.getter();
        HealthChartsData.SeriesPoint.y.getter();
        _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufCSNySdG_SdAMTt2g5(v52);
      }

      else
      {
        HealthChartsData.SeriesPoint.x.getter();
        HealthChartsData.SeriesPoint.y.getter();
        _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufCSNySdG_SdAQTt3g5();
      }

      (*v46)(v10, v7);
      v53 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
        v21 = v53;
      }

      ++v23;
      *(v21 + 16) = v29 + 1;
      result = (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v29, v52, v51);
      v24 = v26;
      v17 = v25;
      if (v50 == v23)
      {

        a3 = v39;
        a1 = v38;
        v14 = v37;
        v15 = v36;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
LABEL_14:
    type metadata accessor for BarSeries<ClosedRange<Double>, ClosedRange<Double>>(0);
    v31 = v30;
    v32 = v40;
    v33 = *(v40 - 8);
    (*(v33 + 16))(a3 + *(v30 + 60), a1, v40);
    UUID.init()();
    result = (*(v33 + 8))(a1, v32);
    v34 = a3 + *(v31 + 64);
    v35 = v43;
    *v34 = v42;
    *(v34 + 16) = v35;
    *(v34 + 32) = v14;
    *(v34 + 40) = v15;
    *(v34 + 48) = v41;
    *(a3 + *(v31 + 68)) = v21;
  }

  return result;
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufC10Foundation04DateI0V_AQ0O0VSNySdGTt3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v5 - 8);
  v23 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlottableValue<Date>(0);
  MEMORY[0x28223BE20](v12 - 8);
  v21[1] = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 29560;
  v27 = 0xE200000000000000;
  v26 = String.init<A>(_:)();
  v27 = v14;
  v15 = type metadata accessor for DateInterval();
  lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
  dispatch thunk of IntervalChartValue.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();
  (*(v9 + 8))(v11, v8);

  v26 = 29561;
  v27 = 0xE200000000000000;
  v26 = String.init<A>(_:)();
  v27 = v16;
  ClosedRange<>.start.getter();
  v25 = v17;
  static PlottableValue.value<A>(_:_:)();

  v26 = 25977;
  v27 = 0xE200000000000000;
  v26 = String.init<A>(_:)();
  v27 = v18;
  ClosedRange<>.end.getter();
  v25 = v19;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
  return (*(*(v15 - 8) + 8))(v22, v15);
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufCSNySdG_SdAQTt3g5()
{
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  String.init<A>(_:)();
  ClosedRange<>.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  String.init<A>(_:)();
  ClosedRange<>.start.getter();
  static PlottableValue.value<A>(_:_:)();

  String.init<A>(_:)();
  ClosedRange<>.end.getter();
  static PlottableValue.value<A>(_:_:)();

  return RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufCSd_S2dTt3g5()
{
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  String.init<A>(_:)();
  Double.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  String.init<A>(_:)();
  Double.start.getter();
  static PlottableValue.value<A>(_:_:)();

  String.init<A>(_:)();
  Double.end.getter();
  static PlottableValue.value<A>(_:_:)();

  return RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufC10Foundation04DateF0V_AM0L0VSNySdGTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v30 = &v26 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlottableValue<Date>(0);
  MEMORY[0x28223BE20](v13 - 8);
  v26 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v29 = &v26 - v16;
  v34 = 29560;
  v35 = 0xE200000000000000;
  v34 = String.init<A>(_:)();
  v35 = v17;
  v18 = type metadata accessor for DateInterval();
  lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
  v27 = v18;
  v28 = a1;
  dispatch thunk of IntervalChartValue.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();
  v19 = *(v10 + 8);
  v19(v12, v9);

  v34 = 25976;
  v35 = 0xE200000000000000;
  v34 = String.init<A>(_:)();
  v35 = v20;
  dispatch thunk of IntervalChartValue.end.getter();
  static PlottableValue.value<A>(_:_:)();
  v19(v12, v9);

  v34 = 29561;
  v35 = 0xE200000000000000;
  v34 = String.init<A>(_:)();
  v35 = v21;
  ClosedRange<>.start.getter();
  v33 = v22;
  static PlottableValue.value<A>(_:_:)();

  v34 = 25977;
  v35 = 0xE200000000000000;
  v34 = String.init<A>(_:)();
  v35 = v23;
  ClosedRange<>.end.getter();
  v33 = v24;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
  return (*(*(v27 - 8) + 8))(v28);
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufCSNySdG_SdAMTt2g5@<X0>(uint64_t a1@<X8>)
{
  v19[2] = a1;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v5 - 8);
  v19[1] = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v21 = 29560;
  v22 = 0xE200000000000000;
  v21 = String.init<A>(_:)();
  v22 = v10;
  ClosedRange<>.start.getter();
  v20 = v11;
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  v21 = 25976;
  v22 = 0xE200000000000000;
  v21 = String.init<A>(_:)();
  v22 = v12;
  ClosedRange<>.end.getter();
  v20 = v13;
  static PlottableValue.value<A>(_:_:)();

  v21 = 29561;
  v22 = 0xE200000000000000;
  v21 = String.init<A>(_:)();
  v22 = v14;
  ClosedRange<>.start.getter();
  v20 = v15;
  static PlottableValue.value<A>(_:_:)();

  v21 = 25977;
  v22 = 0xE200000000000000;
  v21 = String.init<A>(_:)();
  v22 = v16;
  ClosedRange<>.end.getter();
  v20 = v17;
  static PlottableValue.value<A>(_:_:)();

  return RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufCSd_S2dTt2g5@<X0>(uint64_t a1@<X8>)
{
  v17[2] = a1;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v3 - 8);
  v17[1] = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v19 = 29560;
  v20 = 0xE200000000000000;
  v19 = String.init<A>(_:)();
  v20 = v8;
  Double.start.getter();
  v18 = v9;
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  v19 = 25976;
  v20 = 0xE200000000000000;
  v19 = String.init<A>(_:)();
  v20 = v10;
  Double.end.getter();
  v18 = v11;
  static PlottableValue.value<A>(_:_:)();

  v19 = 29561;
  v20 = 0xE200000000000000;
  v19 = String.init<A>(_:)();
  v20 = v12;
  Double.start.getter();
  v18 = v13;
  static PlottableValue.value<A>(_:_:)();

  v19 = 25977;
  v20 = 0xE200000000000000;
  v19 = String.init<A>(_:)();
  v20 = v14;
  Double.end.getter();
  v18 = v15;
  static PlottableValue.value<A>(_:_:)();

  return RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
}

uint64_t BarSeries.init<>(scalarPointData:attributes:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Double, Double>, MEMORY[0x277D10248]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v43[-v9];
  v49 = type metadata accessor for RectangleMark();
  v63 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v60 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v61 = &v43[-v13];
  v14 = a2[1];
  v51 = *a2;
  v52 = v14;
  v15 = *(a2 + 4);
  v16 = *(a2 + 5);
  v17 = *(a2 + 48);
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, MEMORY[0x277D101A8]);
  v50 = v18;
  v19 = HealthChartsData.SeriesData.points.getter();
  v21 = *(v19 + 16);
  if (v21)
  {
    v44 = v17;
    v45 = v16;
    v47 = a1;
    v48 = a3;
    v64 = MEMORY[0x277D84F90];
    v62 = v19;
    v58 = v21;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0, v20);
    v22 = v62;
    v23 = v8;
    v24 = v64;
    v57 = v62 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    result = type metadata accessor for MainActor();
    v26 = 0;
    v55 = v23 + 16;
    v56 = result;
    v27 = (v63 + 32);
    v54 = (v23 + 8);
    v46 = v15;
    v53 = (v52 == 0xFF) | v15;
    v28 = v23;
    v29 = v49;
    v59 = v23;
    while (v26 < *(v22 + 16))
    {
      (*(v28 + 16))(v10, v57 + *(v28 + 72) * v26, v7);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v30 = v60;
      if (v53)
      {
        HealthChartsData.SeriesPoint.x.getter();
        HealthChartsData.SeriesPoint.y.getter();
        _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufCSd_S2dTt2g5(v30);
      }

      else
      {
        HealthChartsData.SeriesPoint.x.getter();
        HealthChartsData.SeriesPoint.y.getter();
        _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufCSd_S2dTt3g5();
      }

      v31 = *v27;
      v32 = v61;
      (*v27)(v61, v30, v29);

      (*v54)(v10, v7);
      v64 = v24;
      v34 = v29;
      v36 = *(v24 + 16);
      v35 = *(v24 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
        v32 = v61;
        v24 = v64;
      }

      ++v26;
      *(v24 + 16) = v36 + 1;
      result = v31(v24 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v36, v32, v34);
      v28 = v59;
      v29 = v34;
      v22 = v62;
      if (v58 == v26)
      {

        a3 = v48;
        a1 = v47;
        v15 = v46;
        v16 = v45;
        LOBYTE(v17) = v44;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
LABEL_14:
    type metadata accessor for BarSeries<Double, Double>();
    v38 = v37;
    v39 = v50;
    v40 = *(v50 - 8);
    (*(v40 + 16))(a3 + *(v37 + 60), a1, v50);
    UUID.init()();
    result = (*(v40 + 8))(a1, v39);
    v41 = a3 + *(v38 + 64);
    v42 = v52;
    *v41 = v51;
    *(v41 + 16) = v42;
    *(v41 + 32) = v15;
    *(v41 + 40) = v16;
    *(v41 + 48) = v17;
    *(a3 + *(v38 + 68)) = v24;
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, __n128 a4)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

uint64_t sub_251403F68()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v13 = *(v0 + 16);
  v1 = v13;
  v14 = v2;
  v15 = v3;
  v16 = *(v0 + 40);
  v12 = v16;
  v4 = type metadata accessor for BarSeries(0, &v13);
  v5 = v0 + ((*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80));
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v4 + 60);
  v13 = v1;
  v14 = v2;
  v15 = v3;
  *&v16 = v12;
  v8 = type metadata accessor for HealthChartsData.SeriesData();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v5 + *(v4 + 64);
  v10 = *(v9 + 16);
  if (v10 != 255)
  {
    outlined consume of AttributeColor(*v9, *(v9 + 8), v10);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in BarSeries.body.getter@<X0>(uint64_t x8_0@<X8>)
{
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v13[0] = v3[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v10 = *(type metadata accessor for BarSeries(0, v13) - 8);
  v11 = v3 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return closure #1 in BarSeries.body.getter(v11, v5, v6, v7, v8, v9, x8_0);
}

uint64_t sub_2514041DC()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed RectangleMark) -> (@out BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>)(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  type metadata accessor for (offset: Int, element: RectangleMark)(0);
  return v3(v4, &a1[*(v5 + 48)]);
}

void type metadata accessor for (offset: Int, element: RectangleMark)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: RectangleMark))
  {
    type metadata accessor for RectangleMark();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: RectangleMark));
    }
  }
}

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(255);
    type metadata accessor for Capsule();
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(255);
    type metadata accessor for RoundedRectangle();
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Capsule and conformance Capsule(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB300], MEMORY[0x277CBB378]);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(255);
    lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>();
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(255);
    type metadata accessor for RoundedRectangle();
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(255);
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(255);
    type metadata accessor for Capsule();
    lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

void type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    v10[0] = v6;
    v10[1] = MEMORY[0x277D839F8];
    v10[2] = v7;
    v10[3] = MEMORY[0x277D10358];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with take of (DateInterval, ClosedRange<Double>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  return partial apply for specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:)(a1, a2);
}

{
  return specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

void type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BarSeries<DateInterval, ClosedRange<Double>>)
  {
    v2 = type metadata accessor for DateInterval();
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
    v6[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v6[4] = MEMORY[0x277CBB1E8];
    v4 = type metadata accessor for BarSeries(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for BarSeries<DateInterval, ClosedRange<Double>>);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    v10[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v9[0] = v6;
    v9[1] = v6;
    v10 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v11 = v10;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for BarSeries<ClosedRange<Double>, ClosedRange<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BarSeries<ClosedRange<Double>, ClosedRange<Double>>)
  {
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v5[0] = v2;
    v5[1] = v2;
    v6 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v7 = v6;
    v8 = MEMORY[0x277CBB590];
    v3 = type metadata accessor for BarSeries(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for BarSeries<ClosedRange<Double>, ClosedRange<Double>>);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = MEMORY[0x277D839F8];
    v8[1] = MEMORY[0x277D839F8];
    v8[2] = MEMORY[0x277D10358];
    v8[3] = MEMORY[0x277D10358];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for BarSeries<Double, Double>()
{
  if (!lazy cache variable for type metadata for BarSeries<Double, Double>)
  {
    v4[5] = v0;
    v4[6] = v1;
    v4[0] = MEMORY[0x277D839F8];
    v4[1] = MEMORY[0x277D839F8];
    v4[2] = MEMORY[0x277D10358];
    v4[3] = MEMORY[0x277D10358];
    v4[4] = MEMORY[0x277CBB590];
    v2 = type metadata accessor for BarSeries(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for BarSeries<Double, Double>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for BarSeries<A, B>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for BarSeries(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HealthChartsData.SeriesData();
    if (v2 <= 0x3F)
    {
      type metadata accessor for BarSeriesAttributes?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for [(offset: Int, element: RectangleMark)](319, &lazy cache variable for type metadata for [RectangleMark], MEMORY[0x277CBB300], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_251405264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for HealthChartsData.SeriesData();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      return (*(v11 + 48))(a1 + *(a3 + 60), a2, v10);
    }

    else
    {
      v12 = *(a1 + *(a3 + 68));
      if (v12 >= 0xFFFFFFFF)
      {
        LODWORD(v12) = -1;
      }

      return (v12 + 1);
    }
  }
}

uint64_t sub_2514053AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    result = type metadata accessor for HealthChartsData.SeriesData();
    v12 = *(result - 8);
    if (*(v12 + 84) == a3)
    {
      return (*(v12 + 56))(a1 + *(a4 + 60), a2, a2, result);
    }

    else
    {
      *(a1 + *(a4 + 68)) = (a2 - 1);
    }
  }

  return result;
}

void type metadata accessor for BarSeriesAttributes?()
{
  if (!lazy cache variable for type metadata for BarSeriesAttributes?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BarSeriesAttributes?);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
    v10[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for PlottableValue<Date>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlottableValue<Date>)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for PlottableValue();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlottableValue<Date>);
    }
  }
}

uint64_t outlined destroy of Calendar.Component?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of BarSeriesAttributes?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BarSeriesAttributes?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of AttributeColor(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return v3;
}

uint64_t outlined destroy of BarSeriesAttributes?(uint64_t a1)
{
  type metadata accessor for BarSeriesAttributes?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2514059B4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DistributionSeries.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DistributionSeries.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v6;
  v10 = v5;
  v7 = type metadata accessor for DistributionSeriesViewModel(0, v9);
  return (*(*(v7 - 8) + 16))(a2, v2 + v4, v7);
}

uint64_t DistributionSeries.init(seriesData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a6;
  v30 = a7;
  v27 = a4;
  v28 = a5;
  v25 = a8;
  v26 = a1;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v10 = type metadata accessor for HealthChartsData.SeriesData();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v17 = a2[3];
  LOBYTE(a2) = *(a2 + 32);
  UUID.init()();
  v18 = v26;
  (*(v11 + 16))(v13, v26, v10);
  *&v36 = v14;
  *(&v36 + 1) = v15;
  v37 = v16;
  v38 = v17;
  v39 = a2;
  v20 = v27;
  v19 = v28;
  v31 = a3;
  v32 = v27;
  v22 = v29;
  v21 = v30;
  v33 = v28;
  v34 = v29;
  v35 = v30;
  v23 = type metadata accessor for DistributionSeries(0, &v31);
  DistributionSeriesViewModel.init(data:attributes:)(v13, &v36, a3, v20, v19, v22, v21, v25 + *(v23 + 60));
  return (*(v11 + 8))(v18, v10);
}

uint64_t DistributionSeriesViewModel.init(data:attributes:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = a2[1];
  v46 = *a2;
  v47 = v13;
  v48 = *(a2 + 32);
  v14 = type metadata accessor for HealthChartsData.SeriesData();
  swift_getWitnessTable();
  AnySeriesData.xScale.getter();
  v15 = AnySeriesData.yScale.getter();
  v17 = v16;
  v19 = v18;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v20 = type metadata accessor for DistributionSeriesViewModel(0, &v41);
  v21 = a8 + v20[15];
  *v21 = v15;
  *(v21 + 8) = v17;
  *(v21 + 16) = v19 & 1;
  HealthChartsData.SeriesData.aggregation.getter();
  HealthChartsData.SeriesData.unit.getter();
  v22 = a8 + v20[19];
  v23 = v47;
  *v22 = v46;
  *(v22 + 16) = v23;
  *(v22 + 32) = v48;
  outlined init with copy of DistributionSeriesAttributes(&v46, &v41);
  v40 = HealthChartsData.SeriesData.points.getter();
  v41 = a3;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a1;
  v39 = &v46;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  type metadata accessor for HealthChartsData.SeriesPoint();
  v24 = type metadata accessor for Array();
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v25 = type metadata accessor for DistributionMarkViewModel(0, &v41);
  WitnessTable = swift_getWitnessTable();
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DistributionSeriesViewModel.init(data:attributes:), v32, v24, v25, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v27);
  outlined destroy of DistributionSeriesAttributes(&v46);

  *(a8 + v20[18]) = v28;
  return (*(*(v14 - 8) + 8))(a1, v14);
}

uint64_t DistributionSeries.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v52 = *(a1 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](a1);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v5[3];
  v42 = v5[2];
  v8 = v5[4];
  v7 = v5[5];
  v9 = v5[6];
  v62 = v42;
  v63 = v6;
  v64 = v8;
  v65 = v7;
  v66 = v9;
  v10 = v9;
  type metadata accessor for DistributionMarkViewModel(255, &v62);
  v11 = MEMORY[0x277D83B88];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Array();
  v49 = v12;
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0, MEMORY[0x277CBB378]);
  v14 = v13;
  v48 = v13;
  WitnessTable = swift_getWitnessTable();
  v62 = v12;
  v63 = v11;
  v64 = v14;
  v65 = WitnessTable;
  v66 = MEMORY[0x277D83B98];
  v15 = type metadata accessor for ForEach();
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  v44 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v45 = &v41 - v18;
  v19 = v2 + *(a1 + 60);
  v20 = v42;
  v62 = v42;
  v63 = v6;
  v64 = v8;
  v65 = v7;
  v66 = v10;
  v21 = v10;
  v61 = *(v19 + *(type metadata accessor for DistributionSeriesViewModel(0, &v62) + 72));
  v22 = type metadata accessor for Array();
  v23 = swift_getWitnessTable();
  MEMORY[0x2530761D0](&v62, v22, v23);
  v61 = v62;
  type metadata accessor for EnumeratedSequence();
  swift_getWitnessTable();
  v62 = Array.init<A>(_:)();
  v24 = v20;
  v55 = v20;
  v56 = v6;
  v25 = v8;
  v57 = v8;
  v58 = v7;
  v26 = v7;
  v27 = v21;
  v59 = v21;
  TupleTypeMetadata2 = swift_getKeyPath();
  v28 = v52;
  v29 = v46;
  (*(v52 + 16))(v46, v41, a1);
  v30 = (*(v28 + 80) + 56) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v24;
  *(v31 + 3) = v6;
  *(v31 + 4) = v25;
  *(v31 + 5) = v26;
  *(v31 + 6) = v27;
  (*(v28 + 32))(&v31[v30], v29, a1);
  v32 = swift_allocObject();
  v32[2] = v24;
  v32[3] = v6;
  v32[4] = v25;
  v32[5] = v26;
  v32[6] = v27;
  v32[7] = partial apply for closure #1 in DistributionSeries.body.getter;
  v32[8] = v31;
  v40 = lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>();
  v33 = v44;
  ForEach<>.init(_:id:content:)();
  v60 = v40;
  v34 = v51;
  swift_getWitnessTable();
  v35 = v50;
  v36 = *(v50 + 16);
  v37 = v45;
  v36(v45, v33, v34);
  v38 = *(v35 + 8);
  v38(v33, v34);
  v36(v54, v37, v34);
  return (v38)(v37, v34);
}

uint64_t closure #1 in DistributionSeries.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v46 = a1;
  v47 = a2;
  v58 = a8;
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Capsule();
  MEMORY[0x28223BE20](v55);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0(0);
  v56 = v16;
  v54 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v52 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RectangleMark();
  v48 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0);
  v49 = *(v21 - 8);
  v50 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v51 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v24 = type metadata accessor for DistributionMarkViewModel(0, &v59);
  DistributionMarkViewModel.asBarMark()(v24, v20);
  v59 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v25 = type metadata accessor for DistributionSeries(0, &v59);
  v26 = v47 + *(v25 + 60);
  v59 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v27 = v26 + *(type metadata accessor for DistributionSeriesViewModel(0, &v59) + 76);
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);
  if (!v30)
  {
    v31 = one-time initialization token for bundle;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = static HealthChartsBundle.bundle;
    v33 = Color.init(_:bundle:)();
    goto LABEL_12;
  }

  if (v30 != 1)
  {
    if (v29 | v28)
    {
      v34 = [objc_opt_self() tintColor];
      v33 = Color.init(uiColor:)();
    }

    else
    {
      v33 = static Color.primary.getter();
    }

LABEL_12:
    v29 = v33;
    goto LABEL_13;
  }

LABEL_13:
  v59 = v29;
  v35 = MEMORY[0x277CE0F78];
  v36 = MEMORY[0x277CBB2F8];
  v37 = MEMORY[0x277CE0F60];
  ChartContent.foregroundStyle<A>(_:)();

  (*(v48 + 8))(v20, v18);
  v38 = *MEMORY[0x277CE0118];
  v39 = type metadata accessor for RoundedCornerStyle();
  v40 = v53;
  (*(*(v39 - 8) + 104))(v53, v38, v39);
  v59 = v18;
  v60 = v35;
  v61 = v36;
  v62 = v37;
  swift_getOpaqueTypeConformance2();
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  v41 = v52;
  v42 = v50;
  ChartContent.clipShape<A>(_:style:)();
  outlined destroy of Capsule(v40);
  (*(v49 + 8))(v23, v42);
  v43 = v57;
  (*(v54 + 32))(v57, v41, v56);
  v44 = MEMORY[0x277CBB370];
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  sub_25140B1A0(v43, v58);
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0, v44);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_251406AB4()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v21 = v2;
  v22 = v1;
  v20 = v1;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v6 = (type metadata accessor for DistributionSeries(0, &v21) - 8);
  v7 = (*(*v6 + 80) + 56) & ~*(*v6 + 80);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = &v0[v7 + v6[17]];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for ClosedRange();
  if (!(*(*(v11 - 8) + 48))(v9, 1, v11))
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 8);
    v12(v9, AssociatedTypeWitness);
    v12(&v9[*(v11 + 36)], AssociatedTypeWitness);
  }

  v21 = v2;
  v22 = v20;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v13 = type metadata accessor for DistributionSeriesViewModel(0, &v21);
  v14 = v13[16];
  v15 = type metadata accessor for HealthChartsData.Aggregation();
  (*(*(v15 - 8) + 8))(&v9[v14], v15);
  v16 = v13[17];
  v17 = type metadata accessor for HealthChartsUnit();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v9[v16], 1, v17))
  {
    (*(v18 + 8))(&v9[v16], v17);
  }

  outlined consume of AttributeColor(*&v9[v13[19]], *&v9[v13[19] + 8], v9[v13[19] + 16]);
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in DistributionSeries.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v10 = *(type metadata accessor for DistributionSeries(0, v13) - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return closure #1 in DistributionSeries.body.getter(a1, v11, v5, v6, v7, v8, v9, a2);
}

uint64_t DistributionMarkViewModel.asBarMark()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v68 = a2;
  v69 = v4;
  v66 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v67 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v58 - v7;
  v8 = *(a1 + 16);
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v9);
  v64 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = type metadata accessor for DateInterval();
  v15 = *(v14 - 8);
  v62 = v14;
  v63 = v15;
  MEMORY[0x28223BE20](v14);
  v59 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = &v58 - v18;
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v58 - v20;
  v22 = type metadata accessor for Calendar.Component();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v58 - v27;
  HealthChartsData.Aggregation.intervalCalendarComponent()();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    _s16HealthChartsCore0aB4UnitVSgWOhTm_0(v21, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0]);
    v29 = v2;
    v30 = v65;
  }

  else
  {
    v58 = v25;
    (*(v23 + 32))(v28, v21, v22);
    v30 = v65;
    v29 = v2;
    (*(v65 + 16))(v13, v2, v8);
    v31 = v61;
    v32 = v62;
    v33 = swift_dynamicCast();
    v34 = *(v63 + 56);
    if (v33)
    {
      v34(v31, 0, 1, v32);
      v35 = v63;
      v36 = v60;
      (*(v63 + 32))(v60, v31, v32);
      (*(v35 + 16))(v59, v36, v32);
      v37 = v67;
      v38 = v69;
      (*(v66 + 16))(v67, v29 + *(a1 + 60), v69);
      v39 = v58;
      v40.n128_f64[0] = (*(v23 + 16))(v58, v28, v22);
      v41 = v29 + *(a1 + 68);
      v42 = *v41;
      LOBYTE(v41) = *(v41 + 8);
      v70 = v42;
      v71 = v41;
      RectangleMark.init<A>(x:y:unit:width:)(v59, v37, v39, &v70, v38, *(a1 + 40), v68, v40);
      (*(v35 + 8))(v60, v32);
      return (*(v23 + 8))(v28, v22);
    }

    v34(v31, 1, 1, v32);
    (*(v23 + 8))(v28, v22);
    _s16HealthChartsCore0aB4UnitVSgWOhTm_0(v31, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  }

  v44 = v29 + *(a1 + 68);
  if (*(v44 + 8))
  {
    v45 = v64;
    (*(v30 + 16))(v64, v29, v8);
    v46 = v67;
    v47 = v69;
    (*(v66 + 16))(v67, v29 + *(a1 + 60), v69);
    v48 = *(a1 + 32);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return RectangleMark.init<A, B, C>(x:y:)(v45, v46, v8, AssociatedTypeWitness, v47, v48, *(a1 + 48), *(a1 + 40), v68, v50);
  }

  else
  {
    v51 = *v44;
    v52 = v64;
    (*(v30 + 16))(v64, v29, v8);
    v53 = v67;
    v54 = v69;
    (*(v66 + 16))(v67, v29 + *(a1 + 60), v69);
    v55 = *(a1 + 32);
    v56 = swift_getAssociatedTypeWitness();
    v57.n128_u64[0] = v51;
    return RectangleMark.init<A, B, C>(x:y:width:)(v52, v53, v8, v56, v54, v55, *(a1 + 48), *(a1 + 40), v68, v57);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed DistributionMarkViewModel<A, B>) -> (@out BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>)(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  type metadata accessor for DistributionMarkViewModel(255, v13);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v10, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_251407600()
{

  return swift_deallocObject();
}

void specialized DistributionSeries<>.ScaleTransform.transform(_:)(double a1, double a2)
{
  v4 = type metadata accessor for DateInterval();
  MEMORY[0x28223BE20](v4);
  _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation12DateIntervalVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.start.getter();
  v5 = a1 * a2;
  v7 = v6 - v5;
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.end.getter();
  if (v7 > v5 + v8)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ClosedRange<Double>();
    _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
    _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    HealthChartsData.SeriesPoint.init(_:_:)();
  }
}

{
  v4 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v4);
  type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.start.getter();
  v5 = a1 * a2;
  v7 = v6 - v5;
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.end.getter();
  if (v7 > v5 + v8)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ClosedRange<Double>();
    _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    HealthChartsData.SeriesPoint.init(_:_:)();
  }
}

{
  _s16HealthChartsCore0aB4DataV11SeriesPointVy_SNySdGAFGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.start.getter();
  v4 = a1 * a2;
  v6 = v5 - v4;
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.end.getter();
  if (v6 > v4 + v7)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ClosedRange<Double>();
    _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    HealthChartsData.SeriesPoint.init(_:_:)();
  }
}

void DistributionSeries<>.ScaleTransform.transform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  MEMORY[0x28223BE20](a1);
  type metadata accessor for ClosedRange<Double>();
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
  type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.start.getter();
  v7 = a4 * a5;
  v9 = v8 - v7;
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.end.getter();
  if (v9 > v7 + v10)
  {
    __break(1u);
  }

  else
  {
    HealthChartsData.SeriesPoint.init(_:_:)();
  }
}

uint64_t DistributionSeries<>.init(data:attributes:chartHeight:yDomain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, void, char *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v35 = a1;
  v42 = a7;
  type metadata accessor for ClosedRange<Double>();
  v15 = v14;
  v36 = v14;
  v37 = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
  v43 = a4;
  *&v44 = v15;
  *(&v44 + 1) = a5;
  v45 = v37;
  v16 = type metadata accessor for HealthChartsData.SeriesData();
  v41 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = *a2;
  v39 = *(a2 + 8);
  v40 = v19;
  v38 = *(a2 + 16);
  v20 = *(a2 + 24);
  v34 = v20;
  v21 = *(a2 + 32);
  v33 = v21;
  v23 = *(a3 + 24);
  v22 = *(a3 + 32);
  v24 = *(a3 + 40);
  v43 = *a3;
  v32 = *(a3 + 8);
  v44 = v32;
  v45 = v23;
  v46 = v22;
  v47 = v24;
  v25 = v35;
  v26 = static DistributionSeries<>.approximateYAxisSize(from:with:)(&v43, v35, a4, a5);

  if (v21)
  {
    v27 = 4.0;
  }

  else
  {
    v27 = v20 * 0.5;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  *(v28 + 32) = a6;
  *(v28 + 40) = v26 / a8;
  *(v28 + 48) = v27;
  v30 = v36;
  v29 = v37;
  HealthChartsData.SeriesData.transformed<A, B>(using:)();
  v43 = v40;
  *&v44 = v39;
  BYTE8(v44) = v38;
  v45 = *&v34;
  LOBYTE(v46) = v33;
  DistributionSeries.init(seriesData:attributes:)(v18, &v43, a4, v30, a5, v29, a6, v42);

  return (*(v41 + 8))(v25, v16);
}

double _s12HealthCharts18DistributionSeriesVAASNySdGRs_rlE20approximateYAxisSize33_E22D5873CEBB457AA3F0B63D580F1257LL4from4withSdAA12ScalarDomainV_0aB4Core0aB4DataV0dU0Vy_xADGtFZ10Foundation12DateIntervalV_Tt1B5Tm(void (**a1)(void *__return_ptr, uint64_t, uint64_t, void, char *, char *), uint64_t a2, uint64_t (*a3)(void, __n128), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v23 = type metadata accessor for HealthChartsData.Aggregation();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D102B8];
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24[-1] - v15;
  a3(0, v14);
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(a4, a5, MEMORY[0x277D101B0]);
  v17 = AnySeriesData.yScale.getter();
  v19 = v18;
  v21 = v20;
  HealthChartsData.SeriesData.unit.getter();
  HealthChartsData.SeriesData.aggregation.getter();
  (*a1)(v24, v17, v19, v21 & 1, v16, v11);
  (*(v9 + 8))(v11, v23);
  _s16HealthChartsCore0aB4UnitVSgWOhTm_0(v16, &lazy cache variable for type metadata for HealthChartsUnit?, v12);
  result = *&v24[2] - *&v24[1];
  if (!LOBYTE(v24[0]))
  {
    return result * 1.4;
  }

  return result;
}

double static DistributionSeries<>.approximateYAxisSize(from:with:)(void (**a1)(uint64_t *__return_ptr, uint64_t, uint64_t, void, char *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = type metadata accessor for HealthChartsData.Aggregation();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D102B8];
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v23 = *a1;
  type metadata accessor for ClosedRange<Double>();
  v15 = v14;
  v16 = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
  v25 = a3;
  v26 = v15;
  v27 = *&a4;
  v28 = v16;
  type metadata accessor for HealthChartsData.SeriesData();
  swift_getWitnessTable();
  v17 = AnySeriesData.yScale.getter();
  v19 = v18;
  v21 = v20;
  HealthChartsData.SeriesData.unit.getter();
  HealthChartsData.SeriesData.aggregation.getter();
  v23(&v25, v17, v19, v21 & 1, v13, v9);
  (*(v7 + 8))(v9, v24);
  _s16HealthChartsCore0aB4UnitVSgWOhTm_0(v13, &lazy cache variable for type metadata for HealthChartsUnit?, v10);
  result = v27 - v26;
  if (!v25)
  {
    return result * 1.4;
  }

  return result;
}

void type metadata accessor for ClosedRange<Double>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Double>)
  {
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Double>);
    }
  }
}

uint64_t static DistributionSeries<>.empty<>(attributes:chartHeight:yDomain:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v52 = a3;
  v7 = type metadata accessor for HealthChartsData.Aggregation();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v50 - v13;
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, v12);
  v16 = v15;
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = &v50 - v20;
  MEMORY[0x28223BE20](v21);
  v53 = &v50 - v22;
  v23 = a1[1];
  v58 = *a1;
  v59 = v23;
  v60 = *(a1 + 32);
  v24 = a2[1];
  v61[0] = *a2;
  v61[1] = v24;
  v61[2] = a2[2];
  v25 = type metadata accessor for HealthChartsUnit();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  (*(v8 + 104))(v10, *MEMORY[0x277D10200], v7);
  type metadata accessor for DateInterval();
  type metadata accessor for ClosedRange<Double>();
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
  v26 = v53;
  HealthChartsData.SeriesData.init(_:aggregation:unit:)();
  v27 = _s12HealthCharts18DistributionSeriesVAASNySdGRs_rlE20approximateYAxisSize33_E22D5873CEBB457AA3F0B63D580F12574from4withSdAA12ScalarDomainV_0aB4Core0aB4DataV0dU0Vy_xADGtFZ10Foundation12DateIntervalV_Tt1B5Tm(v61, v26, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>);
  if (v60)
  {
    v28 = 4.0;
  }

  else
  {
    v28 = *(&v59 + 1) * 0.5;
  }

  v29 = v27 / a4;
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;
  v31 = v50;
  HealthChartsData.SeriesData.transformed<A, B>(using:)();
  v32 = v52;
  UUID.init()();
  v33 = v51;
  (*(v51 + 16))(v18, v31, v16);
  type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for DistributionSeries<DateInterval, ClosedRange<Double>>, type metadata accessor for DistributionSeries);
  v35 = v32 + *(v34 + 60);
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, MEMORY[0x277D101B0]);
  AnySeriesData.xScale.getter();
  v36 = AnySeriesData.yScale.getter();
  v38 = v37;
  v40 = v39;
  type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for DistributionSeriesViewModel<DateInterval, ClosedRange<Double>>, type metadata accessor for DistributionSeriesViewModel);
  v42 = v41;
  v43 = v35 + *(v41 + 60);
  *v43 = v36;
  *(v43 + 8) = v38;
  *(v43 + 16) = v40 & 1;
  HealthChartsData.SeriesData.aggregation.getter();
  HealthChartsData.SeriesData.unit.getter();
  v44 = v35 + *(v42 + 76);
  v45 = v59;
  *v44 = v58;
  *(v44 + 16) = v45;
  *(v44 + 32) = v60;
  outlined init with copy of DistributionSeriesAttributes(&v58, v57);
  v46 = HealthChartsData.SeriesData.points.getter();
  v55 = v18;
  v56 = &v58;
  v47 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGGG_0dE025DistributionMarkViewModelVyAmNGs5NeverOTg5(partial apply for specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:), v54, v46);

  v48 = *(v33 + 8);
  v48(v31, v16);
  v48(v53, v16);
  *(v35 + *(v42 + 72)) = v47;
  return (v48)(v18, v16);
}

void partial apply for specialized implicit closure #2 in implicit closure #1 in DistributionSeries<>.init(data:attributes:chartHeight:yDomain:)()
{
  specialized DistributionSeries<>.ScaleTransform.transform(_:)(*(v0 + 16), *(v0 + 24));
}

{
  specialized implicit closure #2 in implicit closure #1 in DistributionSeries<>.init(data:attributes:chartHeight:yDomain:)(*(v0 + 16), *(v0 + 24));
}

{
  specialized implicit closure #2 in implicit closure #1 in DistributionSeries<>.init(data:attributes:chartHeight:yDomain:)(*(v0 + 16), *(v0 + 24));
}

void type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    type metadata accessor for ClosedRange<Double>();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
    v10[3] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    v10[4] = MEMORY[0x277CBB1E8];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t DistributionSeriesViewModel.xScale.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

uint64_t DistributionSeriesViewModel.aggregation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t closure #1 in DistributionSeriesViewModel.init(data:attributes:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = a7;
  v25 = a2;
  v22 = a1;
  v23 = a8;
  v12 = type metadata accessor for HealthChartsData.Aggregation();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  type metadata accessor for HealthChartsData.SeriesData();
  HealthChartsData.SeriesData.aggregation.getter();
  return DistributionMarkViewModel.init(x:y:aggregation:width:)(v20, v17, v14, (v25 + 24), a3, a4, a5, a6, v23, v24);
}

uint64_t DistributionMarkViewModel.init(x:y:aggregation:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a4;
  v18 = *(a4 + 8);
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v24[0] = a5;
  v24[1] = a6;
  v24[2] = a7;
  v24[3] = a8;
  v24[4] = a10;
  v19 = type metadata accessor for DistributionMarkViewModel(0, v24);
  (*(*(a6 - 8) + 32))(a9 + v19[15], a2, a6);
  v20 = v19[16];
  v21 = type metadata accessor for HealthChartsData.Aggregation();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a3, v21);
  v23 = a9 + v19[17];
  *v23 = v17;
  *(v23 + 8) = v18;
  return result;
}

double specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation12DateIntervalVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for DistributionMarkViewModel<DateInterval, ClosedRange<Double>>, type metadata accessor for DistributionMarkViewModel);
  v6 = v5;
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, v7);
  HealthChartsData.SeriesData.aggregation.getter();
  result = *&v10;
  *(a2 + *(v6 + 60)) = v10;
  v9 = a2 + *(v6 + 68);
  *v9 = *(a1 + 24);
  *(v9 + 8) = *(a1 + 32);
  return result;
}

{
  _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation4DateVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  _s12HealthCharts12MinMaxSeriesVy10Foundation4DateVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for DistributionMarkViewModel<Date, ClosedRange<Double>>, &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277D10190], type metadata accessor for DistributionMarkViewModel);
  v5 = v4;
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0, v6);
  HealthChartsData.SeriesData.aggregation.getter();
  result = *&v9;
  *(a2 + *(v5 + 60)) = v9;
  v8 = a2 + *(v5 + 68);
  *v8 = *(a1 + 24);
  *(v8 + 8) = *(a1 + 32);
  return result;
}

double partial apply for specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:)@<D0>(uint64_t a1@<X8>)
{
  return specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:)(*(v2 + 24), a1);
}

{
  return specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:)(*(v1 + 24), a1);
}

uint64_t instantiation function for generic protocol witness table for DistributionSeries<A, B>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for DistributionSeries(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    v9 = 0;
    v11 = result;
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v7[0] = *(a1 + 16);
    v7[1] = v5;
    v8 = v4;
    result = type metadata accessor for DistributionSeriesViewModel(319, v7);
    if (v6 <= 0x3F)
    {
      v10 = 0;
      v12 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DistributionSeries(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v51 = v3;
  v5 = *(v4 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v47 = type metadata accessor for HealthChartsData.Aggregation();
  v9 = *(v47 - 8);
  v54 = v9;
  v49 = *(v9 + 84);
  v50 = v8;
  if (v49 > v8)
  {
    v8 = *(v9 + 84);
  }

  v10 = *(type metadata accessor for HealthChartsUnit() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  if (v14 <= v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 64);
  if (v7)
  {
    v17 = *(v6 + 64);
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = *(v6 + 80);
  v19 = *(v9 + 80);
  v20 = *(v10 + 80);
  v21 = *(v9 + 64);
  v22 = *(v10 + 64);
  if (!v12)
  {
    ++v22;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v18 | v19 | v20 | 7;
  v24 = v23 + *(v4 + 64);
  v25 = v17 + ((v16 + v18) & ~v18) + 7;
  v26 = v19 + 17;
  v27 = v21 + v20;
  v28 = v22 + 7;
  v29 = a1;
  if (v15 < a2)
  {
    v30 = (v24 & ~v23) + ((((v28 + ((v27 + ((v26 + (v25 & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    if (v30 <= 3)
    {
      v31 = ((a2 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v34 = *&a1[v30];
        if (*&a1[v30])
        {
          goto LABEL_37;
        }
      }

      else
      {
        v34 = *&a1[v30];
        if (v34)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v33)
    {
      v34 = a1[v30];
      if (a1[v30])
      {
LABEL_37:
        v35 = (v34 - 1) << (8 * v30);
        if (v30 <= 3)
        {
          v36 = *a1;
        }

        else
        {
          v35 = 0;
          v36 = *a1;
        }

        return v15 + (v36 | v35) + 1;
      }
    }
  }

  if (v5 >= v14)
  {
    v41 = v51;
    v42 = *(v4 + 48);
    v43 = v5;
LABEL_50:

    return v42(v29, v43, v41);
  }

  v37 = &a1[v24] & ~v23;
  if (v50 == v14)
  {
    if (v7)
    {
      v38 = (*(v6 + 48))(v37, v7, AssociatedTypeWitness);
      v39 = v38 != 0;
      result = (v38 - 1);
      if (result != 0 && v39)
      {
        return result;
      }
    }

    return 0;
  }

  v29 = ((v26 + ((v25 + v37) & 0xFFFFFFFFFFFFFFF8)) & ~v19);
  if (v49 == v14)
  {
    v42 = *(v54 + 48);
    v43 = v49;
    v41 = v47;
    goto LABEL_50;
  }

  v44 = &v29[v27] & ~v20;
  if (v13 == v14)
  {
    v45 = (*(v11 + 48))(v44);
    if (v45 >= 2)
    {
      return v45 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v46 = *((v28 + v44) & 0xFFFFFFFFFFFFFFF8);
    if (v46 >= 0xFFFFFFFF)
    {
      LODWORD(v46) = -1;
    }

    return (v46 + 1);
  }
}

void storeEnumTagSinglePayload for DistributionSeries(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v56 = v5;
  v57 = v4;
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v61 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v52 = type metadata accessor for HealthChartsData.Aggregation();
  v10 = *(v52 - 8);
  v54 = *(v10 + 84);
  v55 = v9;
  if (v54 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = 0;
  v13 = *(type metadata accessor for HealthChartsUnit() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  v17 = *(v7 + 80);
  v18 = *(v7 + 64);
  v19 = *(v5 + 64);
  v20 = *(v10 + 80);
  v21 = *(v13 + 80);
  v22 = *(v10 + 64);
  v23 = *(v13 + 64);
  if (v16 <= v11)
  {
    v24 = v11;
  }

  else
  {
    v24 = v16;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  if (v24 <= v6)
  {
    v25 = v6;
  }

  else
  {
    v25 = v24;
  }

  v26 = (v18 + v17) & ~v17;
  v27 = v26 + v18;
  if (v8)
  {
    v28 = v26 + v18;
  }

  else
  {
    v28 = v27 + 1;
  }

  v29 = v17 | v20 | v21 | 7;
  v30 = v29 + v19;
  v31 = v28 + 7;
  v32 = v22 + v21;
  v33 = (v22 + v21 + ((v20 + 17 + (v31 & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v21;
  if (!v15)
  {
    ++v23;
  }

  v34 = v33 + v23;
  v35 = ((v29 + v19) & ~v29) + ((((v33 + v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v25 < a3)
  {
    if (v35 <= 3)
    {
      v36 = ((a3 - v25 + 255) >> 8) + 1;
    }

    else
    {
      v36 = 2;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v12 = v37;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v25 >= a2)
  {
    v40 = a1;
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v35] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_52;
      }

      *&a1[v35] = 0;
    }

    else if (v12)
    {
      a1[v35] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_52;
    }

    if (!a2)
    {
      return;
    }

LABEL_52:
    if (v6 >= v24)
    {
      v43 = v57;
      v44 = *(v56 + 56);
      v45 = a2;
      v46 = v6;
    }

    else
    {
      v41 = (&a1[v30] & ~v29);
      if (v24 < a2)
      {
        v42 = ~v24 + a2;
        bzero((&a1[v30] & ~v29), ((((v34 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 33);
        if (((((v34 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 33 > 3)
        {
          goto LABEL_55;
        }

        goto LABEL_77;
      }

      if (v55 == v24)
      {
        if (a2 >= v8)
        {
          if (v27 <= 3)
          {
            v47 = ~(-1 << (8 * v27));
          }

          else
          {
            v47 = -1;
          }

          if (!v27)
          {
            return;
          }

          v42 = v47 & (a2 - v8);
          if (v27 <= 3)
          {
            v48 = v27;
          }

          else
          {
            v48 = 4;
          }

          bzero(v41, v27);
          if (v48 > 2)
          {
            if (v48 == 3)
            {
              *v41 = v42;
              v41[2] = BYTE2(v42);
              return;
            }

LABEL_55:
            *v41 = v42;
            return;
          }

          if (v48 != 1)
          {
            *v41 = v42;
            return;
          }

LABEL_77:
          *v41 = v42;
          return;
        }

        v44 = *(v61 + 56);
        v45 = a2 + 1;
        v40 = (&a1[v30] & ~v29);
        v46 = v8;
        v43 = AssociatedTypeWitness;
      }

      else
      {
        v40 = ((v20 + 17 + (&v41[v31] & 0xFFFFFFFFFFFFFFF8)) & ~v20);
        if (v54 != v24)
        {
          v49 = &v40[v32] & ~v21;
          if (v16 == v24)
          {
            v50 = *(v14 + 56);

            v50(v49, a2 + 1);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v51 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v51 = a2 - 1;
            }

            *((v23 + v49 + 7) & 0xFFFFFFFFFFFFFFF8) = v51;
          }

          return;
        }

        v44 = *(v10 + 56);
        v45 = a2;
        v46 = v54;
        v43 = v52;
      }
    }

    v44(v40, v45, v46, v43);
    return;
  }

  v38 = ~v25 + a2;
  bzero(a1, v35);
  if (v35 <= 3)
  {
    v39 = (v38 >> 8) + 1;
  }

  else
  {
    v39 = 1;
  }

  if (v35 <= 3)
  {
    *a1 = v38;
    if (v12 > 1)
    {
LABEL_40:
      if (v12 == 2)
      {
        *&a1[v35] = v39;
      }

      else
      {
        *&a1[v35] = v39;
      }

      return;
    }
  }

  else
  {
    *a1 = v38;
    if (v12 > 1)
    {
      goto LABEL_40;
    }
  }

  if (v12)
  {
    a1[v35] = v39;
  }
}

void type metadata completion function for DistributionSeriesViewModel(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  v5 = type metadata accessor for Optional();
  if (v6 <= 0x3F)
  {
    v18 = 0;
    v23 = v5;
    _s16HealthChartsCore0aB4UnitVSgMaTm_0(319, &lazy cache variable for type metadata for ClosedRange<Double>?, type metadata accessor for ClosedRange<Double>);
    if (v8 <= 0x3F)
    {
      v19 = 0;
      v24 = v7;
      v9 = type metadata accessor for HealthChartsData.Aggregation();
      if (v10 <= 0x3F)
      {
        v20 = 0;
        v25 = v9;
        _s16HealthChartsCore0aB4UnitVSgMaTm_0(319, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
        if (v12 <= 0x3F)
        {
          v21 = 0;
          v26 = v11;
          v13 = *(a1 + 24);
          v16[0] = v4;
          v16[1] = v13;
          v16[2] = v3;
          v17 = *(a1 + 40);
          type metadata accessor for DistributionMarkViewModel(255, v16);
          v14 = type metadata accessor for Array();
          if (v15 <= 0x3F)
          {
            v22 = 0;
            v27 = v14;
            v28 = &type metadata for DistributionSeriesAttributes;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DistributionSeriesViewModel(unsigned __int8 *a1, unsigned int a2, uint64_t a3, __n128 a4)
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

  v37 = type metadata accessor for HealthChartsData.Aggregation();
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for HealthChartsUnit() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
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

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = *(v5 + 64);
  if (v6)
  {
    v17 = *(v5 + 64);
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = *(v8 + 80);
  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  if (!v13)
  {
    ++v20;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v17 + ((v16 + *(v5 + 80)) & ~*(v5 + 80));
  v22 = v18 + 17;
  v23 = *(v8 + 64) + v19;
  v24 = v20 + 7;
  if (v15 < a2)
  {
    v25 = ((((v24 + ((v23 + ((v22 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    if (v25 <= 3)
    {
      v26 = ((a2 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 < 2)
    {
      v27 = 0;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *&a1[v25];
        if (*&a1[v25])
        {
          goto LABEL_35;
        }
      }

      else
      {
        v28 = *&a1[v25];
        if (v28)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v27)
    {
      v28 = a1[v25];
      if (a1[v25])
      {
LABEL_35:
        v29 = (v28 - 1) << (8 * v25);
        if (v25 <= 3)
        {
          v30 = *a1;
        }

        else
        {
          v29 = 0;
          v30 = *a1;
        }

        return v15 + (v30 | v29) + 1;
      }
    }
  }

  if (v7 == v15)
  {
    if (v6 < 2)
    {
      return 0;
    }

    v34 = (*(v5 + 48))(a1, v6, AssociatedTypeWitness);
LABEL_50:
    if (v34 >= 2)
    {
      return v34 - 1;
    }

    else
    {
      return 0;
    }
  }

  v32 = (v22 + (&a1[v21 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v18;
  if (v9 == v15)
  {
    v33 = *(v8 + 48);

    return v33(v32, v9, v37);
  }

  else
  {
    v35 = (v23 + v32) & ~v19;
    if (v14 == v15)
    {
      if (v13 < 2)
      {
        return 0;
      }

      v34 = (*(v12 + 48))(v35);
      goto LABEL_50;
    }

    v36 = *((v24 + v35) & 0xFFFFFFFFFFFFFFF8);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    return (v36 + 1);
  }
}

void storeEnumTagSinglePayload for DistributionSeriesViewModel(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4, __n128 a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v46 = v6;
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v44 = type metadata accessor for HealthChartsData.Aggregation();
  v9 = *(v44 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = 0;
  v13 = *(type metadata accessor for HealthChartsUnit() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v6 + 64);
  v17 = v15 - 1;
  if (!v15)
  {
    v17 = 0;
  }

  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  v20 = *(v13 + 80);
  v21 = *(v13 + 64);
  if (v17 <= v11)
  {
    v22 = v11;
  }

  else
  {
    v22 = v17;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  v23 = (v16 + *(v6 + 80)) & ~*(v6 + 80);
  v24 = v23 + v16;
  if (v7)
  {
    v25 = v23 + v16;
  }

  else
  {
    v25 = v24 + 1;
  }

  v26 = v19 + v20;
  if (!v15)
  {
    ++v21;
  }

  v27 = v21 + 7;
  v28 = ((((v27 + ((v19 + v20 + ((v18 + 17 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v22 < a3)
  {
    if (v28 <= 3)
    {
      v29 = ((a3 - v22 + 255) >> 8) + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v12 = v30;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v22 >= a2)
  {
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v28] = 0;
        if (!a2)
        {
          return;
        }

LABEL_49:
        if (v8 == v22)
        {
          if (a2 >= v7)
          {
            if (v24 <= 3)
            {
              v38 = ~(-1 << (8 * v24));
            }

            else
            {
              v38 = -1;
            }

            if (v24)
            {
              v39 = v38 & (a2 - v7);
              if (v24 <= 3)
              {
                v40 = v24;
              }

              else
              {
                v40 = 4;
              }

              bzero(a1, v24);
              if (v40 > 2)
              {
                if (v40 == 3)
                {
                  *a1 = v39;
                  a1[2] = BYTE2(v39);
                }

                else
                {
                  *a1 = v39;
                }
              }

              else if (v40 == 1)
              {
                *a1 = v39;
              }

              else
              {
                *a1 = v39;
              }
            }

            return;
          }

          v33 = *(v46 + 56);
          v34 = a2 + 1;
          v35 = a1;
          v36 = v7;
          v37 = AssociatedTypeWitness;
        }

        else
        {
          v35 = ((v18 + 17 + (&a1[v25 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v18);
          if (v10 != v22)
          {
            v41 = &v35[v26] & ~v20;
            if (v17 == v22)
            {
              v42 = *(v14 + 56);

              v42(v41, a2 + 1);
            }

            else
            {
              if ((a2 & 0x80000000) != 0)
              {
                v43 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v43 = a2 - 1;
              }

              *((v27 + v41) & 0xFFFFFFFFFFFFFFF8) = v43;
            }

            return;
          }

          v33 = *(v9 + 56);
          v34 = a2;
          v36 = v10;
          v37 = v44;
        }

        v33(v35, v34, v36, v37);
        return;
      }

      *&a1[v28] = 0;
    }

    else if (v12)
    {
      a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_49;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  v31 = ~v22 + a2;
  bzero(a1, v28);
  if (v28 <= 3)
  {
    v32 = (v31 >> 8) + 1;
  }

  else
  {
    v32 = 1;
  }

  if (v28 <= 3)
  {
    *a1 = v31;
    if (v12 > 1)
    {
LABEL_37:
      if (v12 == 2)
      {
        *&a1[v28] = v32;
      }

      else
      {
        *&a1[v28] = v32;
      }

      return;
    }
  }

  else
  {
    *a1 = v31;
    if (v12 > 1)
    {
      goto LABEL_37;
    }
  }

  if (v12)
  {
    a1[v28] = v32;
  }
}

uint64_t sub_25140A5A0(__int128 *a1)
{
  v1 = *(a1 + 4);
  v2 = a1[1];
  v9 = *a1;
  v10 = v2;
  v11 = v1;
  type metadata accessor for DistributionMarkViewModel(255, &v9);
  v3 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for Array();
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0, MEMORY[0x277CBB378]);
  v6 = v5;
  WitnessTable = swift_getWitnessTable();
  *&v9 = v4;
  *(&v9 + 1) = v3;
  *&v10 = v6;
  *(&v10 + 1) = WitnessTable;
  v11 = MEMORY[0x277D83B98];
  type metadata accessor for ForEach();
  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for DistributionMarkViewModel(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for HealthChartsData.Aggregation();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DistributionMarkViewModel(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v32 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = type metadata accessor for HealthChartsData.Aggregation();
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  if (v16 < a2)
  {
    v18 = ((*(*(v11 - 8) + 64) + ((v14 + v15 + (v17 & ~v13)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v18 <= 3)
    {
      v19 = ((a2 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    v21 = v19 >= 2 ? v20 : 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *&a1[v18];
        if (*&a1[v18])
        {
          goto LABEL_23;
        }
      }

      else
      {
        v22 = *&a1[v18];
        if (v22)
        {
          goto LABEL_23;
        }
      }
    }

    else if (v21)
    {
      v22 = a1[v18];
      if (a1[v18])
      {
LABEL_23:
        v23 = (v22 - 1) << (8 * v18);
        if (v18 <= 3)
        {
          v24 = *a1;
        }

        else
        {
          v23 = 0;
          v24 = *a1;
        }

        return v16 + (v24 | v23) + 1;
      }
    }

    if (!v16)
    {
      return 0;
    }
  }

  if (v7 == v16)
  {
    v25 = *(v6 + 48);
    v26 = a1;
    v27 = v7;
    v28 = v5;
LABEL_36:

    return v25(v26, v27, v28);
  }

  v26 = (&a1[v17] & ~v13);
  if (v9 == v16)
  {
    v25 = *(v8 + 48);
    v27 = v9;
    v28 = v32;
    goto LABEL_36;
  }

  v30 = *(v12 + 48);
  v31 = &v26[v14 + v15] & ~v15;

  return v30(v31);
}

void storeEnumTagSinglePayload for DistributionMarkViewModel(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v36 = *(a4 + 16);
  v7 = *(v36 - 8);
  v34 = *(a4 + 24);
  v35 = v7;
  v8 = *(v7 + 84);
  v9 = *(v34 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v13 = v12;
  v14 = *(v7 + 64);
  if (*(v12 + 84) <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v9 + 80);
  v17 = v14 + v16;
  v18 = (v14 + v16) & ~v16;
  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = ((*(v12 + 64) + ((v19 + v20 + v18) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 >= a3)
  {
    v24 = 0;
    if (v15 >= a2)
    {
      goto LABEL_20;
    }

LABEL_25:
    v25 = ~v15 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v26 = (v25 >> 8) + 1;
    }

    else
    {
      v26 = 1;
    }

    if (v21 <= 3)
    {
      *a1 = v25;
      if (v24 > 1)
      {
LABEL_30:
        if (v24 == 2)
        {
          *&a1[v21] = v26;
        }

        else
        {
          *&a1[v21] = v26;
        }

        return;
      }
    }

    else
    {
      *a1 = v25;
      if (v24 > 1)
      {
        goto LABEL_30;
      }
    }

    if (v24)
    {
      a1[v21] = v26;
    }

    return;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v15 + 255) >> 8) + 1;
  }

  else
  {
    v22 = 2;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v15 < a2)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v21] = 0;
    goto LABEL_34;
  }

  if (!v24)
  {
LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 == v15)
  {
    v27 = v36;
    v28 = *(v35 + 56);
    v29 = a1;
    v30 = a2;
    v31 = v8;
LABEL_42:

    v28(v29, v30, v31, v27);
    return;
  }

  v29 = (&a1[v17] & ~v16);
  if (v10 == v15)
  {
    v28 = *(v9 + 56);
    v30 = a2;
    v31 = v10;
    v27 = v34;
    goto LABEL_42;
  }

  v32 = *(v13 + 56);
  v33 = &v29[v19 + v20] & ~v20;

  v32(v33, a2);
}

void _s16HealthChartsCore0aB4DataV11SeriesPointVy_SNySdGAFGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for ClosedRange<Double>();
    v9[0] = v6;
    v9[1] = v6;
    v10 = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    v11 = v10;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    type metadata accessor for ClosedRange<Double>();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    v10[3] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation12DateIntervalVSNySdGGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    type metadata accessor for ClosedRange<Double>();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
    v10[3] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined destroy of Capsule(uint64_t a1)
{
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25140B1A0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s16HealthChartsCore0aB4UnitVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s16HealthChartsCore0aB4UnitVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisBoundaryRule(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AxisBoundaryRule(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t type metadata completion function for AxisScale(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AxisScale.DomainResolutionStyle(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for ClosedRange();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AxisScale(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6) & ~v6) + v7 + ((v6 + 1) & ~v6);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v16 = *a1;
      if (v16 >= 2)
      {
        return v16 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
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
        LODWORD(v10) = *a1 | (a1[2] << 16);
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

  return v8 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for AxisScale(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 1) & ~v9);
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
LABEL_55:
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
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
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
  if (v7 > 0xFE)
  {
    v20 = (&a1[v9 + 1] & ~v9);
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(v20);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t getEnumTagSinglePayload for AxisScale.DomainResolutionStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisScale.DomainResolutionStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int AxisScale.DomainResolutionStyle.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x253076640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AxisScale<A>.DomainResolutionStyle(uint64_t a1)
{
  Hasher.init(_seed:)();
  AxisScale.DomainResolutionStyle.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t outlined init with copy of HealthChartsContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BasicChartModel.init(data:attributes:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for HealthChartsData();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14 = type metadata accessor for BasicChartModel(0, a4, a5, v13);
  v15 = *(v14 + 36);
  v17 = type metadata accessor for HealthChartsAttributes(0, a4, a5, v16);
  (*(*(v17 - 8) + 32))(a6 + v15, a2, v17);
  v18 = a6 + *(v14 + 40);

  return outlined init with take of HealthChartsContext(a3, v18);
}

uint64_t BasicChartModel.attributes()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 36);
  v6 = type metadata accessor for HealthChartsAttributes(0, *(a1 + 16), *(a1 + 24), a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t EmptyDateChartModel.attributes()@<X0>(void *a1@<X8>)
{
  static ChartAttributes.empty<>()(a1);
  type metadata accessor for HealthChartsAttributes<DateDomain>(0);
  v3 = v2;
  v4 = (a1 + *(v2 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0);
  v4[3] = v5;
  result = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_0(&lazy protocol witness table cache variable for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>, type metadata accessor for DescriptionMessage<NoDescription>, &protocol conformance descriptor for DescriptionMessage<A>);
  v4[4] = result;
  *v4 = 0;
  v4[1] = 0;
  *(a1 + *(v3 + 40)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t EmptyDateChartModel.data(_:)(void (*a1)(char *))
{
  v2 = type metadata accessor for HealthChartsData();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  a1(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for ChartModel.attributes() in conformance EmptyDateChartModel@<X0>(void *a1@<X8>)
{
  static ChartAttributes.empty<>()(a1);
  type metadata accessor for HealthChartsAttributes<DateDomain>(0);
  v3 = v2;
  v4 = (a1 + *(v2 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0);
  v4[3] = v5;
  result = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_0(&lazy protocol witness table cache variable for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>, type metadata accessor for DescriptionMessage<NoDescription>, &protocol conformance descriptor for DescriptionMessage<A>);
  v4[4] = result;
  *v4 = 0;
  v4[1] = 0;
  *(a1 + *(v3 + 40)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t protocol witness for ChartModel.data(_:) in conformance EmptyDateChartModel(void (*a1)(char *))
{
  v2 = type metadata accessor for HealthChartsData();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  a1(v5);
  return (*(v3 + 8))(v5, v2);
}

void type metadata accessor for HealthChartsAttributes<DateDomain>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>)
  {
    v2 = type metadata accessor for DateDomain(255);
    v3 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_0(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
    v5 = type metadata accessor for HealthChartsAttributes(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>);
    }
  }
}

void type metadata accessor for DescriptionMessage<NoDescription>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DescriptionMessage<NoDescription>)
  {
    v2 = lazy protocol witness table accessor for type NoDescription and conformance NoDescription();
    v4 = type metadata accessor for DescriptionMessage(a1, &type metadata for NoDescription, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>);
    }
  }
}

uint64_t _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for BasicChartModel(uint64_t a1)
{
  result = type metadata accessor for HealthChartsData();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for HealthChartsAttributes(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for HealthChartsContext(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicChartModel(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v51 = *(type metadata accessor for HealthChartsData() - 8);
  v52 = *(*(a3 + 16) - 8);
  if (*(v52 + 84) <= 0x7FFFFFFFu)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *(v52 + 84);
  }

  v48 = *(v51 + 84);
  v46 = *(v52 + 84);
  v47 = v4;
  if (v4 <= v48)
  {
    v5 = *(v51 + 84);
  }

  else
  {
    v5 = v4;
  }

  v6 = *(type metadata accessor for Calendar() - 8);
  v7 = *(v6 + 84);
  v43 = type metadata accessor for DateInterval();
  v8 = *(v43 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v44 = v7;
  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v45 = v11;
  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  if (*(v13 + 64) <= 1uLL)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  if (v12 <= v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = v12;
  }

  v16 = *(v52 + 80);
  v17 = *(v6 + 80);
  v18 = *(v8 + 80);
  v19 = *(v13 + 80);
  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v16 | 7;
  v22 = (v16 | 7) + *(v51 + 64);
  v23 = ((v16 + 1) & ~v16) + *(v52 + 64) + 7;
  v24 = v17 | v18 | v19 | 7;
  v25 = ((((((v23 + ((v16 + 8) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v24 + 8;
  v26 = v17 + 8;
  v27 = *(v6 + 64) + v18;
  v28 = a1;
  if (a2 <= v15)
  {
    goto LABEL_47;
  }

  v14 += ((v20 + v19 + ((v27 + (v26 & ~v17)) & ~v18)) & ~v19) + ((v25 + (v22 & ~v21)) & ~v24) + 2;
  v29 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_27;
  }

  v31 = ((a2 - v15 + ~(-1 << v29)) >> v29) + 1;
  if (HIWORD(v31))
  {
    v30 = *(a1 + v14);
    if (!v30)
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  if (v31 > 0xFF)
  {
    v30 = *(a1 + v14);
    if (!*(a1 + v14))
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  if (v31 >= 2)
  {
LABEL_27:
    v30 = *(a1 + v14);
    if (!*(a1 + v14))
    {
      goto LABEL_47;
    }

LABEL_34:
    v32 = (v30 - 1) << v29;
    if (v14 > 3)
    {
      v32 = 0;
    }

    if (v14)
    {
      if (v14 <= 3)
      {
        v33 = v14;
      }

      else
      {
        v33 = 4;
      }

      if (v33 > 2)
      {
        if (v33 == 3)
        {
          v34 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v34 = *a1;
        }
      }

      else if (v33 == 1)
      {
        v34 = *a1;
      }

      else
      {
        v34 = *a1;
      }
    }

    else
    {
      v34 = 0;
    }

    return v15 + (v34 | v32) + 1;
  }

LABEL_47:
  if (v48 == v15)
  {
    v35 = *(v51 + 48);
LABEL_49:

    return v35(v28);
  }

  v37 = (a1 + v22) & ~v21;
  if (v47 != v15)
  {
    v39 = ((v25 + v37) & ~v24);
    if (v45 <= 0x7FFFFFFE)
    {
      v40 = *v39;
      if (v40 >= 0xFFFFFFFF)
      {
        LODWORD(v40) = -1;
      }

      if ((v40 + 1) >= 2)
      {
        return v40;
      }

      else
      {
        return 0;
      }
    }

    v28 = ((v39 + v26) & ~v17);
    if (v44 == v12)
    {
      v35 = *(v6 + 48);
      goto LABEL_49;
    }

    if (v9 >= 2)
    {
      v42 = (*(v8 + 48))((v28 + v27) & ~v18, v9, v43, v14);
      if (v42 >= 2)
      {
        return v42 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v38 = (v16 + 8 + v37) & ~v16;
  if (v46 >= 0x7FFFFFFF)
  {
    v35 = *(v52 + 48);
    v28 = ((v16 + 1 + v38) & ~v16);
    goto LABEL_49;
  }

  v41 = *(((v23 + v38) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v41 >= 0xFFFFFFFF)
  {
    LODWORD(v41) = -1;
  }

  return (v41 + 1);
}

void storeEnumTagSinglePayload for BasicChartModel(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(type metadata accessor for HealthChartsData() - 8);
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v57 = v8;
  v58 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v60 = *(v5 + 84);
  v59 = v9;
  if (v9 <= v60)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = v9;
  }

  v61 = *(type metadata accessor for Calendar() - 8);
  v11 = *(v61 + 84);
  v12 = *(type metadata accessor for DateInterval() - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v55 = v11;
  if (v11 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  v56 = v15;
  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  v17 = type metadata accessor for HealthChartsData.Aggregation();
  v18 = v16;
  v19 = 0;
  v20 = *(v17 - 8);
  if (*(v20 + 64) <= 1uLL)
  {
    v21 = 1;
  }

  else
  {
    v21 = *(v20 + 64);
  }

  if (v16 <= v10)
  {
    v22 = v10;
  }

  else
  {
    v22 = v16;
  }

  v23 = v13;
  v24 = *(v6 + 80);
  v25 = (v24 | 7) + *(v5 + 64);
  v26 = v24 + 8;
  v27 = ((v24 + 1) & ~v24) + *(v6 + 64);
  v28 = *(v61 + 80);
  v29 = *(v12 + 80);
  v30 = *(v20 + 80);
  v31 = v28 | v29 | v30 | 7;
  v32 = ((((((v27 + 7 + ((v24 + 8) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v31 + 8;
  v33 = *(v61 + 64) + v29;
  if (v13)
  {
    v34 = *(v12 + 64);
  }

  else
  {
    v34 = *(v12 + 64) + 1;
  }

  v35 = v21 + ((v34 + v30 + ((v33 + ((v28 + 8) & ~v28)) & ~v29)) & ~v30) + 1;
  v36 = v35 + ((v32 + (v25 & ~(v24 | 7))) & ~v31) + 1;
  if (a3 > v22)
  {
    if (v36 <= 3)
    {
      v37 = ((a3 - v22 + ~(-1 << (8 * v36))) >> (8 * v36)) + 1;
      if (HIWORD(v37))
      {
        v19 = 4;
      }

      else
      {
        if (v37 < 0x100)
        {
          v38 = 1;
        }

        else
        {
          v38 = 2;
        }

        if (v37 >= 2)
        {
          v19 = v38;
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

  if (v22 < a2)
  {
    v39 = ~v22 + a2;
    if (v36 >= 4)
    {
      v40 = v19;
      bzero(a1, v35 + ((v32 + (v25 & ~(v24 | 7))) & ~v31) + 1);
      v19 = v40;
      *a1 = v39;
      v41 = 1;
      if (v19 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_89;
    }

    v41 = (v39 >> (8 * v36)) + 1;
    if (v35 + ((v32 + (v25 & ~(v24 | 7))) & ~v31) != -1)
    {
      v43 = v19;
      v44 = v39 & ~(-1 << (8 * v36));
      bzero(a1, v35 + ((v32 + (v25 & ~(v24 | 7))) & ~v31) + 1);
      if (v36 != 3)
      {
        v19 = v43;
        if (v36 == 2)
        {
          *a1 = v44;
          if (v43 > 1)
          {
            goto LABEL_41;
          }
        }

        else
        {
          *a1 = v39;
          if (v43 > 1)
          {
LABEL_41:
            if (v19 == 2)
            {
              *&a1[v36] = v41;
            }

            else
            {
              *&a1[v36] = v41;
            }

            return;
          }
        }

LABEL_89:
        if (v19)
        {
          a1[v36] = v41;
        }

        return;
      }

      *a1 = v44;
      a1[2] = BYTE2(v44);
      v19 = v43;
    }

    if (v19 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_89;
  }

  v42 = a1;
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v36] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_55;
    }

    *&a1[v36] = 0;
  }

  else if (v19)
  {
    a1[v36] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_55;
  }

  if (!a2)
  {
    return;
  }

LABEL_55:
  if (v60 != v22)
  {
    v47 = &a1[v25] & ~(v24 | 7);
    if (v59 == v22)
    {
      v48 = (v26 + v47) & ~v24;
      if (v58 < 0x7FFFFFFF)
      {
        v54 = (v27 + 7 + v48) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v54 + 40) = 0u;
          *(v54 + 24) = 0u;
          *(v54 + 8) = 0u;
          *v54 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v54 + 8) = a2 - 1;
        }

        return;
      }

      if (v57 >= a2)
      {
        v45 = *(v6 + 56);
        v42 = ((v24 + 1 + v48) & ~v24);
        v46 = a2;
        goto LABEL_57;
      }

      if (v27 <= 3)
      {
        v49 = ~(-1 << (8 * v27));
      }

      else
      {
        v49 = -1;
      }

      if (!v27)
      {
        return;
      }

      v50 = v49 & (~v57 + a2);
      if (v27 <= 3)
      {
        v51 = v27;
      }

      else
      {
        v51 = 4;
      }

      bzero(((v26 + v47) & ~v24), v27);
      if (v51 <= 2)
      {
        if (v51 != 1)
        {
LABEL_72:
          *v48 = v50;
          return;
        }

LABEL_86:
        *v48 = v50;
        return;
      }
    }

    else
    {
      v48 = (v32 + v47) & ~v31;
      if (v18 >= a2)
      {
        if (v56 <= 0x7FFFFFFE)
        {
          if (a2 > 0x7FFFFFFE)
          {
            *v48 = 0;
            *v48 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v48 = a2;
          }

          return;
        }

        v42 = ((v28 + 8 + v48) & ~v28);
        if (v55 == v18)
        {
          v45 = *(v61 + 56);
          v46 = a2;
        }

        else
        {
          if (v23 < 2)
          {
            return;
          }

          v45 = *(v12 + 56);
          v42 = (&v42[v33] & ~v29);
          v46 = a2 + 1;
        }

        goto LABEL_57;
      }

      v52 = (v35 + 1);
      if (v52 <= 3)
      {
        v53 = ~(-1 << (8 * (v35 + 1)));
      }

      else
      {
        v53 = -1;
      }

      if (v35 == -1)
      {
        return;
      }

      v50 = v53 & (~v18 + a2);
      if (v52 <= 3)
      {
        v51 = v35 + 1;
      }

      else
      {
        v51 = 4;
      }

      bzero(((v32 + v47) & ~v31), v52);
      if (v51 <= 2)
      {
        if (v51 != 1)
        {
          goto LABEL_72;
        }

        goto LABEL_86;
      }
    }

    if (v51 == 3)
    {
      *v48 = v50;
      *(v48 + 2) = BYTE2(v50);
    }

    else
    {
      *v48 = v50;
    }

    return;
  }

  v45 = *(v5 + 56);
  v46 = a2;
LABEL_57:

  v45(v42, v46);
}

uint64_t sub_25140CEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25140CF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EmptyDateChartModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for EmptyDateChartModel;
  if (!type metadata singleton initialization cache for EmptyDateChartModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for EmptyDateChartModel(uint64_t a1)
{
  result = type metadata accessor for HealthChartsContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t HealthChart.ViewModel.init(attributes:series:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, int *a6@<X5>, void *a7@<X8>)
{
  v71 = a6;
  v73 = type metadata accessor for HealthChartsData.Aggregation();
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x277D102B8];
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  MEMORY[0x28223BE20](v14 - 8);
  v72 = &v60 - v15;
  v77 = a3;
  *&v78 = a3;
  *(&v78 + 1) = a5;
  v79 = a5;
  v65 = type metadata accessor for ChartAttributes.AxisAttributes(0, &v77);
  v16 = *(v65 - 1);
  MEMORY[0x28223BE20](v65);
  *&v64 = &v60 - v17;
  *a7 = *a1;
  v19 = type metadata accessor for ChartAttributes(0, a3, a5, v18);
  v20 = *(v19 + 36);
  v69 = v19;
  v21 = a1;
  LOBYTE(v77) = *(a1 + v20);
  v76 = 0;
  LOBYTE(a1) = static ChartAttributes.AxisLabels.== infix(_:_:)(&v77, &v76);
  v77 = a3;
  *&v78 = a4;
  v66 = a5;
  *(&v78 + 1) = a5;
  v79 = v71;
  v22 = type metadata accessor for HealthChart.ViewModel(0, &v77);
  *(a7 + v22[20]) = a1 & 1;
  v23 = *(v19 + 40);
  v24 = v21;
  v67 = v21;
  v25 = v21 + v23;
  LOBYTE(v77) = *v25;
  v76 = 0;
  *(a7 + v22[19]) = static ChartAttributes.AxisLabels.== infix(_:_:)(&v77, &v76);
  v26 = v24 + v20;
  v27 = v64;
  v28 = v65;
  (*(v16 + 16))(v64, v26, v65);
  v29 = *(v28 + 13);
  v61 = v22[17];
  v62 = a3;
  v30 = *(*(a3 - 8) + 32);
  v70 = a7;
  v30(&v61[a7], v27 + v29, a3);
  v31 = *(v25 + 1);
  v33 = *(v25 + 4);
  v32 = *(v25 + 5);
  v34 = *(v25 + 6);
  v35 = v22[18];
  v71 = v22;
  v36 = a7 + v35;
  *v36 = v31;
  v64 = *(v25 + 1);
  *(v36 + 8) = v64;
  *(v36 + 3) = v33;
  *(v36 + 4) = v32;
  *(v36 + 5) = v34;
  v37 = a2[3];
  v38 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v37);
  v65 = *(v38 + 32);
  v60 = v22[13];

  v39 = v70;
  (v65)(v37, v38);
  v40 = a2[3];
  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v40);
  v65 = (*(v41 + 40))(v40, v41);
  *&v64 = v42;
  v43 = &v39[v71[14]];
  *v43 = v65;
  *(v43 + 1) = v42;
  v63 = v44 & 1;
  v43[16] = v44 & 1;
  v45 = a2[3];
  v46 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v45);
  v47 = v72;
  (*(v46 + 56))(v45, v46);
  v48 = a2[3];
  v49 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v48);
  v50 = v68;
  (*(v49 + 48))(v48, v49);
  (*(v66 + 7))(&v39[v60], v47, v50, v62);
  v51 = *(v75 + 8);
  v75 += 8;
  v66 = v51;
  (v51)(v50, v73);
  outlined destroy of ScaleType?(v47, &lazy cache variable for type metadata for HealthChartsUnit?, v74);
  v61 = *v36;
  v62 = *(v36 + 3);
  v52 = a2[3];
  v53 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v52);
  v54 = *(v53 + 56);

  v55 = v72;
  v54(v52, v53);
  v56 = a2[3];
  v57 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v56);
  (*(v57 + 48))(v56, v57);
  (v61)(&v77, v65, v64, v63, v55, v50);
  (*(*(v69 - 8) + 8))(v67);
  (v66)(v50, v73);
  outlined destroy of ScaleType?(v55, &lazy cache variable for type metadata for HealthChartsUnit?, v74);

  v58 = &v70[v71[16]];
  *v58 = v77;
  *(v58 + 8) = v78;
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t HealthChart.ViewModel.xAxisContent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = type metadata accessor for HealthChartsData.Aggregation();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = *(a1 + 32);
  v43 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v37 = &v36 - v15;
  type metadata accessor for AxisMarks<Never>(0, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v42 = v20;
  v44 = type metadata accessor for BuilderConditional();
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v22 = &v36 - v21;
  if (*(v2 + *(a1 + 80)) == 1)
  {
    HealthChart.ViewModel.emptyAxisContent()();
    lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = v42;
    static AxisContentBuilder.buildEither<A, B>(first:)(v19, v42, AssociatedTypeWitness);
    (*(v17 + 8))(v19, v24);
  }

  else
  {
    v36 = *(a1 + 68);
    v25 = *(a1 + 52);
    v26 = type metadata accessor for HealthChartsUnit();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    v27 = v39;
    v28 = v40;
    (*(v39 + 104))(v6, *MEMORY[0x277D10200], v40);
    (*(v10 + 64))(v2 + v25, v9, v6, v43, v10);
    (*(v27 + 8))(v6, v28);
    outlined destroy of ScaleType?(v9, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = v37;
    v29 = v38;
    v31 = *(v38 + 16);
    v31(v37, v13, AssociatedTypeWitness);
    v32 = *(v29 + 8);
    v32(v13, AssociatedTypeWitness);
    v31(v13, v30, AssociatedTypeWitness);
    lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
    static AxisContentBuilder.buildEither<A, B>(second:)(v13, v42, AssociatedTypeWitness);
    v32(v13, AssociatedTypeWitness);
    v32(v30, AssociatedTypeWitness);
  }

  v46 = lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  v47 = AssociatedConformanceWitness;
  v33 = v44;
  swift_getWitnessTable();
  v34 = v41;
  (*(v41 + 16))(v45, v22, v33);
  return (*(v34 + 8))(v22, v33);
}

uint64_t HealthChart.ViewModel.emptyAxisContent()()
{
  v0 = type metadata accessor for AxisMarkPosition();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for AxisMarkPreset();
  MEMORY[0x28223BE20](v1 - 8);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  return AxisMarks.init<A>(preset:position:values:stroke:)();
}

uint64_t static AxisContentBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BuilderConditional.Storage();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)();
}

uint64_t static AxisContentBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BuilderConditional.Storage();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)();
}

uint64_t HealthChart.ViewModel.yAxisContent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  type metadata accessor for AxisMarks<Never>(0, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v26 - v16;
  if (*(v2 + v15[19]) == 1)
  {
    HealthChart.ViewModel.emptyAxisContent()();
    v18.n128_f64[0] = (*(v14 + 32))(a2, v17, v13);
  }

  else
  {
    v19 = *(v2 + v15[18] + 16);
    v20 = (v2 + v15[14]);
    v21 = *v20;
    v27 = v20[1];
    v28 = v19;
    v22 = *(v20 + 16);
    v23 = type metadata accessor for HealthChartsUnit();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    (*(v6 + 104))(v8, *MEMORY[0x277D10200], v5);

    v28(v29, v21, v27, v22, v11, v8);
    (*(v6 + 8))(v8, v5);
    outlined destroy of ScaleType?(v11, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);

    v18 = v29[0];
    v24 = v29[1];
    *a2 = v29[0];
    *(a2 + 16) = v24;
    *(a2 + 32) = v30;
  }

  type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(0, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<Never>, AnyAxisContent>.Storage, MEMORY[0x277CBB370], v18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static HealthChart.build<A>(attributes:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v30 = a2;
  v32 = a1;
  v35 = a7;
  v29 = type metadata accessor for ChartAttributes(0, a3, a5, a3);
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = &v28 - v12;
  v28 = (&v28 - v12);
  v42[0] = a3;
  v42[1] = MEMORY[0x277CBB350];
  v42[2] = a5;
  AssociatedTypeWitness = MEMORY[0x277CBB348];
  v33 = type metadata accessor for HealthChart.ViewModel(0, v42);
  v14 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v28 - v17);
  v34 = *(a4 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30(v20);
  (*(v11 + 16))(v13, v32, v29);
  v23 = *(a6 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v42);
  v23(a4, a6);
  v24 = MEMORY[0x277CBB348];
  HealthChart.ViewModel.init(attributes:series:)(v28, v42, a3, MEMORY[0x277CBB350], a5, MEMORY[0x277CBB348], v18);
  v25 = v31;
  v26 = v33;
  (*(v14 + 16))(v31, v18, v33);
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = v22;
  v41 = v18;
  HealthChart.init(_:_:)(v25, partial apply for closure #1 in static HealthChart.build<A>(attributes:_:), a3, MEMORY[0x277CBB350], a5, v24, v35);
  (*(v14 + 8))(v18, v26);
  return (*(v34 + 8))(v22, a4);
}

uint64_t boundedContent #1 <A, B><A1>() in static HealthChart.build<A>(attributes:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v55 = a5;
  v52 = a4;
  OpaqueTypeConformance2 = a2;
  v60 = a6;
  type metadata accessor for AxisMarks<Never>(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277D839F8], MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for PointMark();
  v65 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0(0);
  v61 = v13;
  v66 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.opacity(_:)>>.0(0, v14);
  v58 = *(v17 - 8);
  v59 = v17;
  MEMORY[0x28223BE20](v17);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v56 = &v50 - v20;
  MEMORY[0x28223BE20](v21);
  v54 = &v50 - v22;
  MEMORY[0x28223BE20](v23);
  v50 = &v50 - v24;
  v53 = a3;
  v64 = *(a3 - 8);
  MEMORY[0x28223BE20](v25);
  v62 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v63 = &v50 - v28;
  v55 = *(v55 + 8);
  static ChartContentBuilder.buildExpression<A>(_:)();
  v75 = 1501061485;
  v76 = 0xE400000000000000;
  v72 = String.init<A>(_:)();
  v73 = v29;
  v75 = OpaqueTypeConformance2;
  v76 = MEMORY[0x277CBB350];
  v77 = v52;
  v78 = MEMORY[0x277CBB348];
  v30 = a1 + *(type metadata accessor for HealthChart.ViewModel(0, &v75) + 64);
  v75 = *(v30 + 8);
  v52 = lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  PointMark.init<A>(x:y:)();
  v31 = MEMORY[0x277CBB468];
  ChartContent.accessibilityHidden(_:)();
  v32 = *(v65 + 8);
  v65 += 8;
  v32(v12, v10);
  v75 = v10;
  v76 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v61;
  ChartContent.opacity(_:)();
  v34 = *(v66 + 8);
  v66 += 8;
  v34(v16, v33);
  v75 = 1500408173;
  v76 = 0xE400000000000000;
  v75 = String.init<A>(_:)();
  v76 = v35;
  v72 = *(v30 + 16);
  static PlottableValue.value<A>(_:_:)();

  PointMark.init<A>(x:y:)();
  ChartContent.accessibilityHidden(_:)();
  v32(v12, v10);
  v36 = v54;
  v37 = v33;
  v38 = OpaqueTypeConformance2;
  ChartContent.opacity(_:)();
  v34(v16, v37);
  v39 = v62;
  v40 = v53;
  (*(v64 + 16))(v62, v63, v53);
  v75 = v39;
  v41 = v58;
  v42 = v59;
  v43 = *(v58 + 16);
  v44 = v56;
  v45 = v50;
  v43(v56, v50, v59);
  v76 = v44;
  v46 = v57;
  v43(v57, v36, v42);
  v77 = v46;
  v72 = v40;
  v73 = v42;
  v74 = v42;
  v68 = v38;
  v69 = v55;
  v67 = v61;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v70;
  static ChartContentBuilder.buildBlock<each A>(_:)(&v75, 3uLL, &v72, v60);
  v47 = *(v41 + 8);
  v47(v36, v42);
  v47(v45, v42);
  v48 = *(v64 + 8);
  v48(v63, v40);
  v47(v46, v42);
  v47(v44, v42);
  return (v48)(v62, v40);
}