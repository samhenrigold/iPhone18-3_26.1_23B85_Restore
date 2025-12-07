uint64_t HealthChartsAttributes.Series.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t x3_0@<X3>)
{
  v8 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(255, a2, a3, x3_0);
  type metadata accessor for _ContiguousArrayStorage();
  v9 = *(v8 - 8);
  swift_allocObject();
  v10 = static Array._adoptStorage(_:count:)();
  (*(v9 + 32))(v11, a1, v8);
  type metadata accessor for Array();
  result = HealthChartsAttributes.Series.init(attributes:)(v10, &v13);
  *a4 = v13;
  return result;
}

uint64_t static HealthChartsAttributes.Series.minMax(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v12 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  outlined init with copy of MinMaxSeriesAttributes(a1, &v17 - v13, a4);
  swift_storeEnumTagMultiPayload();
  return HealthChartsAttributes.Series.init(_:)(v14, a2, a3, a6, v15);
}

uint64_t ChartAttributes<>.updatingViewSpan(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v11 = v10;
  v12 = *(v10 + 36);
  v13 = *(v2 + v12);
  outlined init with copy of MinMaxSeriesAttributes(v2 + v12, v8, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
  v14 = *(v6 + 60);
  v15 = a2 + *(v11 + 36);
  outlined init with copy of DotSeriesAttributes?(&v8[v14], &v15[v14], &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, v16);
  v17 = type metadata accessor for DateDomain(0);
  outlined init with copy of MinMaxSeriesAttributes(a1, &v15[v14 + *(v17 + 20)], type metadata accessor for DateDomain.ViewDateSpan);
  _s12HealthCharts10DateDomainVWOhTm_0(&v8[v14], type metadata accessor for DateDomain);
  *v15 = v13;
  v18 = v2 + *(v11 + 40);
  v19 = *v18;
  v20 = *(v18 + 1);
  v22 = *(v18 + 4);
  v21 = *(v18 + 5);
  v23 = *(v18 + 6);
  *a2 = v9;
  v24 = a2 + *(v11 + 40);
  *v24 = v19;
  *(v24 + 1) = v20;
  *(v24 + 1) = *(v18 + 1);
  *(v24 + 4) = v22;
  *(v24 + 5) = v21;
  *(v24 + 6) = v23;
}

uint64_t ChartAttributes<>.updatingInterval(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v11 = v10;
  v12 = *(v10 + 36);
  v13 = *(v2 + v12);
  outlined init with copy of MinMaxSeriesAttributes(v2 + v12, v8, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
  v14 = *(v6 + 60);
  v15 = &v8[v14];
  v16 = a2 + *(v11 + 36);
  v17 = &v16[v14];
  outlined init with copy of MinMaxSeriesAttributes(a1, &v16[v14], type metadata accessor for DateDomain.IntervalAggregation);
  v18 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v19 = type metadata accessor for DateDomain(0);
  outlined init with copy of MinMaxSeriesAttributes(v15 + *(v19 + 20), &v17[*(v19 + 20)], type metadata accessor for DateDomain.ViewDateSpan);
  _s12HealthCharts10DateDomainVWOhTm_0(v15, type metadata accessor for DateDomain);
  *v16 = v13;
  v20 = v2 + *(v11 + 40);
  v21 = *v20;
  v22 = *(v20 + 1);
  v24 = *(v20 + 4);
  v23 = *(v20 + 5);
  v25 = *(v20 + 6);
  *a2 = v9;
  v26 = a2 + *(v11 + 40);
  *v26 = v21;
  *(v26 + 1) = v22;
  *(v26 + 1) = *(v20 + 1);
  *(v26 + 4) = v24;
  *(v26 + 5) = v23;
  *(v26 + 6) = v25;
}

unint64_t static HealthChartsAttributes.empty<>()@<X0>(uint64_t a1@<X8>)
{
  static ChartAttributes.empty<>()(v8);
  v2 = v8[5];
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v8[6];
  *(a1 + 112) = v9;
  v3 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v3;
  v4 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v4;
  _s12HealthCharts18DescriptionMessageVyAA02NoC0VGMaTm_0(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription, type metadata accessor for DescriptionMessage);
  *(a1 + 144) = v5;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v7 = MEMORY[0x277D84F90];
  *(a1 + 152) = result;
  *(a1 + 160) = v7;
  return result;
}

void _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateDomain(255);
    v7 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of MinMaxSeriesAttributes(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of DotSeriesAttributes?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), __n128 a5)
{
  _s12HealthCharts10DateDomainV19IntervalAggregationVSgMaTm_1(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x277CBB218]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for DotSeries<Double>(255, &lazy cache variable for type metadata for DotSeries<Double>, type metadata accessor for DotSeries);
    v7 = v6;
    type metadata accessor for DotSeries<Date>(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for DotSeries<Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
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

void type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    _sSNySdGMaTm_2(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v9[0] = v6;
    v9[1] = v6;
    v10 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v11 = v10;
    v12 = MEMORY[0x277CBB590];
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t _s12HealthCharts10DateDomainVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    type metadata accessor for _ContiguousArrayStorage<String>(255, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for closure #1 in HealthChartsAttributes.Series.debugDescription.getter@<X0>(uint64_t *a1@<X8>, uint64_t x3_0@<X3>)
{
  v5 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes(0, *(v3 + 16), *(v3 + 24), x3_0);
  result = HealthChartsAttributes.SeriesTypeAttributes.debugDescription.getter(v5);
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_25144BE74()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

void _s12HealthCharts18DescriptionMessageVyAA02NoC0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s16HealthChartsCore0aB4DataV11SeriesPointVy_SNySdGAFGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    _sSNySdGMaTm_2(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
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

void type metadata accessor for _ContiguousArrayStorage<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s6Charts18BuilderConditionalVy06HealthA09BarSeriesVySNySdGAGGAA0B5EmptyVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>(255, &lazy cache variable for type metadata for BarSeries<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for BarSeries);
    v7 = a3(a1, v6, MEMORY[0x277CBB218]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with take of BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>(uint64_t a1, uint64_t a2)
{
  _s6Charts18BuilderConditionalVy06HealthA09BarSeriesVySNySdGAGGAA0B5EmptyVGMaTm_0(0, &lazy cache variable for type metadata for BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>, MEMORY[0x277CBB378]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>.Storage(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>.Storage)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>(255, a2);
    _s6Charts18BuilderConditionalVy06HealthA09BarSeriesVySNySdGAGGAA0B5EmptyVGMaTm_0(255, &lazy cache variable for type metadata for BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>, MEMORY[0x277CBB378]);
    v2 = type metadata accessor for BuilderConditional.Storage();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>.Storage);
    }
  }
}

void type metadata accessor for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>.Storage(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>.Storage)
  {
    type metadata accessor for BarSeries<Double, Double>();
    type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>(255, &lazy cache variable for type metadata for BarSeries<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for BarSeries);
    v1 = type metadata accessor for BuilderConditional.Storage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>.Storage);
    }
  }
}

void _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation4DateVSNySdGGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    _sSNySdGMaTm_2(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
    v10[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>)
  {
    _s16HealthChartsCore0aB4DataV11SeriesPointVy_SNySdGAFGMaTm_1(255, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D101A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>);
  }

  return result;
}

double specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:)@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  _s16HealthChartsCore0aB4DataV11SeriesPointVy_SNySdGAFGMaTm_1(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for DistributionMarkViewModel<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for DistributionMarkViewModel);
  v5 = v4;
  _s16HealthChartsCore0aB4DataV11SeriesPointVy_SNySdGAFGMaTm_1(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D101A8]);
  HealthChartsData.SeriesData.aggregation.getter();
  result = *&v9;
  *a2 = v9;
  a2[1] = v8;
  v7 = a2 + *(v5 + 68);
  v7[8] = *(a1 + 32);
  *v7 = *(a1 + 24);
  return result;
}

uint64_t outlined init with take of BarSeries<ClosedRange<Double>, ClosedRange<Double>>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void type metadata accessor for BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>.Storage(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>.Storage)
  {
    type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>(255);
    type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>(255, &lazy cache variable for type metadata for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for DistributionSeries);
    v1 = type metadata accessor for BuilderConditional.Storage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>.Storage);
    }
  }
}

void type metadata accessor for DistributionSeriesViewModel<DateInterval, ClosedRange<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DistributionSeriesViewModel<DateInterval, ClosedRange<Double>>)
  {
    v2 = type metadata accessor for DateInterval();
    _sSNySdGMaTm_2(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277D10188]);
    v6[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v6[4] = MEMORY[0x277CBB1E8];
    v4 = type metadata accessor for DistributionSeriesViewModel(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for DistributionSeriesViewModel<DateInterval, ClosedRange<Double>>);
    }
  }
}

void _s12HealthCharts10DateDomainV19IntervalAggregationVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined destroy of DotSeriesAttributes?(uint64_t a1)
{
  _s12HealthCharts10DateDomainV19IntervalAggregationVSgMaTm_1(0, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of LineSeries<Double>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, void *))
{
  type metadata accessor for DotSeries<Double>(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>.Storage(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BuilderConditional<LineSeries<Date>, LineSeries<Double>>.Storage)
  {
    type metadata accessor for LineSeries<Date>(255);
    type metadata accessor for DotSeries<Double>(255, &lazy cache variable for type metadata for LineSeries<Double>, type metadata accessor for LineSeries);
    v1 = type metadata accessor for BuilderConditional.Storage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for BuilderConditional<LineSeries<Date>, LineSeries<Double>>.Storage);
    }
  }
}

uint64_t outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t instantiation function for generic protocol witness table for BarSeriesAttributes(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BarSeriesAttributes and conformance BarSeriesAttributes();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type BarSeriesAttributes and conformance BarSeriesAttributes()
{
  result = lazy protocol witness table cache variable for type BarSeriesAttributes and conformance BarSeriesAttributes;
  if (!lazy protocol witness table cache variable for type BarSeriesAttributes and conformance BarSeriesAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarSeriesAttributes and conformance BarSeriesAttributes);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DistributionSeriesAttributes(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DistributionSeriesAttributes and conformance DistributionSeriesAttributes();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DistributionSeriesAttributes and conformance DistributionSeriesAttributes()
{
  result = lazy protocol witness table cache variable for type DistributionSeriesAttributes and conformance DistributionSeriesAttributes;
  if (!lazy protocol witness table cache variable for type DistributionSeriesAttributes and conformance DistributionSeriesAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistributionSeriesAttributes and conformance DistributionSeriesAttributes);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for MinMaxSeriesAttributes(uint64_t a1)
{
  result = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type MinMaxSeriesAttributes and conformance MinMaxSeriesAttributes, type metadata accessor for MinMaxSeriesAttributes, &protocol conformance descriptor for MinMaxSeriesAttributes);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DotSeriesAttributes(uint64_t a1)
{
  result = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DotSeriesAttributes and conformance DotSeriesAttributes, type metadata accessor for DotSeriesAttributes, &protocol conformance descriptor for DotSeriesAttributes);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for LineSeriesAttributes(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LineSeriesAttributes and conformance LineSeriesAttributes();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LineSeriesAttributes and conformance LineSeriesAttributes()
{
  result = lazy protocol witness table cache variable for type LineSeriesAttributes and conformance LineSeriesAttributes;
  if (!lazy protocol witness table cache variable for type LineSeriesAttributes and conformance LineSeriesAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LineSeriesAttributes and conformance LineSeriesAttributes);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CategoryLevelSeriesAttributes(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CategoryLevelSeriesAttributes and conformance CategoryLevelSeriesAttributes();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CategoryLevelSeriesAttributes and conformance CategoryLevelSeriesAttributes()
{
  result = lazy protocol witness table cache variable for type CategoryLevelSeriesAttributes and conformance CategoryLevelSeriesAttributes;
  if (!lazy protocol witness table cache variable for type CategoryLevelSeriesAttributes and conformance CategoryLevelSeriesAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CategoryLevelSeriesAttributes and conformance CategoryLevelSeriesAttributes);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

void _sSNySdGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s12HealthCharts12MinMaxSeriesVy10Foundation4DateVSNySdGGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v10 = type metadata accessor for Date();
    _sSNySdGMaTm_2(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v14[0] = v10;
    v14[1] = v11;
    v14[2] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(a3, MEMORY[0x277CC9578], a4);
    v14[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v14[4] = MEMORY[0x277CBB1E8];
    v12 = a5(a1, v14);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t _s6Charts15AxisMarkBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZAA0B4TickV_AA0B8GridLineVAA0B10ValueLabelVys5NeverOGQP_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for (AxisTick, AxisGridLine, AxisValueLabel<Never>)(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AxisTick();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = type metadata accessor for AxisGridLine();
  v11 = *(v5 + 56);
  v20 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  _s6Charts9AxisMarksVys5NeverOGMaTm_0(0, &lazy cache variable for type metadata for AxisValueLabel<Never>, MEMORY[0x277CE1538], MEMORY[0x277CBB330]);
  v14 = v13;
  lazy protocol witness table accessor for type AxisValueLabel<Never> and conformance AxisValueLabel<A>();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v7[v15], v16, v14);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v20], v10);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v7[v15], v14);
}

uint64_t HealthChartsData.Aggregation.dateHorizontalAxisDefinitions(viewSpan:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  _s6Charts9AxisMarksVys5NeverOGMaTm_0(0, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v30 - v4;
  v5 = type metadata accessor for AxisMarkPosition();
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AxisMarkPreset();
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AxisMarkValues();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>(0);
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x28223BE20](v13);
  v30 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.Aggregation.AxisDetails?(0, &lazy cache variable for type metadata for HealthChartsData.Aggregation.AxisDetails?, type metadata accessor for HealthChartsData.Aggregation.AxisDetails);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v18 = type metadata accessor for HealthChartsData.Aggregation.AxisDetails(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v30 - v23;
  HealthChartsData.Aggregation.axisDetails(for:)(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of HealthChartsData.Aggregation.AxisDetails?(v17, &lazy cache variable for type metadata for HealthChartsData.Aggregation.AxisDetails?, type metadata accessor for HealthChartsData.Aggregation.AxisDetails);
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    static AxisMarkPreset.automatic.getter();
    static AxisMarkPosition.automatic.getter();
    static AxisMarkValues.automatic.getter();
    v25 = v33;
    AxisMarks.init<>(preset:position:values:stroke:)();
    (*(v34 + 32))(v38, v25, v35);
  }

  else
  {
    outlined init with take of HealthChartsData.Aggregation.AxisDetails(v17, v24);
    (*(v10 + 16))(v12, v24, v9);
    outlined init with copy of HealthChartsData.Aggregation.AxisDetails(v24, v21, type metadata accessor for HealthChartsData.Aggregation.AxisDetails);
    v26 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v27 = swift_allocObject();
    outlined init with take of HealthChartsData.Aggregation.AxisDetails(v21, v27 + v26);
    static AxisMarkPreset.automatic.getter();
    static AxisMarkPosition.automatic.getter();
    type metadata accessor for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>(0);
    lazy protocol witness table accessor for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    v28 = v30;
    AxisMarks.init(preset:position:values:content:)();
    _s12HealthCharts10DateDomainV04ViewC4SpanOWOhTm_0(v24, type metadata accessor for HealthChartsData.Aggregation.AxisDetails);
    (*(v31 + 32))(v38, v28, v32);
  }

  type metadata accessor for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>.Storage(0);
  return swift_storeEnumTagMultiPayload();
}

void _s6Charts9AxisMarksVys5NeverOGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
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

uint64_t type metadata accessor for HealthChartsData.Aggregation.AxisDetails(uint64_t a1)
{
  result = type metadata singleton initialization cache for HealthChartsData.Aggregation.AxisDetails;
  if (!type metadata singleton initialization cache for HealthChartsData.Aggregation.AxisDetails)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HealthChartsData.Aggregation.AxisDetails(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  type metadata accessor for AxisMarkValues();
  lazy protocol witness table accessor for type AxisMarkValues and conformance AxisMarkValues(&lazy protocol witness table cache variable for type AxisMarkValues and conformance AxisMarkValues, MEMORY[0x277CBB320], MEMORY[0x277CBB328]);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = v8;
  if (v7 == dispatch thunk of CustomStringConvertible.description.getter() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ((MEMORY[0x2530751B0](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

  v13 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  return v13 & 1;
}

uint64_t HealthChartsData.Aggregation.axisDetails(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v207 = a1;
  v211 = a2;
  v189 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v187 = &v173 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = &v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HealthChartsData.Aggregation.AxisDetails(0);
  v209 = *(v5 - 8);
  v210 = v5;
  MEMORY[0x28223BE20](v5);
  v182 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v183 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v194 = *(v8 - 8);
  v195 = v8;
  MEMORY[0x28223BE20](v8);
  v191 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v192 = *(v10 - 8);
  v193 = v10;
  MEMORY[0x28223BE20](v10);
  v190 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.Aggregation.AxisDetails?(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v12 - 8);
  v202 = &v173 - v13;
  v14 = type metadata accessor for Calendar.Component();
  v15 = *(v14 - 8);
  v204 = v14;
  v205 = v15;
  MEMORY[0x28223BE20](v14);
  v203 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v197 = *(v17 - 8);
  v198 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date.FormatStyle();
  v21 = *(v20 - 8);
  v200 = v20;
  v201 = v21;
  MEMORY[0x28223BE20](v20);
  v175 = &v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v199 = &v173 - v24;
  v206 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v206);
  v174 = &v173 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v177 = &v173 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v173 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v173 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v173 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v173 - v38;
  type metadata accessor for HealthChartsData.Aggregation.AxisDetails?(0, &lazy cache variable for type metadata for HealthChartsData.Aggregation.AxisDetails?, type metadata accessor for HealthChartsData.Aggregation.AxisDetails);
  MEMORY[0x28223BE20](v40 - 8);
  v176 = &v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v178 = &v173 - v43;
  MEMORY[0x28223BE20](v44);
  v186 = &v173 - v45;
  MEMORY[0x28223BE20](v46);
  v196 = &v173 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v173 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v173 - v52;
  v54 = type metadata accessor for HealthChartsData.Aggregation();
  v55 = *(v54 - 8);
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v173 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v55 + 16))(v58, v208, v54, v56);
  v59 = (*(v55 + 88))(v58, v54);
  if (v59 == *MEMORY[0x277D10200])
  {
    return (*(v209 + 56))(v211, 1, 1, v210);
  }

  if (v59 == *MEMORY[0x277D10220])
  {
    outlined init with copy of HealthChartsData.Aggregation.AxisDetails(v207, v39, type metadata accessor for DateDomain.ViewDateSpan);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = v199;
      v62 = MEMORY[0x2530750E0]();
      MEMORY[0x2530752B0](v62);
      v63 = v210;
      Date.FormatStyle.minute(_:)();
      (*(v197 + 8))(v19, v198);
      (*(v201 + 8))(v61, v200);
      v65 = v204;
      v64 = v205;
      v66 = v203;
      (*(v205 + 104))(v203, *MEMORY[0x277CC99A0], v204);
      v67 = type metadata accessor for Calendar();
      v68 = v202;
      (*(*(v67 - 8) + 56))(v202, 1, 1, v67);
      static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
      outlined destroy of HealthChartsData.Aggregation.AxisDetails?(v68, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
      (*(v64 + 8))(v66, v65);
      v53[*(v63 + 24)] = 0;
      (*(v209 + 56))(v53, 0, 1, v63);
    }

    else
    {
      (*(v209 + 56))(v53, 1, 1, v210);
      _s12HealthCharts10DateDomainV04ViewC4SpanOWOhTm_0(v39, type metadata accessor for DateDomain.ViewDateSpan);
    }

    v80 = v53;
    v81 = v211;
    return outlined init with take of HealthChartsData.Aggregation.AxisDetails?(v80, v81);
  }

  if (v59 == *MEMORY[0x277D101F8])
  {
    outlined init with copy of HealthChartsData.Aggregation.AxisDetails(v207, v36, type metadata accessor for DateDomain.ViewDateSpan);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v70 = v211;
    if (EnumCaseMultiPayload == 2)
    {
      v71 = v199;
      MEMORY[0x2530750E0]();
      v72 = v191;
      static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
      v73 = v190;
      static Date.FormatStyle.Symbol.Hour.twoDigits(amPM:)();
      (*(v194 + 8))(v72, v195);
      v74 = v210;
      Date.FormatStyle.hour(_:)();
      (*(v192 + 8))(v73, v193);
      (*(v201 + 8))(v71, v200);
      v76 = v204;
      v75 = v205;
      v77 = v203;
      (*(v205 + 104))(v203, *MEMORY[0x277CC9980], v204);
      v78 = type metadata accessor for Calendar();
      v79 = v202;
      (*(*(v78 - 8) + 56))(v202, 1, 1, v78);
      static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
      outlined destroy of HealthChartsData.Aggregation.AxisDetails?(v79, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
      (*(v75 + 8))(v77, v76);
      v50[*(v74 + 24)] = 0;
      (*(v209 + 56))(v50, 0, 1, v74);
    }

    else
    {
      (*(v209 + 56))(v50, 1, 1, v210);
      _s12HealthCharts10DateDomainV04ViewC4SpanOWOhTm_0(v36, type metadata accessor for DateDomain.ViewDateSpan);
    }

    v80 = v50;
    v81 = v70;
    return outlined init with take of HealthChartsData.Aggregation.AxisDetails?(v80, v81);
  }

  v82 = v211;
  if (v59 == *MEMORY[0x277D101F0])
  {
    outlined init with copy of HealthChartsData.Aggregation.AxisDetails(v207, v33, type metadata accessor for DateDomain.ViewDateSpan);
    v83 = swift_getEnumCaseMultiPayload();
    if (v83 == 3)
    {
      v124 = v199;
      v125 = MEMORY[0x2530750E0]();
      v126 = v179;
      MEMORY[0x2530752D0](v125);
      v127 = v210;
      v128 = *(v210 + 20);
      v129 = v182;
      Date.FormatStyle.weekday(_:)();
      (*(v180 + 8))(v126, v181);
      v131 = v200;
      v130 = v201;
      (*(v201 + 8))(v124, v200);
      v133 = v204;
      v132 = v205;
      v134 = v203;
      (*(v205 + 104))(v203, *MEMORY[0x277CC9968], v204);
      v135 = type metadata accessor for Calendar();
      v136 = v202;
      (*(*(v135 - 8) + 56))(v202, 1, 1, v135);
      static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
      outlined destroy of HealthChartsData.Aggregation.AxisDetails?(v136, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
      (*(v132 + 8))(v134, v133);
      v129[*(v127 + 24)] = 0;
      v137 = type metadata accessor for AxisMarkValues();
      v88 = v196;
      (*(*(v137 - 8) + 32))(v196, v129, v137);
      v138 = &v129[v128];
      v82 = v211;
      (*(v130 + 32))(&v88[*(v127 + 20)], v138, v131);
      v88[*(v127 + 24)] = 1;
      (*(v209 + 56))(v88, 0, 1, v127);
    }

    else if (v83 == 4)
    {
      v84 = v199;
      v85 = MEMORY[0x2530750E0]();
      v86 = v183;
      MEMORY[0x253075200](v85);
      v87 = v210;
      v88 = v196;
      Date.FormatStyle.day(_:)();
      (*(v184 + 8))(v86, v185);
      (*(v201 + 8))(v84, v200);
      v90 = v204;
      v89 = v205;
      v91 = v203;
      (*(v205 + 104))(v203, *MEMORY[0x277CC9968], v204);
      v92 = type metadata accessor for Calendar();
      v93 = v202;
      (*(*(v92 - 8) + 56))(v202, 1, 1, v92);
      static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
      outlined destroy of HealthChartsData.Aggregation.AxisDetails?(v93, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
      (*(v89 + 8))(v91, v90);
      v88[*(v87 + 24)] = 0;
      (*(v209 + 56))(v88, 0, 1, v87);
    }

    else
    {
      v88 = v196;
      (*(v209 + 56))(v196, 1, 1, v210);
      _s12HealthCharts10DateDomainV04ViewC4SpanOWOhTm_0(v33, type metadata accessor for DateDomain.ViewDateSpan);
    }

    v80 = v88;
    goto LABEL_44;
  }

  if (v59 != *MEMORY[0x277D10208])
  {
    v111 = v209;
    if (v59 == *MEMORY[0x277D10218])
    {
      v112 = v177;
      outlined init with copy of HealthChartsData.Aggregation.AxisDetails(v207, v177, type metadata accessor for DateDomain.ViewDateSpan);
      v113 = swift_getEnumCaseMultiPayload();
      if (v113 == 6)
      {
        v155 = v199;
        MEMORY[0x2530750E0]();
        v156 = v187;
        static Date.FormatStyle.Symbol.Month.narrow.getter();
        v157 = v210;
        v158 = *(v210 + 20);
        v159 = v182;
        Date.FormatStyle.month(_:)();
        (*(v188 + 8))(v156, v189);
        v160 = v201;
        v161 = v155;
        v162 = v200;
        (*(v201 + 8))(v161, v200);
        v164 = v204;
        v163 = v205;
        v165 = v203;
        (*(v205 + 104))(v203, *MEMORY[0x277CC9998], v204);
        v166 = type metadata accessor for Calendar();
        v167 = v202;
        (*(*(v166 - 8) + 56))(v202, 1, 1, v166);
        static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
        outlined destroy of HealthChartsData.Aggregation.AxisDetails?(v167, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
        (*(v163 + 8))(v165, v164);
        v159[*(v157 + 24)] = 0;
        v168 = type metadata accessor for AxisMarkValues();
        v118 = v178;
        (*(*(v168 - 8) + 32))(v178, v159, v168);
        v169 = &v159[v158];
        v82 = v211;
        (*(v160 + 32))(&v118[*(v157 + 20)], v169, v162);
        v118[*(v157 + 24)] = 1;
        (*(v111 + 56))(v118, 0, 1, v157);
        goto LABEL_40;
      }

      if (v113 == 5)
      {
        v114 = v199;
        v115 = MEMORY[0x2530750E0]();
        v116 = v187;
        MEMORY[0x253075280](v115);
        v117 = v210;
        v118 = v178;
        Date.FormatStyle.month(_:)();
        (*(v188 + 8))(v116, v189);
        (*(v201 + 8))(v114, v200);
        v120 = v204;
        v119 = v205;
        v121 = v203;
        (*(v205 + 104))(v203, *MEMORY[0x277CC9998], v204);
        v122 = type metadata accessor for Calendar();
        v123 = v202;
        (*(*(v122 - 8) + 56))(v202, 1, 1, v122);
LABEL_32:
        static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
        outlined destroy of HealthChartsData.Aggregation.AxisDetails?(v123, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
        (*(v119 + 8))(v121, v120);
        v118[*(v117 + 24)] = 0;
        (*(v111 + 56))(v118, 0, 1, v117);
LABEL_40:
        v80 = v118;
        goto LABEL_44;
      }

      v170 = *(v111 + 56);
      v171 = &v210;
    }

    else
    {
      if (v59 != *MEMORY[0x277D10210])
      {
        (*(v209 + 56))(v211, 1, 1, v210);
        return (*(v55 + 8))(v58, v54);
      }

      v112 = v174;
      outlined init with copy of HealthChartsData.Aggregation.AxisDetails(v207, v174, type metadata accessor for DateDomain.ViewDateSpan);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v139 = v199;
        MEMORY[0x2530750E0]();
        v140 = v187;
        static Date.FormatStyle.Symbol.Month.narrow.getter();
        v117 = v210;
        v118 = v176;
        Date.FormatStyle.month(_:)();
        (*(v188 + 8))(v140, v189);
        (*(v201 + 8))(v139, v200);
        v120 = v204;
        v119 = v205;
        v121 = v203;
        (*(v205 + 104))(v203, *MEMORY[0x277CC9998], v204);
        v141 = type metadata accessor for Calendar();
        v123 = v202;
        (*(*(v141 - 8) + 56))(v202, 1, 1, v141);
        goto LABEL_32;
      }

      v170 = *(v111 + 56);
      v171 = &v208;
    }

    v172 = *(v171 - 32);
    v170(v172, 1, 1, v210);
    _s12HealthCharts10DateDomainV04ViewC4SpanOWOhTm_0(v112, type metadata accessor for DateDomain.ViewDateSpan);
    v80 = v172;
    goto LABEL_44;
  }

  outlined init with copy of HealthChartsData.Aggregation.AxisDetails(v207, v30, type metadata accessor for DateDomain.ViewDateSpan);
  v94 = swift_getEnumCaseMultiPayload();
  v95 = v209;
  if (v94 == 6)
  {
    v146 = v199;
    v147 = MEMORY[0x2530750E0]();
    v148 = v187;
    MEMORY[0x253075280](v147);
    v149 = v210;
    v97 = v186;
    Date.FormatStyle.month(_:)();
    (*(v188 + 8))(v148, v189);
    (*(v201 + 8))(v146, v200);
    v151 = v204;
    v150 = v205;
    v152 = v203;
    (*(v205 + 104))(v203, *MEMORY[0x277CC9998], v204);
    v153 = type metadata accessor for Calendar();
    v154 = v202;
    (*(*(v153 - 8) + 56))(v202, 1, 1, v153);
    static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
    outlined destroy of HealthChartsData.Aggregation.AxisDetails?(v154, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
    (*(v150 + 8))(v152, v151);
    v97[*(v149 + 24)] = 0;
    (*(v95 + 56))(v97, 0, 1, v149);
  }

  else
  {
    v96 = v210;
    v97 = v186;
    if (v94 == 5)
    {
      v142 = v199;
      v143 = MEMORY[0x2530750E0]();
      v144 = v187;
      MEMORY[0x253075280](v143);
      Date.FormatStyle.month(_:)();
      (*(v188 + 8))(v144, v189);
      (*(v201 + 8))(v142, v200);
      v107 = v204;
      v106 = v205;
      v108 = v203;
      (*(v205 + 104))(v203, *MEMORY[0x277CC9998], v204);
      v145 = type metadata accessor for Calendar();
      v110 = v202;
      (*(*(v145 - 8) + 56))(v202, 1, 1, v145);
    }

    else
    {
      if (v94 != 4)
      {
        (*(v209 + 56))(v186, 1, 1, v210);
        _s12HealthCharts10DateDomainV04ViewC4SpanOWOhTm_0(v30, type metadata accessor for DateDomain.ViewDateSpan);
        v80 = v97;
        goto LABEL_44;
      }

      v98 = v175;
      v99 = MEMORY[0x2530750E0]();
      v100 = v187;
      MEMORY[0x253075280](v99);
      v101 = v199;
      Date.FormatStyle.month(_:)();
      (*(v188 + 8))(v100, v189);
      v102 = v200;
      v103 = *(v201 + 8);
      v104 = v103(v98, v200);
      v105 = v183;
      MEMORY[0x253075200](v104);
      Date.FormatStyle.day(_:)();
      (*(v184 + 8))(v105, v185);
      v103(v101, v102);
      v107 = v204;
      v106 = v205;
      v108 = v203;
      (*(v205 + 104))(v203, *MEMORY[0x277CC9968], v204);
      v109 = type metadata accessor for Calendar();
      v110 = v202;
      (*(*(v109 - 8) + 56))(v202, 1, 1, v109);
    }

    static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
    outlined destroy of HealthChartsData.Aggregation.AxisDetails?(v110, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
    (*(v106 + 8))(v108, v107);
    v97[*(v96 + 24)] = 0;
    (*(v95 + 56))(v97, 0, 1, v96);
  }

  v80 = v97;
LABEL_44:
  v81 = v82;
  return outlined init with take of HealthChartsData.Aggregation.AxisDetails?(v80, v81);
}

void type metadata accessor for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>.Storage(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>.Storage)
  {
    type metadata accessor for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>(255);
    _s6Charts9AxisMarksVys5NeverOGMaTm_0(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
    v1 = type metadata accessor for BuilderConditional.Storage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>.Storage);
    }
  }
}

uint64_t outlined init with take of HealthChartsData.Aggregation.AxisDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsData.Aggregation.AxisDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in HealthChartsData.Aggregation.dateHorizontalAxisDefinitions(viewSpan:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v56 = a2;
  v3 = type metadata accessor for AxisValueLabelOrientation();
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AxisValueLabelCollisionResolution();
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Date.FormatStyle();
  v7 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6Charts9AxisMarksVys5NeverOGMaTm_0(0, &lazy cache variable for type metadata for AxisValueLabel<Never>, MEMORY[0x277CE1538], MEMORY[0x277CBB330]);
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v52 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = &v43 - v13;
  v49 = type metadata accessor for AxisGridLine();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v57 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for AxisTick.Length();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = type metadata accessor for AxisTick();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - v24;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  static AxisTick.Length.automatic.getter();
  v44 = v25;
  AxisTick.init(centered:length:stroke:)();
  AxisGridLine.init(centered:stroke:)();
  v26 = type metadata accessor for HealthChartsData.Aggregation.AxisDetails(0);
  (*(v7 + 16))(v9, v53 + *(v26 + 20), v48);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  lazy protocol witness table accessor for type AxisMarkValues and conformance AxisMarkValues(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  v27 = v46;
  AxisValueLabel.init<A>(format:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
  v28 = *(v20 + 16);
  v45 = v22;
  v29 = v25;
  v30 = v19;
  v28(v22, v29, v19);
  v58[0] = v22;
  v31 = v47;
  v32 = v57;
  v33 = v49;
  (*(v47 + 16))(v57, v17, v49);
  v58[1] = v32;
  v35 = v54;
  v34 = v55;
  v36 = v52;
  v37 = v27;
  (*(v54 + 16))(v52, v27, v55);
  v58[2] = v36;
  v38 = v36;
  _s6Charts15AxisMarkBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZAA0B4TickV_AA0B8GridLineVAA0B10ValueLabelVys5NeverOGQP_Tt1g5(v58, v56);
  v39 = *(v35 + 8);
  v39(v37, v34);
  v40 = *(v31 + 8);
  v40(v17, v33);
  v41 = *(v20 + 8);
  v41(v44, v30);
  v39(v38, v34);
  v40(v57, v33);
  return (v41)(v45, v30);
}

uint64_t sub_25144FC2C()
{
  v1 = (type metadata accessor for HealthChartsData.Aggregation.AxisDetails(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for AxisMarkValues();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = type metadata accessor for Date.FormatStyle();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in HealthChartsData.Aggregation.dateHorizontalAxisDefinitions(viewSpan:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HealthChartsData.Aggregation.AxisDetails(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in HealthChartsData.Aggregation.dateHorizontalAxisDefinitions(viewSpan:)(v4, a1);
}

uint64_t _s12HealthCharts10DateDomainV04ViewC4SpanOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AxisMarkValues and conformance AxisMarkValues(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for (AxisTick, AxisGridLine, AxisValueLabel<Never>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AxisTick, AxisGridLine, AxisValueLabel<Never>))
  {
    type metadata accessor for AxisTick();
    type metadata accessor for AxisGridLine();
    _s6Charts9AxisMarksVys5NeverOGMaTm_0(255, &lazy cache variable for type metadata for AxisValueLabel<Never>, MEMORY[0x277CE1538], MEMORY[0x277CBB330]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (AxisTick, AxisGridLine, AxisValueLabel<Never>));
    }
  }
}

void type metadata accessor for HealthChartsData.Aggregation.AxisDetails?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined init with copy of HealthChartsData.Aggregation.AxisDetails(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of HealthChartsData.Aggregation.AxisDetails?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.Aggregation.AxisDetails?(0, &lazy cache variable for type metadata for HealthChartsData.Aggregation.AxisDetails?, type metadata accessor for HealthChartsData.Aggregation.AxisDetails);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HealthChartsData.Aggregation.AxisDetails?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for HealthChartsData.Aggregation.AxisDetails?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2514500B4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for AxisMarkValues();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
  }

  else
  {
    v12 = type metadata accessor for Date.FormatStyle();
    v13 = *(v12 - 8);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 24));
      if (v15 >= 2)
      {
        return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 20);
  }

  return v10(v11, a2, v9);
}

uint64_t sub_2514501E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v9 = type metadata accessor for AxisMarkValues();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(v10 + 56);
    v13 = a1;
  }

  else
  {
    result = type metadata accessor for Date.FormatStyle();
    v15 = *(result - 8);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v11 = result;
    v12 = *(v15 + 56);
    v13 = a1 + *(a4 + 20);
  }

  return v12(v13, a2, a2, v11);
}

uint64_t type metadata completion function for HealthChartsData.Aggregation.AxisDetails(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for AxisMarkValues();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for Date.FormatStyle();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t ChartAttributes.AxisAttributes.init(labels:domain:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = *a1;
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v10 = type metadata accessor for ChartAttributes.AxisAttributes(0, v12);
  return (*(*(a4 - 8) + 32))(&a7[*(v10 + 52)], a2, a4);
}

__n128 ChartAttributes.init(height:xAxisAttributes:yAxisAttributes:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>)
{
  v11 = *a2;
  v12 = *(a2 + 5);
  v13 = *(a2 + 6);
  *a5 = a6;
  v14 = type metadata accessor for ChartAttributes(0, a3, a4, a4);
  v15 = *(v14 + 36);
  v21[0] = a3;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a4;
  v16 = type metadata accessor for ChartAttributes.AxisAttributes(0, v21);
  v19 = *(a2 + 24);
  v20 = *(a2 + 8);
  (*(*(v16 - 8) + 32))(a5 + v15, a1, v16);
  v17 = a5 + *(v14 + 40);
  *v17 = v11;
  result = v19;
  *(v17 + 8) = v20;
  *(v17 + 24) = v19;
  *(v17 + 5) = v12;
  *(v17 + 6) = v13;
  return result;
}

uint64_t LineSeriesAttributes.init(color:strokeWidth:markStyle:interpolationMethod:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *(result + 16);
  v7 = *a2;
  *a5 = *result;
  *(a5 + 16) = v6;
  *(a5 + 24) = a6;
  *(a5 + 32) = v7;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  return result;
}

uint64_t HealthChartsAttributes.init<A>(chartAttributes:description:series:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a3;
  v16 = type metadata accessor for ChartAttributes(0, a4, a6, a4);
  v17 = *(v16 - 8);
  (*(v17 + 16))(a8, a1, v16);
  v19 = type metadata accessor for HealthChartsAttributes(0, a4, a6, v18);
  v20 = (a8 + *(v19 + 36));
  v22 = type metadata accessor for DescriptionMessage(0, a5, a7, v21);
  v20[3] = v22;
  v20[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v22 - 8) + 32))(boxed_opaque_existential_1, a2, v22);
  result = (*(v17 + 8))(a1, v16);
  *(a8 + *(v19 + 40)) = v15;
  return result;
}

{
  v15 = *a3;
  v16 = type metadata accessor for ChartAttributes(0, a4, a6, a4);
  v17 = *(v16 - 8);
  (*(v17 + 16))(a8, a1, v16);
  v19 = type metadata accessor for HealthChartsAttributes(0, a4, a6, v18);
  v20 = (a8 + *(v19 + 36));
  v20[3] = a5;
  v20[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  result = (*(v17 + 8))(a1, v16);
  *(a8 + *(v19 + 40)) = v15;
  return result;
}

__n128 DistributionSeriesAttributes.init(color:barWidth:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  v4 = *a2;
  v5 = *(a2 + 8);
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u64[1] = v4;
  a3[2].n128_u8[0] = v5;
  return result;
}

__n128 BarSeriesAttributes.init(color:barWidth:endStyle:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *(a3 + 8);
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u64[1] = v5;
  a4[2].n128_u8[0] = v6;
  a4[2].n128_u64[1] = v7;
  a4[3].n128_u8[0] = v8;
  return result;
}

uint64_t DotSeriesAttributes.init(color:symbol:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = type metadata accessor for DotSeriesAttributes(0);
  return outlined init with take of DotSeriesAttributes.Symbol(a2, a3 + *(v6 + 20), type metadata accessor for DotSeriesAttributes.Symbol);
}

uint64_t MinMaxSeriesAttributes.init(backgroundBarAttributes:dotAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 48) = v9;
  v10 = type metadata accessor for MinMaxSeriesAttributes(0);
  return outlined init with take of DotSeriesAttributes.Symbol(a2, a3 + *(v10 + 20), type metadata accessor for DotSeriesAttributes);
}

uint64_t outlined init with take of DotSeriesAttributes.Symbol(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 CategoryLevelSeriesAttributes.init(color:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

Swift::Int ChartAttributes.AxisLabels.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253076640](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ChartAttributes<A>.AxisLabels(uint64_t a1)
{
  Hasher.init(_seed:)();
  ChartAttributes.AxisLabels.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ChartAttributes.xAxisAttributes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v9.val[0] = *(a1 + 16);
  v9.val[1] = v9.val[0];
  v5 = v8;
  vst2q_f64(v5, v9);
  v6 = type metadata accessor for ChartAttributes.AxisAttributes(0, v8);
  return (*(*(v6 - 8) + 16))(a2, v2 + v4, v6);
}

uint64_t ChartAttributes.yAxisAttributes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 40);
  v4 = *(v3 + 8);
  v6 = *(v3 + 32);
  v5 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(v3 + 16);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributeColor()
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

Swift::Int LineSeriesAttributes.MarkStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253076640](v1);
  return Hasher._finalize()();
}

uint64_t DotSeriesAttributes.init<A>(symbol:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 2;
  v9 = (a5 + *(type metadata accessor for DotSeriesAttributes(0) + 20));
  v10 = swift_allocObject();
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  *(v10 + 4) = a1;
  *(v10 + 5) = a2;
  *v9 = partial apply for closure #1 in DotSeriesAttributes.init<A>(symbol:);
  v9[1] = v10;
  type metadata accessor for DotSeriesAttributes.Symbol(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #1 in DotSeriesAttributes.init<A>(symbol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1);
  v5(v4);
  return AnyView.init<A>(_:)();
}

uint64_t sub_251450E58()
{

  return swift_deallocObject();
}

uint64_t HealthChartsAttributes.chartAttributes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for ChartAttributes(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

unint64_t lazy protocol witness table accessor for type LineSeriesAttributes.MarkStyle and conformance LineSeriesAttributes.MarkStyle()
{
  result = lazy protocol witness table cache variable for type LineSeriesAttributes.MarkStyle and conformance LineSeriesAttributes.MarkStyle;
  if (!lazy protocol witness table cache variable for type LineSeriesAttributes.MarkStyle and conformance LineSeriesAttributes.MarkStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LineSeriesAttributes.MarkStyle and conformance LineSeriesAttributes.MarkStyle);
  }

  return result;
}

uint64_t type metadata completion function for ChartAttributes(uint64_t a1)
{
  v8 = 0;
  v11 = MEMORY[0x277D839F8];
  v14.val[0] = *(a1 + 16);
  v14.val[1] = v14.val[0];
  v1 = v7;
  v6 = v14.val[0];
  vst2q_f64(v1, v14);
  result = type metadata accessor for ChartAttributes.AxisAttributes(319, v7);
  if (v3 <= 0x3F)
  {
    v9 = 0;
    v12 = result;
    v4 = lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
    v7[2] = *&v6.f64[1];
    v7[0] = *&v6.f64[0];
    v7[1] = &type metadata for ScalarDomain;
    v7[3] = v4;
    result = type metadata accessor for ChartAttributes.AxisAttributes(319, v7);
    if (v5 <= 0x3F)
    {
      v10 = 0;
      v13 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartAttributes(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 56;
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
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 8) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v6 + 1 + v18) & ~v6);
    }

    v19 = *(((v18 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for ChartAttributes(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 56;
  if (v8 >= a3)
  {
    v15 = 0;
    v16 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = a3 - v8;
    if (((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFC8)
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

    v16 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
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

LABEL_36:
        v20 = (&a1[v9 + 8] & ~v9);
        if (v6 < 0x7FFFFFFF)
        {
          v24 = &v20[v10 + 7] & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v24 + 40) = 0u;
            *(v24 + 24) = 0u;
            *(v24 + 8) = 0u;
            *v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v24 + 8) = a2 - 1;
          }
        }

        else if (v7 >= a2)
        {
          v25 = *(v5 + 56);

          v25(&v20[v9 + 1] & ~v9);
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

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFC8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFF8) != 0xFFFFFFC8)
  {
    v18 = ~v8 + a2;
    v19 = a1;
    bzero(a1, v11);
    a1 = v19;
    *v19 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *&a1[v11] = v17;
    }

    else
    {
      *&a1[v11] = v17;
    }
  }

  else if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t type metadata completion function for ChartAttributes.AxisAttributes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ChartAttributes.AxisLabels(319, a1[2], a1[4], a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartAttributes.AxisAttributes(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
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

  v11 = a1[v9];
  if (!a1[v9])
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
        LODWORD(v9) = *a1 | (a1[2] << 16);
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

void storeEnumTagSinglePayload for ChartAttributes.AxisAttributes(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
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
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
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
LABEL_44:
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
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t get_enum_tag_for_layout_string_12HealthCharts14AttributeColorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t destructiveInjectEnumTag for AttributeColor(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LineSeriesAttributes(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LineSeriesAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s12HealthCharts13BarAttributesO8EndStyleOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12HealthCharts13BarAttributesO8EndStyleOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t _s12HealthCharts13BarAttributesO8EndStyleOwug_0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12HealthCharts13BarAttributesO8EndStyleOwui_0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BarSeriesAttributes(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BarSeriesAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DistributionSeriesAttributes(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DistributionSeriesAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 253)
  {
    v5 = *(a1 + 16);
    if (v5 > 2)
    {
      return (v5 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata completion function for MinMaxSeriesAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for DotSeriesAttributes.Symbol(uint64_t a1, __n128 a2)
{
  type metadata accessor for BasicChartSymbolShape();
  if (v2 <= 0x3F)
  {
    type metadata accessor for (strokeWidth: CGFloat, width: CGFloat)();
    if (v3 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (strokeWidth: CGFloat, width: CGFloat)()
{
  if (!lazy cache variable for type metadata for (strokeWidth: CGFloat, width: CGFloat))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (strokeWidth: CGFloat, width: CGFloat));
    }
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributeColor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributeColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for HealthChartsAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for ChartAttributes(319, v4, v5, a4);
  if (v7 <= 0x3F)
  {
    result = type metadata accessor for DescriptionContentProvider();
    if (v9 <= 0x3F)
    {
      result = type metadata accessor for HealthChartsAttributes.Series(319, v4, v5, v8);
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsAttributes(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
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
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 8) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v6 + 1 + v18) & ~v6);
    }

    v19 = *(((v18 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for HealthChartsAttributes(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = ((((((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v15 = 0;
    v16 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = a3 - v8;
    if (((((((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

    v16 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
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

LABEL_36:
        v20 = (&a1[v9 + 8] & ~v9);
        if (v6 < 0x7FFFFFFF)
        {
          v24 = &v20[v10 + 7] & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v24 + 40) = 0u;
            *(v24 + 24) = 0u;
            *(v24 + 8) = 0u;
            *v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v24 + 8) = a2 - 1;
          }
        }

        else if (v7 >= a2)
        {
          v25 = *(v5 + 56);

          v25(&v20[v9 + 1] & ~v9);
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

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((((((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((((((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v18 = ~v8 + a2;
    v19 = a1;
    bzero(a1, v11);
    a1 = v19;
    *v19 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *&a1[v11] = v17;
    }

    else
    {
      *&a1[v11] = v17;
    }
  }

  else if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t type metadata completion function for HealthChartsAttributes.SeriesTypeAttributes(uint64_t a1)
{
  result = type metadata accessor for DotSeriesAttributes(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MinMaxSeriesAttributes(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for HealthChartsAttributes.Series(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_OWORD *static ScalarDomain.automaticQuantity<A>(default:unit:boundaryRule:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)@<X8>)
{
  v41 = a5;
  v38 = a2;
  v39 = a1;
  v42 = a6;
  v40 = a4;
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AutomaticQuantity(0);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HealthChartsUnit();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v22 = *a3;
  v23 = a3[1];
  v37 = *(a3 + 16);
  v24 = a3[3];
  v25 = *(a3 + 32);
  _s16HealthChartsCore0aB4UnitVSgWOcTm_1(v38, v14, type metadata accessor for HealthChartsUnit?);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14);
    v26 = v40;
    (*(v7 + 16))(v9, v39, v40);
    *&v43 = v22;
    *(&v43 + 1) = v23;
    *&v44 = v37;
    *(&v44 + 1) = v24;
    LOWORD(v45) = v25;
    AutomaticNumeric.init<A>(defaultRange:boundaryRule:)(v9, &v43, v26, v41, &v47);
    v27 = v42;
    v42[4] = 0x6974616D6F747561;
    v27[5] = 0xE900000000000063;
    outlined init with copy of AutomaticNumeric(&v47, &v43);
    v28 = swift_allocObject();
    v29 = v46[0];
    v28[3] = v45;
    v28[4] = v29;
    *(v28 + 74) = *(v46 + 10);
    v30 = v44;
    v28[1] = v43;
    v28[2] = v30;
    *v27 = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
    v27[1] = v28;
    result = swift_allocObject();
    v32 = v50[0];
    result[3] = v49;
    result[4] = v32;
    *(result + 74) = *(v50 + 10);
    v33 = v48;
    result[1] = v47;
    result[2] = v33;
    v27[2] = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
    v27[3] = result;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    v34 = v40;
    (*(v7 + 16))(v9, v39, v40);
    (*(v16 + 16))(v18, v21, v15);
    *&v47 = v22;
    *(&v47 + 1) = v23;
    *&v48 = v37;
    *(&v48 + 1) = v24;
    LOWORD(v49) = v25;
    v35 = v36;
    AutomaticQuantity.init<A>(defaultRange:_:boundaryRule:)(v9, v18, &v47, v34, v41, v36);
    _s12HealthCharts12ScalarDomainVyACxcAA04AxisD0RzSd1TRtzlufCAA17AutomaticQuantityV_Tt1g5(v35, v42);
    return (*(v16 + 8))(v21, v15);
  }

  return result;
}

uint64_t type metadata accessor for AutomaticQuantity(uint64_t a1)
{
  result = type metadata singleton initialization cache for AutomaticQuantity;
  if (!type metadata singleton initialization cache for AutomaticQuantity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s12HealthCharts12ScalarDomainVyACxcAA04AxisD0RzSd1TRtzlufCAA17AutomaticQuantityV_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)@<X8>)
{
  v4 = type metadata accessor for AutomaticQuantity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  _StringGuts.grow(_:)(21);

  v14[0] = 0xD000000000000012;
  v14[1] = 0x80000002514651E0;
  swift_getKeyPath();
  v7 = HealthChartsUnit.subscript.getter();
  v9 = v8;

  MEMORY[0x2530761B0](v7, v9);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  a2[4] = 0xD000000000000012;
  a2[5] = 0x80000002514651E0;
  _s16HealthChartsCore0aB4UnitVSgWOcTm_1(a1, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutomaticQuantity);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  outlined init with take of AutomaticQuantity(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *a2 = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  a2[1] = v11;
  outlined init with take of AutomaticQuantity(a1, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  result = outlined init with take of AutomaticQuantity(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  a2[2] = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
  a2[3] = v12;
  return result;
}

void *specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  if (a3)
  {
    __swift_project_boxed_opaque_existential_1(a4, *(a4 + 24));
    result = IntervalChartValue.asClosedRange()();
    v18 = *(&v26[0] + 1);
    v17 = *&v26[0];
  }

  else
  {
    v19 = a1;
    v20 = a2;
    v21 = type metadata accessor for HealthChartsUnit();
    v22 = *(*(v21 - 8) + 56);
    v22(v15, 1, 1, v21);
    v22(v12, 1, 1, v21);
    v23 = *(a4 + 56);
    v26[0] = *(a4 + 40);
    v26[1] = v23;
    v27 = *(a4 + 72);
    specialized AxisDomain<>.computeAxisScale<A>(dataRange:axisUnit:dataUnit:boundaryRule:)(v15, v12, v26, v19, v20);
    v17 = v24;
    v18 = v25;
    outlined destroy of HealthChartsUnit?(v12);
    result = outlined destroy of HealthChartsUnit?(v15);
  }

  *(a5 + 8) = v17;
  *(a5 + 16) = v18;
  *a5 = 0;
  return result;
}

uint64_t sub_251452F6C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X5>, uint64_t a6@<X8>)
{
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = *(a5 + 3);
    v36 = *(a5 + 4);
    v16 = __swift_project_boxed_opaque_existential_1(a5, v15);
    v17 = type metadata accessor for AutomaticQuantity(0);
    v18 = *(v17 + 20);
    v19 = type metadata accessor for HealthChartsUnit();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v14, &a5[v18], v19);
    (*(v20 + 56))(v14, 0, 1, v19);
    v21 = lazy protocol witness table accessor for type AutomaticQuantity and conformance AutomaticQuantity(&lazy protocol witness table cache variable for type AutomaticQuantity and conformance AutomaticQuantity, type metadata accessor for AutomaticQuantity, &protocol conformance descriptor for AutomaticQuantity);
    v22 = specialized AxisDomain<>.convertRangeIfNeeded<A>(from:to:defaultRange:)(v14, a4, v16, v17, v15, v21, v36);
  }

  else
  {
    v24 = a1;
    v25 = a2;
    v26 = type metadata accessor for AutomaticQuantity(0);
    v27 = *(v26 + 20);
    v28 = type metadata accessor for HealthChartsUnit();
    v29 = *(v28 - 8);
    (*(v29 + 16))(v14, &a5[v27], v28);
    (*(v29 + 56))(v14, 0, 1, v28);
    v30 = &a5[*(v26 + 24)];
    v31 = *(v30 + 1);
    v37[0] = *v30;
    v37[1] = v31;
    v38 = *(v30 + 16);
    specialized AxisDomain<>.computeAxisScale<A>(dataRange:axisUnit:dataUnit:boundaryRule:)(v14, a4, v37, v24, v25);
  }

  v32 = v22;
  v33 = v23;
  result = outlined destroy of HealthChartsUnit?(v14);
  *(a6 + 8) = v32;
  *(a6 + 16) = v33;
  *a6 = 0;
  return result;
}

void *specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, void *a4@<X5>, uint64_t a5@<X8>)
{
  if ((a3 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(a4, a4[3]), result = dispatch thunk of IntervalChartValue.start.getter(), *&v11 <= a1) && (__swift_project_boxed_opaque_existential_1(a4, a4[3]), result = dispatch thunk of IntervalChartValue.end.getter(), *&v11 >= a2))
  {
    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    result = IntervalChartValue.asClosedRange()();
    *(a5 + 8) = v11;
    *a5 = 1;
  }

  else
  {
    *(a5 + 8) = a1;
    *(a5 + 16) = a2;
    *a5 = 0;
  }

  return result;
}

uint64_t specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)@<X0>(double a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X5>, uint64_t a6@<X8>)
{
  v26 = a3;
  v27 = a1;
  v28 = a2;
  v25 = a6;
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 3);
  v11 = *(a5 + 4);
  v13 = __swift_project_boxed_opaque_existential_1(a5, v12);
  v14 = type metadata accessor for FixedQuantity(0);
  v15 = *(v14 + 20);
  v16 = type metadata accessor for HealthChartsUnit();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, &a5[v15], v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  v18 = lazy protocol witness table accessor for type AutomaticQuantity and conformance AutomaticQuantity(&lazy protocol witness table cache variable for type FixedQuantity and conformance FixedQuantity, type metadata accessor for FixedQuantity, &protocol conformance descriptor for FixedQuantity);
  v19 = specialized AxisDomain<>.convertRangeIfNeeded<A>(from:to:defaultRange:)(v10, a4, v13, v14, v12, v18, v11);
  v21 = v20;
  outlined destroy of HealthChartsUnit?(v10);
  _s6Charts9AxisMarksVys5NeverOGMaTm_1(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  v29[3] = v22;
  v29[4] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  *v29 = v19;
  v29[1] = v21;
  specialized AxisDomain<>.axisScale(for:seriesScale:)(v29, v27, v28, v26 & 1, v25);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t specialized closure #1 in ScalarDomain.init<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AxisMarkPosition();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for AxisMarkPreset();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AxisMarkValues();
  MEMORY[0x28223BE20](v4 - 8);
  _s6Charts9AxisMarksVys5NeverOGMaTm_1(0, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  a1[3] = v5;
  a1[4] = lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  __swift_allocate_boxed_opaque_existential_1(a1);
  static AxisMarkValues.automatic.getter();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  return AxisMarks.init<>(preset:position:values:stroke:)();
}

__n128 AutomaticQuantity.init<A>(defaultRange:_:boundaryRule:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = *(a3 + 32);
  v12 = *(a3 + 33);
  *(a6 + 3) = a4;
  *(a6 + 4) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v14 = type metadata accessor for AutomaticQuantity(0);
  v15 = *(v14 + 20);
  v16 = type metadata accessor for HealthChartsUnit();
  v19 = *(a3 + 16);
  v20 = *a3;
  (*(*(v16 - 8) + 32))(&a6[v15], a2, v16);
  v17 = &a6[*(v14 + 24)];
  result = v20;
  *v17 = v20;
  *(v17 + 1) = v19;
  v17[32] = v11;
  v17[33] = v12;
  return result;
}

uint64_t AutomaticQuantity.axisScale(seriesScale:seriesUnit:finestAggregation:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = *(v5 + 3);
    v35 = *(v5 + 4);
    v15 = __swift_project_boxed_opaque_existential_1(v5, v14);
    v16 = type metadata accessor for AutomaticQuantity(0);
    v17 = *(v16 + 20);
    v18 = type metadata accessor for HealthChartsUnit();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v13, &v5[v17], v18);
    (*(v19 + 56))(v13, 0, 1, v18);
    v20 = lazy protocol witness table accessor for type AutomaticQuantity and conformance AutomaticQuantity(&lazy protocol witness table cache variable for type AutomaticQuantity and conformance AutomaticQuantity, type metadata accessor for AutomaticQuantity, &protocol conformance descriptor for AutomaticQuantity);
    v21 = specialized AxisDomain<>.convertRangeIfNeeded<A>(from:to:defaultRange:)(v13, a4, v15, v16, v14, v20, v35);
  }

  else
  {
    v23 = a1;
    v24 = a2;
    v25 = type metadata accessor for AutomaticQuantity(0);
    v26 = *(v25 + 20);
    v27 = type metadata accessor for HealthChartsUnit();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v13, &v5[v26], v27);
    (*(v28 + 56))(v13, 0, 1, v27);
    v29 = &v5[*(v25 + 24)];
    v30 = *(v29 + 1);
    v36[0] = *v29;
    v36[1] = v30;
    v37 = *(v29 + 16);
    specialized AxisDomain<>.computeAxisScale<A>(dataRange:axisUnit:dataUnit:boundaryRule:)(v13, a4, v36, v23, v24);
  }

  v31 = v21;
  v32 = v22;
  result = outlined destroy of HealthChartsUnit?(v13);
  *(a5 + 8) = v31;
  *(a5 + 16) = v32;
  *a5 = 0;
  return result;
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomaticQuantity()
{
  _StringGuts.grow(_:)(21);

  swift_getKeyPath();
  v0 = HealthChartsUnit.subscript.getter();
  v2 = v1;

  MEMORY[0x2530761B0](v0, v2);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return 0xD000000000000012;
}

unint64_t AutomaticQuantity.debugDescription.getter()
{
  _StringGuts.grow(_:)(21);

  type metadata accessor for AutomaticQuantity(0);
  swift_getKeyPath();
  v0 = HealthChartsUnit.subscript.getter();
  v2 = v1;

  MEMORY[0x2530761B0](v0, v2);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t static ScalarDomain.automaticQuantity<A>(default:unit:boundaryRule:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)@<X8>)
{
  v29 = a6;
  v30 = a5;
  v28 = a2;
  v26 = a1;
  v27 = type metadata accessor for HealthChartsUnit();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AutomaticQuantity(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  v19 = a3[1];
  v20 = *(a3 + 16);
  v21 = a3[3];
  LOBYTE(a3) = *(a3 + 32);
  (*(v10 + 16))(v13, v26, a4, v15);
  v22 = v25;
  (*(v8 + 16))(v25, v28, v27);
  v31[0] = v18;
  v31[1] = v19;
  v31[2] = v20;
  v31[3] = v21;
  v32 = a3;
  v33 = 0;
  AutomaticQuantity.init<A>(defaultRange:_:boundaryRule:)(v13, v22, v31, a4, v30, v17);
  return _s12HealthCharts12ScalarDomainVyACxcAA04AxisD0RzSd1TRtzlufCAA17AutomaticQuantityV_Tt1g5(v17, v29);
}

uint64_t static ScalarDomain.automaticQuantity<A>(default:dimension:boundaryRule:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)@<X8>)
{
  v28 = a6;
  v29 = a5;
  v26 = a1;
  v27 = a2;
  v8 = type metadata accessor for HealthChartsUnit();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AutomaticQuantity(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  v20 = a3[1];
  v21 = *(a3 + 16);
  v22 = a3[3];
  LOBYTE(a3) = *(a3 + 32);
  (*(v11 + 16))(v14, v26, a4, v16);
  v23 = v27;
  HealthChartsUnit.init(_:)();
  v30[0] = v19;
  v30[1] = v20;
  v30[2] = v21;
  v30[3] = v22;
  v31 = a3;
  v32 = 0;
  AutomaticQuantity.init<A>(defaultRange:_:boundaryRule:)(v14, v10, v30, a4, v29, v18);
  return _s12HealthCharts12ScalarDomainVyACxcAA04AxisD0RzSd1TRtzlufCAA17AutomaticQuantityV_Tt1g5(v18, v28);
}

uint64_t instantiation function for generic protocol witness table for AutomaticQuantity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AutomaticQuantity and conformance AutomaticQuantity(&lazy protocol witness table cache variable for type AutomaticQuantity and conformance AutomaticQuantity, type metadata accessor for AutomaticQuantity, &protocol conformance descriptor for AutomaticQuantity);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AutomaticQuantity and conformance AutomaticQuantity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2514540B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_251454174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void type metadata completion function for AutomaticQuantity(uint64_t a1)
{
  type metadata accessor for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HealthChartsUnit();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AxisBoundaryRule?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for AxisBoundaryRule?()
{
  if (!lazy cache variable for type metadata for AxisBoundaryRule?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AxisBoundaryRule?);
    }
  }
}

void _s6Charts9AxisMarksVys5NeverOGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t _s16HealthChartsCore0aB4UnitVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AutomaticQuantity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomaticQuantity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(type metadata accessor for AutomaticQuantity(0) - 8);
  v12 = (v5 + ((*(v11 + 80) + 16) & ~*(v11 + 80)));

  return specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)(a1, a2, a3 & 1, a4, v12, a5);
}

uint64_t objectdestroy_7Tm()
{
  v1 = (type metadata accessor for AutomaticQuantity(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + v2));
  v3 = v1[7];
  v4 = type metadata accessor for HealthChartsUnit();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t static DescriptionMessage.noDescription<>(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t static DescriptionMessage.categoryLevel<>(title:valueLabelDictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t instantiation function for generic protocol witness table for DescriptionMessage<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for DescriptionMessage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DescriptionMessage(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for DescriptionMessage(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

HealthCharts::HealthChartsQuantityQueryConfiguration __swiftcall HealthChartsQuantityQueryConfiguration.init(quantityType:options:)(HKQuantityType quantityType, __C::HKStatisticsOptions options)
{
  *v2 = quantityType;
  *(v2 + 8) = options;
  result.options = options;
  result.quantityType = quantityType;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsQuantityQueryConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for HealthChartsQuantityQueryConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void closure #1 in HealthChartsStatisticsQueryExecutor.query(interval:aggregation:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a3;
  v50 = a6;
  v47 = a2;
  v48 = a5;
  v46 = a4;
  type metadata accessor for DateComponents?(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  type metadata accessor for CheckedContinuation<(HKStatisticsCollectionQuery, HKStatisticsCollection?), Error>(0);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  (*(v19 + 16))(&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v21);
  v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v23 = swift_allocObject();
  v24 = *(v19 + 32);
  v44 = v23;
  v24(v23 + v22, &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v25 = objc_opt_self();
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v27 = *(v11 + 8);
  v27(v16, v10);
  DateInterval.end.getter();
  v28 = Date._bridgeToObjectiveC()().super.isa;
  v45 = v10;
  v42 = v27;
  v43 = v11 + 8;
  v27(v16, v10);
  v29 = [v25 predicateForSamplesWithStartDate:isa endDate:v28 options:0];

  v30 = v49;
  v31 = v13;
  DateInterval.start.getter();
  HealthChartsData.Aggregation.intervalDateComponents()();
  v32 = type metadata accessor for DateComponents();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v9, 1, v32) == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = objc_allocWithZone(MEMORY[0x277CCDA60]);
    v35 = v29;
    v36 = Date._bridgeToObjectiveC()().super.isa;
    v37 = v9;
    v38 = DateComponents._bridgeToObjectiveC()().super.isa;
    v39 = [v34 initWithQuantityType:v30 quantitySamplePredicate:v35 options:v46 anchorDate:v36 intervalComponents:v38];

    v42(v31, v45);
    (*(v33 + 8))(v37, v32);
    aBlock[4] = partial apply for closure #1 in closure #1 in HealthChartsStatisticsQueryExecutor.query(interval:aggregation:);
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_3;
    v40 = _Block_copy(aBlock);

    [v39 setInitialResultsHandler_];
    _Block_release(v40);
    [v47 executeQuery_];
  }
}

void type metadata accessor for DateComponents?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DateComponents?)
  {
    type metadata accessor for DateComponents();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DateComponents?);
    }
  }
}

void type metadata accessor for CheckedContinuation<(HKStatisticsCollectionQuery, HKStatisticsCollection?), Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(HKStatisticsCollectionQuery, HKStatisticsCollection?), Error>)
  {
    type metadata accessor for (HKStatisticsCollectionQuery, HKStatisticsCollection?)(255);
    type metadata accessor for Error();
    v1 = type metadata accessor for CheckedContinuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CheckedContinuation<(HKStatisticsCollectionQuery, HKStatisticsCollection?), Error>);
    }
  }
}

uint64_t closure #1 in closure #1 in HealthChartsStatisticsQueryExecutor.query(interval:aggregation:)(void *a1, void *a2, id a3)
{
  if (a3)
  {
    v5 = a3;
    type metadata accessor for CheckedContinuation<(HKStatisticsCollectionQuery, HKStatisticsCollection?), Error>(0);
    CheckedContinuation.resume(throwing:)();
  }

  type metadata accessor for CheckedContinuation<(HKStatisticsCollectionQuery, HKStatisticsCollection?), Error>(0);
  v6 = a1;
  v7 = a2;
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_2514551A8()
{
  type metadata accessor for CheckedContinuation<(HKStatisticsCollectionQuery, HKStatisticsCollection?), Error>(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in HealthChartsStatisticsQueryExecutor.query(interval:aggregation:)(void *a1, void *a2, void *a3)
{
  type metadata accessor for CheckedContinuation<(HKStatisticsCollectionQuery, HKStatisticsCollection?), Error>(0);

  return closure #1 in closure #1 in HealthChartsStatisticsQueryExecutor.query(interval:aggregation:)(a1, a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LineSeries.init<>(datePointData:attributes:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 5);
  v29 = *(a2 + 4);
  v11 = *(a2 + 48);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  v15 = *(v7 + 8);
  v16 = *a2;
  v27 = a2[1];
  v28 = v16;
  v15(v9, v6);
  _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation4DateVSdGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, Double>, MEMORY[0x277D101A8]);
  v18 = v17;
  v19 = HealthChartsData.SeriesData.points.getter();
  v31 = a1;
  v32 = v12;
  v33 = v14;
  v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E08LineMarkVs5NeverOTg5(partial apply for closure #1 in LineSeries.init<>(datePointData:attributes:), v30, v19);

  type metadata accessor for LineSeries<Date>(0);
  v22 = v21;
  v23 = *(v18 - 8);
  (*(v23 + 16))(a3 + *(v21 + 52), a1, v18);
  UUID.init()();
  v24 = a3 + *(v22 + 56);
  v25 = v27;
  *v24 = v28;
  *(v24 + 16) = v25;
  *(v24 + 32) = v29;
  *(v24 + 40) = v10;
  *(v24 + 48) = v11;
  *(a3 + *(v22 + 60)) = v20;
  return (*(v23 + 8))(a1, v18);
}

uint64_t LineSeries.init<>(scalarPointData:attributes:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, unint64_t a3@<X8>)
{
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Double, Double>, MEMORY[0x277D10248]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = &v34 - v9;
  v47 = type metadata accessor for LineMark();
  v10 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v40 = a2[1];
  v41 = v12;
  v13 = *(a2 + 4);
  v38 = *(a2 + 5);
  v39 = v13;
  v37 = *(a2 + 48);
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, MEMORY[0x277D101A8]);
  v36 = v14;
  v15 = HealthChartsData.SeriesData.points.getter();
  v17 = *(v15 + 16);
  if (v17)
  {
    v34 = a1;
    v35 = a3;
    v49 = MEMORY[0x277D84F90];
    v18 = v15;
    v45 = v17;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0, v16);
    v19 = 0;
    v20 = v49;
    v44 = v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = (v8 + 8);
    v42 = v10 + 32;
    v43 = v8 + 16;
    while (v19 < *(v18 + 16))
    {
      v22 = v46;
      v23.n128_f64[0] = (*(v8 + 16))(v46, v44 + *(v8 + 72) * v19, v7);
      closure #1 in LineSeries.init<>(scalarPointData:attributes:)(v23);
      (*v21)(v22, v7);
      v49 = v20;
      a3 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (a3 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), a3 + 1, 1, v24);
        v20 = v49;
      }

      ++v19;
      *(v20 + 16) = a3 + 1;
      (*(v10 + 32))(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a3, v48, v47);
      if (v45 == v19)
      {

        a1 = v34;
        a3 = v35;
        goto LABEL_9;
      }
    }

    __break(1u);
    (*v21)(a3, v7);

    __break(1u);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_9:
    type metadata accessor for LineSeries<Double>();
    v27 = v26;
    v28 = v36;
    v29 = *(v36 - 8);
    (*(v29 + 16))(a3 + *(v26 + 52), a1, v36);
    UUID.init()();
    result = (*(v29 + 8))(a1, v28);
    v31 = a3 + *(v27 + 56);
    v32 = v40;
    *v31 = v41;
    *(v31 + 16) = v32;
    v33 = v38;
    *(v31 + 32) = v39;
    *(v31 + 40) = v33;
    *(v31 + 48) = v37;
    *(a3 + *(v27 + 60)) = v20;
  }

  return result;
}

uint64_t LineSeries.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LineSeries.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for HealthChartsData.SeriesData();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t LineSeries.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ForEach<[(offset: Int, element: LineMark)], Int, LineMark>(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized _copySequenceToContiguousArray<A>(_:)(*(v2 + *(a1 + 60)), v8);
  *&v15[0] = v11;
  swift_getKeyPath();
  type metadata accessor for [(offset: Int, element: LineMark)](0, &lazy cache variable for type metadata for [(offset: Int, element: LineMark)], type metadata accessor for (offset: Int, element: LineMark), MEMORY[0x277D83940]);
  type metadata accessor for LineMark();
  lazy protocol witness table accessor for type [(offset: Int, element: LineMark)] and conformance [A]();
  ForEach<>.init(_:id:content:)();
  v12 = v2 + *(a1 + 56);
  v13 = *(v12 + 16);
  v15[0] = *v12;
  v15[1] = v13;
  v15[2] = *(v12 + 32);
  v16 = *(v12 + 48);
  specialized ChartContent.apply(_:)(v15, a2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed LineMark) -> (@out LineMark)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  type metadata accessor for (offset: Int, element: LineMark)(0, a3);
  v6 = *(v5 + 48);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for LineMark();
  (*(*(v7 - 8) + 16))(a2, a1 + v6, v7);
}

uint64_t closure #1 in LineSeries.init<>(datePointData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a5;
  v53 = a3;
  v54 = a4;
  v42 = a2;
  v49 = a1;
  v5 = MEMORY[0x277D83D88];
  type metadata accessor for [(offset: Int, element: LineMark)](0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v41 = &v41 - v8;
  type metadata accessor for PlottableValue<Double>(v7, 0, &lazy cache variable for type metadata for PlottableValue<String>, MEMORY[0x277D837D0], MEMORY[0x277CBB570]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v41 - v11;
  type metadata accessor for PlottableValue<Double>(v10, 0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277D839F8], MEMORY[0x277CBB590]);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = &v41 - v13;
  v50 = type metadata accessor for Date();
  v44 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>(0, &lazy cache variable for type metadata for PlottableValue<Date>, MEMORY[0x277CC9578], MEMORY[0x277CBB1E8], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v16 - 8);
  v56 = &v41 - v17;
  v18 = type metadata accessor for HealthChartsData.Aggregation();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [(offset: Int, element: LineMark)](0, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0], v5);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v41 - v23;
  v25 = type metadata accessor for Calendar.Component();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v43 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for LineMark();
  v47 = *(v28 - 8);
  v48 = v28;
  MEMORY[0x28223BE20](v28);
  v46 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v45 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation4DateVSdGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, Double>, MEMORY[0x277D101A8]);
  HealthChartsData.SeriesData.aggregation.getter();
  HealthChartsData.Aggregation.intervalCalendarComponent()();
  (*(v19 + 8))(v21, v18);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    outlined destroy of Calendar?(v24, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0]);
    v59 = 88;
    v60 = 0xE100000000000000;
    v59 = String.init<A>(_:)();
    v60 = v30;
    _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation4DateVSdGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, Double>, MEMORY[0x277D10248]);
    HealthChartsData.SeriesPoint.x.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v31 = v50;
    static PlottableValue.value<A>(_:_:)();
    (*(v44 + 8))(v15, v31);

    v59 = 89;
    v60 = 0xE100000000000000;
    v59 = String.init<A>(_:)();
    v60 = v32;
    HealthChartsData.SeriesPoint.y.getter();
    v61 = v57;
    static PlottableValue.value<A>(_:_:)();

    v59 = 0;
    v60 = 0xE000000000000000;
    v59 = String.init<A>(_:)();
    v60 = v33;
    v57 = v53;
    v58 = v54;
    static PlottableValue.value<A>(_:_:)();

    v34 = v46;
    LineMark.init<A, B, C>(x:y:series:)();
  }

  else
  {
    (*(v26 + 32))(v43, v24, v25);
    v59 = 88;
    v60 = 0xE100000000000000;
    v59 = String.init<A>(_:)();
    v60 = v35;
    _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation4DateVSdGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, Double>, MEMORY[0x277D10248]);
    v42 = v25;
    HealthChartsData.SeriesPoint.x.getter();
    v36 = type metadata accessor for Calendar();
    v37 = v41;
    (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
    lazy protocol witness table accessor for type String and conformance String();
    static PlottableValue.value<A>(_:_:unit:calendar:)();
    outlined destroy of Calendar?(v37, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
    (*(v44 + 8))(v15, v50);

    v59 = 89;
    v60 = 0xE100000000000000;
    v59 = String.init<A>(_:)();
    v60 = v38;
    HealthChartsData.SeriesPoint.y.getter();
    v61 = v57;
    static PlottableValue.value<A>(_:_:)();

    v59 = 0;
    v60 = 0xE000000000000000;
    v59 = String.init<A>(_:)();
    v60 = v39;
    v57 = v53;
    v58 = v54;
    static PlottableValue.value<A>(_:_:)();

    v34 = v46;
    LineMark.init<A, B, C>(x:y:series:)();
    (*(v26 + 8))(v43, v42);
  }

  (*(v47 + 32))(v55, v34, v48);
}

uint64_t closure #1 in LineSeries.init<>(scalarPointData:attributes:)(__n128 a2)
{
  type metadata accessor for PlottableValue<Double>(a2, 0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277D839F8], MEMORY[0x277CBB590]);
  MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
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

  LineMark.init<A, B>(x:y:)();
}

uint64_t specialized ChartContent.lineMarkStyle(_:foregroundColor:)@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = type metadata accessor for BasicChartSymbolShape();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for ForEach<[(offset: Int, element: LineMark)], Int, LineMark>(0);
    type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>(0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, type metadata accessor for _ShapeView<Circle, Color>, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    lazy protocol witness table accessor for type ForEach<[(offset: Int, element: LineMark)], Int, LineMark> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>(v18);
    ChartContent.symbol<A>(symbol:)();
    (*(v15 + 32))(v22, v17, v14);
  }

  else
  {
    static ChartSymbolShape<>.circle.getter();
    type metadata accessor for ForEach<[(offset: Int, element: LineMark)], Int, LineMark>(0);
    lazy protocol witness table accessor for type ForEach<[(offset: Int, element: LineMark)], Int, LineMark> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type BasicChartSymbolShape and conformance BasicChartSymbolShape, MEMORY[0x277CBB3B8], MEMORY[0x277CBB3B0]);
    ChartContent.symbol<A>(_:)();
    (*(v21 + 8))(v7, v5);
    (*(v10 + 32))(v22, v12, v9);
  }

  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>.Storage, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0, MEMORY[0x277CBB370]);
  return swift_storeEnumTagMultiPayload();
}

__n128 closure #1 in ChartContent.lineMarkStyle(_:foregroundColor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  *&v5[6] = v6;
  *&v5[22] = v7;
  *&v5[38] = v8;
  *(a2 + 10) = *v5;
  *a2 = a1;
  *(a2 + 8) = 256;
  *(a2 + 26) = *&v5[16];
  result = *&v5[32];
  *(a2 + 42) = *&v5[32];
  *(a2 + 56) = *(&v8 + 1);
  return result;
}

void type metadata accessor for LineSeries<Double>()
{
  if (!lazy cache variable for type metadata for LineSeries<Double>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x277D839F8];
    v4[1] = MEMORY[0x277CBB590];
    v4[2] = MEMORY[0x277D10360];
    v4[3] = MEMORY[0x277CBB590];
    v2 = type metadata accessor for LineSeries(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for LineSeries<Double>);
    }
  }
}

void type metadata accessor for (offset: Int, element: LineMark)(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: LineMark))
  {
    type metadata accessor for LineMark();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: LineMark));
    }
  }
}

uint64_t instantiation function for generic protocol witness table for LineSeries<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for LineSeries(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HealthChartsData.SeriesData();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LineSeriesAttributes?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for [(offset: Int, element: LineMark)](319, &lazy cache variable for type metadata for [LineMark], MEMORY[0x277CBB440], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_251457894(uint64_t a1, uint64_t a2, uint64_t a3)
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
      return (*(v11 + 48))(a1 + *(a3 + 52), a2, v10);
    }

    else
    {
      v12 = *(a1 + *(a3 + 60));
      if (v12 >= 0xFFFFFFFF)
      {
        LODWORD(v12) = -1;
      }

      return (v12 + 1);
    }
  }
}

uint64_t sub_2514579F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      return (*(v12 + 56))(a1 + *(a4 + 52), a2, a2, result);
    }

    else
    {
      *(a1 + *(a4 + 60)) = (a2 - 1);
    }
  }

  return result;
}

void type metadata accessor for LineSeriesAttributes?()
{
  if (!lazy cache variable for type metadata for LineSeriesAttributes?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LineSeriesAttributes?);
    }
  }
}

void type metadata accessor for <<opaque return type of ChartContent.interpolationMethod(_:)>>.0(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.interpolationMethod(_:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.lineStyle(_:)>>.0(255, a2);
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(255);
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>(255, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0, MEMORY[0x277CBB378]);
    lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.interpolationMethod(_:)>>.0);
    }
  }
}

void type metadata accessor for <<opaque return type of ChartContent.lineStyle(_:)>>.0(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.lineStyle(_:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(255);
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>(255, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0, MEMORY[0x277CBB378]);
    lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.lineStyle(_:)>>.0);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, type metadata accessor for _ShapeView<Circle, Color>, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Circle, Color>, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of LineSeriesAttributes?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LineSeriesAttributes?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251458620(uint64_t a1)
{
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0, MEMORY[0x277CBB378]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of LineSeriesAttributes?(uint64_t a1)
{
  type metadata accessor for LineSeriesAttributes?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for PlottableValue<Double>(__n128 a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a3)
  {
    v6 = type metadata accessor for PlottableValue();
    if (!v7)
    {
      atomic_store(v6, a3);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t outlined destroy of Calendar?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for [(offset: Int, element: LineMark)](0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation4DateVSdGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277D10190]);
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

__n128 NoDescription.content(with:)@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {

    DescriptionContext.DataXScale.dateString.getter();
  }

  lazy protocol witness table accessor for type CommonChartDescription and conformance CommonChartDescription();
  _ConditionalContent<>.init(storage:)();
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  result = v5;
  *a1 = v4;
  *(a1 + 16) = v5;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NoDescription(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NoDescription and conformance NoDescription();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NoDescription(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for NoDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<CommonChartDescription, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<CommonChartDescription, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<CommonChartDescription, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<CommonChartDescription, EmptyView>();
    lazy protocol witness table accessor for type CommonChartDescription and conformance CommonChartDescription();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<CommonChartDescription, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<CommonChartDescription, EmptyView>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<CommonChartDescription, EmptyView>)
  {
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<CommonChartDescription, EmptyView>);
    }
  }
}

uint64_t HealthChartsUnit.convert(_:to:)()
{
  return MEMORY[0x282168BF8]();
}

{
  return MEMORY[0x282168C00]();
}