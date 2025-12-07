unint64_t HKLabResultRecordStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v31 + 1) = v13;
  *v32 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v30 = xmmword_25145AF50;
  memset(&v32[8], 0, 32);
  *&v32[40] = 256;
  outlined init with copy of AutomaticNumeric(&v30, v28);
  v14 = swift_allocObject();
  v15 = v29[0];
  v14[3] = v28[2];
  v14[4] = v15;
  *(v14 + 74) = *(v29 + 10);
  v16 = v28[1];
  v14[1] = v28[0];
  v14[2] = v16;
  v17 = swift_allocObject();
  v18 = *&v32[16];
  v17[3] = *v32;
  v17[4] = v18;
  *(v17 + 74) = *&v32[26];
  v19 = v31;
  v17[1] = v30;
  v17[2] = v19;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v7 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v14;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v17;
  *(v20 + 5) = 0x6974616D6F747561;
  *(v20 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD00000000000001ELL, 0x8000000251462960);
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = 0x4000000000000000;
  v5[32] = 0;
  *(v5 + 5) = 0;
  v5[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000011;
  v25[1] = 0x8000000251462940;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKMedicationRecordStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemCyanColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000011;
  v25[1] = 0x80000002514628F0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKProcedureRecordStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v31 + 1) = v13;
  *v32 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v30 = xmmword_25145AF50;
  memset(&v32[8], 0, 32);
  *&v32[40] = 256;
  outlined init with copy of AutomaticNumeric(&v30, v28);
  v14 = swift_allocObject();
  v15 = v29[0];
  v14[3] = v28[2];
  v14[4] = v15;
  *(v14 + 74) = *(v29 + 10);
  v16 = v28[1];
  v14[1] = v28[0];
  v14[2] = v16;
  v17 = swift_allocObject();
  v18 = *&v32[16];
  v17[3] = *v32;
  v17[4] = v18;
  *(v17 + 74) = *&v32[26];
  v19 = v31;
  v17[1] = v30;
  v17[2] = v19;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v7 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v14;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v17;
  *(v20 + 5) = 0x6974616D6F747561;
  *(v20 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD00000000000001DLL, 0x80000002514628A0);
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = 0x4000000000000000;
  v5[32] = 0;
  *(v5 + 5) = 0;
  v5[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000010;
  v25[1] = 0x8000000251462880;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKVitalSignRecordStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v31 + 1) = v13;
  *v32 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v30 = xmmword_25145AF50;
  memset(&v32[8], 0, 32);
  *&v32[40] = 256;
  outlined init with copy of AutomaticNumeric(&v30, v28);
  v14 = swift_allocObject();
  v15 = v29[0];
  v14[3] = v28[2];
  v14[4] = v15;
  *(v14 + 74) = *(v29 + 10);
  v16 = v28[1];
  v14[1] = v28[0];
  v14[2] = v16;
  v17 = swift_allocObject();
  v18 = *&v32[16];
  v17[3] = *v32;
  v17[4] = v18;
  *(v17 + 74) = *&v32[26];
  v19 = v31;
  v17[1] = v30;
  v17[2] = v19;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v7 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v14;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v17;
  *(v20 + 5) = 0x6974616D6F747561;
  *(v20 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000019, 0x8000000251462830);
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = 0x4000000000000000;
  v5[32] = 0;
  *(v5 + 5) = 0;
  v5[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000011;
  v25[1] = 0x8000000251462810;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKAtrialFibrillationEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000019;
  v25[1] = 0x8000000251463780;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

void HKAbdominalCrampsStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251463FD0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKBreastPainStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251463D00);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKBloatingStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463D30);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKHeadacheStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463930);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKAcneStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000001CLL, 0x8000000251463FB0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKLowerBackPainStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000025, 0x80000002514635E0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKPelvicPainStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251463390);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKMoodChangesStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000023, 0x8000000251463500);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AB20;
  *(v12 + 32) = xmmword_25145B0E0;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKConstipationStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251463C50);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKDiarrheaStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463AD0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKFatigueStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000001FLL, 0x8000000251463A30);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKNauseaStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000001ELL, 0x80000002514634E0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKSleepChangesStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462FC0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AB20;
  *(v12 + 32) = xmmword_25145B0E0;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKMoodChangesStaticChartKey.attributes(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v7 = *(v6 - 8);
  v40 = v6;
  v41 = v7;
  v42 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v11 - 8);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v13 = v12;
  v14 = a5 + *(v12 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v16 = &v14[*(v15 + 52)];
  v16[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  *v14 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25145AB20;
  *(v18 + 32) = xmmword_25145B0E0;
  v19 = specialized static HKCategoryValuePresence.valueLabelDictionary.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  *a5 = 0x4072C00000000000;
  v22 = a5 + *(v13 + 40);
  *v22 = 1;
  v23 = v39;
  *(v22 + 1) = v38;
  *(v22 + 2) = v20;
  *(v22 + 3) = v23;
  *(v22 + 4) = v21;
  *(v22 + 5) = 0xD000000000000015;
  *(v22 + 6) = 0x8000000251462D90;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v25;
  v27 = specialized static HKCategoryValuePresence.valueLabelDictionary.getter();
  v28 = [objc_opt_self() systemIndigoColor];
  *v9 = Color.init(uiColor:)();
  *(v9 + 1) = 0;
  v9[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v9, v30 + v29, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v32 = v31;
  v33 = (a5 + *(v31 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v33[3] = v34;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v33[4] = result;
  *v33 = v24;
  v33[1] = v26;
  v33[2] = v27;
  *(a5 + *(v32 + 40)) = v30;
  return result;
}

void HKAppetiteChangesStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251463F80);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  v12[1] = xmmword_25145AFF0;
  v12[2] = xmmword_25145B0E0;
  v12[3] = xmmword_25145B030;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKAppetiteChangesStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  v33 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  v14[1] = xmmword_25145AFF0;
  v14[2] = xmmword_25145B0E0;
  v14[3] = xmmword_25145B030;
  v15 = specialized static HKCategoryValueAppetiteChanges.valueLabelDictionary.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  *a1 = 0x4072C00000000000;
  v18 = a1 + *(v9 + 40);
  *v18 = 1;
  *(v18 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v18 + 2) = v16;
  *(v18 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v18 + 4) = v17;
  *(v18 + 5) = 0xD000000000000015;
  *(v18 + 6) = 0x8000000251462D90;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  v22 = specialized static HKCategoryValueAppetiteChanges.valueLabelDictionary.getter();
  v23 = [objc_opt_self() systemIndigoColor];
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = (a1 + *(v26 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v28[3] = v29;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v28[4] = result;
  *v28 = v19;
  v28[1] = v21;
  v28[2] = v22;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

void HKHotFlashesStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251463820);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKHeadphoneAudioExposureStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x4C5053414264, 0xE600000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x3FF0000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemBlueColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

unint64_t HKActivityMoveModeStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemGrayColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000012;
  v25[1] = 0x8000000251462D40;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKEnvironmentalAudioExposureEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemBlueColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000022;
  v25[1] = 0x8000000251463DF0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKAppleMoveTimeStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462510);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](7235949, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

void HKWalkingDoubleSupportPercentageStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v30 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = MEMORY[0x253076160](0xD000000000000036, 0x8000000251460F30);
  v28 = MEMORY[0x2530763A0](v9);
  v10 = MEMORY[0x253076160](0xD000000000000036, 0x8000000251460F30);
  v11 = MEMORY[0x2530763A0](v10);
  v12 = [v11 canonicalUnit];

  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:2.0];

  v15 = MEMORY[0x253076160](0xD000000000000036, 0x8000000251460F30);
  v16 = MEMORY[0x2530763A0](v15);
  v17 = [v16 canonicalUnit];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = [v13 quantityWithUnit:v17 doubleValue:0.0];

  *&v33 = v28;
  *(&v33 + 1) = v14;
  v34 = 0;
  v35 = v18;
  v36 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v29, v8, type metadata accessor for HealthChartsContext);
  v19 = type metadata accessor for HealthChartsContext(0);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v33, v8, v5, v32);
  (*(v3 + 8))(v5, v30);
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  if (*&v32[0])
  {
    v20 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v21 = swift_allocObject();
    v22 = v32[3];
    v21[3] = v32[2];
    v21[4] = v22;
    v23 = v32[5];
    v21[5] = v32[4];
    v21[6] = v23;
    v24 = v32[1];
    v21[1] = v32[0];
    v21[2] = v24;
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    v25 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v26 = v31;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    outlined destroy of HealthChartsQuantityDistributionDataProvider?(v32);
    v21 = 0;
    v25 = 0;
    v20 = 0;
    v26 = v31;
    v31[1] = 0;
    v26[2] = 0;
  }

  *v26 = v21;
  v26[3] = v25;
  v26[4] = v20;
}

unint64_t HKWalkingDoubleSupportPercentageStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](37, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 0;
  v34[0] = 0x3FF0000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0x4059000000000000;
  v37 = 0;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemOrangeColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKSixMinuteWalkTestDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461150);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](109, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKSixMinuteWalkTestDistanceStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](109, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4059000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemOrangeColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKAppleStandTimeStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251462460);
  v19 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v20 = swift_allocObject();
  *a2 = v20;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v23 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v21 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v22 = *v21;
  v23 = *v21;
  outlined destroy of HealthChartsUnit?(v21, type metadata accessor for HealthChartsContext);
  if (!v22)
  {
    goto LABEL_4;
  }

LABEL_5:
  *(v20 + 48) = v8;
  *(v20 + 56) = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 24));
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  *(v20 + 16) = v23;
  *(v20 + 64) = v19;
  *(v20 + 72) = xmmword_25145B0F0;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

void HKWalkingSpeedStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v30 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251460ED0);
  v28 = MEMORY[0x2530763A0](v9);
  v10 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251460ED0);
  v11 = MEMORY[0x2530763A0](v10);
  v12 = [v11 canonicalUnit];

  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:2.0];

  v15 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251460ED0);
  v16 = MEMORY[0x2530763A0](v15);
  v17 = [v16 canonicalUnit];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = [v13 quantityWithUnit:v17 doubleValue:0.0];

  *&v33 = v28;
  *(&v33 + 1) = v14;
  v34 = 0;
  v35 = v18;
  v36 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v29, v8, type metadata accessor for HealthChartsContext);
  v19 = type metadata accessor for HealthChartsContext(0);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v33, v8, v5, v32);
  (*(v3 + 8))(v5, v30);
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  if (*&v32[0])
  {
    v20 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v21 = swift_allocObject();
    v22 = v32[3];
    v21[3] = v32[2];
    v21[4] = v22;
    v23 = v32[5];
    v21[5] = v32[4];
    v21[6] = v23;
    v24 = v32[1];
    v21[1] = v32[0];
    v21[2] = v24;
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    v25 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v26 = v31;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    outlined destroy of HealthChartsQuantityDistributionDataProvider?(v32);
    v21 = 0;
    v25 = 0;
    v20 = 0;
    v26 = v31;
    v31[1] = 0;
    v26[2] = 0;
  }

  *v26 = v21;
  v26[3] = v25;
  v26[4] = v20;
}

unint64_t HKWalkingSpeedStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x3FB999999999999ALL;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemOrangeColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

void HKWalkingStepLengthStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v30 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251460EA0);
  v28 = MEMORY[0x2530763A0](v9);
  v10 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251460EA0);
  v11 = MEMORY[0x2530763A0](v10);
  v12 = [v11 canonicalUnit];

  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:2.0];

  v15 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251460EA0);
  v16 = MEMORY[0x2530763A0](v15);
  v17 = [v16 canonicalUnit];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = [v13 quantityWithUnit:v17 doubleValue:0.0];

  *&v33 = v28;
  *(&v33 + 1) = v14;
  v34 = 0;
  v35 = v18;
  v36 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v29, v8, type metadata accessor for HealthChartsContext);
  v19 = type metadata accessor for HealthChartsContext(0);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v33, v8, v5, v32);
  (*(v3 + 8))(v5, v30);
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  if (*&v32[0])
  {
    v20 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v21 = swift_allocObject();
    v22 = v32[3];
    v21[3] = v32[2];
    v21[4] = v22;
    v23 = v32[5];
    v21[5] = v32[4];
    v21[6] = v23;
    v24 = v32[1];
    v21[1] = v32[0];
    v21[2] = v24;
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    v25 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v26 = v31;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    outlined destroy of HealthChartsQuantityDistributionDataProvider?(v32);
    v21 = 0;
    v25 = 0;
    v20 = 0;
    v26 = v31;
    v31[1] = 0;
    v26[2] = 0;
  }

  *v26 = v21;
  v26[3] = v25;
  v26[4] = v20;
}

unint64_t HKWalkingStepLengthStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](109, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x3F847AE147AE147BLL;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemOrangeColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

void HKPregnancyStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463320);
  v11 = MEMORY[0x253076390](v10);
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v12 = type metadata accessor for HealthChartsContext(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, 0, 1, v12);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v14 = swift_allocObject();
  *a2 = v14;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v15 = (*(v13 + 48))(v6, 1, v12);
  v16 = MEMORY[0x277D84F90];
  if (v15 == 1)
  {
    v17 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v19 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v18 = *v6;
  v19 = *v6;
  v20 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v18)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v14[2] = v19;
  v14[3] = v16;
  v14[4] = v11;
  v14[5] = 0;
  v14[6] = v16;
}

void HKLactationStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463710);
  v11 = MEMORY[0x253076390](v10);
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v12 = type metadata accessor for HealthChartsContext(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, 0, 1, v12);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v14 = swift_allocObject();
  *a2 = v14;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v15 = (*(v13 + 48))(v6, 1, v12);
  v16 = MEMORY[0x277D84F90];
  if (v15 == 1)
  {
    v17 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v19 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v18 = *v6;
  v19 = *v6;
  v20 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v18)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v14[2] = v19;
  v14[3] = v16;
  v14[4] = v11;
  v14[5] = 0;
  v14[6] = v16;
}

void HKContraceptiveStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251463C20);
  v11 = MEMORY[0x253076390](v10);
  specialized static HKCategoryValueContraceptive.valueOrder.getter();
  v13 = v12;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v14 = type metadata accessor for HealthChartsContext(0);
  v15 = *(v14 - 8);
  (*(v15 + 56))(v9, 0, 1, v14);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v16 = swift_allocObject();
  *a2 = v16;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v17 = (*(v15 + 48))(v6, 1, v14);
  v18 = MEMORY[0x277D84F90];
  if (v17 == 1)
  {
    v19 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v21 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = *v6;
  v22 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v20)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v16[2] = v21;
  v16[3] = v13;
  v16[4] = v11;
  v16[5] = 0;
  v16[6] = v18;
}

unint64_t HKContraceptiveStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  specialized static HKCategoryValueContraceptive.valueOrder.getter();
  v13 = v12;
  v14 = specialized static HKCategoryValueContraceptive.valueLabelDictionary.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v14;
  *a1 = 0x4072C00000000000;
  v17 = a1 + *(v7 + 40);
  *v17 = 1;
  *(v17 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v17 + 2) = v15;
  *(v17 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v17 + 4) = v16;
  *(v17 + 5) = 0xD000000000000015;
  *(v17 + 6) = 0x8000000251462D90;

  v18 = specialized static HKCategoryValueContraceptive.valueLabelDictionary.getter();
  v19 = [objc_opt_self() systemIndigoColor];
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v20 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v21 + v20, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v23 = v22;
  v24 = (a1 + *(v22 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v24[3] = v25;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v24[4] = result;
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v24[2] = v18;
  *(a1 + *(v23 + 40)) = v21;
  return result;
}

uint64_t HKWalkingAsymmetryPercentageStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251460F70);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](37, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

void HKStairAscentSpeedStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v30 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461120);
  v28 = MEMORY[0x2530763A0](v9);
  v10 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461120);
  v11 = MEMORY[0x2530763A0](v10);
  v12 = [v11 canonicalUnit];

  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:2.0];

  v15 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461120);
  v16 = MEMORY[0x2530763A0](v15);
  v17 = [v16 canonicalUnit];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = [v13 quantityWithUnit:v17 doubleValue:0.0];

  *&v33 = v28;
  *(&v33 + 1) = v14;
  v34 = 0;
  v35 = v18;
  v36 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v29, v8, type metadata accessor for HealthChartsContext);
  v19 = type metadata accessor for HealthChartsContext(0);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v33, v8, v5, v32);
  (*(v3 + 8))(v5, v30);
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  if (*&v32[0])
  {
    v20 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v21 = swift_allocObject();
    v22 = v32[3];
    v21[3] = v32[2];
    v21[4] = v22;
    v23 = v32[5];
    v21[5] = v32[4];
    v21[6] = v23;
    v24 = v32[1];
    v21[1] = v32[0];
    v21[2] = v24;
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    v25 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v26 = v31;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    outlined destroy of HealthChartsQuantityDistributionDataProvider?(v32);
    v21 = 0;
    v25 = 0;
    v20 = 0;
    v26 = v31;
    v31[1] = 0;
    v26[2] = 0;
  }

  *v26 = v21;
  v26[3] = v25;
  v26[4] = v20;
}

unint64_t HKStairAscentSpeedStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x3F847AE147AE147BLL;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemOrangeColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

void HKStairDescentSpeedStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v30 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514610F0);
  v28 = MEMORY[0x2530763A0](v9);
  v10 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514610F0);
  v11 = MEMORY[0x2530763A0](v10);
  v12 = [v11 canonicalUnit];

  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:2.0];

  v15 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514610F0);
  v16 = MEMORY[0x2530763A0](v15);
  v17 = [v16 canonicalUnit];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = [v13 quantityWithUnit:v17 doubleValue:0.0];

  *&v33 = v28;
  *(&v33 + 1) = v14;
  v34 = 0;
  v35 = v18;
  v36 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v29, v8, type metadata accessor for HealthChartsContext);
  v19 = type metadata accessor for HealthChartsContext(0);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v33, v8, v5, v32);
  (*(v3 + 8))(v5, v30);
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  if (*&v32[0])
  {
    v20 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v21 = swift_allocObject();
    v22 = v32[3];
    v21[3] = v32[2];
    v21[4] = v22;
    v23 = v32[5];
    v21[5] = v32[4];
    v21[6] = v23;
    v24 = v32[1];
    v21[1] = v32[0];
    v21[2] = v24;
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    v25 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v26 = v31;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    outlined destroy of HealthChartsQuantityDistributionDataProvider?(v32);
    v21 = 0;
    v25 = 0;
    v20 = 0;
    v26 = v31;
    v31[1] = 0;
    v26[2] = 0;
  }

  *v26 = v21;
  v26[3] = v25;
  v26[4] = v20;
}

unint64_t HKSleepDurationGoalStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemIndigoColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000013;
  v25[1] = 0x8000000251462660;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

double HKSleepScheduleStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemIndigoColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 2.88734015e170;
  *v25 = xmmword_25145B100;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKHeadphoneAudioExposureEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemBlueColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD00000000000001ELL;
  v25[1] = 0x80000002514638D0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

void HKRapidPoundingOrFlutteringHeartbeatStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000003ALL, 0x8000000251463140);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKSkippedHeartbeatStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251463050);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKFeverStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000001DLL, 0x8000000251463A10);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKShortnessOfBreathStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514630B0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKChestTightnessOrPainStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251463CA0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKFaintingStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463A50);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKDizzinessStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463AA0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKInsuranceRecordStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemBlueColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000010;
  v25[1] = 0x8000000251462A30;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKCardioFitnessMedicationsUseStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemGrayColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD00000000000001ELL;
  v25[1] = 0x8000000251462C80;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

void HKVomitingStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251462EC0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKHeartburnStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000021, 0x80000002514638A0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKCoughingStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463B00);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKWheezingStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251462E90);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKSoreThroatStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251462F50);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKCongestionStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251463080);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKRunnyNoseStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463110);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKVaginalDrynessStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251462EF0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKNightSweatsStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514634B0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKChillsStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000001ELL, 0x8000000251463C80);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKHairLossStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514639B0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKDrySkinStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000001FLL, 0x8000000251463A80);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKBladderIncontinenceStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251463DC0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKMemoryLapseStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514635B0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKLowCardioFitnessEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000018;
  v25[1] = 0x8000000251463660;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKHandwashingEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](115, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v7, v31, 0.0, 25.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemBlueColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 5) = 1;
  v4[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = (a1 + *(v24 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v26[3] = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v26[4] = result;
  *v26 = 0xD000000000000011;
  v26[1] = 0x8000000251463960;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

void HKGeneralizedBodyAcheStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000002BLL, 0x80000002514639E0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

void HKLossOfSmellStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514636E0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B0E0;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKAbdominalCrampsStaticChartKey.attributes(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v7 = *(v6 - 8);
  v40 = v6;
  v41 = v7;
  v42 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v11 - 8);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v13 = v12;
  v14 = a5 + *(v12 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v16 = &v14[*(v15 + 52)];
  v16[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  *v14 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25145AFD0;
  *(v18 + 32) = xmmword_25145B0E0;
  *(v18 + 48) = xmmword_25145B030;
  *(v18 + 64) = 4;
  v19 = specialized static HKCategoryValueSeverity.valueLabelDictionary.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  *a5 = 0x4072C00000000000;
  v22 = a5 + *(v13 + 40);
  *v22 = 1;
  v23 = v39;
  *(v22 + 1) = v38;
  *(v22 + 2) = v20;
  *(v22 + 3) = v23;
  *(v22 + 4) = v21;
  *(v22 + 5) = 0xD000000000000015;
  *(v22 + 6) = 0x8000000251462D90;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v25;
  v27 = specialized static HKCategoryValueSeverity.valueLabelDictionary.getter();
  v28 = [objc_opt_self() systemIndigoColor];
  *v9 = Color.init(uiColor:)();
  *(v9 + 1) = 0;
  v9[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v9, v30 + v29, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v32 = v31;
  v33 = (a5 + *(v31 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v33[3] = v34;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v33[4] = result;
  *v33 = v24;
  v33[1] = v26;
  v33[2] = v27;
  *(a5 + *(v32 + 40)) = v30;
  return result;
}

void HKLossOfTasteStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514636B0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = 5;
  *(v12 + 24) = xmmword_25145B110;
  *(v12 + 40) = xmmword_25145B120;
  *(v12 + 56) = xmmword_25145AFE0;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKLossOfTasteStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  v33 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = 5;
  *(v14 + 24) = xmmword_25145B110;
  *(v14 + 40) = xmmword_25145B120;
  *(v14 + 56) = xmmword_25145AFE0;
  v15 = specialized static HKCategoryValueSeverity.valueLabelDictionary.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  *a1 = 0x4072C00000000000;
  v18 = a1 + *(v9 + 40);
  *v18 = 1;
  *(v18 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v18 + 2) = v16;
  *(v18 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v18 + 4) = v17;
  *(v18 + 5) = 0xD000000000000015;
  *(v18 + 6) = 0x8000000251462D90;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  v22 = specialized static HKCategoryValueSeverity.valueLabelDictionary.getter();
  v23 = [objc_opt_self() systemIndigoColor];
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = (a1 + *(v26 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v28[3] = v29;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v28[4] = result;
  *v28 = v19;
  v28[1] = v21;
  v28[2] = v22;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

void HKPregnancyTestResultStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000002BLL, 0x80000002514632F0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = 3;
  *(v12 + 24) = xmmword_25145B130;
  *(v12 + 40) = xmmword_25145AB10;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKPregnancyTestResultStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = 3;
  *(v11 + 24) = xmmword_25145B130;
  v25 = xmmword_25145AB10;
  *(v11 + 40) = xmmword_25145AB10;
  v12 = specialized static HKCategoryValuePregnancyTestResult.valueLabelDictionary.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *a1 = 0x4072C00000000000;
  v15 = a1 + *(v6 + 40);
  *v15 = 1;
  *(v15 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 2) = v13;
  *(v15 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 4) = v14;
  *(v15 + 5) = 0xD000000000000015;
  *(v15 + 6) = 0x8000000251462D90;

  v16 = specialized static HKCategoryValuePregnancyTestResult.valueLabelDictionary.getter();
  v17 = [objc_opt_self() systemIndigoColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v18 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v25;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v19 + v18, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v21 = v20;
  v22 = (a1 + *(v20 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v22[3] = v23;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v22[4] = result;
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v22[2] = v16;
  *(a1 + *(v21 + 40)) = v19;
  return result;
}

void HKProgesteroneTestResultStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251463250);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AB30;
  *(v12 + 32) = xmmword_25145B000;
  *(v12 + 48) = 2;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKProgesteroneTestResultStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25145AB30;
  *(v11 + 32) = xmmword_25145B000;
  *(v11 + 48) = 2;
  v12 = specialized static HKCategoryValueProgesteroneTestResult.valueLabelDictionary.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *a1 = 0x4072C00000000000;
  v15 = a1 + *(v6 + 40);
  *v15 = 1;
  *(v15 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 2) = v13;
  *(v15 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 4) = v14;
  *(v15 + 5) = 0xD000000000000015;
  *(v15 + 6) = 0x8000000251462D90;

  v16 = specialized static HKCategoryValueProgesteroneTestResult.valueLabelDictionary.getter();
  v17 = [objc_opt_self() systemIndigoColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v18 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v19 + v18, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v21 = v20;
  v22 = (a1 + *(v20 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v22[3] = v23;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v22[4] = result;
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v22[2] = v16;
  *(a1 + *(v21 + 40)) = v19;
  return result;
}

unint64_t HKBodyTemperatureStaticChartKey.attributes(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, SEL *a3@<X3>, void *a4@<X8>, double a5@<D0>)
{
  v36 = a2;
  v37 = a3;
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v16 = v15;
  v17 = a4 + *(v15 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v19 = &v17[*(v18 + 52)];
  v19[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  *v17 = 1;
  v21 = MEMORY[0x253076160](a1, v36);
  v22 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v14, v40, a5, 100.0);
  outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsUnit?);
  v23 = v41;
  v24 = v42;
  v25 = v40[0];
  v26 = v40[1];
  *a4 = 0x4072C00000000000;
  v27 = a4 + *(v16 + 40);
  *v27 = 1;
  *(v27 + 8) = v25;
  *(v27 + 24) = v26;
  *(v27 + 5) = v23;
  *(v27 + 6) = v24;
  v28 = [objc_opt_self() *v37];
  *v11 = Color.init(uiColor:)();
  *(v11 + 1) = 0;
  v11[16] = 1;
  *(v11 + 3) = 0x4000000000000000;
  v11[32] = 0;
  *(v11 + 5) = 0;
  v11[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v29 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v11, v30 + v29, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v32 = v31;
  v33 = a4 + *(v31 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v33 + 3) = v34;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v33 + 4) = result;
  *(a4 + *(v32 + 40)) = v30;
  return result;
}

unint64_t HKAppleWalkingSteadinessStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemOrangeColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000018;
  v25[1] = 0x8000000251462410;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKAppleWalkingSteadinessEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemOrangeColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD00000000000001ELL;
  v25[1] = 0x8000000251463E50;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKNumberOfAlcoholicBeveragesStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251461490);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKHypertensionEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  *(v19 + 2) = v13;
  *(v19 + 3) = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000012;
  v25[1] = 0x8000000251460C70;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKAppleSleepingWristTemperatureStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x67654461746C6564, 0xE900000000000043);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v7, v31, -2.0, 2.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPurpleColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

unint64_t HKVisionPrescriptionStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemPurpleColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000013;
  v25[1] = 0x8000000251460D70;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKRunningStrideLengthStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002BLL, 0x80000002514611D0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](109, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKRunningStrideLengthStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](109, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4000000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v34, v31, 0.5, 4.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemOrangeColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKRunningVerticalOscillationStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251461190);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](28003, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKRunningVerticalOscillationStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](28003, 0xE200000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4024000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v34, v31, 1.0, 20.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemOrangeColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKRunningGroundContactTimeStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000030, 0x8000000251461260);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](29549, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKRunningGroundContactTimeStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](29549, 0xE200000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4059000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v34, v31, 50.0, 400.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemOrangeColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

void HKPersistentIntermenstrualBleedingStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000038, 0x8000000251463350);
  v11 = MEMORY[0x253076390](v10);
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v12 = type metadata accessor for HealthChartsContext(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, 0, 1, v12);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v14 = swift_allocObject();
  *a2 = v14;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v15 = (*(v13 + 48))(v6, 1, v12);
  v16 = MEMORY[0x277D84F90];
  if (v15 == 1)
  {
    v17 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v19 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v18 = *v6;
  v19 = *v6;
  v20 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v18)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v14[2] = v19;
  v14[3] = v16;
  v14[4] = v11;
  v14[5] = 0;
  v14[6] = v16;
}

void HKProlongedMenstrualPeriodsStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251463180);
  v11 = MEMORY[0x253076390](v10);
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v12 = type metadata accessor for HealthChartsContext(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, 0, 1, v12);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v14 = swift_allocObject();
  *a2 = v14;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v15 = (*(v13 + 48))(v6, 1, v12);
  v16 = MEMORY[0x277D84F90];
  if (v15 == 1)
  {
    v17 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v19 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v18 = *v6;
  v19 = *v6;
  v20 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v18)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v14[2] = v19;
  v14[3] = v16;
  v14[4] = v11;
  v14[5] = 0;
  v14[6] = v16;
}

void HKIrregularMenstrualCyclesStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000030, 0x8000000251463740);
  v11 = MEMORY[0x253076390](v10);
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v12 = type metadata accessor for HealthChartsContext(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, 0, 1, v12);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v14 = swift_allocObject();
  *a2 = v14;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v15 = (*(v13 + 48))(v6, 1, v12);
  v16 = MEMORY[0x277D84F90];
  if (v15 == 1)
  {
    v17 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v19 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v18 = *v6;
  v19 = *v6;
  v20 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v18)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v14[2] = v19;
  v14[3] = v16;
  v14[4] = v11;
  v14[5] = 0;
  v14[6] = v16;
}

void HKInfrequentMenstrualCyclesStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000031, 0x80000002514637E0);
  v11 = MEMORY[0x253076390](v10);
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v12 = type metadata accessor for HealthChartsContext(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, 0, 1, v12);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v14 = swift_allocObject();
  *a2 = v14;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v15 = (*(v13 + 48))(v6, 1, v12);
  v16 = MEMORY[0x277D84F90];
  if (v15 == 1)
  {
    v17 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v19 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v18 = *v6;
  v19 = *v6;
  v20 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v18)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v14[2] = v19;
  v14[3] = v16;
  v14[4] = v11;
  v14[5] = 0;
  v14[6] = v16;
}

unint64_t HKPregnancyStaticChartKey.attributes(for:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v32[1] = a2;
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v11 = v10;
  v12 = a5 + *(v10 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v14 = &v12[*(v13 + 52)];
  v14[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  *v12 = 1;
  v16 = MEMORY[0x277D84F90];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  *a5 = 0x4072C00000000000;
  v20 = a5 + *(v11 + 40);
  *v20 = 1;
  v21 = v34;
  *(v20 + 1) = v33;
  *(v20 + 2) = v18;
  *(v20 + 3) = v21;
  *(v20 + 4) = v19;
  *(v20 + 5) = 0xD000000000000015;
  *(v20 + 6) = 0x8000000251462D90;
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(v16);
  v23 = objc_opt_self();

  v24 = [v23 systemIndigoColor];
  *v9 = Color.init(uiColor:)();
  *(v9 + 1) = 0;
  v9[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v9, v26 + v25, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v28 = v27;
  v29 = (a5 + *(v27 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v29[3] = v30;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v29[4] = result;
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v29[2] = v22;
  *(a5 + *(v28 + 40)) = v26;
  return result;
}

uint64_t HKHeartRateRecoveryStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000032, 0x80000002514615F0);
  v19 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v20 = swift_allocObject();
  *a2 = v20;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v23 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v21 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v22 = *v21;
  v23 = *v21;
  outlined destroy of HealthChartsUnit?(v21, type metadata accessor for HealthChartsContext);
  if (!v22)
  {
    goto LABEL_4;
  }

LABEL_5:
  *(v20 + 48) = v8;
  *(v20 + 56) = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 24));
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  *(v20 + 16) = v23;
  *(v20 + 64) = v19;
  *(v20 + 72) = xmmword_25145B140;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKClinicalNoteRecordStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v31 + 1) = v13;
  *v32 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v30 = xmmword_25145AF50;
  memset(&v32[8], 0, 32);
  *&v32[40] = 256;
  outlined init with copy of AutomaticNumeric(&v30, v28);
  v14 = swift_allocObject();
  v15 = v29[0];
  v14[3] = v28[2];
  v14[4] = v15;
  *(v14 + 74) = *(v29 + 10);
  v16 = v28[1];
  v14[1] = v28[0];
  v14[2] = v16;
  v17 = swift_allocObject();
  v18 = *&v32[16];
  v17[3] = *v32;
  v17[4] = v18;
  *(v17 + 74) = *&v32[26];
  v19 = v31;
  v17[1] = v30;
  v17[2] = v19;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v7 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v14;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v17;
  *(v20 + 5) = 0x6974616D6F747561;
  *(v20 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000021, 0x8000000251462B10);
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = 0x4000000000000000;
  v5[32] = 0;
  *(v5 + 5) = 0;
  v5[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000014;
  v25[1] = 0x8000000251462AF0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKUnderwaterDepthStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateMinMaxData>, MEMORY[0x277D10330], MEMORY[0x277D10328]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461000);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateMinMax<>()();
  v19 = MEMORY[0x253076160](29798, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateMinMaxData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 12;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKUnderwaterDepthStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  v36[1] = v2;
  v36[2] = v3;
  v37 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MinMaxSeriesAttributes(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v14 = v13;
  v15 = a1 + *(v13 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v17 = &v15[*(v16 + 52)];
  v17[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  *v15 = 1;
  v19 = MEMORY[0x253076160](109, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v12, v38, 0.0, 2.0);
  outlined destroy of HealthChartsUnit?(v12, type metadata accessor for HealthChartsUnit?);
  v21 = v39;
  v22 = v40;
  v23 = v38[0];
  v24 = v38[1];
  *a1 = 0x4072C00000000000;
  v25 = a1 + *(v14 + 40);
  *v25 = 1;
  *(v25 + 8) = v23;
  *(v25 + 24) = v24;
  *(v25 + 5) = v21;
  *(v25 + 6) = v22;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  Color.init(uiColor:)();
  v26 = Color.opacity(_:)();

  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  v27 = Color.init(uiColor:)();
  v28 = &v9[*(v7 + 28)];
  *&v28[*(type metadata accessor for DotSeriesAttributes(0) + 20)] = xmmword_25145AFC0;
  type metadata accessor for DotSeriesAttributes.Symbol(0);
  swift_storeEnumTagMultiPayload();
  *v28 = v27;
  *(v28 + 1) = 0;
  v28[16] = 1;
  *v9 = v26;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *(v9 + 3) = 0x4020000000000000;
  v9[32] = 0;
  *(v9 + 5) = 0;
  v9[48] = 1;
  outlined init with copy of HealthChartsUnit?(v9, v5, type metadata accessor for MinMaxSeriesAttributes);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v30 + v29, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for MinMaxSeriesAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v32 = v31;
  v33 = a1 + *(v31 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v33 + 3) = v34;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v33 + 4) = result;
  *(a1 + *(v32 + 40)) = v30;
  return result;
}

uint64_t HKRunningPowerStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461230);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](87, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKMedicationDoseEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemCyanColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000015;
  v25[1] = 0x80000002514625A0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKRunningSpeedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461200);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKRunningSpeedStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v30[0]) = 0;
  v29 = 1;
  v33[0] = 0x3FB999999999999ALL;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v33, v30, 0.0, 7.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v31;
  v17 = v32;
  v18 = v30[0];
  v19 = v30[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v25 + 3) = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v25 + 4) = result;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKAppleSleepingBreathingDisturbancesStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000003ALL, 0x80000002514624D0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKAppleSleepingBreathingDisturbancesStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4036000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v34, v31, 0.0, 22.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemCyanColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

void HKSleepApneaEventStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462FF0);
  v11 = MEMORY[0x253076390](v10);
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v12 = type metadata accessor for HealthChartsContext(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, 0, 1, v12);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v14 = swift_allocObject();
  *a2 = v14;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v15 = (*(v13 + 48))(v6, 1, v12);
  v16 = MEMORY[0x277D84F90];
  if (v15 == 1)
  {
    v17 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v19 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v18 = *v6;
  v19 = *v6;
  v20 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v18)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v14[2] = v19;
  v14[3] = v16;
  v14[4] = v11;
  v14[5] = 0;
  v14[6] = v16;
}

unint64_t HKSleepApneaEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D84F90];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  *a1 = 0x4072C00000000000;
  v16 = a1 + *(v7 + 40);
  *v16 = 1;
  *(v16 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v16 + 2) = v14;
  *(v16 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v16 + 4) = v15;
  *(v16 + 5) = 0xD000000000000015;
  *(v16 + 6) = 0x8000000251462D90;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(v12);
  v18 = objc_opt_self();

  v19 = [v18 systemCyanColor];
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v20 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v21 + v20, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v23 = v22;
  v24 = (a1 + *(v22 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v24[3] = v25;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v24[4] = result;
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v24[2] = v17;
  *(a1 + *(v23 + 40)) = v21;
  return result;
}

uint64_t HKWaterTemperatureStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateMinMaxData>, MEMORY[0x277D10330], MEMORY[0x277D10328]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251460E70);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateMinMax<>()();
  v19 = MEMORY[0x253076160](1130849636, 0xE400000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateMinMaxData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 12;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKWaterTemperatureStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v41 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MinMaxSeriesAttributes(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v14 = v13;
  v15 = a1 + *(v13 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v17 = &v15[*(v16 + 52)];
  v17[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  *v15 = 1;
  v19 = MEMORY[0x253076160](1130849636, 0xE400000000000000);
  v20 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v43[0]) = 1;
  v42 = 1;
  v46[0] = 0x4014000000000000;
  v46[1] = 0;
  v47 = 1;
  v48 = 0;
  v49 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v12, v46, v43, 10.0, 30.0);
  outlined destroy of HealthChartsUnit?(v12, type metadata accessor for HealthChartsUnit?);
  v21 = v44;
  v22 = v45;
  v23 = v43[0];
  v24 = v43[1];
  *a1 = 0x4072C00000000000;
  v25 = a1 + *(v14 + 40);
  *v25 = 1;
  *(v25 + 8) = v23;
  *(v25 + 24) = v24;
  *(v25 + 5) = v21;
  *(v25 + 6) = v22;
  v26 = objc_opt_self();
  v27 = [v26 systemBlueColor];
  Color.init(uiColor:)();
  v28 = Color.opacity(_:)();

  v29 = [v26 systemBlueColor];
  v30 = Color.init(uiColor:)();
  v31 = &v9[*(v7 + 28)];
  *&v31[*(type metadata accessor for DotSeriesAttributes(0) + 20)] = xmmword_25145AFC0;
  type metadata accessor for DotSeriesAttributes.Symbol(0);
  swift_storeEnumTagMultiPayload();
  *v31 = v30;
  *(v31 + 1) = 0;
  v31[16] = 1;
  *v9 = v28;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *(v9 + 3) = 0x4020000000000000;
  v9[32] = 0;
  *(v9 + 5) = 0;
  v9[48] = 1;
  outlined init with copy of HealthChartsUnit?(v9, v5, type metadata accessor for MinMaxSeriesAttributes);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v32 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v33 + v32, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for MinMaxSeriesAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v35 = v34;
  v36 = a1 + *(v34 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v36 + 3) = v37;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v36 + 4) = result;
  *(a1 + *(v35 + 40)) = v33;
  return result;
}

uint64_t HKTimeInDaylightStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461060);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](30828, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKDietaryFatTotalStaticChartKey.attributes(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, SEL *a3@<X3>, void *a4@<X8>, double a5@<D0>)
{
  v36 = a2;
  v37 = a3;
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v16 = v15;
  v17 = a4 + *(v15 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v19 = &v17[*(v18 + 52)];
  v19[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  *v17 = 1;
  v21 = MEMORY[0x253076160](a1, v36);
  v22 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v14, v40, 0.0, a5);
  outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsUnit?);
  v23 = v41;
  v24 = v42;
  v25 = v40[0];
  v26 = v40[1];
  *a4 = 0x4072C00000000000;
  v27 = a4 + *(v16 + 40);
  *v27 = 1;
  *(v27 + 8) = v25;
  *(v27 + 24) = v26;
  *(v27 + 5) = v23;
  *(v27 + 6) = v24;
  v28 = [objc_opt_self() *v37];
  *v11 = Color.init(uiColor:)();
  *(v11 + 1) = 0;
  v11[16] = 1;
  *(v11 + 3) = 0;
  v11[32] = 1;
  *(v11 + 5) = 1;
  v11[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v29 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v11, v30 + v29, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v32 = v31;
  v33 = a4 + *(v31 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v33 + 3) = v34;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v33 + 4) = result;
  *(a4 + *(v32 + 40)) = v30;
  return result;
}

uint64_t HKCyclingPowerStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462180);
  v19 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v20 = swift_allocObject();
  *a2 = v20;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v23 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v21 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v22 = *v21;
  v23 = *v21;
  outlined destroy of HealthChartsUnit?(v21, type metadata accessor for HealthChartsContext);
  if (!v22)
  {
    goto LABEL_4;
  }

LABEL_5:
  *(v20 + 48) = v8;
  *(v20 + 56) = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 24));
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  *(v20 + 16) = v23;
  *(v20 + 64) = v19;
  *(v20 + 72) = xmmword_25145B140;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKCyclingPowerStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](87, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v30[0]) = 0;
  v29 = 1;
  v33[0] = 0x4059000000000000;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v33, v30, 0.0, 300.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v31;
  v17 = v32;
  v18 = v30[0];
  v19 = v30[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v25 + 3) = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v25 + 4) = result;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKCyclingSpeedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462150);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKCyclingSpeedStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v30[0]) = 0;
  v29 = 1;
  v33[0] = 0x3FB999999999999ALL;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v33, v30, 0.0, 13.4);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v31;
  v17 = v32;
  v18 = v30[0];
  v19 = v30[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v25 + 3) = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v25 + 4) = result;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKCyclingCadenceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514621F0);
  v19 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v20 = swift_allocObject();
  *a2 = v20;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v23 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v21 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v22 = *v21;
  v23 = *v21;
  outlined destroy of HealthChartsUnit?(v21, type metadata accessor for HealthChartsContext);
  if (!v22)
  {
    goto LABEL_4;
  }

LABEL_5:
  *(v20 + 48) = v8;
  *(v20 + 56) = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 24));
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  *(v20 + 16) = v23;
  *(v20 + 64) = v19;
  *(v20 + 72) = xmmword_25145B140;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKCyclingCadenceStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v30[0]) = 0;
  v29 = 1;
  v33[0] = 0x3FB999999999999ALL;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v33, v30, 0.0, 100.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v31;
  v17 = v32;
  v18 = v30[0];
  v19 = v30[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v25 + 3) = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v25 + 4) = result;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKCyclingFunctionalThresholdPowerStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000037, 0x80000002514621B0);
  v19 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v20 = swift_allocObject();
  *a2 = v20;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v23 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v21 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v22 = *v21;
  v23 = *v21;
  outlined destroy of HealthChartsUnit?(v21, type metadata accessor for HealthChartsContext);
  if (!v22)
  {
    goto LABEL_4;
  }

LABEL_5:
  *(v20 + 48) = v8;
  *(v20 + 56) = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 24));
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  *(v20 + 16) = v23;
  *(v20 + 64) = v19;
  *(v20 + 72) = xmmword_25145B140;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKCyclingFunctionalThresholdPowerStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](87, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v30[0]) = 0;
  v29 = 1;
  v33[0] = 0x4034000000000000;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v33, v30, 50.0, 200.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v31;
  v17 = v32;
  v18 = v30[0];
  v19 = v30[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v25 + 3) = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v25 + 4) = result;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

double HKStateOfMindStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v33 + 1) = v12;
  v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v11, MEMORY[0x277D10368]);
  v32 = xmmword_25145B150;
  v13 = FixedNumeric.debugDescription.getter();
  v15 = v14;
  outlined init with copy of FixedNumeric(&v32, v30);
  v16 = swift_allocObject();
  v17 = v30[1];
  *(v16 + 16) = v30[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v31;
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v32;
  *(v18 + 32) = v19;
  *(v18 + 48) = v34;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v6 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v16;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v18;
  *(v20 + 5) = v13;
  *(v20 + 6) = v15;
  v21 = [objc_opt_self() systemMintColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v26 + 3) = v27;
  *(v26 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 6.61299691e184;
  *v26 = xmmword_25145B160;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

void HKPhysicalEffortStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v30 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461360);
  v28 = MEMORY[0x2530763A0](v9);
  v10 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461360);
  v11 = MEMORY[0x2530763A0](v10);
  v12 = [v11 canonicalUnit];

  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:2.0];

  v15 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461360);
  v16 = MEMORY[0x2530763A0](v15);
  v17 = [v16 canonicalUnit];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = [v13 quantityWithUnit:v17 doubleValue:0.0];

  *&v33 = v28;
  *(&v33 + 1) = v14;
  v34 = 0;
  v35 = v18;
  v36 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v29, v8, type metadata accessor for HealthChartsContext);
  v19 = type metadata accessor for HealthChartsContext(0);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v33, v8, v5, v32);
  (*(v3 + 8))(v5, v30);
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  if (*&v32[0])
  {
    v20 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v21 = swift_allocObject();
    v22 = v32[3];
    v21[3] = v32[2];
    v21[4] = v22;
    v23 = v32[5];
    v21[5] = v32[4];
    v21[6] = v23;
    v24 = v32[1];
    v21[1] = v32[0];
    v21[2] = v24;
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    v25 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v26 = v31;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    outlined destroy of HealthChartsQuantityDistributionDataProvider?(v32);
    v21 = 0;
    v25 = 0;
    v20 = 0;
    v26 = v31;
    v31[1] = 0;
    v26[2] = 0;
  }

  *v26 = v21;
  v26[3] = v25;
  v26[4] = v20;
}

unint64_t HKPhysicalEffortStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x676B282F6C61636BLL, 0xEC0000002972682ALL);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v30[0]) = 0;
  v29 = 1;
  v33[0] = 0x4008000000000000;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v33, v30, 0.0, 5.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v31;
  v17 = v32;
  v18 = v30[0];
  v19 = v30[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v25 + 3) = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v25 + 4) = result;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

double HKGAD7StaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v32 + 1) = v13;
  *v33 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v31 = xmmword_25145AF50;
  memset(&v33[8], 0, 32);
  *&v33[40] = 256;
  outlined init with copy of AutomaticNumeric(&v31, v29);
  v14 = swift_allocObject();
  v15 = v30[0];
  v14[3] = v29[2];
  v14[4] = v15;
  *(v14 + 74) = *(v30 + 10);
  v16 = v29[1];
  v14[1] = v29[0];
  v14[2] = v16;
  v17 = swift_allocObject();
  v18 = *&v33[16];
  v17[3] = *v33;
  v17[4] = v18;
  *(v17 + 74) = *&v33[26];
  v19 = v32;
  v17[1] = v31;
  v17[2] = v19;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v7 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v14;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v17;
  *(v20 + 5) = 0x6974616D6F747561;
  *(v20 + 6) = 0xE900000000000063;
  v21 = [objc_opt_self() systemMintColor];
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v26 + 3) = v27;
  *(v26 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  *&result = 927220039;
  *v26 = xmmword_25145B170;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

double HKPHQ9StaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v32 + 1) = v13;
  *v33 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v31 = xmmword_25145AF50;
  memset(&v33[8], 0, 32);
  *&v33[40] = 256;
  outlined init with copy of AutomaticNumeric(&v31, v29);
  v14 = swift_allocObject();
  v15 = v30[0];
  v14[3] = v29[2];
  v14[4] = v15;
  *(v14 + 74) = *(v30 + 10);
  v16 = v29[1];
  v14[1] = v29[0];
  v14[2] = v16;
  v17 = swift_allocObject();
  v18 = *&v33[16];
  v17[3] = *v33;
  v17[4] = v18;
  *(v17 + 74) = *&v33[26];
  v19 = v32;
  v17[1] = v31;
  v17[2] = v19;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v7 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v14;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v17;
  *(v20 + 5) = 0x6974616D6F747561;
  *(v20 + 6) = 0xE900000000000063;
  v21 = [objc_opt_self() systemMintColor];
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v26 + 3) = v27;
  *(v26 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  *&result = 961628240;
  *v26 = xmmword_25145B180;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKPaddleSportsDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251461900);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKRowingDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514618D0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKCrossCountrySkiingDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000032, 0x80000002514619A0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKSkatingSportsDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002DLL, 0x80000002514618A0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKStepsStaticChartKey.attributes(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, double a4@<D0>)
{
  v35 = a2;
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v15 = v14;
  v16 = a3 + *(v14 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v18 = &v16[*(v17 + 52)];
  v18[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  *v16 = 1;
  v20 = MEMORY[0x253076160](a1, v35);
  v21 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v13, v38, 0.0, a4);
  outlined destroy of HealthChartsUnit?(v13, type metadata accessor for HealthChartsUnit?);
  v22 = v39;
  v23 = v40;
  v24 = v38[0];
  v25 = v38[1];
  *a3 = 0x4072C00000000000;
  v26 = a3 + *(v15 + 40);
  *v26 = 1;
  *(v26 + 8) = v24;
  *(v26 + 24) = v25;
  *(v26 + 5) = v22;
  *(v26 + 6) = v23;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v10 = Color.init(uiColor:)();
  *(v10 + 1) = 0;
  v10[16] = 1;
  *(v10 + 3) = 0;
  v10[32] = 1;
  *(v10 + 5) = 1;
  v10[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v27 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v10, v28 + v27, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v30 = v29;
  v31 = a3 + *(v29 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v31 + 3) = v32;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v31 + 4) = result;
  *(a3 + *(v30 + 40)) = v28;
  return result;
}

uint64_t HKEstimatedWorkoutEffortScoreStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000033, 0x8000000251461720);
  v19 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v20 = swift_allocObject();
  *a2 = v20;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v23 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v21 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v22 = *v21;
  v23 = *v21;
  outlined destroy of HealthChartsUnit?(v21, type metadata accessor for HealthChartsContext);
  if (!v22)
  {
    goto LABEL_4;
  }

LABEL_5:
  *(v20 + 48) = v8;
  *(v20 + 56) = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 24));
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  *(v20 + 16) = v23;
  *(v20 + 64) = v19;
  *(v20 + 72) = xmmword_25145B190;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKRowingSpeedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514612A0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKRowingSpeedStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v30[0]) = 0;
  v29 = 1;
  v33[0] = 0x3FB999999999999ALL;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v33, v30, 0.0, 4.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v31;
  v17 = v32;
  v18 = v30[0];
  v19 = v30[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v25 + 3) = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v25 + 4) = result;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKCrossCountrySkiingSpeedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002FLL, 0x8000000251462220);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKCrossCountrySkiingSpeedStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v30[0]) = 0;
  v29 = 1;
  v33[0] = 0x3FB999999999999ALL;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v33, v30, 0.0, 12.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v31;
  v17 = v32;
  v18 = v30[0];
  v19 = v30[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v25 + 3) = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v25 + 4) = result;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKPaddleSportsSpeedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461400);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](7548781, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKWorkoutEffortScoreStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251460E40);
  v19 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v20 = swift_allocObject();
  *a2 = v20;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v23 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v21 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v22 = *v21;
  v23 = *v21;
  outlined destroy of HealthChartsUnit?(v21, type metadata accessor for HealthChartsContext);
  if (!v22)
  {
    goto LABEL_4;
  }

LABEL_5:
  *(v20 + 48) = v8;
  *(v20 + 56) = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 24));
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  *(v20 + 16) = v23;
  *(v20 + 64) = v19;
  *(v20 + 72) = xmmword_25145B190;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKEstimatedWorkoutEffortScoreStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0xD000000000000010, 0x8000000251460E20);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v7, v30, 0.0, 20.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v31;
  v17 = v32;
  v18 = v30[0];
  v19 = v30[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 5) = 1;
  v4[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v25 + 3) = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v25 + 4) = result;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKAppleBalanceMetricsStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v33 + 1) = v12;
  v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v11, MEMORY[0x277D10368]);
  v32 = xmmword_25145B1A0;
  v13 = FixedNumeric.debugDescription.getter();
  v15 = v14;
  outlined init with copy of FixedNumeric(&v32, v30);
  v16 = swift_allocObject();
  v17 = v30[1];
  *(v16 + 16) = v30[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v31;
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v32;
  *(v18 + 32) = v19;
  *(v18 + 48) = v34;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v6 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v16;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v18;
  *(v20 + 5) = v13;
  *(v20 + 6) = v15;
  v21 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = (a1 + *(v24 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v26[3] = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v26[4] = result;
  *v26 = 0xD000000000000015;
  v26[1] = 0x80000002514627A0;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

unint64_t HKUserAnnotatedMedicationTypeStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemCyanColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD00000000000001ELL;
  v25[1] = 0x8000000251460CC0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

void HKBleedingDuringPregnancyStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000002FLL, 0x8000000251463D60);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = 5;
  *(v12 + 24) = xmmword_25145B1B0;
  *(v12 + 40) = xmmword_25145AB10;
  *(v12 + 56) = xmmword_25145AFE0;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKBleedingAfterPregnancyStaticChartKey.attributes(for:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v10 = v9;
  v11 = a5 + *(v9 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v13 = &v11[*(v12 + 52)];
  v13[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  *v11 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25145AFD0;
  *(v15 + 32) = xmmword_25145B020;
  *(v15 + 48) = xmmword_25145B030;
  *(v15 + 64) = 4;
  v16 = specialized static HKCategoryValueVaginalBleeding.valueLabelDictionary.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  *a5 = 0x4072C00000000000;
  v19 = a5 + *(v10 + 40);
  *v19 = 1;
  v20 = v32;
  *(v19 + 1) = v31;
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = v18;
  *(v19 + 5) = 0xD000000000000015;
  *(v19 + 6) = 0x8000000251462D90;

  v21 = specialized static HKCategoryValueVaginalBleeding.valueLabelDictionary.getter();
  v22 = [objc_opt_self() systemIndigoColor];
  *v8 = Color.init(uiColor:)();
  *(v8 + 1) = 0;
  v8[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v8, v24 + v23, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v26 = v25;
  v27 = (a5 + *(v25 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v27[3] = v28;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v27[4] = result;
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v27[2] = v21;
  *(a5 + *(v26 + 40)) = v24;
  return result;
}

void HKBleedingAfterPregnancyStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251463D90);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B020;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKAppleSleepScoreStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v33 + 1) = v12;
  v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v11, MEMORY[0x277D10368]);
  v32 = xmmword_25145B1C0;
  v13 = FixedNumeric.debugDescription.getter();
  v15 = v14;
  outlined init with copy of FixedNumeric(&v32, v30);
  v16 = swift_allocObject();
  v17 = v30[1];
  *(v16 + 16) = v30[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v31;
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v32;
  *(v18 + 32) = v19;
  *(v18 + 48) = v34;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v6 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v16;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v18;
  *(v20 + 5) = v13;
  *(v20 + 6) = v15;
  v21 = [objc_opt_self() systemIndigoColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = (a1 + *(v24 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v26[3] = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v26[4] = result;
  *v26 = 0xD000000000000011;
  v26[1] = 0x8000000251462760;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

void type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateDomain(255);
    v7 = lazy protocol witness table accessor for type DateDomain and conformance DateDomain(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>)
  {
    v4[0] = type metadata accessor for DateDomain(255);
    v4[1] = v4[0];
    v5 = lazy protocol witness table accessor for type DateDomain and conformance DateDomain(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain, &protocol conformance descriptor for DateDomain);
    v6 = v5;
    v2 = type metadata accessor for ChartAttributes.AxisAttributes(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
    }
  }
}

uint64_t sub_2513DDBC0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t x8_0@<X8>)
{
  return specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)(a1, a2, a3 & 1, v6 + 16, x8_0);
}

{
  return specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)(a1, a2, a3 & 1, (v6 + 16), x8_0);
}

unint64_t lazy protocol witness table accessor for type NoDescription and conformance NoDescription()
{
  result = lazy protocol witness table cache variable for type NoDescription and conformance NoDescription;
  if (!lazy protocol witness table cache variable for type NoDescription and conformance NoDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoDescription and conformance NoDescription);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoDescription and conformance NoDescription;
  if (!lazy protocol witness table cache variable for type NoDescription and conformance NoDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoDescription and conformance NoDescription);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>()
{
  result = lazy protocol witness table cache variable for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>;
  if (!lazy protocol witness table cache variable for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>)
  {
    type metadata accessor for DescriptionMessage<NoDescription>(255, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClosedRange<Double>(255, a2, MEMORY[0x277D839F8], MEMORY[0x277D83A20], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2513DDDE0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

void specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  if (!*(result + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    type metadata accessor for _ContiguousArrayStorage<Range<Int>>(0);
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
    memcpy(v13, v14, 16 * v8);
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
    type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsUnit?>, type metadata accessor for HealthChartsUnit?, type metadata accessor for HealthChartsUnit?);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsUnit>, MEMORY[0x277D102B8], MEMORY[0x277D102B8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.Aggregation>, MEMORY[0x277D10228], MEMORY[0x277D10228]);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t specialized closure #1 in ScalarDomain.init<A>(_:)@<X0>(uint64_t *a1@<X5>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AxisMarkPosition();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for AxisMarkPreset();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = *a1;
  v6 = a1[1];
  type metadata accessor for AxisMarks<BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>>(0);
  a2[3] = v8;
  a2[4] = lazy protocol witness table accessor for type DateDomain and conformance DateDomain(&lazy protocol witness table cache variable for type AxisMarks<BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>> and conformance AxisMarks<A>, type metadata accessor for AxisMarks<BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>>, MEMORY[0x277CBB460]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  static AxisMarkPreset.inset.getter();
  static AxisMarkPreset.inset.getter();
  specialized CategoryLevels.axisMarkValues.getter(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  type metadata accessor for BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>(0);
  lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}> and conformance <each A> BuilderTuple<Pack{repeat A}>();

  return AxisMarks.init<A>(preset:position:values:content:)();
}