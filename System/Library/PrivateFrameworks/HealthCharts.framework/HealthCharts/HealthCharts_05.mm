unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    type metadata accessor for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>(255);
    lazy protocol witness table accessor for type AxisValueLabel<Never> and conformance AxisValueLabel<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AxisValueLabel<Never> and conformance AxisValueLabel<A>()
{
  result = lazy protocol witness table cache variable for type AxisValueLabel<Never> and conformance AxisValueLabel<A>;
  if (!lazy protocol witness table cache variable for type AxisValueLabel<Never> and conformance AxisValueLabel<A>)
  {
    type metadata accessor for AxisValueLabel<Never>(255, &lazy cache variable for type metadata for AxisValueLabel<Never>, MEMORY[0x277CE1538], MEMORY[0x277CBB330]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AxisValueLabel<Never> and conformance AxisValueLabel<A>);
  }

  return result;
}

void type metadata accessor for AxisValueLabel<Never>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x277D84A98], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s10Foundation4DateVACSLAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void _s12HealthCharts10DateDomainV19IntervalAggregationVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SeriesData.aggregation.getter@<X0>(uint64_t a1@<X8>)
{
  return SeriesData.aggregation.getter(a1);
}

{
  v2 = *MEMORY[0x277D10200];
  v3 = type metadata accessor for HealthChartsData.Aggregation();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SeriesData.unit.getter@<X0>(uint64_t a1@<X8>)
{
  return SeriesData.unit.getter(a1);
}

{
  v2 = type metadata accessor for HealthChartsUnit();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for SeriesData.xScale.getter in conformance <> HealthChartsData.SeriesData<A, B>(uint64_t a1)
{
  swift_getWitnessTable();

  return AnySeriesData.xScale.getter();
}

void __swiftcall HealthChartsQuantityDistributionQueryConfiguration.init(quantityType:bucketSize:options:histogramAnchor:zeroCountForGap:predicate:)(HealthCharts::HealthChartsQuantityDistributionQueryConfiguration *__return_ptr retstr, HKQuantityType quantityType, HKQuantity bucketSize, __C::_HKQuantityDistributionOptions_optional options, HKQuantity histogramAnchor, Swift::Int_optional zeroCountForGap, NSPredicate_optional *predicate)
{
  if (options.is_nil)
  {
    rawValue = 0;
  }

  else
  {
    rawValue = options.value.rawValue;
  }

  retstr->quantityType = quantityType;
  retstr->bucketSize = bucketSize;
  retstr->options.rawValue = rawValue;
  retstr->histogramAnchor = histogramAnchor;
  if (zeroCountForGap.is_nil)
  {
    value = 4;
  }

  else
  {
    value = zeroCountForGap.value;
  }

  retstr->zeroCountForGap = value;
  retstr->predicate.value.super.isa = predicate;
}

id static HealthChartsQuantityDistributionDataProvider.provider<A>(configuration:context:preferredDataShape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v34 = a3;
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for HealthChartsContext?, type metadata accessor for HealthChartsContext);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v31 - v12);
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 16);
  v35 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v32 = v17;
  v33 = v16;
  outlined init with copy of HealthChartsContext?(a2, v13);
  v19 = type metadata accessor for HealthChartsContext(0);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
    outlined destroy of HealthChartsContext?(v13);
  }

  else
  {
    v20 = *v13;
    v21 = *v13;
    _ss6ResultOy16HealthChartsCore0bC4DataVs5Error_pGWOhTm_0(v13, type metadata accessor for HealthChartsContext);
    if (v20)
    {
      goto LABEL_5;
    }
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
LABEL_5:
  v22 = type metadata accessor for HealthChartsDataShape();
  a7[10] = v22;
  v36 = a5;
  a7[11] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7 + 7);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v34, v22);
  *a7 = v21;
  a7[1] = v15;
  v24 = v32;
  v25 = v33;
  a7[2] = v14;
  a7[3] = v25;
  a7[4] = v35;
  a7[5] = v24;
  a7[6] = v18;
  v26 = v18;
  v27 = v15;
  v28 = v14;
  v29 = v35;

  return v29;
}

void HealthChartsQuantityDistributionDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a4;
  v49 = a3;
  v7 = type metadata accessor for HealthChartsData.Aggregation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for Date();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v19);
  v51 = v4[1];
  v59 = &v45 - v20;
  DateInterval.start.getter();
  v55 = v18;
  v21 = a2;
  DateInterval.end.getter();
  v50 = v4[6];
  v56 = v15;
  DateInterval.start.getter();
  HealthChartsData.Aggregation.intervalDateComponents()();
  v22 = type metadata accessor for DateComponents();
  v52 = *(v22 - 8);
  v23 = *(v52 + 48);
  v24 = v12;
  v53 = v22;
  if (v23(v12, 1) == 1)
  {
    __break(1u);
  }

  else
  {
    v47 = v4[2];
    v25 = v4[4];
    v46 = *(v5 + 24);
    outlined init with copy of HealthChartsQuantityDistributionDataProvider(v5, v61);
    (*(v8 + 16))(&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v7);
    v26 = (*(v8 + 80) + 128) & ~*(v8 + 80);
    v27 = swift_allocObject();
    v48 = v5;
    v28 = v27;
    v29 = v54;
    *(v27 + 16) = v49;
    *(v27 + 24) = v29;
    v30 = v61[3];
    *(v27 + 64) = v61[2];
    *(v27 + 80) = v30;
    v31 = v61[5];
    *(v27 + 96) = v61[4];
    *(v27 + 112) = v31;
    v32 = v61[1];
    *(v27 + 32) = v61[0];
    *(v27 + 48) = v32;
    (*(v8 + 32))(v27 + v26, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v33 = objc_allocWithZone(MEMORY[0x277CCDE28]);
    v34 = v25;

    isa = Date._bridgeToObjectiveC()().super.isa;
    v36 = v55;
    v37 = Date._bridgeToObjectiveC()().super.isa;
    v38 = v56;
    v39 = Date._bridgeToObjectiveC()().super.isa;
    v40 = DateComponents._bridgeToObjectiveC()().super.isa;
    aBlock[4] = partial apply for closure #1 in HealthChartsQuantityDistributionDataProvider.query(interval:aggregation:results:);
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _HKQuantityDistributionQuery, @guaranteed [_HKQuantityDistributionData]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_1;
    v41 = _Block_copy(aBlock);
    v42 = [v33 initWithQuantityType:v51 startDate:isa endDate:v37 contextStyle:0 predicate:v50 anchorDate:v39 intervalComponents:v40 histogramAnchor:v34 histogramBucketSize:v47 options:v46 completionHandler:v41];
    _Block_release(v41);

    v43 = v58;
    v44 = *(v57 + 8);
    v44(v38, v58);
    v44(v36, v43);
    v44(v59, v43);
    (*(v52 + 8))(v24, v53);

    [*v48 executeQuery_];
  }
}

uint64_t closure #1 in HealthChartsQuantityDistributionDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, void *a6, uint64_t a7)
{
  v19[1] = a5;
  type metadata accessor for Result<HealthChartsData, Error>(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for HealthChartsData();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    *v12 = a3;
    swift_storeEnumTagMultiPayload();
    v17 = a3;
    a4(v12);
    return _ss6ResultOy16HealthChartsCore0bC4DataVs5Error_pGWOhTm_0(v12, type metadata accessor for Result<HealthChartsData, Error>);
  }

  else
  {
    v19[0] = a4;
    __swift_project_boxed_opaque_existential_1(a6 + 7, a6[10]);
    dispatch thunk of DistributionRepresentableShape.buildData(from:aggregation:histogramBucketSize:zeroCountForGap:preferredUnit:)();
    (*(v14 + 16))(v12, v16, v13);
    swift_storeEnumTagMultiPayload();
    (v19[0])(v12);
    _ss6ResultOy16HealthChartsCore0bC4DataVs5Error_pGWOhTm_0(v12, type metadata accessor for Result<HealthChartsData, Error>);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed _HKQuantityDistributionQuery, @guaranteed [_HKQuantityDistributionData]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for _HKQuantityDistributionData();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t _ss6ResultOy16HealthChartsCore0bC4DataVs5Error_pGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25142BCEC()
{
  v1 = type metadata accessor for HealthChartsData.Aggregation();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 128) & ~*(v2 + 80);

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in HealthChartsQuantityDistributionDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3 + ((*(v7 + 80) + 128) & ~*(v7 + 80));

  return closure #1 in HealthChartsQuantityDistributionDataProvider.query(interval:aggregation:results:)(a1, a2, a3, v8, v9, v3 + 4, v10);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t getEnumTagSinglePayload for HealthChartsQuantityDistributionDataProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for HealthChartsQuantityDistributionDataProvider(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t type metadata accessor for _HKQuantityDistributionData()
{
  result = lazy cache variable for type metadata for _HKQuantityDistributionData;
  if (!lazy cache variable for type metadata for _HKQuantityDistributionData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _HKQuantityDistributionData);
  }

  return result;
}

uint64_t HealthStaticChart.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for DescriptionView(255, v6, v5, a4);
  v21[0] = v6;
  v21[1] = MEMORY[0x277CBB350];
  v21[2] = v5;
  v21[3] = MEMORY[0x277CBB348];
  type metadata accessor for HealthChart(255, v21);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v7 = type metadata accessor for VStack();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v17[-v12];
  v14 = *v4;
  static HorizontalAlignment.leading.getter();
  v18 = v6;
  v19 = v5;
  v20 = v14;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  static ChartContentBuilder.buildExpression<A>(_:)();
  return (v15)(v13, v7);
}

unint64_t lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }

  return result;
}

uint64_t closure #1 in HealthStaticChart.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v65 = a1;
  v79 = a4;
  v76 = type metadata accessor for ChartAttributes(0, a2, a3, a5);
  v72 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v68 = &v59 - v7;
  v84 = a2;
  v85 = MEMORY[0x277CBB350];
  v86 = a3;
  v87 = MEMORY[0x277CBB348];
  v8 = type metadata accessor for HealthChart(0, &v84);
  v69 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v66 = &v59 - v9;
  v73 = v10;
  v11 = type metadata accessor for ModifiedContent();
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v67 = &v59 - v12;
  type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
  v75 = v11;
  v78 = type metadata accessor for ModifiedContent();
  v70 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v74 = &v59 - v15;
  v17 = type metadata accessor for HealthChartsAttributes(0, a2, a3, v16);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  v20 = type metadata accessor for HealthChartsData();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for HealthStaticChartDescriptionViewModel(0, a2, a3, v23);
  v24 = *(v62 - 1);
  MEMORY[0x28223BE20](v62);
  v26 = &v59 - v25;
  v28 = type metadata accessor for DescriptionView(0, a2, a3, v27);
  v63 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v80 = &v59 - v32;
  type metadata accessor for MainActor();
  v64 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = v65;
  HealthStaticChartViewModel.data.getter();
  HealthStaticChartViewModel.attributes.getter();
  HealthStaticChartDescriptionViewModel.init(data:attributes:)(v22, v19, a2, a3, v26);
  (*(v24 + 32))(v30, v26, v62);
  WitnessTable = swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)();
  v34 = v63;
  v35 = *(v63 + 8);
  v61 = v63 + 8;
  v62 = v35;
  v35(v30, v28);
  v36 = v68;
  v38 = HealthStaticChartViewModel.chartAttributes.getter(v68, v37);
  MEMORY[0x28223BE20](v38);
  *(&v59 - 4) = a2;
  *(&v59 - 3) = a3;
  *(&v59 - 2) = v33;
  type metadata accessor for DataSeries(255, a2, a3, v39);
  v40 = type metadata accessor for Optional();
  v83[6] = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v42 = v66;
  static HealthChart.build<A>(attributes:_:)(v36, partial apply for closure #1 in closure #1 in HealthStaticChart.body.getter, a2, v40, a3, v41, v66);
  (*(v72 + 8))(v36, v76);
  static Edge.Set.top.getter();
  v43 = v73;
  v44 = swift_getWitnessTable();
  v45 = v67;
  View.padding(_:_:)();
  (*(v69 + 8))(v42, v43);
  v83[4] = v44;
  v83[5] = MEMORY[0x277CDF918];
  v46 = v75;
  v47 = swift_getWitnessTable();
  v48 = v77;
  View.clipped(antialiased:)();
  (*(v71 + 8))(v45, v46);
  v49 = lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>();
  v83[2] = v47;
  v83[3] = v49;
  v50 = v78;
  v51 = swift_getWitnessTable();
  v52 = v74;
  static ChartContentBuilder.buildExpression<A>(_:)();
  v53 = v70;
  v54 = *(v70 + 8);
  v54(v48, v50);
  v55 = *(v34 + 16);
  v56 = v80;
  v55(v30, v80, v28);
  v84 = v30;
  (*(v53 + 16))(v48, v52, v50);
  v85 = v48;
  v83[0] = v28;
  v83[1] = v50;
  v81 = WitnessTable;
  v82 = v51;
  static ViewBuilder.buildBlock<each A>(_:)(&v84, 2uLL, v83);
  v54(v52, v50);
  v57 = v62;
  v62(v56, v28);
  v54(v48, v50);
  v57(v30, v28);
}

uint64_t HealthStaticChartDescriptionViewModel.init(data:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for HealthStaticChartDescriptionViewModel(0, a3, a4, a4);
  v12 = *(v11 + 36);
  v13 = type metadata accessor for HealthChartsData();
  v18 = *(v13 - 8);
  (*(v18 + 16))(a5 + v12, a1, v13);
  static HealthStaticChartDescriptionViewModel.descriptionProvider(for:attributes:)(a2, a3, a4, a5);
  static HealthStaticChartDescriptionViewModel.xScale(for:attributes:)(a1, a2, a3, a4, (a5 + *(v11 + 40)));
  v15 = type metadata accessor for HealthChartsAttributes(0, a3, a4, v14);
  (*(*(v15 - 8) + 8))(a2, v15);
  v16 = *(v18 + 8);

  return v16(a1, v13);
}

uint64_t closure #1 in closure #1 in HealthStaticChart.body.getter@<X0>(void (*a1)(char *, char *, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = type metadata accessor for HealthChartsData.Series();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v9 = type metadata accessor for HealthChartsAttributes(0, a1, a2, v8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = a1;
  v13 = a2;
  v15 = type metadata accessor for DataSeries(0, v12, a2, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v41 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v40 = &v39 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v43 = type metadata accessor for Optional();
  v23 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v39 - v27;
  MEMORY[0x28223BE20](v29);
  v44 = &v39 - v30;
  HealthStaticChartViewModel.attributes.getter();
  HealthStaticChartViewModel.seriesData.getter();
  DataSeries.init(attributes:seriesData:)(v11, v7, v42, v13, v28);
  if ((*(v16 + 48))(v28, 1, v15) == 1)
  {
    v31 = *(v23 + 8);
    v32 = v43;
    v31(v28, v43);
    (*(v16 + 56))(v25, 1, 1, v15);
    swift_getWitnessTable();
    v33 = v44;
    static SeriesContentBuilder.buildOptional<A>(_:)();
    v34 = v25;
  }

  else
  {
    v42 = *(v16 + 32);
    v42(v22, v28, v15);
    swift_getWitnessTable();
    v35 = v40;
    static SeriesContentBuilder.buildExpression<A>(_:)(v22, v15, v40);
    v36 = *(v16 + 8);
    v36(v22, v15);
    v37 = v41;
    static SeriesContentBuilder.buildBlock<A>(_:)(v35, v15, v41);
    v36(v35, v15);
    v42(v25, v37, v15);
    (*(v16 + 56))(v25, 0, 1, v15);
    v33 = v44;
    static SeriesContentBuilder.buildOptional<A>(_:)();
    v31 = *(v23 + 8);
    v34 = v25;
    v32 = v43;
  }

  v31(v34, v32);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  static SeriesContentBuilder.buildBlock<A>(_:)(v33, v32, v45);
  return (v31)(v33, v32);
}

uint64_t type metadata instantiation function for HealthStaticChart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for HealthStaticChart(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HealthStaticChart(uint64_t result, int a2, int a3)
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

uint64_t sub_25142D384(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for DescriptionView(255, *a1, v5, a4);
  v7[0] = v4;
  v7[1] = MEMORY[0x277CBB350];
  v7[2] = v5;
  v7[3] = MEMORY[0x277CBB348];
  type metadata accessor for HealthChart(255, v7);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for DescriptionView(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for HealthStaticChartDescriptionViewModel(319, *(a1 + 16), *(a1 + 24), a5);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25142D548(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5)
{
  v7 = type metadata accessor for HealthStaticChartDescriptionViewModel(0, *(a3 + 16), *(a3 + 24), a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_25142D5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HealthStaticChartDescriptionViewModel(0, *(a4 + 16), *(a4 + 24), a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t type metadata completion function for HealthStaticChartDescriptionViewModel(uint64_t a1)
{
  result = type metadata accessor for DescriptionContentProvider();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthChartsData();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DescriptionContext.DataXScale(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25142D708(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HealthChartsData();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DescriptionContext.DataXScale(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25142D840(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for HealthChartsData();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DescriptionContext.DataXScale(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t type metadata accessor for DescriptionContentProvider()
{
  result = lazy cache variable for type metadata for DescriptionContentProvider;
  if (!lazy cache variable for type metadata for DescriptionContentProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DescriptionContentProvider);
  }

  return result;
}

uint64_t HealthStaticChartDescriptionViewModel.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DescriptionContext.DataXScale(v2 + *(a1 + 40), a2, type metadata accessor for DescriptionContext.DataXScale);
  v5 = *(a1 + 36);
  v6 = *(type metadata accessor for DescriptionContext(0) + 20);
  v7 = type metadata accessor for HealthChartsData();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2 + v6, v2 + v5, v7);
}

unint64_t static HealthStaticChartDescriptionViewModel.descriptionProvider(for:attributes:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (HealthChartsData.isEmpty.getter())
  {
    type metadata accessor for _ClipEffect<Rectangle>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDataMessage>, lazy protocol witness table accessor for type NoDataMessage and conformance NoDataMessage, &type metadata for NoDataMessage, type metadata accessor for DescriptionMessage);
    *(a4 + 24) = v9;
    result = lazy protocol witness table accessor for type DescriptionMessage<NoDataMessage> and conformance DescriptionMessage<A>();
    *(a4 + 32) = result;
  }

  else
  {
    v11 = a1 + *(type metadata accessor for HealthChartsAttributes(0, a2, a3, v8) + 36);

    return outlined init with copy of HealthStaticChartKey(v11, a4);
  }

  return result;
}

uint64_t static HealthStaticChartDescriptionViewModel.xScale(for:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v42 = a5;
  *&v43 = a2;
  v40 = a1;
  type metadata accessor for DateDomain?(0, &lazy cache variable for type metadata for DateDomain?, type metadata accessor for DateDomain);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v35 - v8;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v44 = a3;
  *&v45 = a3;
  *(&v45 + 1) = a4;
  v46 = a4;
  v15 = type metadata accessor for ChartAttributes.AxisAttributes(0, &v44);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v38 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v21 = type metadata accessor for DateDomain(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ChartAttributes(0, a3, a4, v25);
  v27 = *(v16 + 16);
  v36 = *(v26 + 36);
  v37 = v27;
  v27(v20, v43 + v36, v15);
  v28 = *(v9 + 32);
  v28(v14, &v20[*(v15 + 52)], a3);
  v29 = v41;
  v30 = swift_dynamicCast();
  v31 = *(v22 + 56);
  if (v30)
  {
    v31(v29, 0, 1, v21);
    outlined init with take of DateDomain(v29, v24, type metadata accessor for DateDomain);
    static HealthStaticChartDescriptionViewModel.xScale(for:domain:)(v24, v42);
    return outlined destroy of DescriptionContext(v24, type metadata accessor for DateDomain);
  }

  else
  {
    v33 = v42;
    v31(v29, 1, 1, v21);
    outlined destroy of ClosedRange<Date>(v29, &lazy cache variable for type metadata for DateDomain?, type metadata accessor for DateDomain, type metadata accessor for DateDomain?);
    v34 = v38;
    v37(v38, v43 + v36, v15);
    v28(v39, &v34[*(v15 + 52)], a3);
    if (swift_dynamicCast())
    {
      v43 = v45;
      static HealthStaticChartDescriptionViewModel.xScale(for:domain:)(&v44, v33);
    }

    else
    {
      type metadata accessor for DescriptionContext.DataXScale(0);
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t static HealthStaticChartDescriptionViewModel.xScale(for:domain:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v76 = a1;
  v69 = a2;
  type metadata accessor for (lower: Date, upper: Date)(0);
  v68 = v2;
  MEMORY[0x28223BE20](v2);
  v66 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = &v61 - v5;
  v79 = type metadata accessor for Date();
  v67 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v81 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v61 - v8;
  type metadata accessor for DateDomain?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v61 - v10;
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x28223BE20](v11);
  v74 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HealthChartsData.Aggregation();
  v77 = *(v13 - 8);
  v78 = v13;
  MEMORY[0x28223BE20](v13);
  v70 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v61 - v16;
  type metadata accessor for ClosedRange<Date>?(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for HealthChartsData.Series();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v61 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v61 - v29;
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for AxisScale<Date>, type metadata accessor for AxisScale);
  v62 = v31;
  MEMORY[0x28223BE20](v31);
  v61 = &v61 - v32;
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for ClosedRange<Date>, MEMORY[0x277D83638]);
  v63 = v33;
  MEMORY[0x28223BE20](v33);
  v64 = &v61 - v34;
  HealthChartsData.series.getter();
  HealthChartsData.Series.dateXScale.getter();
  v35 = *(v22 + 8);
  v35(v30, v21);
  HealthChartsData.series.getter();
  v75 = v17;
  HealthChartsData.Series.unit.getter();
  v36 = v27;
  v37 = v71;
  v35(v36, v21);
  v38 = v70;
  HealthChartsData.series.getter();
  HealthChartsData.Series.finestAggregation.getter();
  v39 = v76;
  v40 = v73;
  v35(v24, v21);
  v41 = v72;
  outlined init with copy of DateDomain.IntervalAggregation?(v39, v40);
  v42 = *(v37 + 48);
  if (v42(v40, 1, v41) == 1)
  {
    v43 = v74;
    DateDomain.intervalAggregation(for:with:)(v20, v38, v74);
    v44 = v42(v40, 1, v41);
    v45 = v43;
    if (v44 != 1)
    {
      outlined destroy of ClosedRange<Date>(v40, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, type metadata accessor for DateDomain?);
    }
  }

  else
  {
    v45 = v74;
    outlined init with take of DateDomain(v40, v74, type metadata accessor for DateDomain.IntervalAggregation);
  }

  v46 = v80;
  DateInterval.start.getter();
  v47 = v81;
  DateInterval.end.getter();
  lazy protocol witness table accessor for type Date and conformance Date();
  v48 = v79;
  v49 = dispatch thunk of static Comparable.<= infix(_:_:)();
  outlined destroy of DescriptionContext(v45, type metadata accessor for DateDomain.IntervalAggregation);
  (*(v77 + 8))(v38, v78);
  outlined destroy of ClosedRange<Date>(v75, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], type metadata accessor for DateDomain?);
  result = outlined destroy of DescriptionContext(v20, type metadata accessor for ClosedRange<Date>?);
  if (v49)
  {
    v51 = v67;
    v52 = *(v67 + 32);
    v53 = v65;
    v52(v65, v46, v48);
    v54 = v68;
    v52((v53 + *(v68 + 48)), v47, v48);
    v55 = v66;
    outlined init with copy of DescriptionContext.DataXScale(v53, v66, type metadata accessor for (lower: Date, upper: Date));
    v78 = *(v54 + 48);
    v56 = &v61[*(v62 + 36)];
    v52(v56, v55, v48);
    v57 = *(v51 + 8);
    v57(v55 + v78, v48);
    outlined init with take of DateDomain(v53, v55, type metadata accessor for (lower: Date, upper: Date));
    v58 = v63;
    v52((v56 + *(v63 + 36)), (v55 + *(v54 + 48)), v48);
    v57(v55, v48);
    v59 = v64;
    outlined init with take of ClosedRange<Date>(v56, v64);
    v60 = *(v51 + 16);
    v60(v80, v59, v48);
    v60(v81, v59 + *(v58 + 36), v48);
    DateInterval.init(start:end:)();
    outlined destroy of ClosedRange<Date>(v59, &lazy cache variable for type metadata for ClosedRange<Date>, MEMORY[0x277D83638], type metadata accessor for ClosedRange<Date>);
    type metadata accessor for DescriptionContext.DataXScale(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static HealthStaticChartDescriptionViewModel.xScale(for:domain:)@<X0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for HealthChartsData.Aggregation();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x277D102B8];
  type metadata accessor for DateDomain?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25[-v7];
  v9 = type metadata accessor for HealthChartsData.Series();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v25[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v25[-v17];
  v19 = *a1;
  v29 = a1[1];
  v30 = v19;
  HealthChartsData.series.getter();
  v20 = HealthChartsData.Series.scalarXScale.getter();
  v27 = v21;
  v28 = v20;
  v26 = v22;
  v23 = *(v10 + 8);
  v23(v18, v9);
  HealthChartsData.series.getter();
  HealthChartsData.Series.unit.getter();
  v23(v15, v9);
  HealthChartsData.series.getter();
  HealthChartsData.Series.finestAggregation.getter();
  v23(v12, v9);
  v30(&v35, v28, v27, v26 & 1, v8, v5);
  (*(v32 + 8))(v5, v33);
  outlined destroy of ClosedRange<Date>(v8, &lazy cache variable for type metadata for HealthChartsUnit?, v31, type metadata accessor for DateDomain?);
  *v34 = v36;
  type metadata accessor for DescriptionContext.DataXScale(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DescriptionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for DescriptionContext(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = type metadata accessor for HealthStaticChartDescriptionViewModel(0, *(a1 + 16), *(a1 + 24), v11);
  HealthStaticChartDescriptionViewModel.context.getter(v12, v7);
  (*(v9 + 32))(v7, v8, v9);
  outlined destroy of DescriptionContext(v7, type metadata accessor for DescriptionContext);
  swift_getAssociatedConformanceWitness();
  result = AnyView.init<A>(_:)();
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>)
  {
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>);
  }

  return result;
}

uint64_t outlined destroy of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined destroy of DescriptionContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for DateDomain?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

void type metadata accessor for ClosedRange<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type Date and conformance Date();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of DateDomain.IntervalAggregation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DateDomain?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ClosedRange<Date>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for ClosedRange<Date>, MEMORY[0x277D83638]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DateDomain(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ClipEffect<Rectangle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type NoDataMessage and conformance NoDataMessage()
{
  result = lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage;
  if (!lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage;
  if (!lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DescriptionMessage<NoDataMessage> and conformance DescriptionMessage<A>()
{
  result = lazy protocol witness table cache variable for type DescriptionMessage<NoDataMessage> and conformance DescriptionMessage<A>;
  if (!lazy protocol witness table cache variable for type DescriptionMessage<NoDataMessage> and conformance DescriptionMessage<A>)
  {
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for DescriptionMessage<NoDataMessage>, lazy protocol witness table accessor for type NoDataMessage and conformance NoDataMessage, &type metadata for NoDataMessage, type metadata accessor for DescriptionMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptionMessage<NoDataMessage> and conformance DescriptionMessage<A>);
  }

  return result;
}

uint64_t HealthStaticChart<>.init(objectType:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for HealthChartsContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar.Identifier();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EmptyDateChartModel(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  HKObjectType.chartKey.getter(&v31);
  if (v32)
  {
    outlined init with take of HealthChartsDataProvider(&v31, v33);
    v16 = v34;
    v17 = v35;
    v18 = __swift_project_boxed_opaque_existential_1(v33, v34);
    v19 = MEMORY[0x28223BE20](v18);
    v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v21, v19);
    _s12HealthCharts0aB7ContextVWOcTm_0(a2, v8, type metadata accessor for HealthChartsContext);
    HealthStaticChart<>.init<A>(key:context:)(v21, v8, v16, v17, &v31);

    outlined destroy of EmptyDateChartModel(a2, type metadata accessor for HealthChartsContext);
    v23 = v31;
    result = __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    outlined destroy of HealthStaticChartKey?(&v31);
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_25145AB10;
    *(v25 + 56) = type metadata accessor for HealthChartsErrors(0);
    *__swift_allocate_boxed_opaque_existential_1((v25 + 32)) = a1;
    swift_storeEnumTagMultiPayload();
    v26 = a1;
    print(_:separator:terminator:)();

    v27 = v6[6];
    v28 = type metadata accessor for DateInterval();
    (*(*(v28 - 8) + 56))(&v15[v27], 1, 1, v28);
    v29 = v6[7];
    v30 = type metadata accessor for DateDomain.ViewDateSpan(0);
    (*(*(v30 - 8) + 56))(&v15[v29], 1, 1, v30);
    (*(v10 + 104))(v12, *MEMORY[0x277CC9830], v9);
    Calendar.init(identifier:)();
    (*(v10 + 8))(v12, v9);
    *v15 = 0;
    v15[v6[8]] = 0;
    type metadata accessor for HealthStaticChartViewModel<DateDomain>(0);
    swift_allocObject();
    v23 = specialized HealthStaticChartViewModel.init<A>(model:)(v15);

    result = outlined destroy of EmptyDateChartModel(a2, type metadata accessor for HealthChartsContext);
  }

  *a3 = v23;
  return result;
}

uint64_t outlined destroy of HealthStaticChartKey?(uint64_t a1)
{
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for HealthStaticChartKey?, type metadata accessor for HealthStaticChartKey, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for HealthStaticChartKey()
{
  result = lazy cache variable for type metadata for HealthStaticChartKey;
  if (!lazy cache variable for type metadata for HealthStaticChartKey)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HealthStaticChartKey);
  }

  return result;
}

uint64_t HealthStaticChart<>.init<A>(key:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a5;
  v9 = type metadata accessor for HealthChartsContext(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HealthChartModel(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v29 - v24);
  (*(v15 + 16))(v18, a1, a3, v23);
  v26 = type metadata accessor for HealthChartsData();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  _s12HealthCharts0aB7ContextVWOcTm_0(a2, v11, type metadata accessor for HealthChartsContext);
  HealthChartModel.init<A>(_:providedData:context:)(v18, v14, v11, a3, a4, v25);
  _s12HealthCharts0aB7ContextVWOcTm_0(v25, v21, type metadata accessor for HealthChartModel);
  type metadata accessor for HealthStaticChartViewModel<DateDomain>(0);
  swift_allocObject();
  v27 = specialized HealthStaticChartViewModel.init<A>(model:)(v21);
  outlined destroy of EmptyDateChartModel(a2, type metadata accessor for HealthChartsContext);
  (*(v15 + 8))(a1, a3);
  result = outlined destroy of EmptyDateChartModel(v25, type metadata accessor for HealthChartModel);
  *v30 = v27;
  return result;
}

uint64_t HealthStaticChart<>.init(_:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthChartsContext(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = a1;
  v10 = MEMORY[0x2530763A0]();
  _s12HealthCharts0aB7ContextVWOcTm_0(a2, v8, type metadata accessor for HealthChartsContext);
  HealthStaticChart<>.init(objectType:context:)(v10, v8, &v13);

  result = outlined destroy of EmptyDateChartModel(a2, type metadata accessor for HealthChartsContext);
  *a3 = v13;
  return result;
}

uint64_t HealthStaticChart<>.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = type metadata accessor for HealthChartModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12HealthCharts0aB7ContextVWOcTm_0(a1, v6, type metadata accessor for HealthChartModel);
  type metadata accessor for HealthStaticChartViewModel<DateDomain>(0);
  swift_allocObject();
  v7 = specialized HealthStaticChartViewModel.init<A>(model:)(v6);
  result = outlined destroy of EmptyDateChartModel(a1, type metadata accessor for HealthChartModel);
  *a2 = v7;
  return result;
}

uint64_t HealthStaticChart<>.init<A>(key:data:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v36 = a2;
  v37 = a5;
  v35 = a1;
  v38 = a6;
  v9 = type metadata accessor for HealthChartsContext(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  v34 = a4;
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HealthChartModel(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v33 - v24);
  (*(v15 + 16))(v18, a1, a4, v23);
  v26 = type metadata accessor for HealthChartsData();
  v27 = *(v26 - 8);
  v28 = v36;
  (*(v27 + 16))(v14, v36, v26);
  (*(v27 + 56))(v14, 0, 1, v26);
  _s12HealthCharts0aB7ContextVWOcTm_0(a3, v11, type metadata accessor for HealthChartsContext);
  v29 = v11;
  v30 = v34;
  HealthChartModel.init<A>(_:providedData:context:)(v18, v14, v29, v34, v37, v25);
  _s12HealthCharts0aB7ContextVWOcTm_0(v25, v21, type metadata accessor for HealthChartModel);
  type metadata accessor for HealthStaticChartViewModel<DateDomain>(0);
  swift_allocObject();
  v31 = specialized HealthStaticChartViewModel.init<A>(model:)(v21);
  outlined destroy of EmptyDateChartModel(a3, type metadata accessor for HealthChartsContext);
  (*(v27 + 8))(v28, v26);
  (*(v15 + 8))(v35, v30);
  result = outlined destroy of EmptyDateChartModel(v25, type metadata accessor for HealthChartModel);
  *v38 = v31;
  return result;
}

uint64_t specialized HealthStaticChartViewModel.data.setter(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HealthChartsData();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = direct field offset for HealthStaticChartViewModel._data;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData, MEMORY[0x277D102A8], MEMORY[0x277D102B0]);
  v15[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (a1)
  {
    v9(v7, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    v15[-2] = type metadata accessor for DateDomain(0);
    v15[-1] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<DateDomain> and conformance HealthStaticChartViewModel<A>, type metadata accessor for HealthStaticChartViewModel<DateDomain>, &protocol conformance descriptor for HealthStaticChartViewModel<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v10(v15[0], v4);
}

{
  v2 = v1;
  v4 = type metadata accessor for HealthChartsData();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = direct field offset for HealthStaticChartViewModel._data;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData, MEMORY[0x277D102A8], MEMORY[0x277D102B0]);
  v15[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (a1)
  {
    v9(v7, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    v15[-2] = &type metadata for ScalarDomain;
    v15[-1] = lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<ScalarDomain> and conformance HealthStaticChartViewModel<A>, &lazy cache variable for type metadata for HealthStaticChartViewModel<ScalarDomain>, type metadata accessor for HealthStaticChartViewModel, &protocol conformance descriptor for HealthStaticChartViewModel<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v10(v15[0], v4);
}

uint64_t specialized closure #1 in HealthStaticChartViewModel.data.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsData();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = direct field offset for HealthStaticChartViewModel._data;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t *specialized HealthStaticChartViewModel.init<A>(model:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x28223BE20](v4);
  v36 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v30);
  v9 = type metadata accessor for DispatchQoS();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for HealthChartsData();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  (*(v16 + 32))(v2 + direct field offset for HealthStaticChartViewModel._data, v18, v15);
  *(v2 + *(*v2 + 120)) = 0;
  ObservationRegistrar.init()();
  v2[5] = type metadata accessor for HealthChartModel(0);
  v2[6] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthChartModel and conformance HealthChartModel, type metadata accessor for HealthChartModel, &protocol conformance descriptor for HealthChartModel);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  v29 = a1;
  _s12HealthCharts0aB7ContextVWOcTm_0(a1, boxed_opaque_existential_1, type metadata accessor for HealthChartModel);
  HealthChartModel.attributes()(v14);
  outlined init with take of HealthChartsAttributes<DateDomain>(v14, v2 + *(*v2 + 112));
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v20 = MEMORY[0x277D85230];
  v21 = MEMORY[0x277D83940];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], MEMORY[0x277D85230], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], v20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v32 + 104))(v31, *MEMORY[0x277D85260], v33);
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  aBlock[4] = partial apply for specialized closure #1 in HealthStaticChartViewModel.init<A>(model:);
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_33;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v24 = MEMORY[0x277D85198];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x277D85198], v21);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v24);
  v25 = v36;
  v26 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2530763F0](0, v11, v25, v23);
  _Block_release(v23);

  outlined destroy of EmptyDateChartModel(v29, type metadata accessor for HealthChartModel);
  (*(v38 + 8))(v25, v26);
  (*(v34 + 8))(v11, v35);

  return v2;
}

{
  v35 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  MEMORY[0x28223BE20](v3);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v8);
  v34[1] = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = (v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for HealthChartsData();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  (*(v18 + 32))(v1 + direct field offset for HealthStaticChartViewModel._data, v20, v17);
  *(v1 + *(*v1 + 120)) = 0;
  ObservationRegistrar.init()();
  v1[5] = type metadata accessor for EmptyDateChartModel(0);
  v1[6] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type EmptyDateChartModel and conformance EmptyDateChartModel, type metadata accessor for EmptyDateChartModel, &protocol conformance descriptor for EmptyDateChartModel);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  _s12HealthCharts0aB7ContextVWOcTm_0(a1, boxed_opaque_existential_1, type metadata accessor for EmptyDateChartModel);
  static ChartAttributes.empty<>()(v16);
  v22 = (v16 + *(v14 + 44));
  type metadata accessor for BasicChartModel<ScalarDomain>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription, type metadata accessor for DescriptionMessage);
  v22[3] = v23;
  v22[4] = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  *v22 = 0;
  v22[1] = 0;
  v24 = MEMORY[0x277D84F90];
  *(v16 + *(v14 + 48)) = MEMORY[0x277D84F90];
  v25 = v24;
  outlined init with take of HealthChartsAttributes<DateDomain>(v16, v1 + *(*v1 + 112));
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = v25;
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v26 = MEMORY[0x277D85230];
  v27 = MEMORY[0x277D83940];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], MEMORY[0x277D85230], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], v26);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v36, *MEMORY[0x277D85260], v38);
  v28 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  aBlock[4] = partial apply for specialized closure #1 in HealthStaticChartViewModel.init<A>(model:);
  v46 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_36;
  v29 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v44 = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v30 = MEMORY[0x277D85198];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x277D85198], v27);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v30);
  v31 = v41;
  v32 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2530763F0](0, v12, v31, v29);
  _Block_release(v29);

  outlined destroy of EmptyDateChartModel(v35, type metadata accessor for EmptyDateChartModel);
  (*(v43 + 8))(v31, v32);
  (*(v39 + 8))(v12, v40);

  return v1;
}

{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v35 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v30 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v8);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HealthChartsData();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  (*(v14 + 32))(v1 + direct field offset for HealthStaticChartViewModel._data, v16, v13);
  *(v1 + *(*v1 + 120)) = 0;
  ObservationRegistrar.init()();
  type metadata accessor for BasicChartModel<DateDomain>(0);
  v18 = v17;
  v1[5] = v17;
  v1[6] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type BasicChartModel<DateDomain> and conformance BasicChartModel<A>, type metadata accessor for BasicChartModel<DateDomain>, &protocol conformance descriptor for BasicChartModel<A>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  v29 = a1;
  _s12HealthCharts0aB7ContextVWOcTm_0(a1, boxed_opaque_existential_1, type metadata accessor for BasicChartModel<DateDomain>);
  _s12HealthCharts0aB7ContextVWOcTm_0(a1 + *(v18 + 36), v1 + *(*v1 + 112), type metadata accessor for HealthChartsAttributes<DateDomain>);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v20 = MEMORY[0x277D85230];
  v21 = MEMORY[0x277D83940];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], MEMORY[0x277D85230], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], v20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v30, *MEMORY[0x277D85260], v32);
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  aBlock[4] = partial apply for specialized closure #1 in HealthStaticChartViewModel.init<A>(model:);
  v40 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_20;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v38 = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v24 = MEMORY[0x277D85198];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x277D85198], v21);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v24);
  v26 = v35;
  v25 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2530763F0](0, v12, v26, v23);
  _Block_release(v23);

  outlined destroy of EmptyDateChartModel(v29, type metadata accessor for BasicChartModel<DateDomain>);
  (*(v37 + 8))(v26, v25);
  (*(v33 + 8))(v12, v34);

  return v1;
}

{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v8);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HealthChartsData();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  (*(v14 + 32))(v1 + direct field offset for HealthStaticChartViewModel._data, v16, v13);
  *(v1 + *(*v1 + 120)) = 0;
  ObservationRegistrar.init()();
  type metadata accessor for BasicChartModel<ScalarDomain>(0, &lazy cache variable for type metadata for BasicChartModel<ScalarDomain>, lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain, &type metadata for ScalarDomain, type metadata accessor for BasicChartModel);
  v18 = v17;
  v1[5] = v17;
  v1[6] = lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(&lazy protocol witness table cache variable for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>, &lazy cache variable for type metadata for BasicChartModel<ScalarDomain>, type metadata accessor for BasicChartModel, &protocol conformance descriptor for BasicChartModel<A>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  v29 = a1;
  outlined init with copy of HealthChartsAttributes<ScalarDomain>(a1, boxed_opaque_existential_1, &lazy cache variable for type metadata for BasicChartModel<ScalarDomain>, type metadata accessor for BasicChartModel);
  outlined init with copy of HealthChartsAttributes<ScalarDomain>(a1 + *(v18 + 36), v1 + *(*v1 + 112), &lazy cache variable for type metadata for HealthChartsAttributes<ScalarDomain>, type metadata accessor for HealthChartsAttributes);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v20 = MEMORY[0x277D85230];
  v21 = MEMORY[0x277D83940];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], MEMORY[0x277D85230], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], v20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v32 + 104))(v31, *MEMORY[0x277D85260], v33);
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  aBlock[4] = partial apply for specialized closure #1 in HealthStaticChartViewModel.init<A>(model:);
  v41 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_2;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v24 = MEMORY[0x277D85198];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x277D85198], v21);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v24);
  v26 = v36;
  v25 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2530763F0](0, v12, v26, v23);
  _Block_release(v23);

  outlined destroy of BasicChartModel<ScalarDomain>(v29);
  (*(v38 + 8))(v26, v25);
  (*(v34 + 8))(v12, v35);

  return v1;
}

uint64_t outlined init with copy of HealthChartsAttributes<ScalarDomain>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for BasicChartModel<ScalarDomain>(0, a3, lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain, &type metadata for ScalarDomain, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HealthStaticChartKey?(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for HealthStaticChartKey?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of BasicChartModel<ScalarDomain>(uint64_t a1)
{
  type metadata accessor for BasicChartModel<ScalarDomain>(0, &lazy cache variable for type metadata for BasicChartModel<ScalarDomain>, lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain, &type metadata for ScalarDomain, type metadata accessor for BasicChartModel);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized HealthStaticChartViewModel.update(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20[0] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HealthChartsData();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v20[1];
  (*(v12 + 32))(v16 + v15, v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = v21;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v22;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v18 = MEMORY[0x277D85198];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x277D85198], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v18);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2530763F0](0, v10, v7, v17);
  _Block_release(v17);

  (*(v25 + 8))(v7, v5);
  (*(v23 + 8))(v10, v24);
}

uint64_t specialized closure #1 in HealthStaticChartViewModel.update(data:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = type metadata accessor for HealthChartsData();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v8, a2, v5);
  a3(v8);
}

uint64_t specialized HealthStaticChartViewModel.queryData()(__n128 a1)
{
  v2 = v1;
  v3 = *(*v1 + 120);
  v4 = swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    *(v2 + v3) = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v4);
    type metadata accessor for DateDomain(0);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[0] = v2;
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<DateDomain> and conformance HealthStaticChartViewModel<A>, type metadata accessor for HealthStaticChartViewModel<DateDomain>, &protocol conformance descriptor for HealthStaticChartViewModel<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  MEMORY[0x28223BE20](v4);
  type metadata accessor for DateDomain(0);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
  swift_getKeyPath();
  v11[0] = v2;
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<DateDomain> and conformance HealthStaticChartViewModel<A>, type metadata accessor for HealthStaticChartViewModel<DateDomain>, &protocol conformance descriptor for HealthStaticChartViewModel<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of HealthStaticChartKey(v2 + 16, v11);
  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(v7 + 40);

  v9(partial apply for specialized closure #1 in HealthStaticChartViewModel.queryData(), v8, v6, v7);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v2 = v1;
  v3 = *(*v1 + 120);
  v4 = swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    *(v2 + v3) = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v4);
    lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[0] = v2;
    lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<ScalarDomain> and conformance HealthStaticChartViewModel<A>, &lazy cache variable for type metadata for HealthStaticChartViewModel<ScalarDomain>, type metadata accessor for HealthStaticChartViewModel, &protocol conformance descriptor for HealthStaticChartViewModel<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  MEMORY[0x28223BE20](v4);
  lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
  swift_getKeyPath();
  v11[0] = v2;
  lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<ScalarDomain> and conformance HealthStaticChartViewModel<A>, &lazy cache variable for type metadata for HealthStaticChartViewModel<ScalarDomain>, type metadata accessor for HealthStaticChartViewModel, &protocol conformance descriptor for HealthStaticChartViewModel<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of HealthStaticChartKey(v2 + 16, v11);
  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(v7 + 40);

  v9(partial apply for specialized closure #1 in HealthStaticChartViewModel.queryData(), v8, v6, v7);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

__n128 sub_251432FEC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BasicChartModel<ScalarDomain>(255, a2, lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain, &type metadata for ScalarDomain, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251433070()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t specialized closure #1 in HealthStaticChartViewModel.queryData()(uint64_t a1, uint64_t a2, __n128 a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(*Strong + 120);
    v7 = swift_beginAccess();
    if (*(v5 + v6))
    {
      MEMORY[0x28223BE20](v7);
      type metadata accessor for DateDomain(0);
      _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<DateDomain> and conformance HealthStaticChartViewModel<A>, type metadata accessor for HealthStaticChartViewModel<DateDomain>, &protocol conformance descriptor for HealthStaticChartViewModel<A>);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v5 + v6) = 0;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized HealthStaticChartViewModel.update(data:)(a1, &unk_28636B198, partial apply for specialized closure #1 in HealthStaticChartViewModel.update(data:), &block_descriptor_30);
  }

  return result;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(*Strong + 120);
    v7 = swift_beginAccess();
    if (*(v5 + v6))
    {
      MEMORY[0x28223BE20](v7);
      lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<ScalarDomain> and conformance HealthStaticChartViewModel<A>, &lazy cache variable for type metadata for HealthStaticChartViewModel<ScalarDomain>, type metadata accessor for HealthStaticChartViewModel, &protocol conformance descriptor for HealthStaticChartViewModel<A>);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v5 + v6) = 0;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized HealthStaticChartViewModel.update(data:)(a1, &unk_28636B0F8, partial apply for specialized closure #1 in HealthStaticChartViewModel.update(data:), &block_descriptor_12);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in HealthStaticChartViewModel.queryData()(uint64_t a1, __n128 a2)
{
  return specialized closure #1 in HealthStaticChartViewModel.queryData()(a1, v2, a2);
}

{
  return specialized closure #1 in HealthStaticChartViewModel.queryData()(a1, v2, a2);
}

uint64_t partial apply for specialized closure #1 in HealthStaticChartViewModel.update(data:)()
{
  return partial apply for specialized closure #1 in HealthStaticChartViewModel.update(data:)(specialized HealthStaticChartViewModel.data.setter);
}

{
  return partial apply for specialized closure #1 in HealthStaticChartViewModel.update(data:)(specialized HealthStaticChartViewModel.data.setter);
}

void type metadata accessor for HealthStaticChartViewModel<DateDomain>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateDomain(255);
    v7 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined destroy of EmptyDateChartModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for specialized closure #1 in HealthStaticChartViewModel.isLoading.setter(__n128 a1)
{
  return partial apply for specialized closure #1 in HealthStaticChartViewModel.isLoading.setter(a1);
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(*v2 + 120);
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for HealthChartsData();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in HealthStaticChartViewModel.data.setter()
{
  return specialized closure #1 in HealthStaticChartViewModel.data.setter(*(v0 + 16), *(v0 + 24));
}

{
  return partial apply for specialized closure #1 in HealthStaticChartViewModel.data.setter();
}

uint64_t outlined init with take of HealthChartsAttributes<DateDomain>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s12HealthCharts0aB7ContextVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for BasicChartModel<ScalarDomain>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

id static HealthChartsColor.hk_bodyMeasurementsKeyColor.getter()
{
  v0 = [objc_opt_self() systemPurpleColor];

  return v0;
}

id static HealthChartsColor.hk_heartKeyColor.getter()
{
  v0 = [objc_opt_self() systemPinkColor];

  return v0;
}

id static HealthChartsColor.hk_respiratoryKeyColor.getter()
{
  v0 = [objc_opt_self() systemCyanColor];

  return v0;
}

id static HealthChartsColor.hk_nutritionKeyColor.getter()
{
  v0 = [objc_opt_self() systemGreenColor];

  return v0;
}

id static HealthChartsColor.hk_sleepKeyColor.getter()
{
  v0 = [objc_opt_self() systemIndigoColor];

  return v0;
}

id static HealthChartsColor.hk_profileKeyColor.getter()
{
  v0 = [objc_opt_self() systemGrayColor];

  return v0;
}

id static HealthChartsColor.hk_mindfulnessKeyColor.getter()
{
  v0 = [objc_opt_self() systemMintColor];

  return v0;
}

id static HealthChartsColor.hk_hearingHealthKeyColor.getter()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

id static HealthChartsColor.hk_mobilityKeyColor.getter()
{
  v0 = [objc_opt_self() systemOrangeColor];

  return v0;
}

id static HealthChartsColor.hk_devicesClinicalKeyColor.getter()
{
  v0 = [objc_opt_self() systemRedColor];

  return v0;
}

id specialized static HealthChartsColor.hk_namedColor(_:)(uint64_t a1, uint64_t a2)
{
  if (_UIApplicationIsExtension())
  {
    v4 = objc_opt_self();
    v5 = &selRef_systemBlueColor;
  }

  else
  {
    if (one-time initialization token for bundle != -1)
    {
      swift_once();
    }

    v6 = static HealthChartsBundle.bundle;
    v7 = MEMORY[0x253076160](a1, a2);
    v8 = objc_opt_self();
    v9 = [v8 colorNamed:v7 inBundle:v6 compatibleWithTraitCollection:0];

    if (v9)
    {
      return v9;
    }

    v5 = &selRef_blackColor;
    v4 = v8;
  }

  v11 = [v4 *v5];

  return v11;
}

void CategoryLevel.localizedMessage(for:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = a2;
  v4 = type metadata accessor for HealthChartsData.DescriptionKey();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  type metadata accessor for HealthChartsData.Description?(0, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = v2[1];
  v38 = *v2;
  v39 = v15;
  v40 = v2[2];
  type metadata accessor for DescriptionContext(0);
  v43 = a1;
  HealthChartsData.description.getter();
  v16 = type metadata accessor for HealthChartsData.Description();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v14, 1, v16) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v14, v19);
    v20 = v42;
  }

  else
  {
    v21 = HealthChartsData.Description.substitutionValues.getter();
    (*(v17 + 8))(v14, v16);
    v20 = v42;
    (*(v42 + 104))(v8, *MEMORY[0x277D10250], v4);
    if (*(v21 + 16))
    {
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v23)
      {
        v24 = *(*(v21 + 56) + 8 * v22);
        (*(v20 + 8))(v8, v4);

        v45 = v38;
        v46 = v39;
        v47 = v40;
        CategoryLevel.message(currentValue:context:)(v43, v48, v24);
        goto LABEL_12;
      }
    }

    (*(v20 + 8))(v8, v4);
  }

  v25 = v43;
  HealthChartsData.description.getter();
  if (v18(v11, 1, v16) != 1)
  {
    v27 = HealthChartsData.Description.substitutionValues.getter();
    (*(v17 + 8))(v11, v16);
    v28 = v41;
    (*(v20 + 104))(v41, *MEMORY[0x277D10278], v4);
    if (!*(v27 + 16) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v30 & 1) == 0))
    {

      (*(v20 + 8))(v28, v4);
      goto LABEL_14;
    }

    v31 = *(*(v27 + 56) + 8 * v29);
    (*(v20 + 8))(v28, v4);

    v45 = v38;
    v46 = v39;
    v47 = v40;
    v32.n128_u64[0] = v31;
    CategoryLevel.message(count:context:)(v25, v48, v32);
LABEL_12:
    v33 = v48[1];
    v34 = v44;
    *v44 = v48[0];
    v34[1] = v33;
    v35 = v48[3];
    v34[2] = v48[2];
    v34[3] = v35;
    return;
  }

  outlined destroy of HealthChartsData.Description?(v11, v26);
LABEL_14:
  v36 = v44;
  v44[2] = 0u;
  v36[3] = 0u;
  *v36 = 0u;
  v36[1] = 0u;
}

uint64_t outlined destroy of HealthChartsData.Description?(uint64_t a1, __n128 a2)
{
  type metadata accessor for HealthChartsData.Description?(0, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], MEMORY[0x277D83D88]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CategoryLevel.message(currentValue:context:)@<X0>(uint64_t result@<X0>, void *a2@<X8>, double a3@<D0>)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v3[2];
  if (!*(v5 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v3;
  v6 = v3[1];
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if (v8)
  {
    v9 = (*(v5 + 56) + 16 * result);
    v11 = *v9;
    v10 = v9[1];

    result = DescriptionContext.DataXScale.dateString.getter();
    *a2 = v7;
    a2[1] = v6;
    a2[2] = v11;
    a2[3] = v10;
    a2[4] = 0;
    a2[5] = 0;
    a2[6] = result;
    a2[7] = v12;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

double CategoryLevel.message(count:context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v32 = a1;
  v3 = a3.n128_u64[0];
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle<Double>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v18 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v20;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  type metadata accessor for ClosedRange<Int>();
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  v33 = 0;
  v34 = 0;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  MEMORY[0x253075120](v8, v10);
  (*(v6 + 8))(v8, v5);
  v21 = *(v11 + 8);
  v21(v13, v10);
  v33 = v3;
  v22 = FloatingPointFormatStyle.format(_:)();
  v24 = v23;
  v25 = DescriptionContext.DataXScale.dateString.getter();
  v27 = v26;
  v21(v16, v10);
  v28 = v31;
  *a2 = v19;
  *(a2 + 8) = v28;
  *(a2 + 16) = v22;
  *(a2 + 24) = v24;
  result = 1.72631378e-306;
  *(a2 + 32) = xmmword_25145FA50;
  *(a2 + 48) = v25;
  *(a2 + 56) = v27;
  return result;
}

uint64_t CategoryLevel.content(with:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *v16 = *v2;
  *&v16[8] = *(v2 + 8);
  CategoryLevel.localizedMessage(for:)(a1, &v19);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v6 = v24;
    v5 = v25;
    v8 = v22;
    v7 = v23;
    v10 = v20;
    v9 = v21;
    v11 = v19;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  *v16 = v11;
  *&v16[8] = *(&v19 + 1);
  *&v16[16] = v10;
  *&v16[24] = v9;
  *&v17 = v8;
  *(&v17 + 1) = v7;
  *&v18 = v6;
  *(&v18 + 1) = v5;
  v12 = *&v16[16];
  *a2 = *v16;
  a2[1] = v12;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  *&v19 = v11;
  *(&v19 + 1) = v4;
  v20 = v10;
  v21 = v9;
  v22 = v8;
  v23 = v7;
  v24 = v6;
  v25 = v5;
  outlined init with copy of CommonChartDescription?(v16, &v15);
  return outlined destroy of CommonChartDescription?(&v19);
}

void type metadata accessor for CommonChartDescription?()
{
  if (!lazy cache variable for type metadata for CommonChartDescription?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CommonChartDescription?);
    }
  }
}

uint64_t outlined destroy of CommonChartDescription?(uint64_t a1)
{
  type metadata accessor for CommonChartDescription?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for CategoryLevel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CategoryLevel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CategoryLevel(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void type metadata accessor for HealthChartsData.Description?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t AverageQuantity.localizedMessage(for:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for HealthChartsData.Series();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  type metadata accessor for HealthChartsUnit?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v57 - v7;
  v8 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle<Double>(0);
  v68 = v10;
  v71 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v57 - v13;
  v14 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = type metadata accessor for HealthChartsData.DescriptionKey();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], v5);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v57 - v21;
  type metadata accessor for DescriptionContext(0);
  v69 = a1;
  HealthChartsData.description.getter();
  v23 = type metadata accessor for HealthChartsData.Description();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v22, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], MEMORY[0x277D83D88], type metadata accessor for HealthChartsUnit?);
LABEL_8:
    type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_25145AB10;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v42 = String.init(localized:table:bundle:locale:comment:)();
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    print(_:separator:terminator:)();

    v45 = v72;
    v72[2] = 0u;
    v45[3] = 0u;
    *v45 = 0u;
    v45[1] = 0u;
    return result;
  }

  v25 = HealthChartsData.Description.substitutionValues.getter();
  (*(v24 + 8))(v22, v23);
  (*(v17 + 104))(v19, *MEMORY[0x277D10280], v16);
  if (!*(v25 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v27 & 1) == 0))
  {

    (*(v17 + 8))(v19, v16);
    goto LABEL_8;
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  (*(v17 + 8))(v19, v16);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v58 = v30;
  v59 = v29;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  v31 = v60;
  FloatingPointFormatStyle.init(locale:)();
  v73 = xmmword_25145FAF0;
  type metadata accessor for ClosedRange<Int>();
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  v32 = v61;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  v33 = v68;
  MEMORY[0x253075120](v32, v68);
  (*(v62 + 8))(v32, v63);
  v34 = *(v71 + 8);
  v71 += 8;
  v34(v31, v33);
  v35 = v64;
  HealthChartsData.series.getter();
  v36 = v67;
  HealthChartsData.Series.unit.getter();
  (*(v65 + 8))(v35, v66);
  v37 = type metadata accessor for HealthChartsUnit();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v36, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88], type metadata accessor for HealthChartsUnit?);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    swift_getKeyPath();
    v46 = v36;
    v39 = HealthChartsUnit.subscript.getter();
    v40 = v47;

    (*(v38 + 8))(v46, v37);
  }

  *&v73 = v28;
  v48 = v70;
  v49 = FloatingPointFormatStyle.format(_:)();
  v51 = v50;
  v52 = DescriptionContext.DataXScale.dateString.getter();
  v54 = v53;
  result = (v34)(v48, v33);
  v55 = v72;
  v56 = v58;
  *v72 = v59;
  v55[1] = v56;
  v55[2] = v49;
  v55[3] = v51;
  v55[4] = v39;
  v55[5] = v40;
  v55[6] = v52;
  v55[7] = v54;
  return result;
}

uint64_t AverageQuantity.content(with:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  AverageQuantity.localizedMessage(for:)(a1, &v19);
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

unint64_t instantiation function for generic protocol witness table for AverageQuantity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZ06HealthA09BarSeriesVy10Foundation12DateIntervalVSNySdGGSg_AF03DotI0VyAI0K0VGSgATQP_Tt1g5@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for (BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?)(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?(0);
  lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?(&lazy protocol witness table cache variable for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?, lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>> and conformance BarSeries<A, B>);
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(*a1, v7, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?);
  type metadata accessor for DotSeries<Date>?(0);
  lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?(&lazy protocol witness table cache variable for type DotSeries<Date>? and conformance <A> A?, type metadata accessor for DotSeries<Date>?, lazy protocol witness table accessor for type DotSeries<Date> and conformance DotSeries<A>);
  v8 = *(v5 + 56);
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(a1[1], &v7[v8], type metadata accessor for DotSeries<Date>?);
  v9 = *(v5 + 72);
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(a1[2], &v7[v9], type metadata accessor for DotSeries<Date>?);
  outlined init with take of DotSeries<Date>(v7, a2, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?);
  outlined init with take of DotSeries<Date>(&v7[v8], a2 + *(v5 + 56), type metadata accessor for DotSeries<Date>?);
  return outlined init with take of DotSeries<Date>(&v7[v9], a2 + *(v5 + 72), type metadata accessor for DotSeries<Date>?);
}

uint64_t MinMaxSeries.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MinMaxSeries.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v6;
  v10 = v5;
  v7 = type metadata accessor for MinMaxSeriesViewModel(0, v9);
  return (*(*(v7 - 8) + 16))(a2, v2 + v4, v7);
}

uint64_t _s12HealthCharts12MinMaxSeriesV10seriesData10attributesACyxq_G0aB4Core0abG0V0eG0Vy_xq_G_AA0cdE10AttributesVtcfC10Foundation4DateV_SNySdGTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v33 = a1;
  v4 = a1;
  v34 = type metadata accessor for MinMaxSeriesAttributes(0) - 8;
  v6 = MEMORY[0x28223BE20](v34);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0, v6);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v31 = *(v11 + 16);
  v31(v13, v4, v10);
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(a2, v8, type metadata accessor for MinMaxSeriesAttributes);
  type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>(0, &lazy cache variable for type metadata for MinMaxSeries<Date, ClosedRange<Double>>, type metadata accessor for MinMaxSeries);
  v15 = a3 + *(v14 + 60);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, MEMORY[0x277D101B0]);
  AnySeriesData.xScale.getter();
  v16 = AnySeriesData.yScale.getter();
  v18 = v17;
  LOBYTE(v4) = v19;
  type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>(0, &lazy cache variable for type metadata for MinMaxSeriesViewModel<Date, ClosedRange<Double>>, type metadata accessor for MinMaxSeriesViewModel);
  v21 = v20;
  v22 = v15 + v20[15];
  *v22 = v16;
  *(v22 + 8) = v18;
  *(v22 + 16) = v4 & 1;
  HealthChartsData.SeriesData.aggregation.getter();
  HealthChartsData.SeriesData.unit.getter();
  v31((v15 + v21[18]), v13, v10);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
  HealthChartsData.SeriesData.transformed<A, B>(using:)();
  HealthChartsData.SeriesData.transformed<A, B>(using:)();
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v32, type metadata accessor for MinMaxSeriesAttributes);
  v23 = *(v11 + 8);
  v23(v33, v10);
  v23(v13, v10);
  v24 = v8[16];
  v25 = *(v8 + 3);
  v26 = v8[32];
  v27 = *(v8 + 5);
  v28 = v8[48];
  v29 = v15 + v21[21];
  *v29 = *v8;
  *(v29 + 16) = v24;
  *(v29 + 24) = v25;
  *(v29 + 32) = v26;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  return outlined init with take of DotSeries<Date>(&v8[*(v34 + 28)], v15 + v21[22], type metadata accessor for DotSeriesAttributes);
}

uint64_t MinMaxSeries.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  type metadata accessor for DotSeriesAttributes?(0);
  MEMORY[0x28223BE20](v3 - 8);
  v129 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DotSeries<Date>(0);
  v130 = *(v5 - 1);
  v131 = v5;
  MEMORY[0x28223BE20](v5);
  v128 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, Double>?(0);
  MEMORY[0x28223BE20](v7 - 8);
  v121 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = &v108 - v10;
  v11 = *(a1 + 16);
  v112 = *(a1 + 32);
  v12 = *(v112 + 8);
  *&v139 = v11;
  *(&v139 + 1) = MEMORY[0x277D839F8];
  v13 = v11;
  v111 = v11;
  *&v140 = v12;
  *(&v140 + 1) = MEMORY[0x277D10358];
  v137 = type metadata accessor for HealthChartsData.SeriesData();
  v119 = *(v137 - 1);
  MEMORY[0x28223BE20](v137);
  v118 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v115 = &v108 - v16;
  type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
  v138 = v17;
  v124 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v123 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v122 = &v108 - v20;
  MEMORY[0x28223BE20](v21);
  v117 = &v108 - v22;
  type metadata accessor for DotSeries<Date>?(0);
  MEMORY[0x28223BE20](v23 - 8);
  v127 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v126 = &v108 - v26;
  MEMORY[0x28223BE20](v27);
  v125 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v135 = &v108 - v30;
  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>(0);
  v114 = v31;
  v113 = *(v31 - 1);
  MEMORY[0x28223BE20](v31);
  v110 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a1 + 24);
  v37 = *(a1 + 40);
  *&v139 = v13;
  *(&v139 + 1) = v36;
  *&v140 = v12;
  *(&v140 + 1) = v37;
  v38 = type metadata accessor for HealthChartsData.SeriesData();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v108 - v41;
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0, v40);
  v44 = v43;
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v109 = &v108 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v108 - v48;
  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?(0);
  MEMORY[0x28223BE20](v50 - 8);
  v120 = &v108 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v136 = &v108 - v53;
  v54 = *(a1 + 48);
  *&v55 = v111;
  *(&v55 + 1) = v36;
  *&v56 = v112;
  *(&v56 + 1) = v37;
  v57 = v134 + *(a1 + 60);
  v140 = v56;
  v139 = v55;
  v141 = v54;
  v58 = type metadata accessor for MinMaxSeriesViewModel(0, &v139);
  (*(v39 + 16))(v42, &v57[v58[18]], v38);
  v59 = swift_dynamicCast();
  v60 = *(v45 + 56);
  if (v59)
  {
    v60(v35, 0, 1, v44);
    (*(v45 + 32))(v49, v35, v44);
    v61 = v109;
    (*(v45 + 16))(v109, v49, v44);
    v62 = &v57[v58[21]];
    v63 = *(v62 + 1);
    v64 = *(v62 + 3);
    v65 = v62[32];
    v66 = *(v62 + 5);
    v67 = v62[48];
    v68 = v62[16];
    *&v139 = *v62;
    *(&v139 + 1) = v63;
    LOBYTE(v140) = v68;
    *(&v140 + 1) = v64;
    LOBYTE(v141) = v65;
    v142 = v66;
    v143 = v67;
    outlined copy of AttributeColor(v139, v63, v68);
    v69 = v110;
    BarSeries.init<>(_:attributes:)(v61, &v139, v110);
    (*(v45 + 8))(v49, v44);
    v70 = v136;
    outlined init with take of DotSeries<Date>(v69, v136, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>);
    v71 = 0;
    v72 = v70;
  }

  else
  {
    v71 = 1;
    v60(v35, 1, 1, v44);
    outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v35, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>?);
    v72 = v136;
  }

  (*(v113 + 56))(v72, v71, 1, v114);
  v73 = v58[19];
  v74 = v57;
  v114 = v119[2];
  v114(v115, &v57[v73], v137);
  v75 = v116;
  v76 = v138;
  v77 = swift_dynamicCast();
  v78 = v124;
  v79 = *(v124 + 56);
  v119 = v79;
  v133 = v74;
  v134 = v58;
  if (v77)
  {
    (v79)(v75, 0, 1, v76);
    v80 = v117;
    (*(v78 + 32))(v117, v75, v76);
    v81 = *(v78 + 16);
    v82 = v122;
    v81(v122, v80, v138);
    v83 = v129;
    outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(&v74[v58[22]], v129, type metadata accessor for DotSeriesAttributes);
    v84 = type metadata accessor for DotSeriesAttributes(0);
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
    v85 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v85);
    *(&v108 - 2) = v82;
    v115 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E00I4MarkVs5NeverOTg5(closure #1 in DotSeries.init<>(seriesData:attributes:)partial apply, (&v108 - 4), v85);
    v116 = 0;

    v86 = v131;
    v87 = v128;
    v81(&v128[v131[13]], v82, v138);
    outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(v83, v87 + v86[14], type metadata accessor for DotSeriesAttributes?);
    UUID.init()();
    outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v83, type metadata accessor for DotSeriesAttributes?);
    v88 = *(v78 + 8);
    v88(v117, v138);
    *(v87 + v86[15]) = v115;
    v88(v82, v138);
    v76 = v138;
    v89 = v135;
    outlined init with take of DotSeries<Date>(v87, v135, type metadata accessor for DotSeries<Date>);
    v90 = 0;
    v91 = v130;
  }

  else
  {
    v90 = 1;
    (v79)(v75, 1, 1, v76);
    outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v75, type metadata accessor for HealthChartsData.SeriesData<Date, Double>?);
    v116 = 0;
    v91 = v130;
    v86 = v131;
    v89 = v135;
  }

  v92 = v121;
  v138 = *(v91 + 56);
  v138(v89, v90, 1, v86);
  v114(v118, &v133[v134[20]], v137);
  if (swift_dynamicCast())
  {
    (v119)(v92, 0, 1, v76);
    v93 = v123;
    (*(v78 + 32))(v123, v92, v76);
    v137 = *(v78 + 16);
    v94 = v122;
    (v137)(v122, v93, v76);
    v95 = v129;
    outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(&v133[v134[22]], v129, type metadata accessor for DotSeriesAttributes);
    v96 = type metadata accessor for DotSeriesAttributes(0);
    (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
    v97 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v97);
    *(&v108 - 2) = v94;
    v98 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E00I4MarkVs5NeverOTg5(partial apply for closure #1 in DotSeries.init<>(seriesData:attributes:), (&v108 - 4), v97);

    v89 = v135;
    v99 = v128;
    (v137)(&v128[v86[13]], v94, v76);
    outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(v95, v99 + v86[14], type metadata accessor for DotSeriesAttributes?);
    UUID.init()();
    outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v95, type metadata accessor for DotSeriesAttributes?);
    v100 = *(v78 + 8);
    v100(v123, v76);
    *(v99 + v86[15]) = v98;
    v100(v94, v76);
    v101 = v125;
    outlined init with take of DotSeries<Date>(v99, v125, type metadata accessor for DotSeries<Date>);
    v102 = 0;
  }

  else
  {
    v102 = 1;
    (v119)(v92, 1, 1, v76);
    outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v92, type metadata accessor for HealthChartsData.SeriesData<Date, Double>?);
    v101 = v125;
  }

  v138(v101, v102, 1, v86);
  v103 = v136;
  v104 = v120;
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(v136, v120, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?);
  *&v139 = v104;
  v105 = v126;
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(v89, v126, type metadata accessor for DotSeries<Date>?);
  *(&v139 + 1) = v105;
  v106 = v127;
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(v101, v127, type metadata accessor for DotSeries<Date>?);
  *&v140 = v106;
  _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZ06HealthA09BarSeriesVy10Foundation12DateIntervalVSNySdGGSg_AF03DotI0VyAI0K0VGSgATQP_Tt1g5(&v139, v132);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v101, type metadata accessor for DotSeries<Date>?);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v89, type metadata accessor for DotSeries<Date>?);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v103, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v106, type metadata accessor for DotSeries<Date>?);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v105, type metadata accessor for DotSeries<Date>?);
  return outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v104, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?);
}

void type metadata accessor for HealthChartsData.SeriesData<Date, Double>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, Double>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    v1 = type metadata accessor for HealthChartsData.SeriesData();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, Double>);
    }
  }
}

uint64_t outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of DotSeries<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MinMaxSeries.init<>(_:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MinMaxSeriesAttributes(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0, v7);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(a2, v9, type metadata accessor for MinMaxSeriesAttributes);
  _s12HealthCharts12MinMaxSeriesV10seriesData10attributesACyxq_G0aB4Core0abG0V0eG0Vy_xq_G_AA0cdE10AttributesVtcfC10Foundation4DateV_SNySdGTt2g5(v15, v9, a3);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(a2, type metadata accessor for MinMaxSeriesAttributes);
  return (*(v12 + 8))(a1, v11);
}

uint64_t outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MinMaxSeriesViewModel.xScale.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

uint64_t MinMaxSeriesViewModel.aggregation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t instantiation function for generic protocol witness table for MinMaxSeries<A, B>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MinMaxSeries(uint64_t a1)
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
    result = type metadata accessor for MinMaxSeriesViewModel(319, v7);
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

uint64_t sub_25143728C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a3 + 48);
    v11 = *(a3 + 32);
    v13[0] = *(a3 + 16);
    v13[1] = v11;
    v14 = v10;
    v12 = type metadata accessor for MinMaxSeriesViewModel(0, v13);
    return (*(*(v12 - 8) + 48))(a1 + *(a3 + 60), a2, v12);
  }
}

uint64_t sub_2514373A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = *(a4 + 48);
    v13 = *(a4 + 32);
    v15[0] = *(a4 + 16);
    v15[1] = v13;
    v16 = v12;
    v14 = type metadata accessor for MinMaxSeriesViewModel(0, v15);
    return (*(*(v14 - 8) + 56))(a1 + *(a4 + 60), a2, a2, v14);
  }
}

void type metadata completion function for MinMaxSeriesViewModel(void *a1, __n128 a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    type metadata accessor for DotSeriesAttributes?(319, &lazy cache variable for type metadata for ClosedRange<Double>?, type metadata accessor for ClosedRange<Double>);
    if (v3 <= 0x3F)
    {
      type metadata accessor for HealthChartsData.Aggregation();
      if (v4 <= 0x3F)
      {
        type metadata accessor for DotSeriesAttributes?(319, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
        if (v5 <= 0x3F)
        {
          type metadata accessor for HealthChartsData.SeriesData();
          if (v6 <= 0x3F)
          {
            type metadata accessor for HealthChartsData.SeriesData();
            if (v7 <= 0x3F)
            {
              type metadata accessor for DotSeriesAttributes(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2514376D0(uint64_t a1, uint64_t a2, int *a3, __n128 a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
  }

  else
  {
    v12 = type metadata accessor for HealthChartsData.Aggregation();
    if (*(*(v12 - 8) + 84) == a2)
    {
      v9 = v12;
      v13 = *(v12 - 8);
      v14 = a3[16];
    }

    else
    {
      type metadata accessor for DotSeriesAttributes?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
      if (*(*(v15 - 8) + 84) != a2)
      {
        v17 = type metadata accessor for HealthChartsData.SeriesData();
        if (*(*(v17 - 8) + 84) == a2)
        {
          v18 = v17;
          v19 = *(v17 - 8);
          v20 = a3[18];
        }

        else
        {
          v21 = type metadata accessor for HealthChartsData.SeriesData();
          if (*(*(v21 - 8) + 84) != a2)
          {
            if (a2 == 253)
            {
              v22 = *(a1 + a3[21] + 16);
              if (v22 > 2)
              {
                return (v22 ^ 0xFF) + 1;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              v23 = type metadata accessor for DotSeriesAttributes(0);
              return (*(*(v23 - 8) + 48))(a1 + a3[22], a2, v23);
            }
          }

          v18 = v21;
          v19 = *(v21 - 8);
          v20 = a3[19];
        }

        return (*(v19 + 48))(a1 + v20, a2, v18);
      }

      v9 = v15;
      v13 = *(v15 - 8);
      v14 = a3[17];
    }

    v10 = *(v13 + 48);
    v11 = a1 + v14;
  }

  return v10(v11, a2, v9);
}

uint64_t sub_251437A00(uint64_t a1, uint64_t a2, int a3, int *a4, __n128 a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(v10 + 56);
    v13 = a1;
  }

  else
  {
    v14 = type metadata accessor for HealthChartsData.Aggregation();
    if (*(*(v14 - 8) + 84) == a3)
    {
      v11 = v14;
      v15 = *(v14 - 8);
      v16 = a4[16];
    }

    else
    {
      type metadata accessor for DotSeriesAttributes?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
      if (*(*(v17 - 8) + 84) != a3)
      {
        v19 = type metadata accessor for HealthChartsData.SeriesData();
        if (*(*(v19 - 8) + 84) == a3)
        {
          v20 = v19;
          v21 = *(v19 - 8);
          v22 = a4[18];
        }

        else
        {
          result = type metadata accessor for HealthChartsData.SeriesData();
          if (*(*(result - 8) + 84) != a3)
          {
            if (a3 == 253)
            {
              *(a1 + a4[21] + 16) = -a2;
            }

            else
            {
              v23 = type metadata accessor for DotSeriesAttributes(0);
              return (*(*(v23 - 8) + 56))(a1 + a4[22], a2, a2, v23);
            }

            return result;
          }

          v20 = result;
          v21 = *(result - 8);
          v22 = a4[19];
        }

        return (*(v21 + 56))(a1 + v22, a2, a2, v20);
      }

      v11 = v17;
      v15 = *(v17 - 8);
      v16 = a4[17];
    }

    v12 = *(v15 + 56);
    v13 = a1 + v16;
  }

  return v12(v13, a2, a2, v11);
}

void type metadata accessor for DotSeriesAttributes?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    type metadata accessor for BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}>(255);
    lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?(&lazy protocol witness table cache variable for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?, lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>> and conformance BarSeries<A, B>);
    lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?(&lazy protocol witness table cache variable for type DotSeries<Date>? and conformance <A> A?, type metadata accessor for DotSeries<Date>?, lazy protocol witness table accessor for type DotSeries<Date> and conformance DotSeries<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

void type metadata accessor for BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}>)
  {
    type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?(255);
    type metadata accessor for DotSeries<Date>?(255);
    v1 = type metadata accessor for BuilderTuple();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    type metadata accessor for ClosedRange<Double>();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10198]);
    v10[3] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    v10[4] = MEMORY[0x277CBB1E8];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for (BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?))
  {
    type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?(255);
    type metadata accessor for DotSeries<Date>?(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?));
    }
  }
}

double static ScalarDomain.fixedNumeric<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  *(&v21 + 1) = a2;
  v22 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(v7 + 32))(boxed_opaque_existential_1, v10, a2);
  a4[4] = FixedNumeric.debugDescription.getter();
  a4[5] = v12;
  outlined init with copy of FixedNumeric(&v20, v18);
  v13 = swift_allocObject();
  v14 = v18[1];
  *(v13 + 16) = v18[0];
  *(v13 + 32) = v14;
  *(v13 + 48) = v19;
  *a4 = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  a4[1] = v13;
  v15 = swift_allocObject();
  result = *&v20;
  v17 = v21;
  *(v15 + 16) = v20;
  *(v15 + 32) = v17;
  *(v15 + 48) = v22;
  a4[2] = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
  a4[3] = v15;
  return result;
}

uint64_t FixedNumeric.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

void *FixedNumeric.axisScale(seriesScale:seriesUnit:finestAggregation:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v4, v4[3]), result = dispatch thunk of IntervalChartValue.start.getter(), *&v10 <= a1) && (__swift_project_boxed_opaque_existential_1(v4, v4[3]), result = dispatch thunk of IntervalChartValue.end.getter(), *&v10 >= a2))
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    result = IntervalChartValue.asClosedRange()();
    *(a4 + 8) = v10;
    *a4 = 1;
  }

  else
  {
    *(a4 + 8) = a1;
    *(a4 + 16) = a2;
    *a4 = 0;
  }

  return result;
}

uint64_t FixedNumeric.debugDescription.getter()
{
  type metadata accessor for FloatingPointFormatStyle<Double>(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0x286465786966;
  v17 = 0xE600000000000000;
  specialized AxisDomain<>.outputStyle.getter(v5);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of IntervalChartValue.start.getter();
  v14 = v15;
  v6 = FloatingPointFormatStyle.format(_:)();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v5, v2);
  MEMORY[0x2530761B0](v6, v8);

  MEMORY[0x2530761B0](15917, 0xE200000000000000);
  specialized AxisDomain<>.outputStyle.getter(v5);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of IntervalChartValue.end.getter();
  v14 = v15;
  v10 = FloatingPointFormatStyle.format(_:)();
  v12 = v11;
  v9(v5, v2);
  MEMORY[0x2530761B0](v10, v12);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return v16;
}

uint64_t sub_251438670()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type FixedNumeric and conformance FixedNumeric()
{
  result = lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric;
  if (!lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric;
  if (!lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FixedNumeric(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FixedNumeric and conformance FixedNumeric();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FixedNumeric(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for FixedNumeric(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NoDataMessage.content(with:)@<X0>(void *a1@<X8>)
{
  result = DescriptionContext.DataXScale.dateString.getter();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0x61746144206F4ELL;
  a1[3] = 0xE700000000000000;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = result;
  a1[7] = v3;
  return result;
}

uint64_t protocol witness for DescriptionContentProvider.content(with:) in conformance NoDataMessage@<X0>(void *a1@<X8>)
{
  result = DescriptionContext.DataXScale.dateString.getter();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0x61746144206F4ELL;
  a1[3] = 0xE700000000000000;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = result;
  a1[7] = v3;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NoDataMessage(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NoDataMessage and conformance NoDataMessage();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CommonChartDescription and conformance CommonChartDescription()
{
  result = lazy protocol witness table cache variable for type CommonChartDescription and conformance CommonChartDescription;
  if (!lazy protocol witness table cache variable for type CommonChartDescription and conformance CommonChartDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonChartDescription and conformance CommonChartDescription);
  }

  return result;
}

uint64_t static DateInterval.chartIntervalForNow()()
{
  v0 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v0 - 8);
  Date.init()();
  return DateInterval.init(start:duration:)();
}

uint64_t one-time initialization function for charts()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.charts);
  __swift_project_value_buffer(v0, static Logger.charts);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.charts.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for charts != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.charts);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RectangleMark.init<A>(for:unit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v9 = type metadata accessor for Calendar.Component();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DateInterval();
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = lazy protocol witness table accessor for type DateInterval and conformance DateInterval();
  v25 = v16;
  v26 = a3;
  v27 = v19;
  v28 = a4;
  v20 = type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  v21.n128_f64[0] = (*(v10 + 16))(v12, a2, v9);
  v25 = 0;
  LOBYTE(v26) = 1;
  RectangleMark.init<A>(x:y:unit:width:)(v18, v15, v12, &v25, a3, a4, v24, v21);
  (*(v10 + 8))(a2, v9);
  return (*(*(v20 - 8) + 8))(a1, v20);
}

uint64_t RectangleMark.init<A, B, C>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a6;
  MEMORY[0x28223BE20](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v24 = type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  RectangleMark.init<A, B, C>(x:y:)(v19, v16, a2, a3, a4, a5, v28, a7, a8, v25);
  return (*(*(v24 - 8) + 8))(a1, v24);
}

uint64_t RectangleMark.init<A, B, C>(for:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, double a8@<D0>, uint64_t a9@<X8>)
{
  v30 = a6;
  MEMORY[0x28223BE20](a1);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v26 = type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  v27.n128_f64[0] = a8;
  RectangleMark.init<A, B, C>(x:y:width:)(v21, v18, a2, a3, a4, a5, v30, a7, a9, v27);
  return (*(*(v26 - 8) + 8))(a1, v26);
}

uint64_t RectangleMark.init<A, B, C>(x:y:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>)
{
  v35 = a3;
  v36 = a8;
  v29 = a5;
  v30 = a6;
  v34 = a2;
  v37 = a1;
  v39 = a9;
  type metadata accessor for PlottableValue<Double>(a10);
  MEMORY[0x28223BE20](v12 - 8);
  v38 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v33 = &v28 - v15;
  v16 = *(a4 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a7;
  v20 = type metadata accessor for PlottableValue();
  MEMORY[0x28223BE20](v20 - 8);
  v31 = &v28 - v21;
  v42 = 29560;
  v43 = 0xE200000000000000;
  v42 = String.init<A>(_:)();
  v43 = v22;
  dispatch thunk of IntervalChartValue.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();
  (*(v16 + 8))(v19, a4);

  v42 = 29561;
  v43 = 0xE200000000000000;
  v42 = String.init<A>(_:)();
  v43 = v23;
  v24 = v34;
  v25 = v29;
  dispatch thunk of IntervalChartValue.start.getter();
  v40 = v41;
  static PlottableValue.value<A>(_:_:)();

  v42 = 25977;
  v43 = 0xE200000000000000;
  v42 = String.init<A>(_:)();
  v43 = v26;
  dispatch thunk of IntervalChartValue.end.getter();
  v40 = v41;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
  (*(*(v25 - 8) + 8))(v24, v25);
  return (*(*(v35 - 8) + 8))(v37);
}

uint64_t RectangleMark.init<A, B, C>(x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>)
{
  v40 = a5;
  v41 = a8;
  v34[0] = a6;
  v39 = a2;
  v43 = a9;
  type metadata accessor for PlottableValue<Double>(a10);
  MEMORY[0x28223BE20](v14 - 8);
  v42 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v38 = v34 - v17;
  v18 = *(a4 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PlottableValue();
  MEMORY[0x28223BE20](v22 - 8);
  v44 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v37 = v34 - v25;
  v47 = 29560;
  v48 = 0xE200000000000000;
  v47 = String.init<A>(_:)();
  v48 = v26;
  v35 = a3;
  v36 = a1;
  dispatch thunk of IntervalChartValue.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v34[1] = a7;
  static PlottableValue.value<A>(_:_:)();
  v27 = *(v18 + 8);
  v27(v21, a4);

  v47 = 25976;
  v48 = 0xE200000000000000;
  v47 = String.init<A>(_:)();
  v48 = v28;
  dispatch thunk of IntervalChartValue.end.getter();
  static PlottableValue.value<A>(_:_:)();
  v27(v21, a4);

  v47 = 29561;
  v48 = 0xE200000000000000;
  v47 = String.init<A>(_:)();
  v48 = v29;
  v30 = v39;
  v31 = v40;
  dispatch thunk of IntervalChartValue.start.getter();
  v45 = v46;
  static PlottableValue.value<A>(_:_:)();

  v47 = 25977;
  v48 = 0xE200000000000000;
  v47 = String.init<A>(_:)();
  v48 = v32;
  dispatch thunk of IntervalChartValue.end.getter();
  v45 = v46;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
  (*(*(v31 - 8) + 8))(v30, v31);
  return (*(*(v35 - 8) + 8))(v36);
}

uint64_t RectangleMark.init<A>(x:y:unit:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, __n128 a8@<Q0>)
{
  v46 = a5;
  v47 = a6;
  v51 = a3;
  v45 = a2;
  v49 = a7;
  type metadata accessor for PlottableValue<Double>(a8);
  MEMORY[0x28223BE20](v10 - 8);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = &v40 - v13;
  type metadata accessor for Calendar?(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Date();
  v17 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v40 - v24;
  type metadata accessor for PlottableValue<Date>(0);
  MEMORY[0x28223BE20](v26 - 8);
  v40 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a4;
  v41 = *(a4 + 8);
  v54 = 29560;
  v55 = 0xE200000000000000;
  v54 = String.init<A>(_:)();
  v55 = v28;
  v43 = a1;
  DateInterval.start.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v29 = *(v17 + 8);
  v30 = v22;
  v31 = v50;
  v29(v30, v50);
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v29(v19, v31);
  Date.init(timeIntervalSinceReferenceDate:)();
  v32 = type metadata accessor for Calendar();
  (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:unit:calendar:)();
  outlined destroy of Calendar?(v16);
  v29(v25, v31);

  v54 = 29561;
  v55 = 0xE200000000000000;
  v54 = String.init<A>(_:)();
  v55 = v33;
  v34 = v45;
  v35 = v46;
  dispatch thunk of IntervalChartValue.start.getter();
  v52 = v53;
  static PlottableValue.value<A>(_:_:)();

  v54 = 25977;
  v55 = 0xE200000000000000;
  v54 = String.init<A>(_:)();
  v55 = v36;
  dispatch thunk of IntervalChartValue.end.getter();
  v52 = v53;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
  v37 = type metadata accessor for Calendar.Component();
  (*(*(v37 - 8) + 8))(v51, v37);
  (*(*(v35 - 8) + 8))(v34, v35);
  v38 = type metadata accessor for DateInterval();
  return (*(*(v38 - 8) + 8))(v43, v38);
}

void type metadata accessor for PlottableValue<Double>(__n128 a1)
{
  if (!lazy cache variable for type metadata for PlottableValue<Double>)
  {
    v1 = type metadata accessor for PlottableValue();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlottableValue<Double>);
    }
  }
}

void type metadata accessor for Calendar?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Calendar?)
  {
    type metadata accessor for Calendar();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Calendar?);
    }
  }
}

uint64_t outlined destroy of Calendar?(uint64_t a1)
{
  type metadata accessor for Calendar?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DateInterval and conformance DateInterval()
{
  result = lazy protocol witness table cache variable for type DateInterval and conformance DateInterval;
  if (!lazy protocol witness table cache variable for type DateInterval and conformance DateInterval)
  {
    type metadata accessor for DateInterval();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
  }

  return result;
}

uint64_t DataSeries.init(attributes:seriesData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v35 = a1;
  v36 = a5;
  v8 = type metadata accessor for HealthChartsData.Series();
  v32 = v8;
  v34 = *(v8 - 8);
  v9 = v34;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DataSeries(0, a3, a4, v12);
  v14 = *(v13 - 1);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  (*(v9 + 16))(v11, a2, v8, v15);
  v18 = v13[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  CommonSeriesData.init(data:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness, v21, &v17[v18]);
  v23 = type metadata accessor for HealthChartsAttributes(0, a3, a4, v22);
  v24 = v35;
  *v17 = *(v35 + *(v23 + 40));
  v25 = v13[9];
  v27 = type metadata accessor for ChartAttributes(0, a3, a4, v26);
  (*(*(v27 - 8) + 16))(&v17[v25], v24, v27);
  v28 = *(*(v23 - 8) + 8);

  v28(v24, v23);
  (*(v34 + 32))(&v17[v13[10]], v33, v32);
  v29 = v36;
  (*(v14 + 32))(v36, v17, v13);
  return (*(v14 + 56))(v29, 0, 1, v13);
}

uint64_t HealthStaticChart<>.init(attributes:data:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  type metadata accessor for BasicChartModel<DateDomain>(0, &lazy cache variable for type metadata for BasicChartModel<DateDomain>, type metadata accessor for BasicChartModel);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for HealthChartsData();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a2, v12);
  outlined init with copy of HealthChartsAttributes<DateDomain>(a1, &v11[*(v9 + 44)], type metadata accessor for HealthChartsAttributes<DateDomain>);
  outlined init with copy of HealthChartsAttributes<DateDomain>(a3, &v11[*(v9 + 48)], type metadata accessor for HealthChartsContext);
  type metadata accessor for BasicChartModel<DateDomain>(0, &lazy cache variable for type metadata for HealthStaticChartViewModel<DateDomain>, type metadata accessor for HealthStaticChartViewModel);
  swift_allocObject();
  v14 = specialized HealthStaticChartViewModel.init<A>(model:)(v11);
  outlined destroy of HealthChartsContext(a3, type metadata accessor for HealthChartsContext);
  (*(v13 + 8))(a2, v12);
  result = outlined destroy of HealthChartsContext(a1, type metadata accessor for HealthChartsAttributes<DateDomain>);
  *a4 = v14;
  return result;
}

{
  _s12HealthCharts15BasicChartModelVyAA12ScalarDomainVGMaTm_0(0, &lazy cache variable for type metadata for BasicChartModel<ScalarDomain>, type metadata accessor for BasicChartModel);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for HealthChartsData();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a2, v12);
  outlined init with copy of HealthChartsAttributes<ScalarDomain>(a1, &v11[*(v9 + 44)]);
  outlined init with copy of HealthChartsAttributes<DateDomain>(a3, &v11[*(v9 + 48)], type metadata accessor for HealthChartsContext);
  _s12HealthCharts15BasicChartModelVyAA12ScalarDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthStaticChartViewModel<ScalarDomain>, type metadata accessor for HealthStaticChartViewModel);
  swift_allocObject();
  v14 = specialized HealthStaticChartViewModel.init<A>(model:)(v11);
  outlined destroy of HealthChartsContext(a3, type metadata accessor for HealthChartsContext);
  (*(v13 + 8))(a2, v12);
  result = outlined destroy of HealthChartsAttributes<ScalarDomain>(a1);
  *a4 = v14;
  return result;
}

void type metadata accessor for BasicChartModel<DateDomain>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateDomain(255);
    v7 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t HealthStaticChartViewModel._model.setter(__int128 *a1, __n128 a2)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  outlined init with take of HealthChartsDataProvider(a1, v2 + 16);
  return swift_endAccess();
}

uint64_t HealthStaticChartViewModel.model.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.access<A>(keyPath:)(KeyPath);

  swift_beginAccess();
  return outlined init with copy of HealthStaticChartKey(v1 + 16, a1);
}

uint64_t HealthStaticChartViewModel.model.setter(void *a1, __n128 a2)
{
  v4 = *v2;
  swift_beginAccess();
  outlined init with copy of HealthStaticChartKey((v2 + 2), v11);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v10 = *(v4 + 80);
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  HealthStaticChartViewModel.withMutation<A, B>(keyPath:_:)(KeyPath, partial apply for closure #1 in HealthStaticChartViewModel.model.setter, &v7, MEMORY[0x277D84F78] + 8);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HealthStaticChartViewModel._data.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = direct field offset for HealthStaticChartViewModel._data;
  swift_beginAccess();
  v5 = type metadata accessor for HealthChartsData();
  return (*(*(v5 - 8) + 16))(a1, v2 + v4, v5);
}

uint64_t HealthStaticChartViewModel._data.setter(uint64_t a1, __n128 a2)
{
  v4 = direct field offset for HealthStaticChartViewModel._data;
  swift_beginAccess();
  v5 = type metadata accessor for HealthChartsData();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t key path setter for HealthStaticChartViewModel.data : <A>HealthStaticChartViewModel<A>(uint64_t a1)
{
  v2 = type metadata accessor for HealthChartsData();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return HealthStaticChartViewModel.data.setter(v5);
}

uint64_t HealthStaticChartViewModel.data.setter(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for HealthChartsData();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  HealthStaticChartViewModel._data.getter(v8);
  v16[0] = *(v4 + 80);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData, MEMORY[0x277D102A8], MEMORY[0x277D102B0]);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v6 + 8);
  v11 = v10(v8, v5);
  if (v9)
  {
    v12.n128_f64[0] = (*(v6 + 16))(v8, a1, v5);
    HealthStaticChartViewModel._data.setter(v8, v12);
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    v16[-1] = v16[0];
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v16[-1] = v2;
    *(&v16[-1] + 1) = a1;
    HealthStaticChartViewModel.withMutation<A, B>(keyPath:_:)(v14, partial apply for closure #1 in HealthStaticChartViewModel.data.setter, &v16[-2], MEMORY[0x277D84F78] + 8);
  }

  return v10(a1, v5);
}

uint64_t closure #1 in HealthStaticChartViewModel.data.setter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HealthChartsData();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = (*(v7 + 16))(v6, a2, v4);
  return HealthStaticChartViewModel._data.setter(v6, v8);
}

uint64_t HealthStaticChartViewModel._attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  swift_beginAccess();
  v7 = type metadata accessor for HealthChartsAttributes(0, *(v4 + 80), *(v4 + 88), v6);
  return (*(*(v7 - 8) + 16))(a1, v2 + v5, v7);
}

uint64_t HealthStaticChartViewModel._attributes.setter(uint64_t a1, __n128 a2)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  swift_beginAccess();
  v7 = type metadata accessor for HealthChartsAttributes(0, *(v4 + 80), *(v4 + 88), v6);
  (*(*(v7 - 8) + 40))(v2 + v5, a1, v7);
  return swift_endAccess();
}

uint64_t HealthStaticChartViewModel.data.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.access<A>(keyPath:)(KeyPath);

  return a2(v4);
}

uint64_t HealthStaticChartViewModel.attributes.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  specialized HealthStaticChartViewModel.attributes.setter(a1, a2, a3, a4);
  v8 = type metadata accessor for HealthChartsAttributes(0, *(v6 + 80), *(v6 + 88), v7);
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

uint64_t closure #1 in HealthStaticChartViewModel.attributes.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HealthChartsAttributes(0, *(*a1 + 80), *(*a1 + 88), a4);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v10.n128_f64[0] = (*(v9 + 16))(&v12 - v7, a2, v6);
  return HealthStaticChartViewModel._attributes.setter(v8, v10);
}

uint64_t (*HealthStaticChartViewModel.attributes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x28223BE20](v3);
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.access<A>(keyPath:)(KeyPath);

  *v4 = v1;
  MEMORY[0x28223BE20](v9);
  swift_getKeyPath();
  type metadata accessor for HealthStaticChartViewModel(255, v6, v7, v10);
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = HealthStaticChartViewModel._attributes.modify(v4, v11);
  return HealthStaticChartViewModel.attributes.modify;
}

uint64_t HealthStaticChartViewModel._isLoading.getter(__n128 a1)
{
  v2 = *(*v1 + 120);
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t HealthStaticChartViewModel._isLoading.setter(char a1, __n128 a2)
{
  v4 = *(*v2 + 120);
  result = swift_beginAccess();
  *(v2 + v4) = a1;
  return result;
}

uint64_t key path getter for HealthStaticChartViewModel.isLoading : <A>HealthStaticChartViewModel<A>@<X0>(_BYTE *a1@<X8>)
{
  result = HealthStaticChartViewModel.isLoading.getter();
  *a1 = result & 1;
  return result;
}

uint64_t HealthStaticChartViewModel.isLoading.getter()
{
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.access<A>(keyPath:)(KeyPath);

  v2 = *(*v0 + 120);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t HealthStaticChartViewModel.isLoading.setter(char a1, __n128 a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = *(*v3 + 120);
  swift_beginAccess();
  v17 = *(v3 + v6);
  v7 = a1 & 1;
  v16 = a1;
  v15 = *(v5 + 80);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    v9 = *(*v3 + 120);
    result = swift_beginAccess();
    *(v3 + v9) = v7;
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v14 = *(&v15 + 1);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[2] = v3;
    LOBYTE(v14) = a1 & 1;
    HealthStaticChartViewModel.withMutation<A, B>(keyPath:_:)(v12, partial apply for specialized closure #1 in HealthStaticChartViewModel.isLoading.setter, v13, MEMORY[0x277D84F78] + 8);
  }

  return result;
}

uint64_t (*HealthStaticChartViewModel.isLoading.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x28223BE20](v3);
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.access<A>(keyPath:)(KeyPath);

  *v4 = v1;
  MEMORY[0x28223BE20](v9);
  swift_getKeyPath();
  type metadata accessor for HealthStaticChartViewModel(255, v6, v7, v10);
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = HealthStaticChartViewModel._isLoading.modify(v4, v11);
  return HealthStaticChartViewModel.isLoading.modify;
}

void HealthStaticChartViewModel.attributes.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  $defer #1 <A>() in HealthStaticChartViewModel.attributes.modify(v5, a3);

  free(v4);
}

uint64_t $defer #1 <A>() in HealthStaticChartViewModel.attributes.modify(void *a1, uint64_t a2)
{
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  swift_getKeyPath();
  type metadata accessor for HealthStaticChartViewModel(255, v2, v3, v4);
  swift_getWitnessTable();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t HealthStaticChartViewModel.seriesAttributes.getter@<X0>(void *a1@<X8>, uint64_t a2@<X3>)
{
  v4 = type metadata accessor for HealthChartsAttributes(0, *(*v2 + 80), *(*v2 + 88), a2);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  HealthStaticChartViewModel.attributes.getter();
  v8 = *&v7[*(v4 + 40)];
  v9 = *(v5 + 8);

  result = v9(v7, v4);
  *a1 = v8;
  return result;
}

uint64_t HealthStaticChartViewModel.descriptionProvider.getter@<X0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v4 = type metadata accessor for HealthChartsAttributes(0, *(*v2 + 80), *(*v2 + 88), a2);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  HealthStaticChartViewModel.attributes.getter();
  outlined init with copy of HealthStaticChartKey(&v7[*(v4 + 36)], a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t HealthStaticChartViewModel.chartAttributes.getter@<X0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  v6 = type metadata accessor for HealthChartsAttributes(0, v4, v5, a2);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  HealthStaticChartViewModel.attributes.getter();
  v11 = type metadata accessor for ChartAttributes(0, v4, v5, v10);
  (*(*(v11 - 8) + 16))(a1, v9, v11);
  return (*(v7 + 8))(v9, v6);
}

uint64_t HealthStaticChartViewModel.seriesData.getter()
{
  v0 = type metadata accessor for HealthChartsData();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  HealthStaticChartViewModel.data.getter();
  HealthChartsData.series.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t outlined init with copy of HealthChartsAttributes<ScalarDomain>(uint64_t a1, uint64_t a2)
{
  _s12HealthCharts15BasicChartModelVyAA12ScalarDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsAttributes<ScalarDomain>, type metadata accessor for HealthChartsAttributes);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s12HealthCharts15BasicChartModelVyAA12ScalarDomainVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
    v7 = a3(a1, &type metadata for ScalarDomain, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined destroy of HealthChartsAttributes<ScalarDomain>(uint64_t a1)
{
  _s12HealthCharts15BasicChartModelVyAA12ScalarDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsAttributes<ScalarDomain>, type metadata accessor for HealthChartsAttributes);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_25143C158(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

char *HealthStaticChartViewModel.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = direct field offset for HealthStaticChartViewModel._data;
  v3 = type metadata accessor for HealthChartsData();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 112);
  v6 = type metadata accessor for HealthChartsAttributes(0, *(v1 + 80), *(v1 + 88), v5);
  (*(*(v6 - 8) + 8))(&v0[v4], v6);
  v7 = *(*v0 + 128);
  v8 = type metadata accessor for ObservationRegistrar();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t HealthStaticChartViewModel.__deallocating_deinit()
{
  HealthStaticChartViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t CommonSeriesData.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v44 = a3;
  v45 = a4;
  v7 = type metadata accessor for ClosedRange();
  v8 = type metadata accessor for Optional();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  type metadata accessor for ClosedRange<Date>?(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  HealthChartsData.Series.dateXScale.getter();
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    outlined destroy of HealthChartsContext(v16, type metadata accessor for ClosedRange<Date>?);
    v25 = a2;
  }

  else
  {
    outlined init with take of ClosedRange<Date>(v16, v24, type metadata accessor for ClosedRange<Date>);
    v25 = a2;
    if (type metadata accessor for Date() == a2)
    {
      outlined init with take of ClosedRange<Date>(v24, v21, type metadata accessor for ClosedRange<Date>);
      v31 = swift_dynamicCast();
      (*(*(v7 - 8) + 56))(v13, v31 ^ 1u, 1, v7);
      v26 = v43;
      (*(v41 + 32))(v43, v13, v42);
      goto LABEL_10;
    }

    outlined destroy of HealthChartsContext(v24, type metadata accessor for ClosedRange<Date>);
  }

  v26 = v43;
  v27 = HealthChartsData.Series.scalarXScale.getter();
  if ((v29 & 1) != 0 || v25 != MEMORY[0x277D839F8])
  {
    (*(*(v7 - 8) + 56))(v26, 1, 1, v7);
  }

  else
  {
    v46 = v27;
    v47 = v28;
    type metadata accessor for ClosedRange<Double>();
    v30 = swift_dynamicCast();
    (*(*(v7 - 8) + 56))(v10, v30 ^ 1u, 1, v7);
    (*(v41 + 32))(v26, v10, v42);
  }

LABEL_10:
  v32 = HealthChartsData.Series.yScale.getter();
  v34 = v33;
  v36 = v35;
  v37 = v26 + *(type metadata accessor for CommonSeriesData(0, v25, v44, v45) + 44);
  *v37 = v32;
  *(v37 + 8) = v34;
  *(v37 + 16) = v36 & 1;
  HealthChartsData.Series.finestAggregation.getter();
  HealthChartsData.Series.unit.getter();
  v38 = type metadata accessor for HealthChartsData.Series();
  return (*(*(v38 - 8) + 8))(a1, v38);
}

uint64_t DataSeries.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = *(a1 - 8);
  v32 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = *(v6 + 24);
  v30 = *(v6 + 16);
  v31 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(255, v30, v7, v8);
  v9 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Array();
  v35 = v10;
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(255);
  v12 = v11;
  v34 = v11;
  WitnessTable = swift_getWitnessTable();
  v42[0] = v10;
  v42[1] = v9;
  v42[2] = v12;
  v42[3] = WitnessTable;
  v42[4] = MEMORY[0x277D83B98];
  v13 = type metadata accessor for ForEach();
  v36 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v29 - v17;
  v41 = *v2;
  v19 = type metadata accessor for Array();
  v20 = swift_getWitnessTable();
  MEMORY[0x2530761D0](v42, v19, v20);
  v41 = v42[0];
  type metadata accessor for EnumeratedSequence();
  swift_getWitnessTable();
  v42[0] = Array.init<A>(_:)();
  v21 = v30;
  v38 = v30;
  v39 = v7;
  v29[1] = swift_getKeyPath();
  v22 = v31;
  (*(v4 + 16))(v31, v29[0], a1);
  v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v7;
  (*(v4 + 32))(v24 + v23, v22, a1);
  v25 = swift_allocObject();
  v25[2] = v21;
  v25[3] = v7;
  v25[4] = partial apply for closure #1 in DataSeries.body.getter;
  v25[5] = v24;
  v28 = lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS( &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<M,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR,  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS);
  ForEach<>.init(_:id:content:)();
  v40 = v28;
  swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)();
  v26 = *(v36 + 8);
  v26(v15, v13);
  static ChartContentBuilder.buildExpression<A>(_:)();
  return (v26)(v18, v13);
}

uint64_t closure #1 in DataSeries.body.getter@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a2;
  v57 = a6;
  v10 = type metadata accessor for HealthChartsData.SeriesDataShape();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR( 0,  &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v47 = &v46 - v15;
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(0, v14);
  v56 = v16;
  v54 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v48 = &v46 - v20;
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v55 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = type metadata accessor for DataSeries(0, a4, a5, v24);
  v26 = *(HealthChartsData.Series.data.getter() + 16);

  if (v26 <= a1)
  {
    (*(v54 + 56))(v23, 1, 1, v56);
    goto LABEL_8;
  }

  result = HealthChartsData.Series.data.getter();
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v28 = v52;
    v29 = result + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * a1;
    v30 = v53;
    (*(v52 + 16))(v12, v29, v53);

    v31 = (a3 + *(v25 + 36));
    v32 = *v31;
    v34 = v31 + *(type metadata accessor for ChartAttributes(0, a4, a5, v33) + 40);
    v36 = *(v34 + 4);
    v35 = *(v34 + 5);
    v37 = *(v34 + 6);
    v58 = *(v34 + 1);
    v46 = *(v34 + 1);
    v59 = v46;
    v60 = v36;
    v61 = v35;
    v62 = v37;
    v39 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(0, a4, a5, v38);

    HealthChartsAttributes.SeriesTypeAttributes.series(from:chartHeight:yDomain:)(v12, &v58, v39, v18, v32);

    (*(v28 + 8))(v12, v30);
    v40 = v50;
    v41 = *(v49 + 56);
    v41(v18, 0, 1, v50);
    v42 = v18;
    v43 = v47;
    outlined init with take of BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(v42, v47);
    v44 = v43;
    v45 = v48;
    outlined init with take of BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(v44, v48);
    v41(v45, 0, 1, v40);
    outlined init with take of ClosedRange<Date>(v45, v23, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR);
    (*(v54 + 56))(v23, 0, 1, v56);
LABEL_8:
    outlined init with take of ClosedRange<Date>(v23, v57, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for SeriesContent.data.getter in conformance DataSeries<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for CommonSeriesData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, v3 + v5, v9);
}

uint64_t protocol witness for SeriesData.xScale.getter in conformance CommonSeriesData<A>@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for ClosedRange();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t protocol witness for SeriesData.aggregation.getter in conformance CommonSeriesData<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t specialized HealthStaticChartViewModel.attributes.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = type metadata accessor for HealthChartsAttributes(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-v10];
  HealthStaticChartViewModel._attributes.getter(&v14[-v10]);
  (*(v9 + 8))(v11, v8);
  v17 = v6;
  v18 = v7;
  KeyPath = swift_getKeyPath();
  v15 = v4;
  v16 = a1;
  HealthStaticChartViewModel.withMutation<A, B>(keyPath:_:)(KeyPath, partial apply for closure #1 in HealthStaticChartViewModel.attributes.setter, v14, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_25143D6D4@<X0>(_BYTE *a1@<X8>)
{
  result = HealthStaticChartViewModel.isLoading.getter();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata completion function for HealthStaticChartViewModel(uint64_t a1)
{
  result = type metadata accessor for HealthChartsData();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for HealthChartsAttributes(319, *(a1 + 80), *(a1 + 88), v3);
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v6 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void type metadata completion function for CommonSeriesData(uint64_t a1)
{
  type metadata accessor for ClosedRange();
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    _sSNy10Foundation4DateVGSgMaTm_0(319, &lazy cache variable for type metadata for ClosedRange<Double>?, type metadata accessor for ClosedRange<Double>);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HealthChartsData.Aggregation();
      if (v3 <= 0x3F)
      {
        type metadata accessor for HealthChartsUnit?(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CommonSeriesData(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v37 = *(a3 + 16);
  v4 = *(v37 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v36 = type metadata accessor for HealthChartsData.Aggregation();
  v7 = *(v36 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(type metadata accessor for HealthChartsUnit() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v13 = v9;
  }

  v14 = *(v4 + 64);
  if (v5)
  {
    v15 = *(v4 + 64);
  }

  else
  {
    v15 = v14 + 1;
  }

  v16 = *(v7 + 80);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (v12)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 + ((v14 + *(v4 + 80)) & ~*(v4 + 80));
  v21 = v16 + 17;
  v22 = *(v7 + 64) + v17;
  if (a2 > v13)
  {
    v23 = v19 + ((v22 + ((v21 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v17);
    v24 = 8 * v23;
    if (v23 <= 3)
    {
      v26 = ((a2 - v13 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v26))
      {
        v25 = *(a1 + v23);
        if (!v25)
        {
          goto LABEL_40;
        }

        goto LABEL_27;
      }

      if (v26 > 0xFF)
      {
        v25 = *(a1 + v23);
        if (!*(a1 + v23))
        {
          goto LABEL_40;
        }

        goto LABEL_27;
      }

      if (v26 < 2)
      {
LABEL_40:
        if (!v13)
        {
          return 0;
        }

        goto LABEL_41;
      }
    }

    v25 = *(a1 + v23);
    if (!*(a1 + v23))
    {
      goto LABEL_40;
    }

LABEL_27:
    v27 = (v25 - 1) << v24;
    if (v23 > 3)
    {
      v27 = 0;
    }

    if (v23)
    {
      if (v23 <= 3)
      {
        v28 = v23;
      }

      else
      {
        v28 = 4;
      }

      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v29 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v29 = *a1;
        }
      }

      else if (v28 == 1)
      {
        v29 = *a1;
      }

      else
      {
        v29 = *a1;
      }
    }

    else
    {
      v29 = 0;
    }

    return v13 + (v29 | v27) + 1;
  }

LABEL_41:
  if (v6 == v13)
  {
    if (!v5)
    {
      return 0;
    }

    v30 = (*(v4 + 48))(a1, v5, v37);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  else
  {
    v33 = (v21 + ((a1 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
    if (v8 == v13)
    {
      v34 = *(v7 + 48);

      return v34(v33, v8, v36);
    }

    else
    {
      v35 = (*(v11 + 48))((v22 + v33) & ~v17);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void storeEnumTagSinglePayload for CommonSeriesData(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v46 = *(a4 + 16);
  v5 = *(v46 - 8);
  v47 = v5;
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v45 = type metadata accessor for HealthChartsData.Aggregation();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(type metadata accessor for HealthChartsUnit() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v5 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v15 + *(v5 + 80)) & ~*(v5 + 80);
  v19 = v18 + v15;
  if (v6)
  {
    v20 = v18 + v15;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = *(v8 + 80);
  v22 = *(v12 + 80);
  v23 = *(v8 + 64) + v22;
  v24 = *(v12 + 64);
  if (!v14)
  {
    ++v24;
  }

  v25 = ((v23 + ((v21 + 17 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v22) + v24;
  if (a3 > v17)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v17 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v26))
      {
        v11 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v11 = v27;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v17 < a2)
  {
    v28 = ~v17 + a2;
    if (v25 < 4)
    {
      v29 = (v28 >> (8 * v25)) + 1;
      if (v25)
      {
        v30 = v28 & ~(-1 << (8 * v25));
        bzero(a1, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v30;
            if (v11 > 1)
            {
LABEL_81:
              if (v11 == 2)
              {
                *&a1[v25] = v29;
              }

              else
              {
                *&a1[v25] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v11 > 1)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_78;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v11 > 1)
      {
        goto LABEL_81;
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v11 > 1)
      {
        goto LABEL_81;
      }
    }

LABEL_78:
    if (v11)
    {
      a1[v25] = v29;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&a1[v25] = 0;
  }

  else if (v11)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v7 == v17)
  {
    if (a2 < v6)
    {
      v31 = *(v47 + 56);
      v32 = a2 + 1;
      v33 = a1;
      v34 = v6;
      v35 = v46;

LABEL_48:
      v31(v33, v32, v34, v35);
      return;
    }

    if (v19 <= 3)
    {
      v36 = ~(-1 << (8 * v19));
    }

    else
    {
      v36 = -1;
    }

    if (v19)
    {
      v37 = v36 & (a2 - v6);
      if (v19 <= 3)
      {
        v38 = v19;
      }

      else
      {
        v38 = 4;
      }

      bzero(a1, v19);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          *a1 = v37;
          a1[2] = BYTE2(v37);
        }

        else
        {
          *a1 = v37;
        }
      }

      else if (v38 == 1)
      {
        *a1 = v37;
      }

      else
      {
        *a1 = v37;
      }
    }
  }

  else
  {
    v33 = ((v21 + 17 + (&a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v21);
    if (v9 == v17)
    {
      v31 = *(v8 + 56);
      v32 = a2;
      v34 = v9;
      v35 = v45;

      goto LABEL_48;
    }

    v39 = &v33[v23] & ~v22;
    if (v16 >= a2)
    {
      v43 = *(v13 + 56);
      v44 = &v33[v23] & ~v22;

      v43(v44, a2 + 1);
    }

    else
    {
      if (v24 <= 3)
      {
        v40 = ~(-1 << (8 * v24));
      }

      else
      {
        v40 = -1;
      }

      if (v24)
      {
        v41 = v40 & (~v16 + a2);
        if (v24 <= 3)
        {
          v42 = v24;
        }

        else
        {
          v42 = 4;
        }

        bzero((&v33[v23] & ~v22), v24);
        if (v42 > 2)
        {
          if (v42 == 3)
          {
            *v39 = v41;
            *(v39 + 2) = BYTE2(v41);
          }

          else
          {
            *v39 = v41;
          }
        }

        else if (v42 == 1)
        {
          *v39 = v41;
        }

        else
        {
          *v39 = v41;
        }
      }
    }
  }
}

void _sSNy10Foundation4DateVGSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t type metadata completion function for DataSeries(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for HealthChartsAttributes.Series(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for ChartAttributes(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      result = type metadata accessor for HealthChartsData.Series();
      if (v10 <= 0x3F)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v13 = swift_getAssociatedConformanceWitness();
        result = type metadata accessor for CommonSeriesData(319, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
        if (v14 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataSeries(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v58 = *(v3 - 8);
  v54 = *(v58 + 84);
  if (v54 <= 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *(v58 + 84);
  }

  v52 = type metadata accessor for HealthChartsData.Series();
  v57 = *(v52 - 8);
  v53 = *(v57 + 84);
  v55 = v4;
  if (v53 > v4)
  {
    v4 = *(v57 + 84);
  }

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

  v48 = type metadata accessor for HealthChartsData.Aggregation();
  v8 = *(v48 - 8);
  v50 = *(v8 + 84);
  v51 = v7;
  if (v50 > v7)
  {
    v7 = *(v8 + 84);
  }

  v9 = *(type metadata accessor for HealthChartsUnit() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= v4)
  {
    v14 = v4;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v58 + 80);
  v16 = *(v5 + 64);
  if (v6)
  {
    v17 = *(v5 + 64);
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = *(v57 + 80);
  v19 = *(v5 + 80);
  v20 = *(v8 + 80);
  v21 = *(v9 + 80);
  v22 = *(v9 + 64);
  if (v11)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = v15 | 7;
  v25 = v15 + 8;
  v26 = ((*(v58 + 64) - (((-2 - v15) | v15) + ((-9 - v15) | v15)) + 5) & 0xFFFFFFFFFFFFFFF8) + 56;
  v27 = v19 | v20 | v21 | 7;
  v28 = v27 + *(v57 + 64);
  v29 = v17 + ((v16 + v19) & ~v19) + 7;
  v30 = v20 + 17;
  v31 = *(v8 + 64) + v21;
  if (a2 <= v14)
  {
    goto LABEL_48;
  }

  v32 = v23 + ((v28 + ((v26 + v18 + (v25 & ~v24)) & ~v18)) & ~v27) + ((v31 + ((v30 + (v29 & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v21);
  v33 = 8 * v32;
  if (v32 <= 3)
  {
    v35 = ((a2 - v14 + ~(-1 << v33)) >> v33) + 1;
    if (HIWORD(v35))
    {
      v34 = *(a1 + v32);
      if (!v34)
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    if (v35 > 0xFF)
    {
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    if (v35 < 2)
    {
LABEL_48:
      if (v14 == 0x7FFFFFFF)
      {
        v39 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v39) = -1;
        }

        return (v39 + 1);
      }

      v41 = (a1 + v24 + 8) & ~v24;
      if (v55 == v14)
      {
        v42 = *(v58 + 48);
        v43 = (v15 + ((v25 + v41) & ~v15) + 1) & ~v15;
        v44 = v54;
        v45 = v3;
LABEL_56:

        return v42(v43, v44, v45);
      }

      v43 = (v41 + v18 + v26) & ~v18;
      if (v53 == v14)
      {
        v42 = *(v57 + 48);
        v44 = v53;
        v45 = v52;
        goto LABEL_56;
      }

      if (v13)
      {
        v46 = (v28 + v43) & ~v27;
        if (v51 == v13)
        {
          if (v6 >= 2)
          {
            v47 = (*(v5 + 48))(v46, v6, AssociatedTypeWitness, v29);
            goto LABEL_71;
          }
        }

        else
        {
          v43 = (v30 + ((v29 + v46) & 0xFFFFFFFFFFFFFFF8)) & ~v20;
          if (v50 == v13)
          {
            v42 = *(v8 + 48);
            v44 = v50;
            v45 = v48;
            goto LABEL_56;
          }

          if (v11 >= 2)
          {
            v47 = (*(v10 + 48))((v31 + v43) & ~v21);
LABEL_71:
            if (v47 >= 2)
            {
              return v47 - 1;
            }

            else
            {
              return 0;
            }
          }
        }
      }

      return 0;
    }
  }

  v34 = *(a1 + v32);
  if (!*(a1 + v32))
  {
    goto LABEL_48;
  }

LABEL_35:
  v36 = (v34 - 1) << v33;
  if (v32 > 3)
  {
    v36 = 0;
  }

  if (v32)
  {
    if (v32 <= 3)
    {
      v37 = v32;
    }

    else
    {
      v37 = 4;
    }

    if (v37 > 2)
    {
      if (v37 == 3)
      {
        v38 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v38 = *a1;
      }
    }

    else if (v37 == 1)
    {
      v38 = *a1;
    }

    else
    {
      v38 = *a1;
    }
  }

  else
  {
    v38 = 0;
  }

  return v14 + (v38 | v36) + 1;
}

void storeEnumTagSinglePayload for DataSeries(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v64 = *(*(a4 + 16) - 8);
  v4 = *(v64 + 84);
  if (v4 <= 0xFE)
  {
    v5 = 254;
  }

  else
  {
    v5 = *(v64 + 84);
  }

  v62 = v5;
  if (v4 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v64 + 84);
  }

  v7 = *(type metadata accessor for HealthChartsData.Series() - 8);
  v70 = v7;
  v61 = *(v7 + 84);
  v63 = v6;
  if (v61 > v6)
  {
    v6 = *(v7 + 84);
  }

  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v68 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v69 = v11;
  v58 = *(v11 + 84);
  v60 = v10;
  if (v58 > v10)
  {
    v10 = *(v11 + 84);
  }

  v71 = 0;
  v12 = *(type metadata accessor for HealthChartsUnit() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = v16;
  }

  v59 = v9;
  v18 = *(v8 + 80);
  v57 = ((*(v8 + 64) + v18) & ~v18) + *(v8 + 64);
  if (v9)
  {
    v19 = ((*(v8 + 64) + v18) & ~v18) + *(v8 + 64);
  }

  else
  {
    v19 = ((*(v8 + 64) + v18) & ~v18) + *(v8 + 64) + 1;
  }

  v20 = *(v64 + 80);
  v21 = v20 + 8;
  v22 = ((v20 + 1) & ~v20) + *(v64 + 64);
  v23 = ((((v20 + 8) & ~v20) + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 56;
  v24 = *(v7 + 80);
  v25 = *(v7 + 64);
  v26 = *(v11 + 80);
  v27 = *(v12 + 80);
  v28 = v18 | v26 | v27 | 7;
  v29 = v28 + v25;
  v30 = v19 + 7;
  v31 = *(v11 + 64);
  v32 = *(v12 + 64);
  v33 = v31 + v27;
  if (!v14)
  {
    ++v32;
  }

  v34 = ((v31 + v27 + ((v26 + 17 + (v30 & 0xFFFFFFFFFFFFFFF8)) & ~v26)) & ~v27) + v32;
  v35 = v34 + ((v28 + v25 + ((v23 + v24 + ((v20 + 8) & ~(v20 | 7))) & ~v24)) & ~v28);
  if (a3 > v17)
  {
    if (v35 <= 3)
    {
      v37 = ((a3 - v17 + ~(-1 << (8 * v35))) >> (8 * v35)) + 1;
      if (HIWORD(v37))
      {
        v36 = 4;
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
          v36 = v38;
        }

        else
        {
          v36 = 0;
        }
      }
    }

    else
    {
      v36 = 1;
    }

    v71 = v36;
  }

  if (v17 < a2)
  {
    v39 = ~v17 + a2;
    if (v35 < 4)
    {
      v40 = (v39 >> (8 * v35)) + 1;
      if (v35)
      {
        v41 = v39 & ~(-1 << (8 * v35));
        bzero(a1, v35);
        if (v35 == 3)
        {
          *a1 = v41;
          a1[2] = BYTE2(v41);
        }

        else if (v35 == 2)
        {
          *a1 = v41;
        }

        else
        {
          *a1 = v39;
        }
      }
    }

    else
    {
      bzero(a1, v35);
      *a1 = v39;
      v40 = 1;
    }

    if (v71 > 1)
    {
      if (v71 == 2)
      {
        *&a1[v35] = v40;
      }

      else
      {
        *&a1[v35] = v40;
      }
    }

    else if (v71)
    {
      a1[v35] = v40;
    }

    return;
  }

  if (v71 > 1)
  {
    if (v71 != 2)
    {
      *&a1[v35] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    *&a1[v35] = 0;
  }

  else if (v71)
  {
    a1[v35] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (!a2)
  {
    return;
  }

LABEL_54:
  if (v17 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v42 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v42 = a2 - 1;
    }

    *a1 = v42;
    return;
  }

  v43 = &a1[(v20 | 7) + 8] & ~(v20 | 7);
  if (v63 == v17)
  {
    v44 = (v21 + v43) & ~v20;
    if (v62 < a2)
    {
      if (v22 <= 3)
      {
        v45 = ~(-1 << (8 * v22));
      }

      else
      {
        v45 = -1;
      }

      if (!v22)
      {
        return;
      }

      v46 = v45 & (~v62 + a2);
      if (v22 <= 3)
      {
        v47 = v22;
      }

      else
      {
        v47 = 4;
      }

      v48 = ((v21 + v43) & ~v20);
      v49 = v22;
      goto LABEL_95;
    }

    v51 = *(v64 + 56);
    v50 = (v20 + 1 + v44) & ~v20;
    goto LABEL_83;
  }

  v50 = (v43 + v24 + v23) & ~v24;
  if (v61 == v17)
  {
    v51 = *(v70 + 56);
LABEL_83:

    v51(v50);
    return;
  }

  v44 = (v29 + v50) & ~v28;
  if (v16 < a2)
  {
    if (v34 <= 3)
    {
      v52 = ~(-1 << (8 * v34));
    }

    else
    {
      v52 = -1;
    }

    if (!v34)
    {
      return;
    }

    v46 = v52 & (~v16 + a2);
    if (v34 <= 3)
    {
      v47 = v34;
    }

    else
    {
      v47 = 4;
    }

    v48 = ((v29 + v50) & ~v28);
    v49 = v34;
    goto LABEL_95;
  }

  if (v60 == v16)
  {
    if (v59 < 2)
    {
      return;
    }

    if (a2 < v59)
    {
      v51 = *(v68 + 56);
      v50 = (v29 + v50) & ~v28;
      goto LABEL_83;
    }

    if (v57 <= 3)
    {
      v54 = ~(-1 << (8 * v57));
    }

    else
    {
      v54 = -1;
    }

    if (!v57)
    {
      return;
    }

    v46 = v54 & (a2 - v59);
    v49 = v57;
    if (v57 <= 3)
    {
      v47 = v57;
    }

    else
    {
      v47 = 4;
    }

    v48 = ((v29 + v50) & ~v28);
LABEL_95:
    bzero(v48, v49);
    if (v47 > 2)
    {
      if (v47 == 3)
      {
        *v44 = v46;
        *(v44 + 2) = BYTE2(v46);
      }

      else
      {
        *v44 = v46;
      }
    }

    else if (v47 == 1)
    {
      *v44 = v46;
    }

    else
    {
      *v44 = v46;
    }

    return;
  }

  v50 = (v26 + 17 + ((v30 + v44) & 0xFFFFFFFFFFFFFFF8)) & ~v26;
  if (v58 == v16)
  {
    v51 = *(v69 + 56);
    goto LABEL_83;
  }

  v44 = (v33 + v50) & ~v27;
  if (v15 < a2)
  {
    if (v32 <= 3)
    {
      v53 = ~(-1 << (8 * v32));
    }

    else
    {
      v53 = -1;
    }

    if (!v32)
    {
      return;
    }

    v46 = v53 & (~v15 + a2);
    if (v32 <= 3)
    {
      v47 = v32;
    }

    else
    {
      v47 = 4;
    }

    v48 = ((v33 + v50) & ~v27);
    v49 = v32;
    goto LABEL_95;
  }

  if (v14 >= 2)
  {
    v55 = *(v13 + 56);
    v56 = (v33 + v50) & ~v27;

    v55(v56, a2 + 1);
  }
}

uint64_t instantiation function for generic protocol witness table for DataSeries<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of HealthChartsAttributes<DateDomain>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(uint64_t a1)
{
  _sSNy10Foundation4DateVGSgMaTm_0(a1, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR);
}

{
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(a1, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>, MEMORY[0x277CBB378]);
}

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR( 255,  &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie);
    }
  }
}

void type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    type metadata accessor for ClosedRange<Double>();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
    v10[3] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    v10[4] = MEMORY[0x277CBB1E8];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for BarSeries<ClosedRange<Double>, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for ClosedRange<Double>();
    v9[0] = v6;
    v9[1] = v6;
    v10 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    v11 = v10;
    v12 = MEMORY[0x277CBB590];
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BuilderConditional<LineSeries<Date>, LineSeries<Double>>)
  {
    type metadata accessor for LineSeries<Date>(255);
    type metadata accessor for LineSeries<Double>(255, &lazy cache variable for type metadata for LineSeries<Double>, type metadata accessor for LineSeries);
    v1 = type metadata accessor for BuilderConditional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for BuilderConditional<LineSeries<Date>, LineSeries<Double>>);
    }
  }
}

void type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BuilderConditional<DotSeries<Double>, DotSeries<Date>>)
  {
    type metadata accessor for LineSeries<Double>(255, &lazy cache variable for type metadata for DotSeries<Double>, type metadata accessor for DotSeries);
    type metadata accessor for DotSeries<Date>(255);
    v1 = type metadata accessor for BuilderConditional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for BuilderConditional<DotSeries<Double>, DotSeries<Date>>);
    }
  }
}

void type metadata accessor for LineSeries<Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = MEMORY[0x277D839F8];
    v8[1] = MEMORY[0x277CBB590];
    v8[2] = MEMORY[0x277D10360];
    v8[3] = MEMORY[0x277CBB590];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for LineSeries<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10198]);
    v10[0] = v6;
    v10[1] = MEMORY[0x277CBB1E8];
    v10[2] = v7;
    v10[3] = MEMORY[0x277CBB1E8];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for BuilderConditional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for DistributionSeries<Date, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v10 = type metadata accessor for Date();
    type metadata accessor for ClosedRange<Double>();
    v14[0] = v10;
    v14[1] = v11;
    v14[2] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(a3, MEMORY[0x277CC9578], a4);
    v14[3] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, MEMORY[0x277D10350]);
    v14[4] = MEMORY[0x277CBB1E8];
    v12 = a5(a1, v14);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void type metadata accessor for BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for BuilderConditional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for BuilderConditional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25143FF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = v4[1];
  v5 = (type metadata accessor for DataSeries(0, *&v27.f64[0], *&v27.f64[1], a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);

  v7 = v4 + v6 + v5[11];
  v9 = *(type metadata accessor for ChartAttributes(0, *&v27.f64[0], *&v27.f64[1], v8) + 36);
  v10 = v28;
  v29.val[0] = v27;
  v29.val[1] = v27;
  vst2q_f64(v10, v29);
  v11 = type metadata accessor for ChartAttributes.AxisAttributes(0, v28);
  (*(*(*&v27.f64[0] - 8) + 8))(v7 + v9 + *(v11 + 52), *&v27.f64[0]);

  v12 = v5[12];
  v13 = type metadata accessor for HealthChartsData.Series();
  (*(*(v13 - 8) + 8))(v4 + v6 + v12, v13);
  v14 = v4 + v6 + v5[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for ClosedRange();
  if (!(*(*(v17 - 8) + 48))(v14, 1, v17))
  {
    v18 = *(*(AssociatedTypeWitness - 8) + 8);
    v18(v14, AssociatedTypeWitness);
    v18(v14 + *(v17 + 36), AssociatedTypeWitness);
  }

  v19 = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for CommonSeriesData(0, AssociatedTypeWitness, v19, AssociatedConformanceWitness);
  v21 = *(v20 + 48);
  v22 = type metadata accessor for HealthChartsData.Aggregation();
  (*(*(v22 - 8) + 8))(v14 + v21, v22);
  v23 = *(v20 + 52);
  v24 = type metadata accessor for HealthChartsUnit();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v14 + v23, 1, v24))
  {
    (*(v25 + 8))(v14 + v23, v24);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in DataSeries.body.getter@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(type metadata accessor for DataSeries(0, v8, v9, a3) - 8);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return closure #1 in DataSeries.body.getter(a1, a2, v11, v8, v9, a4);
}

uint64_t sub_251440388()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<M;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<M)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR( 255,  &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>> and conformance <> BuilderConditional<A, B>( &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>> and conformance <> BuilderConditional<A, B>,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>,  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>> and conformance <> BuilderConditional<A, B>,  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>> and conformance <> BuilderConditional<A, B>);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<M);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>> and conformance <> BuilderConditional<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type BarSeries<DateInterval, ClosedRange<Double>> and conformance BarSeries<A, B>, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>, &protocol conformance descriptor for BarSeries<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>(255, a1);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type BarSeries<Double, Double> and conformance BarSeries<A, B>, type metadata accessor for BarSeries<Double, Double>, &protocol conformance descriptor for BarSeries<A, B>);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type BarSeries<ClosedRange<Double>, ClosedRange<Double>> and conformance BarSeries<A, B>, type metadata accessor for BarSeries<ClosedRange<Double>, ClosedRange<Double>>, &protocol conformance descriptor for BarSeries<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type BarSeries<ClosedRange<Double>, ClosedRange<Double>> and conformance BarSeries<A, B>, type metadata accessor for BarSeries<ClosedRange<Double>, ClosedRange<Double>>, &protocol conformance descriptor for BarSeries<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>(255, a1);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DistributionSeries<DateInterval, ClosedRange<Double>> and conformance DistributionSeries<A, B>, type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>, &protocol conformance descriptor for DistributionSeries<A, B>);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DistributionSeries<ClosedRange<Double>, ClosedRange<Double>> and conformance DistributionSeries<A, B>, type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>, &protocol conformance descriptor for DistributionSeries<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DistributionSeries<Date, ClosedRange<Double>> and conformance DistributionSeries<A, B>, type metadata accessor for DistributionSeries<Date, ClosedRange<Double>>, &protocol conformance descriptor for DistributionSeries<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<LineSeries<Date>, LineSeries<Double>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, LineSeries<Double>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, LineSeries<Double>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type LineSeries<Date> and conformance LineSeries<A>, type metadata accessor for LineSeries<Date>, &protocol conformance descriptor for LineSeries<A>);
    lazy protocol witness table accessor for type DotSeries<Double> and conformance DotSeries<A>(&lazy protocol witness table cache variable for type LineSeries<Double> and conformance LineSeries<A>, &lazy cache variable for type metadata for LineSeries<Double>, type metadata accessor for LineSeries, &protocol conformance descriptor for LineSeries<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, LineSeries<Double>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DotSeries<Double> and conformance DotSeries<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LineSeries<Double>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<LineSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<LineSeries<Date>, BuilderEmpty>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type LineSeries<Date> and conformance LineSeries<A>, type metadata accessor for LineSeries<Date>, &protocol conformance descriptor for LineSeries<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<DotSeries<Double>, DotSeries<Date>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Double>, DotSeries<Date>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Double>, DotSeries<Date>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>(255);
    lazy protocol witness table accessor for type DotSeries<Double> and conformance DotSeries<A>(&lazy protocol witness table cache variable for type DotSeries<Double> and conformance DotSeries<A>, &lazy cache variable for type metadata for DotSeries<Double>, type metadata accessor for DotSeries, &protocol conformance descriptor for DotSeries<A>);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DotSeries<Date> and conformance DotSeries<A>, type metadata accessor for DotSeries<Date>, &protocol conformance descriptor for DotSeries<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Double>, DotSeries<Date>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<DotSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<DotSeries<Date>, BuilderEmpty>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DotSeries<Date> and conformance DotSeries<A>, type metadata accessor for DotSeries<Date>, &protocol conformance descriptor for DotSeries<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(255, a1);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty> and conformance <> BuilderConditional<A, B>(&lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>, type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, lazy protocol witness table accessor for type BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty> and conformance <> BuilderConditional<A, B>(&lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty> and conformance <> BuilderConditional<A, B>, type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>, lazy protocol witness table accessor for type BuilderConditional<CategoryLevelSeries, CategoryLevelSeries> and conformance <> BuilderConditional<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty> and conformance <> BuilderConditional<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type MinMaxSeries<Date, ClosedRange<Double>> and conformance MinMaxSeries<A, B>, type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>, &protocol conformance descriptor for MinMaxSeries<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<CategoryLevelSeries, CategoryLevelSeries> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<CategoryLevelSeries, CategoryLevelSeries> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<CategoryLevelSeries, CategoryLevelSeries> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type CategoryLevelSeries and conformance CategoryLevelSeries, type metadata accessor for CategoryLevelSeries, &protocol conformance descriptor for CategoryLevelSeries);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<CategoryLevelSeries, CategoryLevelSeries> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

uint64_t _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of HealthChartsContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR( 0,  &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251441378(__n128 a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(255, *a2, a2[1], a5);
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(255);
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS( &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<M,  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR,  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS);
  return swift_getWitnessTable();
}

uint64_t static HealthChartsAttributes.Series.line(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(0, a2, a3, x3_0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 24);
  LOBYTE(v11) = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *v12 = *a1;
  *(v12 + 1) = v14;
  LOBYTE(a1) = *(a1 + 16);
  v12[16] = a1;
  *(v12 + 3) = v15;
  v12[32] = v11;
  *(v12 + 5) = v16;
  v12[48] = v17;
  swift_storeEnumTagMultiPayload();
  outlined copy of AttributeColor(v13, v14, a1);
  return HealthChartsAttributes.Series.init(_:)(v12, a2, a3, a5, v18);
}

uint64_t static HealthChartsAttributes.Series.distribution(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(0, a2, a3, x3_0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  *v12 = *a1;
  *(v12 + 1) = v14;
  LOBYTE(a1) = *(a1 + 16);
  v12[16] = a1;
  *(v12 + 3) = v15;
  v12[32] = v16;
  swift_storeEnumTagMultiPayload();
  outlined copy of AttributeColor(v13, v14, a1);
  return HealthChartsAttributes.Series.init(_:)(v12, a2, a3, a5, v17);
}

uint64_t static HealthChartsAttributes.Series.bar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(0, a2, a3, x3_0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  *v12 = *a1;
  *(v12 + 1) = v14;
  LOBYTE(a1) = *(a1 + 16);
  v12[16] = a1;
  *(v12 + 3) = v15;
  v12[32] = v16;
  *(v12 + 5) = v17;
  v12[48] = v18;
  swift_storeEnumTagMultiPayload();
  outlined copy of AttributeColor(v13, v14, a1);
  return HealthChartsAttributes.Series.init(_:)(v12, a2, a3, a5, v19);
}

uint64_t HealthChartsAttributes.Series.overlay(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x3_0@<X3>, void *a4@<X8>)
{
  v7 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(255, *(a2 + 16), *(a2 + 24), x3_0);
  type metadata accessor for _ContiguousArrayStorage();
  v8 = *(v7 - 8);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(v8 + 16))(v9, a1, v7);
  type metadata accessor for Array();
  v10 = static Array.+ infix(_:_:)();

  return HealthChartsAttributes.Series.init(attributes:)(v10, a4);
}

uint64_t static HealthChartsAttributes.Series.categoryLevel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(0, a2, a3, x3_0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  *v12 = *a1;
  *(v12 + 1) = v14;
  LOBYTE(a1) = *(a1 + 16);
  v12[16] = a1;
  swift_storeEnumTagMultiPayload();
  outlined copy of AttributeColor(v13, v14, a1);
  return HealthChartsAttributes.Series.init(_:)(v12, a2, a3, a5, v15);
}

uint64_t _s12HealthCharts9DotSeriesV10seriesData10attributesACyxG0aB4Core0abF0V0dF0Vy_xSdG_AA0cD10AttributesVSgtcSd5BoundAG18IntervalChartValuePRtzrlufCSd_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Double, Double>, MEMORY[0x277D10248]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v36 - v8;
  v46 = type metadata accessor for PointMark();
  v9 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, MEMORY[0x277D101A8]);
  v37 = v12;
  v39 = a1;
  v13 = HealthChartsData.SeriesData.points.getter();
  v15 = *(v13 + 16);
  if (v15)
  {
    v36 = a3;
    v47 = MEMORY[0x277D84F90];
    v16 = v13;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0, v14);
    v17 = 0;
    v18 = v47;
    v42 = v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v43 = (v7 + 8);
    v44 = v9;
    v40 = v9 + 32;
    v41 = v7 + 16;
    while (v17 < *(v16 + 16))
    {
      v19 = v42 + *(v7 + 72) * v17;
      v20 = v7;
      v21 = *(v7 + 16);
      v22 = v45;
      v21(v45, v19, v6);
      specialized closure #1 in DotSeries.init<>(seriesData:attributes:)();
      v23 = v22;
      v24 = v6;
      (*v43)(v23, v6);
      v47 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
        v18 = v47;
      }

      ++v17;
      *(v18 + 16) = v27 + 1;
      (*(v44 + 32))(v18 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v27, v11, v46);
      v6 = v24;
      v7 = v20;
      if (v15 == v17)
      {

        a3 = v36;
        goto LABEL_9;
      }
    }

    __break(1u);
    (*v43)(v7, v6);

    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_9:
    type metadata accessor for DotSeries<Double>(0, &lazy cache variable for type metadata for DotSeries<Double>, type metadata accessor for DotSeries);
    v29 = v28;
    v30 = v37;
    v31 = *(v37 - 8);
    v32 = v39;
    v33.n128_f64[0] = (*(v31 + 16))(a3 + *(v28 + 52), v39, v37);
    v34 = v38;
    outlined init with copy of DotSeriesAttributes?(v38, a3 + *(v29 + 56), &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes, v33);
    UUID.init()();
    outlined destroy of DotSeriesAttributes?(v34);
    result = (*(v31 + 8))(v32, v30);
    *(a3 + *(v29 + 60)) = v18;
  }

  return result;
}

uint64_t specialized closure #1 in DotSeries.init<>(seriesData:attributes:)()
{
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277D839F8], MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v2);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  String.init<A>(_:)();
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Double, Double>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  String.init<A>(_:)();
  HealthChartsData.SeriesPoint.y.getter();
  static PlottableValue.value<A>(_:_:)();

  PointMark.init<A, B>(x:y:)();
}

uint64_t AttributeColor.color.getter(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
    }

    else if (*v1 == 0)
    {

      return static Color.primary.getter();
    }

    else
    {
      v5 = [objc_opt_self() tintColor];

      return Color.init(uiColor:)();
    }
  }

  else
  {
    v3 = one-time initialization token for bundle;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = static HealthChartsBundle.bundle;

    return Color.init(_:bundle:)();
  }
}

uint64_t HealthChartsAttributes.updatingViewSpan<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v38 = a1;
  v40 = a2;
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v36 - v9);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v37 = v11;
  v12 = (v2 + *(v11 + 36));
  v13 = v12[3];
  v39 = v12[4];
  v36 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v14 = *v2;
  v15 = *(v8 + 44);
  v16 = *(v2 + v15);
  outlined init with copy of MinMaxSeriesAttributes(v2 + v15, v6, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
  v17 = *(v4 + 60);
  v18 = v10 + *(v8 + 44);
  outlined init with copy of DotSeriesAttributes?(&v6[v17], &v18[v17], &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, v19);
  v20 = type metadata accessor for DateDomain(0);
  outlined init with copy of MinMaxSeriesAttributes(v38, &v18[v17 + *(v20 + 20)], type metadata accessor for DateDomain.ViewDateSpan);
  v21 = _s12HealthCharts10DateDomainVWOhTm_0(&v6[v17], type metadata accessor for DateDomain);
  *v18 = v16;
  v22 = *(v8 + 48);
  v23 = v2 + v22;
  v24 = *(v2 + v22);
  v25 = *(v2 + v22 + 8);
  v27 = *(v2 + v22 + 32);
  v26 = *(v2 + v22 + 40);
  v28 = *(v2 + v22 + 48);
  *v10 = v14;
  v29 = v10 + v22;
  *v29 = v24;
  *(v29 + 1) = v25;
  v38 = *(v23 + 1);
  *(v29 + 1) = v38;
  *(v29 + 4) = v27;
  *(v29 + 5) = v26;
  *(v29 + 6) = v28;
  v30 = MEMORY[0x28223BE20](v21);
  v32 = &v36 - v31;
  (*(v33 + 16))(&v36 - v31, v36, v13, v30);
  v41 = *(v2 + *(v37 + 40));
  v34 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);

  return HealthChartsAttributes.init<A>(chartAttributes:description:series:)(v10, v32, &v41, v20, v13, v34, v39, v40);
}

uint64_t HealthChartsAttributes.updatingInterval<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = (&v40 - v10);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v13 = v12;
  v14 = (v2 + *(v12 + 36));
  v15 = v14[3];
  v42 = v14[4];
  v41 = __swift_project_boxed_opaque_existential_1(v14, v15);
  v16 = *v2;
  v17 = *(v9 + 44);
  v18 = *(v2 + v17);
  outlined init with copy of MinMaxSeriesAttributes(v2 + v17, v7, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
  v19 = *(v5 + 60);
  v20 = &v7[v19];
  v21 = v11 + *(v9 + 44);
  v22 = &v21[v19];
  outlined init with copy of MinMaxSeriesAttributes(a1, &v21[v19], type metadata accessor for DateDomain.IntervalAggregation);
  v23 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  v24 = type metadata accessor for DateDomain(0);
  outlined init with copy of MinMaxSeriesAttributes(v20 + *(v24 + 20), &v22[*(v24 + 20)], type metadata accessor for DateDomain.ViewDateSpan);
  v25 = _s12HealthCharts10DateDomainVWOhTm_0(v20, type metadata accessor for DateDomain);
  *v21 = v18;
  v26 = *(v9 + 48);
  v27 = v2 + v26;
  v28 = *(v2 + v26);
  v29 = *(v2 + v26 + 8);
  v31 = *(v2 + v26 + 32);
  v30 = *(v2 + v26 + 40);
  v32 = *(v2 + v26 + 48);
  *v11 = v16;
  v33 = v11 + v26;
  *v33 = v28;
  *(v33 + 1) = v29;
  v40 = *(v27 + 1);
  *(v33 + 1) = v40;
  *(v33 + 4) = v31;
  *(v33 + 5) = v30;
  *(v33 + 6) = v32;
  v34 = MEMORY[0x28223BE20](v25);
  v36 = &v40 - v35;
  (*(v37 + 16))(&v40 - v35, v41, v15, v34);
  v44 = *(v2 + *(v13 + 40));
  v38 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);

  return HealthChartsAttributes.init<A>(chartAttributes:description:series:)(v11, v36, &v44, v24, v15, v38, v42, v43);
}

double DistributionSeriesAttributes.cornerRadius.getter()
{
  result = 4.0;
  if ((*(v0 + 32) & 1) == 0)
  {
    return *(v0 + 24) * 0.5;
  }

  return result;
}

unint64_t static HealthChartsAttributes.empty<>()@<X0>(void *a2@<X8>)
{
  static ChartAttributes.empty<>()(a2);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v4 = v3;
  v5 = (a2 + *(v3 + 36));
  _s12HealthCharts18DescriptionMessageVyAA02NoC0VGMaTm_0(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription, type metadata accessor for DescriptionMessage);
  v5[3] = v6;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v5[4] = result;
  *v5 = 0;
  v5[1] = 0;
  *(a2 + *(v4 + 40)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t specialized closure #1 in MinMaxSeriesViewModel.init(data:attributes:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v3);
  _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation4DateVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  v4 = HealthChartsData.SeriesPoint.y.getter();
  a2(v4);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
  return HealthChartsData.SeriesPoint.init(_:_:)();
}

uint64_t BarAttributes.BarWidth.markDimension.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t HealthChartsAttributes.SeriesTypeAttributes.series(from:chartHeight:yDomain:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v139 = a4;
  v140 = a1;
  type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(0);
  MEMORY[0x28223BE20](v8 - 8);
  v137 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v127 = &v123 - v12;
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, v11);
  MEMORY[0x28223BE20](v13 - 8);
  v130 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>(0);
  MEMORY[0x28223BE20](v15 - 8);
  v136 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v126 = &v123 - v18;
  v19 = type metadata accessor for MinMaxSeriesAttributes(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v135 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>(0, v20);
  MEMORY[0x28223BE20](v22 - 8);
  v134 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v125 = &v123 - v25;
  v26 = type metadata accessor for DotSeriesAttributes(0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>(0, v27);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v129 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>(0, v31);
  MEMORY[0x28223BE20](v33 - 8);
  v133 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v35);
  v124 = &v123 - v37;
  type metadata accessor for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>(0, v36);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v123 - v43;
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>(0, v42);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v128 = &v123 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>(0, v46);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v138 = &v123 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>(0, v49);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v123 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = &v123 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v123 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a2[1];
  v132 = *a2;
  v131 = v60;
  v61 = *(a2 + 4);
  v62 = *(a2 + 5);
  (*(v63 + 16))(v59, v142, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v89 = *(v59 + 1);
      v90 = v59[16];
      v91 = *(v59 + 3);
      v92 = v59[32];
      v93 = *(v59 + 5);
      v94 = v59[48];
      *&v148 = *v59;
      v88 = v148;
      *(&v148 + 1) = v89;
      LOBYTE(v149) = v90;
      *(&v149 + 1) = v91;
      LOBYTE(v150) = v92;
      v151 = v93;
      v152 = v94;
      v95 = v133;
      v96 = v141;
      LineSeriesAttributes.series(from:chartHeight:yDomain:)(v140, v133);
      v97 = v88;
      v98 = v89;
      v99 = v90;
      if (!v96)
      {
        outlined consume of AttributeColor(v88, v89, v90);
        v100 = v95;
        v101 = v124;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v100, v124, type metadata accessor for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>);
        v102 = v101;
        v103 = v129;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v102, v129, type metadata accessor for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>);
        v104 = MEMORY[0x277CBB370];
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, type metadata accessor for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>, MEMORY[0x277CBB370]);
        goto LABEL_17;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v75 = v135;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v59, v135, type metadata accessor for MinMaxSeriesAttributes);
        v76 = v136;
        v77 = v141;
        MinMaxSeriesAttributes.series(from:chartHeight:yDomain:)(v140, v136);
        if (v77)
        {
          return _s12HealthCharts10DateDomainVWOhTm_0(v75, type metadata accessor for MinMaxSeriesAttributes);
        }

        _s12HealthCharts10DateDomainVWOhTm_0(v75, type metadata accessor for MinMaxSeriesAttributes);
        v116 = v76;
        v117 = v126;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v116, v126, type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>);
        v118 = v117;
        v119 = v130;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v118, v130, type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>);
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>, MEMORY[0x277CBB370]);
        swift_storeEnumTagMultiPayload();
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v119, v139, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
        goto LABEL_19;
      }

      v111 = *v59;
      v112 = *(v59 + 1);
      v113 = v59[16];
      *&v148 = v111;
      *(&v148 + 1) = v112;
      LOBYTE(v149) = v113;
      v114 = v137;
      v115 = v141;
      CategoryLevelSeriesAttributes.series(from:chartHeight:yDomain:)(v140, v137);
      v97 = v111;
      v98 = v112;
      v99 = v113;
      if (!v115)
      {
        outlined consume of AttributeColor(v111, v112, v113);
        v120 = v127;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v114, v127, type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>);
        v121 = v120;
        v122 = v130;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v121, v130, type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>);
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>, MEMORY[0x277CBB370]);
        swift_storeEnumTagMultiPayload();
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v122, v139, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
        goto LABEL_19;
      }
    }

    return outlined consume of AttributeColor(v97, v98, v99);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v65 = *v59;
      v66 = *(v59 + 1);
      v67 = *(v59 + 3);
      v68 = v59[32];
      v69 = v59[16];
      v143 = v65;
      v144 = v66;
      v145 = v69;
      v146 = v67;
      v147 = v68;
      v148 = v132;
      v149 = v131;
      v150 = v61;
      v151 = v62;
      v70 = v141;
      DistributionSeriesAttributes.series(from:chartHeight:yDomain:)(v140, &v148, v40, a5);
      result = outlined consume of AttributeColor(v65, v66, v69);
      if (!v70)
      {
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v40, v44, type metadata accessor for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>);
        v72 = v128;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v44, v128, type metadata accessor for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>);
        v73 = MEMORY[0x277CBB370];
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, type metadata accessor for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>, MEMORY[0x277CBB370]);
        swift_storeEnumTagMultiPayload();
        v74 = v72;
LABEL_12:
        v87 = v138;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v74, v138, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>);
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>, v73);
LABEL_18:
        swift_storeEnumTagMultiPayload();
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v87, v139, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>);
LABEL_19:
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>, MEMORY[0x277CBB370]);
        return swift_storeEnumTagMultiPayload();
      }

      return result;
    }

    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v59, v29, type metadata accessor for DotSeriesAttributes);
    v105 = v134;
    v106 = v141;
    DotSeriesAttributes.series(from:chartHeight:yDomain:)(v140, v134);
    result = _s12HealthCharts10DateDomainVWOhTm_0(v29, type metadata accessor for DotSeriesAttributes);
    if (v106)
    {
      return result;
    }

    v107 = v105;
    v108 = v125;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v107, v125, type metadata accessor for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>);
    v109 = v108;
    v103 = v129;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v109, v129, type metadata accessor for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>);
    v104 = MEMORY[0x277CBB370];
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, type metadata accessor for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>, MEMORY[0x277CBB370]);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v110 = v103;
    v87 = v138;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v110, v138, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>);
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>, v104);
    goto LABEL_18;
  }

  v78 = *v59;
  v79 = *(v59 + 1);
  v80 = *(v59 + 3);
  v81 = v59[32];
  v82 = *(v59 + 5);
  v83 = v59[48];
  v84 = v59[16];
  *&v148 = v78;
  *(&v148 + 1) = v79;
  LOBYTE(v149) = v84;
  *(&v149 + 1) = v80;
  LOBYTE(v150) = v81;
  v151 = v82;
  v152 = v83;
  v85 = v141;
  BarSeriesAttributes.series(from:chartHeight:yDomain:)(v140, v53);
  result = outlined consume of AttributeColor(v78, v79, v84);
  if (!v85)
  {
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v53, v56, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>);
    v86 = v128;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v56, v128, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>);
    v73 = MEMORY[0x277CBB370];
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, type metadata accessor for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v74 = v86;
    goto LABEL_12;
  }

  return result;
}

uint64_t HealthChartsAttributes.debugDescription.getter(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + *(a1 + 36)), *(v1 + *(a1 + 36) + 24));
  v3 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  v27 = v4;
  v28 = v3;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25145AFD0;
  *v34 = 0;
  *&v34[8] = 0xE000000000000000;
  MEMORY[0x2530761B0](0x28746867696568, 0xE700000000000000);
  Double.write<A>(to:)();
  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  v30 = 0x287369784178;
  v31 = 0xE600000000000000;
  v29 = *(a1 + 16);
  v7 = type metadata accessor for ChartAttributes(0, *&v29.f64[0], *&v29.f64[1], v6);
  v40.val[0] = v29;
  v40.val[1] = v29;
  vst2q_f64(v34, v40);
  v8 = type metadata accessor for ChartAttributes.AxisAttributes(0, v34);
  v9 = ChartAttributes.AxisAttributes.debugDescription.getter(v8);
  MEMORY[0x2530761B0](v9);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v5 + 48) = 0x287369784178;
  *(v5 + 56) = 0xE600000000000000;
  v38 = 0x287369784179;
  v39 = 0xE600000000000000;
  v10 = v1 + *(v7 + 40);
  v11 = *(v10 + 40);
  v12 = *(v10 + 48);
  v34[0] = *v10;
  *&v34[8] = *(v10 + 8);
  v35 = *(v10 + 24);
  v36 = v11;
  v37 = v12;
  v32 = v29.f64[1];
  v30 = *&v29.f64[0];
  v31 = &type metadata for ScalarDomain;
  v33 = lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
  v13 = type metadata accessor for ChartAttributes.AxisAttributes(0, &v30);
  v14 = ChartAttributes.AxisAttributes.debugDescription.getter(v13);
  MEMORY[0x2530761B0](v14);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  v15 = v39;
  *(v5 + 64) = v38;
  *(v5 + 72) = v15;
  strcpy(v34, "description(");
  v34[13] = 0;
  *&v34[14] = -5120;
  MEMORY[0x2530761B0](v28, v27);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  v16 = *&v34[8];
  *(v5 + 80) = *v34;
  *(v5 + 88) = v16;
  strcpy(v34, "series(");
  *&v34[8] = 0xE700000000000000;
  v30 = *(v1 + *(a1 + 40));
  v18 = type metadata accessor for HealthChartsAttributes.Series(0, *&v29.f64[0], *&v29.f64[1], v17);
  v23 = HealthChartsAttributes.Series.debugDescription.getter(v18, v22, v19, v20, v21);
  MEMORY[0x2530761B0](v23);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  v24 = *&v34[8];
  *(v5 + 96) = *v34;
  *(v5 + 104) = v24;
  *v34 = v5;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v25 = BidirectionalCollection<>.joined(separator:)();

  return v25;
}

uint64_t ChartAttributes.AxisAttributes.debugDescription.getter(void *a1)
{
  _StringGuts.grow(_:)(21);

  v2 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  MEMORY[0x2530761B0](v2);

  MEMORY[0x2530761B0](0x736C6562616C2C29, 0xE900000000000028);
  type metadata accessor for ChartAttributes.AxisLabels(0, a1[2], a1[4], v3);
  v4 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v4);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return 0x286E69616D6F64;
}

uint64_t HealthChartsAttributes.Series.debugDescription.getter(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *v5;
  v6 = *(a1 + 24);
  v15 = *(a1 + 16);
  v16 = v6;
  type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(255, v15, v6, a5);
  v7 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277D837D0];
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in HealthChartsAttributes.Series.debugDescription.getter, &v14, v7, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v17 = v11;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], v9, MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

uint64_t static ChartAttributes.AxisAttributes.empty<>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for DateDomain(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for defaultDomain != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v6, static DateDomain.defaultDomain);
  outlined init with copy of MinMaxSeriesAttributes(v9, v8, type metadata accessor for DateDomain);
  v10 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
  v13 = 1;
  return ChartAttributes.AxisAttributes.init(labels:domain:)(&v13, v8, a1, v6, a2, v10, a3);
}

{
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v18 + 1) = v6;
  *v19 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  v17 = xmmword_25145AF50;
  memset(&v19[8], 0, 32);
  *&v19[40] = 256;
  outlined init with copy of AutomaticNumeric(&v17, v15);
  v7 = swift_allocObject();
  v8 = v16[0];
  v7[3] = v15[2];
  v7[4] = v8;
  *(v7 + 74) = *(v16 + 10);
  v9 = v15[1];
  v7[1] = v15[0];
  v7[2] = v9;
  v10 = swift_allocObject();
  v11 = *&v19[16];
  v10[3] = *v19;
  v10[4] = v11;
  *(v10 + 74) = *&v19[26];
  v12 = v18;
  v10[1] = v17;
  v10[2] = v12;
  *&v17 = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  *(&v17 + 1) = v7;
  *&v18 = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
  *(&v18 + 1) = v10;
  strcpy(v19, "automatic");
  *&v19[10] = 0;
  *&v19[12] = -385875968;
  v13 = lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
  LOBYTE(v15[0]) = 1;
  return ChartAttributes.AxisAttributes.init(labels:domain:)(v15, &v17, a1, &type metadata for ScalarDomain, a2, v13, a3);
}

__n128 static ChartAttributes.empty<>()@<Q0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultDomain != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DateDomain(0);
  v3 = __swift_project_value_buffer(v2, static DateDomain.defaultDomain);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v5 = v4;
  v6 = a1 + *(v4 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  outlined init with copy of MinMaxSeriesAttributes(v3, &v6[*(v7 + 52)], type metadata accessor for DateDomain);
  *v6 = 1;
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  v19.n128_u64[1] = v8;
  *v20 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  v18 = xmmword_25145AF50;
  memset(&v20[8], 0, 32);
  *&v20[40] = 256;
  outlined init with copy of AutomaticNumeric(&v18, v16);
  v9 = swift_allocObject();
  v10 = v17[0];
  v9[3] = v16[2];
  v9[4] = v10;
  *(v9 + 74) = *(v17 + 10);
  v11 = v16[1];
  v9[1] = v16[0];
  v9[2] = v11;
  v12 = swift_allocObject();
  v13 = *&v20[16];
  *(v12 + 48) = *v20;
  *(v12 + 64) = v13;
  *(v12 + 74) = *&v20[26];
  result = v19;
  *(v12 + 16) = v18;
  *(v12 + 32) = result;
  *a1 = 0x4062C00000000000;
  v15 = a1 + *(v5 + 40);
  *v15 = 1;
  *(v15 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 2) = v9;
  *(v15 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 4) = v12;
  *(v15 + 5) = 0x6974616D6F747561;
  *(v15 + 6) = 0xE900000000000063;
  return result;
}

__n128 static ChartAttributes.empty<>()@<Q0>(uint64_t a1@<X8>)
{
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  v3 = v2;
  v22.n128_u64[1] = v2;
  v4 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  *v23 = v4;
  v21 = xmmword_25145AF50;
  memset(&v23[8], 0, 32);
  *&v23[40] = 256;
  outlined init with copy of AutomaticNumeric(&v21, &v17);
  v5 = swift_allocObject();
  v6 = v20[0];
  v5[3] = v19;
  v5[4] = v6;
  *(v5 + 74) = *(v20 + 10);
  v7 = v18;
  v5[1] = v17;
  v5[2] = v7;
  v8 = swift_allocObject();
  v9 = *&v23[16];
  v8[3] = *v23;
  v8[4] = v9;
  *(v8 + 74) = *&v23[26];
  v10 = v22;
  v8[1] = v21;
  v8[2] = v10;
  v22.n128_u64[1] = v3;
  *v23 = v4;
  v21 = xmmword_25145AF50;
  memset(&v23[8], 0, 32);
  *&v23[40] = 256;
  outlined init with copy of AutomaticNumeric(&v21, &v17);
  v11 = swift_allocObject();
  v12 = v20[0];
  v11[3] = v19;
  v11[4] = v12;
  *(v11 + 74) = *(v20 + 10);
  v13 = v18;
  v11[1] = v17;
  v11[2] = v13;
  v14 = swift_allocObject();
  v15 = *&v23[16];
  *(v14 + 48) = *v23;
  *(v14 + 64) = v15;
  *(v14 + 74) = *&v23[26];
  result = v22;
  *(v14 + 16) = v21;
  *(v14 + 32) = result;
  *(a1 + 8) = 1;
  *(a1 + 16) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(a1 + 24) = v5;
  *(a1 + 32) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0x6974616D6F747561;
  *(a1 + 56) = 0xE900000000000063;
  *a1 = 0x4062C00000000000;
  *(a1 + 64) = 1;
  *(a1 + 72) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(a1 + 80) = v11;
  *(a1 + 88) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(a1 + 96) = v14;
  *(a1 + 104) = 0x6974616D6F747561;
  *(a1 + 112) = 0xE900000000000063;
  return result;
}

uint64_t AttributeColor.debugDescription.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      return 0x6D6F747375632ELL;
    }

    else if (*v0 == 0)
    {
      return 0x6F726765726F662ELL;
    }

    else
    {
      return 0x746E69742ELL;
    }
  }

  else
  {
    v2 = *v0;

    return v2;
  }
}

uint64_t BarAttributes.BarWidth.debugDescription.getter()
{
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v7 - 8);
  _s12HealthCharts18DescriptionMessageVyAA02NoC0VGMaTm_0(0, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x277D839F8], MEMORY[0x277CC9160]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  if (*(v0 + 8))
  {
    return 0x6974616D6F747561;
  }

  v20 = *v0;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  v27 = vdupq_n_s64(4uLL);
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  static NumberFormatStyleConfiguration.Precision.significantDigits<A>(_:)();
  MEMORY[0x253075120](v6, v9);
  (*(v4 + 8))(v6, v24);
  v21 = *(v10 + 8);
  v21(v12, v9);
  static NumberFormatStyleConfiguration.Notation.scientific.getter();
  MEMORY[0x253075110](v3, v9);
  (*(v25 + 8))(v3, v26);
  v21(v15, v9);
  v27.i64[0] = v20;
  v22 = FloatingPointFormatStyle.format(_:)();
  v21(v18, v9);
  return v22;
}

uint64_t BarAttributes.EndStyle.debugDescription.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x6C676E6174636572;
    }

    else
    {
      return 0x656C7573706163;
    }
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v2 = Double.description.getter();
    MEMORY[0x2530761B0](v2);

    return 0xD000000000000013;
  }
}

uint64_t BarSeriesAttributes.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25145AB30;
  outlined copy of AttributeColor(v1, v2, v5);
  v7 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v7);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v6 + 32) = 0x28726F6C6F63;
  *(v6 + 40) = 0xE600000000000000;
  v8 = BarAttributes.BarWidth.debugDescription.getter();
  MEMORY[0x2530761B0](v8);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v6 + 48) = 0x6874646957726162;
  *(v6 + 56) = 0xE900000000000028;
  if (v4 == 1)
  {
    if (v3)
    {
      v9 = 0x6C676E6174636572;
    }

    else
    {
      v9 = 0x656C7573706163;
    }

    if (v3)
    {
      v10 = 0xE900000000000065;
    }

    else
    {
      v10 = 0xE700000000000000;
    }
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v11 = Double.description.getter();
    MEMORY[0x2530761B0](v11);

    v9 = 0xD000000000000013;
    v10 = 0x8000000251465160;
  }

  MEMORY[0x2530761B0](v9, v10);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v6 + 64) = 0x656C797453646E65;
  *(v6 + 72) = 0xE900000000000028;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

uint64_t BarSeriesAttributes.series(from:chartHeight:yDomain:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v134 = a1;
  v122 = a2;
  v98 = type metadata accessor for HealthChartsErrors(0);
  MEMORY[0x28223BE20](v98);
  v99 = (&v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s6Charts18BuilderConditionalVy06HealthA09BarSeriesVySNySdGAGGAA0B5EmptyVGMaTm_0(0, &lazy cache variable for type metadata for BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>, MEMORY[0x277CBB378]);
  MEMORY[0x28223BE20](v4 - 8);
  v97 = &v97 - v5;
  type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for BarSeries<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for BarSeries);
  MEMORY[0x28223BE20](v6 - 8);
  v104 = &v97 - v7;
  v8 = MEMORY[0x277D101A8];
  _s16HealthChartsCore0aB4DataV11SeriesPointVy_SNySdGAFGMaTm_1(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D101A8]);
  v102 = v9;
  v101 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v100 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v103 = &v97 - v13;
  type metadata accessor for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>(0, v12);
  MEMORY[0x28223BE20](v14 - 8);
  v110 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BarSeries<Double, Double>();
  MEMORY[0x28223BE20](v16 - 8);
  v109 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, v8);
  v108 = v18;
  v107 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v106 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v105 = &v97 - v21;
  type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
  v121 = v22;
  v120 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v119 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v118 = &v97 - v25;
  type metadata accessor for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>(0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>(0, v27);
  MEMORY[0x28223BE20](v30 - 8);
  v124 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>(0);
  v113 = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, v33);
  v37 = v36;
  v112 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v111 = &v97 - v41;
  v42 = type metadata accessor for HealthChartsData.SeriesDataShape();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v97 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v2 + 16);
  v130 = *v2;
  v47 = *(v2 + 32);
  v131 = v46;
  v132 = v47;
  v117 = *(v2 + 48);
  v133 = v117;
  v48 = *(v2 + 8);
  *&v114 = *v2;
  *(&v114 + 1) = v48;
  *&v115 = *(v2 + 16);
  *(&v115 + 1) = *(v2 + 24);
  *&v116 = *(v2 + 32);
  *(&v116 + 1) = *(v2 + 40);
  v49 = *(v43 + 16);
  v49(v45, v134, v42);
  v50 = (*(v43 + 88))(v45, v42);
  if (v50 == *MEMORY[0x277D101E0])
  {
    (*(v43 + 96))(v45, v42);
    v51 = v120;
    v52 = v118;
    v53 = v121;
    v120[4](v118, v45, v121);
    v54 = v119;
    v51[2](v119, v52, v53);
    v126 = v130;
    v127 = v131;
    v128 = v132;
    v129 = v133;
    outlined init with copy of BarSeriesAttributes(&v130, v125);
    BarSeries.init<>(datePointData:attributes:)(v54, &v126, v35);
    (v51[1])(v52, v53);
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v35, v29, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>);
    type metadata accessor for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>(0, &lazy cache variable for type metadata for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>.Storage, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v55 = v124;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v29, v124, type metadata accessor for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>);
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>.Storage, type metadata accessor for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, type metadata accessor for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>, MEMORY[0x277CBB370]);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v55, v122, type metadata accessor for BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>);
    goto LABEL_11;
  }

  v120 = v35;
  v121 = v29;
  if (v50 == *MEMORY[0x277D101E8])
  {
    (*(v43 + 96))(v45, v42);
    v56 = v112;
    v57 = v111;
    (*(v112 + 32))(v111, v45, v37);
    v134 = *(v56 + 16);
    v134(v39, v57, v37);
    outlined init with copy of BarSeriesAttributes(&v130, &v126);
    v58 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v58);
    *(&v97 - 2) = &v130;
    *(&v97 - 1) = v39;
    v123 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGGG_0E013RectangleMarkVs5NeverOTg5(_s12HealthCharts9BarSeriesV16dateIntervalData10attributesACy10Foundation04DateF0Vq_G0aB4Core0abG0V0dG0Vy_AHq_G_AA0cD10AttributesVtcAHRszrlufc0B013RectangleMarkVAL0D5PointVy_AHq_GXEfU_SNySdG_TG5TA_0, (&v97 - 4), v58);

    v59 = v113;
    v60 = v120;
    v134(v120 + *(v113 + 60), v39, v37);
    UUID.init()();
    v61 = *(v56 + 8);
    v61(v57, v37);
    v62 = v60 + *(v59 + 64);
    v63 = *(&v114 + 1);
    *v62 = v114;
    *(v62 + 8) = v63;
    v64 = *(&v115 + 1);
    *(v62 + 16) = v115;
    *(v62 + 24) = v64;
    v65 = *(&v116 + 1);
    *(v62 + 32) = v116;
    *(v62 + 40) = v65;
    *(v62 + 48) = v117;
    *(v60 + *(v59 + 68)) = v123;
    v61(v39, v37);
    v66 = v121;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v60, v121, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>);
    type metadata accessor for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>(0, &lazy cache variable for type metadata for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>.Storage, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v67 = v66;
    v68 = v124;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v67, v124, type metadata accessor for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>);
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>.Storage, type metadata accessor for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, type metadata accessor for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v68, v122, type metadata accessor for BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>);
LABEL_11:
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>.Storage(0, v69);
    return swift_storeEnumTagMultiPayload();
  }

  if (v50 == *MEMORY[0x277D101C0])
  {
    (*(v43 + 96))(v45, v42);
    v70 = v107;
    v71 = v105;
    v72 = v108;
    (*(v107 + 32))(v105, v45, v108);
    v73 = v106;
    (*(v70 + 16))(v106, v71, v72);
    v126 = v114;
    v127 = v115;
    v128 = v116;
    v129 = v117;
    outlined init with copy of BarSeriesAttributes(&v130, v125);
    v74 = v109;
    BarSeries.init<>(scalarPointData:attributes:)(v73, &v126, v109);
    (*(v70 + 8))(v71, v72);
    v75 = v74;
    v76 = v110;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v75, v110, type metadata accessor for BarSeries<Double, Double>);
    type metadata accessor for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>.Storage(0);
    swift_storeEnumTagMultiPayload();
    v77 = v76;
    v55 = v124;
LABEL_9:
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v77, v55, type metadata accessor for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>);
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>.Storage, type metadata accessor for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, type metadata accessor for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>, MEMORY[0x277CBB370]);
    goto LABEL_10;
  }

  v55 = v124;
  if (v50 == *MEMORY[0x277D101C8])
  {
    (*(v43 + 96))(v45, v42);
    v78 = v101;
    v79 = v103;
    v80 = v102;
    (*(v101 + 32))(v103, v45, v102);
    v81 = v100;
    (*(v78 + 16))(v100, v79, v80);
    v126 = v114;
    v127 = v115;
    v128 = v116;
    v129 = v117;
    outlined init with copy of BarSeriesAttributes(&v130, v125);
    v82 = v104;
    BarSeries.init<>(scalarRangeData:attributes:)(v81, &v126, v104);
    (*(v78 + 8))(v79, v80);
    v83 = v82;
    v84 = v110;
    outlined init with take of BarSeries<ClosedRange<Double>, ClosedRange<Double>>(v83, v110, &lazy cache variable for type metadata for BarSeries<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for BarSeries);
    type metadata accessor for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>.Storage(0);
    swift_storeEnumTagMultiPayload();
    v77 = v84;
    goto LABEL_9;
  }

  if (v50 == *MEMORY[0x277D101D0])
  {
    _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v86 = v103;
    static HealthChartsData.SeriesData.empty()();
    v126 = v114;
    v127 = v115;
    v128 = v116;
    v129 = v117;
    outlined init with copy of BarSeriesAttributes(&v130, v125);
    v87 = v104;
    BarSeries.init<>(scalarRangeData:attributes:)(v86, &v126, v104);
    v88 = v87;
    v89 = v97;
    outlined init with take of BarSeries<ClosedRange<Double>, ClosedRange<Double>>(v88, v97, &lazy cache variable for type metadata for BarSeries<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for BarSeries);
    _s6Charts18BuilderConditionalVy06HealthA09BarSeriesVySNySdGAGGAA0B5EmptyVGMaTm_0(0, &lazy cache variable for type metadata for BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>.Storage, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>(v89, v122);
    goto LABEL_11;
  }

  type metadata accessor for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape)(0);
  v91 = *(v90 + 48);
  v92 = v99;
  *v99 = 0x6569726553726142;
  *(v92 + 8) = 0xE900000000000073;
  v49((v92 + v91), v134, v42);
  v93 = v98;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_25145AB10;
  *(v94 + 56) = v93;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v94 + 32));
  outlined init with copy of MinMaxSeriesAttributes(v92, boxed_opaque_existential_1, type metadata accessor for HealthChartsErrors);
  print(_:separator:terminator:)();

  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors, type metadata accessor for HealthChartsErrors, &protocol conformance descriptor for HealthChartsErrors);
  swift_allocError();
  outlined init with copy of MinMaxSeriesAttributes(v92, v96, type metadata accessor for HealthChartsErrors);
  swift_willThrow();
  _s12HealthCharts10DateDomainVWOhTm_0(v92, type metadata accessor for HealthChartsErrors);
  return (*(v43 + 8))(v45, v42);
}

uint64_t DistributionSeriesAttributes.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D837D0];
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25145AB20;
  outlined copy of AttributeColor(v1, v2, v3);
  v6 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v6);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v5 + 32) = 0x28726F6C6F63;
  *(v5 + 40) = 0xE600000000000000;
  v7 = BarAttributes.BarWidth.debugDescription.getter();
  MEMORY[0x2530761B0](v7);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v5 + 48) = 0x6874646957726162;
  *(v5 + 56) = 0xE900000000000028;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], v4, MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v8 = BidirectionalCollection<>.joined(separator:)();

  return v8;
}

uint64_t DistributionSeriesAttributes.series(from:chartHeight:yDomain:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v173 = a3;
  v148 = type metadata accessor for HealthChartsErrors(0);
  MEMORY[0x28223BE20](v148);
  v149 = (&v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v154 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0, v10);
  v153 = v12;
  v152 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v151 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v162 = &v146 - v15;
  MEMORY[0x28223BE20](v16);
  v161 = &v146 - v17;
  type metadata accessor for DistributionSeries<Date, ClosedRange<Double>>(0);
  v147 = v18;
  MEMORY[0x28223BE20](v18);
  v160 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v150 = &v146 - v21;
  type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for DistributionSeries);
  v155 = v22;
  MEMORY[0x28223BE20](v22);
  v170 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v159 = &v146 - v25;
  _s16HealthChartsCore0aB4DataV11SeriesPointVy_SNySdGAFGMaTm_1(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D101A8]);
  v156 = v26;
  v158 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v157 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v169 = (&v146 - v29);
  MEMORY[0x28223BE20](v30);
  v168 = &v146 - v31;
  v33 = MEMORY[0x28223BE20](v32);
  v167 = &v146 - v34;
  type metadata accessor for BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>(0, v33);
  MEMORY[0x28223BE20](v35 - 8);
  v171 = &v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>(0);
  v163 = v37;
  MEMORY[0x28223BE20](v37);
  v174 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v39);
  v166 = &v146 - v41;
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, v40);
  v43 = v42;
  v164 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v146 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v165 = &v146 - v47;
  MEMORY[0x28223BE20](v48);
  v180 = &v146 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v146 - v51;
  v53 = type metadata accessor for HealthChartsData.SeriesDataShape();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v146 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a2[1];
  v179[0] = *a2;
  v179[1] = v57;
  v179[2] = a2[2];
  v58 = v4[1];
  v176 = *v4;
  v177 = v58;
  v178 = *(v4 + 32);
  v59 = *(v54 + 16);
  v59(v56, a1, v53);
  v60 = (*(v54 + 88))(v56, v53);
  if (v60 == *MEMORY[0x277D101E8])
  {
    (*(v54 + 96))(v56, v53);
    v61 = v164;
    v62 = *(v164 + 32);
    v146 = v52;
    v62(v52, v56, v43);
    v169 = *(v61 + 16);
    v63 = v180;
    v169(v180, v52, v43);
    v64 = _s12HealthCharts18DistributionSeriesVAASNySdGRs_rlE20approximateYAxisSize33_E22D5873CEBB457AA3F0B63D580F12574from4withSdAA12ScalarDomainV_0aB4Core0aB4DataV0dU0Vy_xADGtFZ10Foundation12DateIntervalV_Tt1B5(v179, v63) / a4;
    if (v178)
    {
      v65 = 4.0;
    }

    else
    {
      v65 = *(&v177 + 1) * 0.5;
    }

    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    *(v66 + 24) = v65;
    v170 = v66;
    type metadata accessor for DateInterval();
    _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v67 = v165;
    HealthChartsData.SeriesData.transformed<A, B>(using:)();
    v68 = v174;
    UUID.init()();
    v169(v45, v67, v43);
    v69 = v68 + *(v163 + 60);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, MEMORY[0x277D101B0]);
    AnySeriesData.xScale.getter();
    v70 = AnySeriesData.yScale.getter();
    v72 = v71;
    v74 = v73;
    type metadata accessor for DistributionSeriesViewModel<DateInterval, ClosedRange<Double>>(0);
    v76 = v75;
    v77 = v69 + *(v75 + 60);
    *v77 = v70;
    *(v77 + 8) = v72;
    *(v77 + 16) = v74 & 1;
    HealthChartsData.SeriesData.aggregation.getter();
    HealthChartsData.SeriesData.unit.getter();
    v78 = v69 + *(v76 + 76);
    v79 = v177;
    *v78 = v176;
    *(v78 + 16) = v79;
    *(v78 + 32) = v178;
    outlined init with copy of DistributionSeriesAttributes(&v176, v175);
    v80 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v80);
    *(&v146 - 2) = v45;
    *(&v146 - 1) = &v176;
    v81 = v172;
    v82 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGGG_0dE025DistributionMarkViewModelVyAmNGs5NeverOTg5(partial apply for specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:), (&v146 - 4), v80);
    v172 = v81;

    v83 = *(v61 + 8);
    v83(v67, v43);
    v83(v180, v43);
    v83(v146, v43);
    *(v69 + *(v76 + 72)) = v82;
    v83(v45, v43);
    v84 = v166;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v174, v166, type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>);
    v85 = v84;
    v86 = v171;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v85, v171, type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>);
    type metadata accessor for BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>.Storage(0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v86, v173, type metadata accessor for BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>);
LABEL_12:
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>.Storage, type metadata accessor for BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, type metadata accessor for BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>, MEMORY[0x277CBB370]);
    return swift_storeEnumTagMultiPayload();
  }

  if (v60 == *MEMORY[0x277D101C8])
  {
    (*(v54 + 96))(v56, v53);
    v87 = v158;
    v88 = v167;
    v89 = v156;
    (*(v158 + 32))(v167, v56, v156);
    v90 = *(v87 + 16);
    v91 = v168;
    v90(v168, v88, v89);
    v92 = _s12HealthCharts18DistributionSeriesVAASNySdGRs_rlE20approximateYAxisSize33_E22D5873CEBB457AA3F0B63D580F12574from4withSdAA12ScalarDomainV_0aB4Core0aB4DataV0dU0Vy_xADGtFZAD_Tt1B5(v179, v91) / a4;
    if (v178)
    {
      v93 = 4.0;
    }

    else
    {
      v93 = *(&v177 + 1) * 0.5;
    }

    v94 = swift_allocObject();
    *(v94 + 16) = v92;
    *(v94 + 24) = v93;
    _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v95 = v169;
    HealthChartsData.SeriesData.transformed<A, B>(using:)();
    v96 = v170;
    UUID.init()();
    v97 = v157;
    v90(v157, v95, v89);
    v98 = v96 + *(v155 + 60);
    lazy protocol witness table accessor for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>();
    AnySeriesData.xScale.getter();
    *(v98 + 24) = AnySeriesData.yScale.getter();
    *(v98 + 32) = v99;
    *(v98 + 40) = v100 & 1;
    type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for DistributionSeriesViewModel<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for DistributionSeriesViewModel);
    v102 = v101;
    HealthChartsData.SeriesData.aggregation.getter();
    HealthChartsData.SeriesData.unit.getter();
    v103 = v98 + *(v102 + 76);
    v104 = v177;
    *v103 = v176;
    *(v103 + 16) = v104;
    *(v103 + 32) = v178;
    outlined init with copy of DistributionSeriesAttributes(&v176, v175);
    v105 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v105);
    *(&v146 - 2) = v97;
    *(&v146 - 1) = &v176;
    v106 = v172;
    v107 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_SNySdGAKGG_0dE025DistributionMarkViewModelVyA2KGs5NeverOTg5(partial apply for specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:), (&v146 - 4), v105);
    v172 = v106;

    v108 = *(v87 + 8);
    v108(v169, v89);
    v108(v168, v89);
    v108(v167, v89);
    *(v98 + *(v102 + 72)) = v107;
    v108(v97, v89);
    v109 = v159;
    outlined init with take of BarSeries<ClosedRange<Double>, ClosedRange<Double>>(v170, v159, &lazy cache variable for type metadata for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for DistributionSeries);
    v110 = v109;
    v86 = v171;
    outlined init with take of BarSeries<ClosedRange<Double>, ClosedRange<Double>>(v110, v171, &lazy cache variable for type metadata for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for DistributionSeries);
    type metadata accessor for BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>.Storage(0);
    goto LABEL_11;
  }

  if (v60 == *MEMORY[0x277D101D0])
  {
    type metadata accessor for Date();
    _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v180 = MEMORY[0x277D10190];
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v112 = v161;
    static HealthChartsData.SeriesData.empty()();
    v113 = _s12HealthCharts18DistributionSeriesVAASNySdGRs_rlE20approximateYAxisSize33_E22D5873CEBB457AA3F0B63D580F12574from4withSdAA12ScalarDomainV_0aB4Core0aB4DataV0dU0Vy_xADGtFZ10Foundation4DateV_Tt1B5(v179, v112) / a4;
    if (v178)
    {
      v114 = 4.0;
    }

    else
    {
      v114 = *(&v177 + 1) * 0.5;
    }

    v115 = swift_allocObject();
    *(v115 + 16) = v113;
    *(v115 + 24) = v114;
    v116 = v162;
    v117 = v153;
    HealthChartsData.SeriesData.transformed<A, B>(using:)();
    v118 = v160;
    UUID.init()();
    v119 = v152;
    v120 = v151;
    (*(v152 + 16))(v151, v116, v117);
    v121 = v118 + *(v147 + 60);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, MEMORY[0x277D101B0]);
    AnySeriesData.xScale.getter();
    v122 = AnySeriesData.yScale.getter();
    v124 = v123;
    v126 = v125;
    _s12HealthCharts12MinMaxSeriesVy10Foundation4DateVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for DistributionSeriesViewModel<Date, ClosedRange<Double>>, &lazy protocol witness table cache variable for type Date and conformance Date, v180, type metadata accessor for DistributionSeriesViewModel);
    v128 = v127;
    v129 = v121 + *(v127 + 60);
    *v129 = v122;
    *(v129 + 8) = v124;
    *(v129 + 16) = v126 & 1;
    HealthChartsData.SeriesData.aggregation.getter();
    HealthChartsData.SeriesData.unit.getter();
    v130 = v121 + *(v128 + 76);
    v131 = v177;
    *v130 = v176;
    *(v130 + 16) = v131;
    *(v130 + 32) = v178;
    outlined init with copy of DistributionSeriesAttributes(&v176, v175);
    v132 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v132);
    *(&v146 - 2) = v120;
    *(&v146 - 1) = &v176;
    v133 = v172;
    v134 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSNySdGGG_0dE025DistributionMarkViewModelVyAmNGs5NeverOTg5(partial apply for specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:), (&v146 - 4), v132);
    v172 = v133;

    v135 = *(v119 + 8);
    v135(v162, v117);
    v135(v161, v117);
    *(v121 + *(v128 + 72)) = v134;
    v135(v120, v117);
    v136 = v150;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v160, v150, type metadata accessor for DistributionSeries<Date, ClosedRange<Double>>);
    v137 = v136;
    v138 = v154;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v137, v154, type metadata accessor for DistributionSeries<Date, ClosedRange<Double>>);
    type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(0, &lazy cache variable for type metadata for BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>.Storage, type metadata accessor for DistributionSeries<Date, ClosedRange<Double>>, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v138, v173, type metadata accessor for BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>);
    goto LABEL_12;
  }

  type metadata accessor for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape)(0);
  v140 = *(v139 + 48);
  v141 = v149;
  *v149 = 0xD000000000000012;
  *(v141 + 8) = 0x8000000251465180;
  v59((v141 + v140), a1, v53);
  v142 = v148;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_25145AB10;
  *(v143 + 56) = v142;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v143 + 32));
  outlined init with copy of MinMaxSeriesAttributes(v141, boxed_opaque_existential_1, type metadata accessor for HealthChartsErrors);
  print(_:separator:terminator:)();

  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors, type metadata accessor for HealthChartsErrors, &protocol conformance descriptor for HealthChartsErrors);
  swift_allocError();
  outlined init with copy of MinMaxSeriesAttributes(v141, v145, type metadata accessor for HealthChartsErrors);
  swift_willThrow();
  _s12HealthCharts10DateDomainVWOhTm_0(v141, type metadata accessor for HealthChartsErrors);
  return (*(v54 + 8))(v56, v53);
}

uint64_t MinMaxSeriesAttributes.debugDescription.getter()
{
  v0 = MEMORY[0x277D837D0];
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25145AB20;
  v2 = BarSeriesAttributes.debugDescription.getter();
  MEMORY[0x2530761B0](v2);

  *(v1 + 32) = 678584674;
  *(v1 + 40) = 0xE400000000000000;
  type metadata accessor for MinMaxSeriesAttributes(0);
  v3 = DotSeriesAttributes.debugDescription.getter();
  MEMORY[0x2530761B0](v3);

  *(v1 + 48) = 678719332;
  *(v1 + 56) = 0xE400000000000000;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], v0, MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v4 = BidirectionalCollection<>.joined(separator:)();

  return v4;
}

uint64_t DotSeriesAttributes.debugDescription.getter()
{
  v1 = MEMORY[0x277D837D0];
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25145AB10;
  outlined copy of AttributeColor(*v0, *(v0 + 8), *(v0 + 16));
  v3 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v3);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v2 + 32) = 0x28726F6C6F63;
  *(v2 + 40) = 0xE600000000000000;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], v1, MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v4 = BidirectionalCollection<>.joined(separator:)();

  return v4;
}

uint64_t MinMaxSeriesAttributes.series(from:chartHeight:yDomain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v88 = a1;
  v79 = type metadata accessor for HealthChartsErrors(0);
  MEMORY[0x28223BE20](v79);
  v80 = (&v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>(0);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for MinMaxSeriesAttributes(0);
  MEMORY[0x28223BE20](v84);
  v94 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v79 - v7;
  MEMORY[0x28223BE20](v8);
  v92 = &v79 - v9;
  type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>(0);
  v82 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v93 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0, v11);
  v14 = v13;
  v90 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v89 = &v79 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v79 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v79 - v23;
  v25 = type metadata accessor for HealthChartsData.SeriesDataShape();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v26 + 16);
  v30(v29, v88, v25, v27);
  v31 = (*(v26 + 88))(v29, v25);
  v32 = *MEMORY[0x277D101B8];
  v87 = v21;
  if (v31 == v32)
  {
    (*(v26 + 96))(v29, v25);
    v33 = v90;
    v34 = v90[4];
    v81 = v24;
    v34(v24, v29, v14);
    v35 = v33[2];
    v35(v21, v24, v14);
    v36 = v92;
    outlined init with copy of MinMaxSeriesAttributes(v83, v92, type metadata accessor for MinMaxSeriesAttributes);
    v37 = v89;
    v35(v89, v21, v14);
    v38 = v91;
    outlined init with copy of MinMaxSeriesAttributes(v36, v91, type metadata accessor for MinMaxSeriesAttributes);
    v39 = v93;
    UUID.init()();
    v35(v16, v37, v14);
    outlined init with copy of MinMaxSeriesAttributes(v38, v94, type metadata accessor for MinMaxSeriesAttributes);
    v40 = v39 + *(v82 + 60);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, MEMORY[0x277D101B0]);
    AnySeriesData.xScale.getter();
    v41 = AnySeriesData.yScale.getter();
    v43 = v42;
    LOBYTE(v38) = v44;
    _s12HealthCharts12MinMaxSeriesVy10Foundation4DateVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for MinMaxSeriesViewModel<Date, ClosedRange<Double>>, &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277D10198], type metadata accessor for MinMaxSeriesViewModel);
    v46 = v45;
    v47 = v40 + v45[15];
    *v47 = v41;
    *(v47 + 8) = v43;
    *(v47 + 16) = v38 & 1;
    HealthChartsData.SeriesData.aggregation.getter();
    HealthChartsData.SeriesData.unit.getter();
    v35((v40 + v46[18]), v16, v14);
    type metadata accessor for Date();
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    HealthChartsData.SeriesData.transformed<A, B>(using:)();
    HealthChartsData.SeriesData.transformed<A, B>(using:)();
    v48 = v90[1];
    v48(v16, v14);
    _s12HealthCharts10DateDomainVWOhTm_0(v91, type metadata accessor for MinMaxSeriesAttributes);
    v48(v89, v14);
    _s12HealthCharts10DateDomainVWOhTm_0(v92, type metadata accessor for MinMaxSeriesAttributes);
    v48(v87, v14);
    v48(v81, v14);
LABEL_5:
    v63 = v94;
    v64 = *(v94 + 16);
    v65 = *(v94 + 24);
    v66 = *(v94 + 32);
    v67 = *(v94 + 40);
    v68 = *(v94 + 48);
    v69 = v40 + v46[21];
    *v69 = *v94;
    *(v69 + 16) = v64;
    *(v69 + 24) = v65;
    *(v69 + 32) = v66;
    *(v69 + 40) = v67;
    *(v69 + 48) = v68;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v63 + *(v84 + 20), v40 + v46[22], type metadata accessor for DotSeriesAttributes);
    v70 = v85;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v93, v85, type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>);
    type metadata accessor for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>(0, &lazy cache variable for type metadata for BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>.Storage, type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v70, v86, type metadata accessor for BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>);
    type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>.Storage, type metadata accessor for BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, MEMORY[0x277CBB370]);
    return swift_storeEnumTagMultiPayload();
  }

  if (v31 == *MEMORY[0x277D101D0])
  {
    v88 = type metadata accessor for Date();
    _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v80 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v81 = v24;
    static HealthChartsData.SeriesData.empty()();
    v49 = v92;
    outlined init with copy of MinMaxSeriesAttributes(v83, v92, type metadata accessor for MinMaxSeriesAttributes);
    v50 = v90[2];
    v51 = v87;
    v50(v87, v24, v14);
    v52 = v91;
    outlined init with copy of MinMaxSeriesAttributes(v49, v91, type metadata accessor for MinMaxSeriesAttributes);
    v53 = v93;
    UUID.init()();
    v54 = v89;
    v50(v89, v51, v14);
    outlined init with copy of MinMaxSeriesAttributes(v52, v94, type metadata accessor for MinMaxSeriesAttributes);
    v40 = v53 + *(v82 + 60);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, MEMORY[0x277D101B0]);
    AnySeriesData.xScale.getter();
    v55 = AnySeriesData.yScale.getter();
    v57 = v56;
    v59 = v58;
    _s12HealthCharts12MinMaxSeriesVy10Foundation4DateVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for MinMaxSeriesViewModel<Date, ClosedRange<Double>>, &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277D10198], type metadata accessor for MinMaxSeriesViewModel);
    v46 = v60;
    v61 = v40 + v60[15];
    *v61 = v55;
    *(v61 + 8) = v57;
    *(v61 + 16) = v59 & 1;
    HealthChartsData.SeriesData.aggregation.getter();
    HealthChartsData.SeriesData.unit.getter();
    v50((v40 + v46[18]), v54, v14);
    HealthChartsData.SeriesData.transformed<A, B>(using:)();
    HealthChartsData.SeriesData.transformed<A, B>(using:)();
    v62 = v90[1];
    v62(v54, v14);
    _s12HealthCharts10DateDomainVWOhTm_0(v91, type metadata accessor for MinMaxSeriesAttributes);
    v62(v87, v14);
    _s12HealthCharts10DateDomainVWOhTm_0(v92, type metadata accessor for MinMaxSeriesAttributes);
    v62(v81, v14);
    goto LABEL_5;
  }

  type metadata accessor for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape)(0);
  v73 = *(v72 + 48);
  v74 = v80;
  *v80 = 0x655378614D6E694DLL;
  *(v74 + 8) = 0xEC00000073656972;
  (v30)(v74 + v73, v88, v25);
  v75 = v79;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_25145AB10;
  *(v76 + 56) = v75;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v76 + 32));
  outlined init with copy of MinMaxSeriesAttributes(v74, boxed_opaque_existential_1, type metadata accessor for HealthChartsErrors);
  print(_:separator:terminator:)();

  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors, type metadata accessor for HealthChartsErrors, &protocol conformance descriptor for HealthChartsErrors);
  swift_allocError();
  outlined init with copy of MinMaxSeriesAttributes(v74, v78, type metadata accessor for HealthChartsErrors);
  swift_willThrow();
  _s12HealthCharts10DateDomainVWOhTm_0(v74, type metadata accessor for HealthChartsErrors);
  return (*(v26 + 8))(v29, v25);
}

uint64_t DotSeriesAttributes.series(from:chartHeight:yDomain:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v84 = a1;
  v70 = type metadata accessor for HealthChartsErrors(0);
  MEMORY[0x28223BE20](v70);
  v71 = (&v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BuilderConditional<DotSeries<Date>, BuilderEmpty>(0);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DotSeries<Date>(0);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  MEMORY[0x28223BE20](v7);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v69 - v11;
  type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>(0);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12HealthCharts10DateDomainV19IntervalAggregationVSgMaTm_1(0, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v69 - v15;
  type metadata accessor for DotSeries<Double>(0, &lazy cache variable for type metadata for DotSeries<Double>, type metadata accessor for DotSeries);
  MEMORY[0x28223BE20](v17 - 8);
  v74 = &v69 - v18;
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, MEMORY[0x277D101A8]);
  v20 = v19;
  v73 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  v26 = type metadata accessor for HealthChartsData.SeriesDataShape();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v27 + 16);
  v31(v30, v84, v26, v28);
  v32 = (*(v27 + 88))(v30, v26);
  if (v32 == *MEMORY[0x277D101E0])
  {
    (*(v27 + 96))(v30, v26);
    v34 = v77;
    v33 = v78;
    v35 = v76;
    (*(v78 + 32))(v76, v30, v77);
    v84 = *(v33 + 16);
    v36 = v75;
    v84(v75, v35, v34);
    outlined init with copy of MinMaxSeriesAttributes(v82, v16, type metadata accessor for DotSeriesAttributes);
    v37 = type metadata accessor for DotSeriesAttributes(0);
    (*(*(v37 - 8) + 56))(v16, 0, 1, v37);
    v38 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v38);
    *(&v69 - 2) = v36;
    v39 = v85;
    v82 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E00I4MarkVs5NeverOTg5(closure #1 in DotSeries.init<>(seriesData:attributes:)partial apply, (&v69 - 4), v38);
    v85 = v39;

    v40 = v79;
    v41 = v80;
    v42.n128_f64[0] = (v84)(&v80[*(v79 + 52)], v36, v34);
    outlined init with copy of DotSeriesAttributes?(v16, v41 + *(v40 + 56), &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes, v42);
    UUID.init()();
    outlined destroy of DotSeriesAttributes?(v16);
    v43 = *(v33 + 8);
    v43(v35, v34);
    *(v41 + *(v40 + 60)) = v82;
    v43(v36, v34);
    v44 = v81;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v41, v81, type metadata accessor for DotSeries<Date>);
    type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>.Storage(0, &lazy cache variable for type metadata for BuilderConditional<DotSeries<Double>, DotSeries<Date>>.Storage, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v44, v83, type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>);
  }

  else if (v32 == *MEMORY[0x277D101C0])
  {
    (*(v27 + 96))(v30, v26);
    v45 = v73;
    (*(v73 + 32))(v25, v30, v20);
    (*(v45 + 16))(v22, v25, v20);
    outlined init with copy of MinMaxSeriesAttributes(v82, v16, type metadata accessor for DotSeriesAttributes);
    v46 = type metadata accessor for DotSeriesAttributes(0);
    (*(*(v46 - 8) + 56))(v16, 0, 1, v46);
    v47 = v74;
    _s12HealthCharts9DotSeriesV10seriesData10attributesACyxG0aB4Core0abF0V0dF0Vy_xSdG_AA0cD10AttributesVSgtcSd5BoundAG18IntervalChartValuePRtzrlufCSd_Tt2g5(v22, v16, v74);
    (*(v45 + 8))(v25, v20);
    v48 = v81;
    outlined init with take of LineSeries<Double>(v47, v81, &lazy cache variable for type metadata for DotSeries<Double>, type metadata accessor for DotSeries);
    type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>.Storage(0, &lazy cache variable for type metadata for BuilderConditional<DotSeries<Double>, DotSeries<Date>>.Storage, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v48, v83, type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>);
  }

  else
  {
    if (v32 != *MEMORY[0x277D101D0])
    {
      type metadata accessor for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape)(0);
      v63 = *(v62 + 48);
      v64 = v71;
      *v71 = 0x6569726553746F44;
      *(v64 + 8) = 0xE900000000000073;
      (v31)(v64 + v63, v84, v26);
      v65 = v70;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_25145AB10;
      *(v66 + 56) = v65;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v66 + 32));
      outlined init with copy of MinMaxSeriesAttributes(v64, boxed_opaque_existential_1, type metadata accessor for HealthChartsErrors);
      print(_:separator:terminator:)();

      _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors, type metadata accessor for HealthChartsErrors, &protocol conformance descriptor for HealthChartsErrors);
      swift_allocError();
      outlined init with copy of MinMaxSeriesAttributes(v64, v68, type metadata accessor for HealthChartsErrors);
      swift_willThrow();
      _s12HealthCharts10DateDomainVWOhTm_0(v64, type metadata accessor for HealthChartsErrors);
      return (*(v27 + 8))(v30, v26);
    }

    type metadata accessor for Date();
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    v49 = v76;
    static HealthChartsData.SeriesData.empty()();
    v50 = v16;
    outlined init with copy of MinMaxSeriesAttributes(v82, v16, type metadata accessor for DotSeriesAttributes);
    v51 = type metadata accessor for DotSeriesAttributes(0);
    (*(*(v51 - 8) + 56))(v16, 0, 1, v51);
    v52 = v77;
    v53 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v53);
    *(&v69 - 2) = v49;
    v54 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E00I4MarkVs5NeverOTg5(partial apply for closure #1 in DotSeries.init<>(seriesData:attributes:), (&v69 - 4), v53);

    v56 = v78;
    v55 = v79;
    v57 = v80;
    v58.n128_f64[0] = (*(v78 + 16))(&v80[*(v79 + 52)], v49, v52);
    outlined init with copy of DotSeriesAttributes?(v50, &v57[*(v55 + 56)], &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes, v58);
    UUID.init()();
    outlined destroy of DotSeriesAttributes?(v50);
    *&v57[*(v55 + 60)] = v54;
    (*(v56 + 8))(v49, v52);
    v59 = v57;
    v60 = v72;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v59, v72, type metadata accessor for DotSeries<Date>);
    type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(0, &lazy cache variable for type metadata for BuilderConditional<DotSeries<Date>, BuilderEmpty>.Storage, type metadata accessor for DotSeries<Date>, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v60, v83, type metadata accessor for BuilderConditional<DotSeries<Date>, BuilderEmpty>);
  }

  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>.Storage, type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>, type metadata accessor for BuilderConditional<DotSeries<Date>, BuilderEmpty>, MEMORY[0x277CBB370]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t LineSeriesAttributes.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8);
  _s12HealthCharts18DescriptionMessageVyAA02NoC0VGMaTm_0(0, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x277D839F8], MEMORY[0x277CC9160]);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = *(v1 + 8);
  v33 = *v1;
  v20 = *(v1 + 24);
  v37 = *(v1 + 32);
  LOBYTE(v1) = *(v1 + 16);
  outlined copy of AttributeColor(v33, v19, v1);
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  v38 = vdupq_n_s64(4uLL);
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  static NumberFormatStyleConfiguration.Precision.significantDigits<A>(_:)();
  MEMORY[0x253075120](v7, v10);
  (*(v5 + 8))(v7, v34);
  v21 = *(v32 + 8);
  v21(v12, v10);
  static NumberFormatStyleConfiguration.Notation.scientific.getter();
  MEMORY[0x253075110](v4, v10);
  (*(v35 + 8))(v4, v36);
  v21(v15, v10);
  v22 = MEMORY[0x277D837D0];
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB30;
  v40 = 0x28726F6C6F63;
  v41 = 0xE600000000000000;
  v38.i64[0] = v33;
  v38.i64[1] = v19;
  v39 = v1;
  v24 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v24);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  v25 = v41;
  *(v23 + 32) = v40;
  *(v23 + 40) = v25;
  strcpy(v38.i8, "strokeWidth(");
  v38.i8[13] = 0;
  v38.i16[7] = -5120;
  v40 = v20;
  v26 = FloatingPointFormatStyle.format(_:)();
  MEMORY[0x2530761B0](v26);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  v27 = v38.i64[1];
  *(v23 + 48) = v38.i64[0];
  *(v23 + 56) = v27;
  v38.i64[0] = 0x6C7974536B72616DLL;
  v38.i64[1] = 0xEA00000000002865;
  LOBYTE(v40) = v37;
  v28 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v28);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  v29 = v38.i64[1];
  *(v23 + 64) = v38.i64[0];
  *(v23 + 72) = v29;
  v38.i64[0] = v23;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], v22, MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v30 = BidirectionalCollection<>.joined(separator:)();
  v21(v18, v10);

  return v30;
}

uint64_t LineSeriesAttributes.series(from:chartHeight:yDomain:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v107 = a2;
  v83 = type metadata accessor for HealthChartsErrors(0);
  MEMORY[0x28223BE20](v83);
  v84 = (&v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BuilderConditional<LineSeries<Date>, BuilderEmpty>(0);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DotSeries<Double>(0, &lazy cache variable for type metadata for LineSeries<Double>, type metadata accessor for LineSeries);
  MEMORY[0x28223BE20](v6 - 8);
  v91 = &v82 - v7;
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, MEMORY[0x277D101A8]);
  v90 = v8;
  v89 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v88 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = &v82 - v11;
  type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>(0);
  MEMORY[0x28223BE20](v12 - 8);
  v104 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for UUID();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LineSeries<Date>(0);
  v97 = v15;
  MEMORY[0x28223BE20](v15);
  v96 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
  v18 = v17;
  v95 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v106 = &v82 - v22;
  v23 = type metadata accessor for HealthChartsData.SeriesDataShape();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v2;
  v28 = *(v2 + 8);
  v102 = *(v2 + 16);
  v30 = *(v2 + 24);
  v99 = *(v2 + 32);
  v98 = *(v2 + 40);
  v100 = *(v2 + 48);
  v31 = *(v24 + 16);
  v31(v27, v105, v23, v25);
  v32 = (*(v24 + 88))(v27, v23);
  v33 = *MEMORY[0x277D101E0];
  v101 = v28;
  if (v32 == v33)
  {
    (*(v24 + 96))(v27, v23);
    v34 = v95;
    v35 = v106;
    (*(v95 + 32))(v106, v27, v18);
    v105 = *(v34 + 16);
    v105(v20, v35, v18);
    v86 = v29;
    v36 = v28;
    v37 = v102;
    outlined copy of AttributeColor(v29, v36, v102);
    v38 = v92;
    UUID.init()();
    v39 = UUID.uuidString.getter();
    v41 = v40;
    (*(v93 + 8))(v38, v94);
    v42 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v42);
    *(&v82 - 4) = v20;
    *(&v82 - 3) = v39;
    *(&v82 - 2) = v41;
    v103 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E08LineMarkVs5NeverOTg5(closure #1 in LineSeries.init<>(datePointData:attributes:)partial apply, (&v82 - 6), v42);

    v43 = v96;
    v44 = v97;
    v105(&v96[*(v97 + 52)], v20, v18);
    UUID.init()();
    v45 = *(v34 + 8);
    v45(v106, v18);
    v46 = v43 + *(v44 + 56);
    v47 = v101;
    *v46 = v86;
    *(v46 + 8) = v47;
    *(v46 + 16) = v37;
    *(v46 + 24) = v30;
    v48 = v98;
    *(v46 + 32) = v99;
    *(v46 + 40) = v48;
    *(v46 + 48) = v100;
    *(v43 + *(v44 + 60)) = v103;
    v45(v20, v18);
    v49 = v104;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v43, v104, type metadata accessor for LineSeries<Date>);
    type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>.Storage(0);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v49, v107, type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>);
LABEL_7:
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>.Storage, type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>, type metadata accessor for BuilderConditional<LineSeries<Date>, BuilderEmpty>, MEMORY[0x277CBB370]);
    return swift_storeEnumTagMultiPayload();
  }

  v50 = v106;
  v82 = v18;
  v51 = v104;
  if (v32 == *MEMORY[0x277D101C0])
  {
    (*(v24 + 96))(v27, v23);
    v52 = v89;
    v53 = v87;
    v54 = v90;
    (*(v89 + 32))(v87, v27, v90);
    v55 = v88;
    (*(v52 + 16))(v88, v53, v54);
    *&v108 = v29;
    *(&v108 + 1) = v101;
    v109 = v102;
    v110 = v30;
    v111 = v99;
    v112 = v98;
    v113 = v100;
    outlined copy of AttributeColor(v29, v101, v102);
    v56 = v91;
    LineSeries.init<>(scalarPointData:attributes:)(v55, &v108, v91);
    (*(v52 + 8))(v53, v54);
    outlined init with take of LineSeries<Double>(v56, v51, &lazy cache variable for type metadata for LineSeries<Double>, type metadata accessor for LineSeries);
    type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>.Storage(0);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v51, v107, type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>);
    goto LABEL_7;
  }

  if (v32 == *MEMORY[0x277D101D0])
  {
    type metadata accessor for Date();
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    v57 = v50;
    static HealthChartsData.SeriesData.empty()();
    v86 = v29;
    v58 = v29;
    v59 = v101;
    v60 = v102;
    outlined copy of AttributeColor(v58, v101, v102);
    v61 = v92;
    UUID.init()();
    v62 = UUID.uuidString.getter();
    v64 = v63;
    (*(v93 + 8))(v61, v94);
    v65 = v82;
    v66 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v66);
    *(&v82 - 4) = v57;
    *(&v82 - 3) = v62;
    *(&v82 - 2) = v64;
    v67 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E08LineMarkVs5NeverOTg5(partial apply for closure #1 in LineSeries.init<>(datePointData:attributes:), (&v82 - 6), v66);

    v68 = v96;
    v69 = v97;
    v70 = v95;
    (*(v95 + 16))(&v96[*(v97 + 52)], v57, v65);
    UUID.init()();
    v71 = v68 + *(v69 + 56);
    *v71 = v86;
    *(v71 + 8) = v59;
    *(v71 + 16) = v60;
    *(v71 + 24) = v30;
    v72 = v98;
    *(v71 + 32) = v99;
    *(v71 + 40) = v72;
    *(v71 + 48) = v100;
    *(v68 + *(v69 + 60)) = v67;
    (*(v70 + 8))(v57, v65);
    v73 = v85;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v68, v85, type metadata accessor for LineSeries<Date>);
    type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(0, &lazy cache variable for type metadata for BuilderConditional<LineSeries<Date>, BuilderEmpty>.Storage, type metadata accessor for LineSeries<Date>, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v73, v107, type metadata accessor for BuilderConditional<LineSeries<Date>, BuilderEmpty>);
    goto LABEL_7;
  }

  type metadata accessor for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape)(0);
  v76 = *(v75 + 48);
  v77 = v84;
  *v84 = 0x69726553656E694CLL;
  *(v77 + 8) = 0xEA00000000007365;
  (v31)(v77 + v76, v105, v23);
  v78 = v83;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_25145AB10;
  *(v79 + 56) = v78;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v79 + 32));
  outlined init with copy of MinMaxSeriesAttributes(v77, boxed_opaque_existential_1, type metadata accessor for HealthChartsErrors);
  print(_:separator:terminator:)();

  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors, type metadata accessor for HealthChartsErrors, &protocol conformance descriptor for HealthChartsErrors);
  swift_allocError();
  outlined init with copy of MinMaxSeriesAttributes(v77, v81, type metadata accessor for HealthChartsErrors);
  swift_willThrow();
  _s12HealthCharts10DateDomainVWOhTm_0(v77, type metadata accessor for HealthChartsErrors);
  return (*(v24 + 8))(v27, v23);
}

uint64_t CategoryLevelSeriesAttributes.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D837D0];
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25145AB10;
  outlined copy of AttributeColor(v1, v2, v3);
  v6 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v6);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v5 + 32) = 0x28726F6C6F63;
  *(v5 + 40) = 0xE600000000000000;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], v4, MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v7 = BidirectionalCollection<>.joined(separator:)();

  return v7;
}

uint64_t CategoryLevelSeriesAttributes.series(from:chartHeight:yDomain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v61 = a1;
  v52 = type metadata accessor for HealthChartsErrors(0);
  MEMORY[0x28223BE20](v52);
  v53 = (&v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>(0);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for CategoryLevelSeries(0);
  v6 = MEMORY[0x28223BE20](v55);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0, v6);
  v9 = v8;
  v60 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v59 = &v48 - v12;
  MEMORY[0x28223BE20](v13);
  v65 = &v48 - v14;
  v15 = type metadata accessor for HealthChartsData.SeriesDataShape();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v2;
  v21 = *(v2 + 8);
  v22 = *(v2 + 16);
  v23 = *(v16 + 2);
  v23(v19, v61, v15, v17);
  v24 = (*(v16 + 11))(v19, v15);
  if (v24 == *MEMORY[0x277D101D8])
  {
    (*(v16 + 12))(v19, v15);
    v25 = v60;
    v26 = v65;
    (*(v60 + 32))(v65, v19, v9);
    v27 = *(v25 + 16);
    v28 = v59;
    v27(v59, v26, v9);
    v29 = v54;
    v27(v54, v28, v9);
    v62 = v20;
    v63 = v21;
    v64 = v22;
    v30 = *(v55 + 20);
    outlined copy of AttributeColor(v20, v21, v22);
    v31 = v56;
    CategoryLevelSeriesViewModel.init(data:attributes:)(v29, &v62, &v56[v30]);
    UUID.init()();
    v32 = *(v25 + 8);
    v32(v28, v9);
    v32(v65, v9);
    v33 = v31;
LABEL_5:
    v39 = v57;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v33, v57, type metadata accessor for CategoryLevelSeries);
    type metadata accessor for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>(0, &lazy cache variable for type metadata for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>.Storage, type metadata accessor for CategoryLevelSeries, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v39, v58, type metadata accessor for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>);
    type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>.Storage, type metadata accessor for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, MEMORY[0x277CBB370]);
    return swift_storeEnumTagMultiPayload();
  }

  v49 = v20;
  v50 = v21;
  v51 = v19;
  v54 = v16;
  v35 = v59;
  v34 = v60;
  v36 = v65;
  if (v24 == *MEMORY[0x277D101D0])
  {
    type metadata accessor for DateInterval();
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
    static HealthChartsData.SeriesData.empty()();
    v37 = v34;
    (*(v34 + 16))(v35, v36, v9);
    v62 = v49;
    v63 = v50;
    v64 = v22;
    v38 = *(v55 + 20);
    outlined copy of AttributeColor(v49, v50, v22);
    v33 = v56;
    CategoryLevelSeriesViewModel.init(data:attributes:)(v35, &v62, &v56[v38]);
    UUID.init()();
    (*(v37 + 8))(v36, v9);
    goto LABEL_5;
  }

  type metadata accessor for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape)(0);
  v42 = *(v41 + 48);
  v43 = v53;
  *v53 = 0xD000000000000013;
  *(v43 + 8) = 0x80000002514651A0;
  (v23)(v43 + v42, v61, v15);
  v44 = v52;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_25145AB10;
  *(v45 + 56) = v44;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v45 + 32));
  outlined init with copy of MinMaxSeriesAttributes(v43, boxed_opaque_existential_1, type metadata accessor for HealthChartsErrors);
  print(_:separator:terminator:)();

  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors, type metadata accessor for HealthChartsErrors, &protocol conformance descriptor for HealthChartsErrors);
  swift_allocError();
  outlined init with copy of MinMaxSeriesAttributes(v43, v47, type metadata accessor for HealthChartsErrors);
  swift_willThrow();
  _s12HealthCharts10DateDomainVWOhTm_0(v43, type metadata accessor for HealthChartsErrors);
  return v54[1](v51, v15);
}

uint64_t HealthChartsAttributes.SeriesTypeAttributes.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MinMaxSeriesAttributes(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DotSeriesAttributes(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2, a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v13, v6, type metadata accessor for MinMaxSeriesAttributes);
        v51 = 0x2878614D6E696DLL;
        v52 = 0xE700000000000000;
        v22 = MinMaxSeriesAttributes.debugDescription.getter();
        MEMORY[0x2530761B0](v22);

        MEMORY[0x2530761B0](41, 0xE100000000000000);
        v23 = v51;
        _s12HealthCharts10DateDomainVWOhTm_0(v6, type metadata accessor for MinMaxSeriesAttributes);
        return v23;
      }

      v16 = *v13;
      v17 = *(v13 + 1);
      v20 = v13[16];
      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v60, "categoryLevel(");
      HIBYTE(v60[1]) = -18;
      v43 = MEMORY[0x277D837D0];
      type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_25145AB10;
      v58 = 0x28726F6C6F63;
      v59 = 0xE600000000000000;
      v51 = v16;
      v52 = v17;
      v53 = v20;
      outlined copy of AttributeColor(v16, v17, v20);
      v45 = String.init<A>(describing:)();
      MEMORY[0x2530761B0](v45);

      MEMORY[0x2530761B0](41, 0xE100000000000000);
      v46 = v59;
      *(v44 + 32) = v58;
      *(v44 + 40) = v46;
      v51 = v44;
      type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], v43, MEMORY[0x277D83940]);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v47 = BidirectionalCollection<>.joined(separator:)();
      v49 = v48;

      MEMORY[0x2530761B0](v47, v49);
      goto LABEL_13;
    }

    v16 = *v13;
    v17 = *(v13 + 1);
    v29 = *(v13 + 3);
    v30 = v13[32];
    v31 = *(v13 + 5);
    v32 = v13[48];
    v20 = v13[16];
    v60[0] = 0x28656E696CLL;
    v60[1] = 0xE500000000000000;
    v51 = v16;
    v52 = v17;
    v53 = v20;
    v54 = v29;
    v55 = v30;
    v56 = v31;
    v57 = v32;
    v21 = LineSeriesAttributes.debugDescription.getter();
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v13, v9, type metadata accessor for DotSeriesAttributes);
      v60[0] = 678719332;
      v60[1] = 0xE400000000000000;
      v33 = MEMORY[0x277D837D0];
      type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_25145AB10;
      v58 = 0x28726F6C6F63;
      v59 = 0xE600000000000000;
      v35 = *(v9 + 1);
      v36 = v9[16];
      v51 = *v9;
      v52 = v35;
      v53 = v36;
      outlined copy of AttributeColor(v51, v35, v36);
      v37 = String.init<A>(describing:)();
      MEMORY[0x2530761B0](v37);

      MEMORY[0x2530761B0](41, 0xE100000000000000);
      v38 = v59;
      *(v34 + 32) = v58;
      *(v34 + 40) = v38;
      v51 = v34;
      type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], v33, MEMORY[0x277D83940]);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v40;

      MEMORY[0x2530761B0](v39, v41);

      MEMORY[0x2530761B0](41, 0xE100000000000000);
      v42 = v60[0];
      _s12HealthCharts10DateDomainVWOhTm_0(v9, type metadata accessor for DotSeriesAttributes);
      return v42;
    }

    v16 = *v13;
    v17 = *(v13 + 1);
    v18 = *(v13 + 3);
    v19 = v13[32];
    v20 = v13[16];
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v60, "distribution(");
    HIWORD(v60[1]) = -4864;
    v51 = v16;
    v52 = v17;
    v53 = v20;
    v54 = v18;
    v55 = v19;
    v21 = DistributionSeriesAttributes.debugDescription.getter();
  }

  else
  {
    v16 = *v13;
    v17 = *(v13 + 1);
    v25 = *(v13 + 3);
    v26 = v13[32];
    v27 = *(v13 + 5);
    v28 = v13[48];
    v20 = v13[16];
    v60[0] = 678584674;
    v60[1] = 0xE400000000000000;
    v51 = v16;
    v52 = v17;
    v53 = v20;
    v54 = v25;
    v55 = v26;
    v56 = v27;
    v57 = v28;
    v21 = BarSeriesAttributes.debugDescription.getter();
  }

  MEMORY[0x2530761B0](v21);
LABEL_13:

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  outlined consume of AttributeColor(v16, v17, v20);
  return v60[0];
}