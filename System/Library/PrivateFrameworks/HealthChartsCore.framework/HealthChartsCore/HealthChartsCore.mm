uint64_t DiscreteDateSpanData.buildData(from:valueOrder:preferredUnit:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v66 = a2;
  type metadata accessor for (DateInterval, Double)(0, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8]);
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v8 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v52 - v11;
  v69 = type metadata accessor for DateInterval();
  v12 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DiscreteDateSpanData.CategoryValue(0);
  v65 = *(v68 - 8);
  v14 = MEMORY[0x28223BE20](v68);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  if (a1)
  {
    v19 = (a1 & 0xFFFFFFFFFFFFFF8);
    if (a1 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x253077340](v51))
    {
      v21 = MEMORY[0x277D84F90];
      v54 = a3;
      if (!i)
      {
        break;
      }

      v56 = v19;
      v70 = MEMORY[0x277D84F90];
      v19 = &v70;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_39;
      }

      v53 = v7;
      v22 = 0;
      v21 = v70;
      v60 = a1 & 0xC000000000000001;
      v57 = a1;
      v55 = a1 + 32;
      a1 = v66 + 32;
      v52 = v12;
      v58 = (v12 + 32);
      v59 = i;
      while (1)
      {
        v7 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v60)
        {
          v23 = MEMORY[0x2530772A0]();
        }

        else
        {
          if (v22 >= v56[2])
          {
            goto LABEL_33;
          }

          v23 = *(v55 + 8 * v22);
        }

        v19 = v23;
        v24 = [v23 hk_integerValue];
        v25 = [v19 startDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = [v19 endDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.init(start:end:)();
        v27 = v24;
        v12 = v59;
        if (v66)
        {
          v28 = *(v66 + 16);
          v27 = v24;
          if (v28)
          {
            v27 = 0;
            while (*(a1 + 8 * v27) != v24)
            {
              v27 = v27 + 1;
              if (v28 == v27)
              {
                v27 = v24;
                break;
              }
            }
          }
        }

        (*v58)(v18, v67, v69);

        v29 = v68;
        *&v18[*(v68 + 20)] = v27;
        *&v18[*(v29 + 24)] = v24;
        v70 = v21;
        v31 = *(v21 + 16);
        v30 = *(v21 + 24);
        a3 = (v31 + 1);
        if (v31 >= v30 >> 1)
        {
          v19 = &v70;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v21 = v70;
        }

        *(v21 + 16) = a3;
        outlined init with take of DiscreteDateSpanData.CategoryValue(v18, v21 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v31, type metadata accessor for DiscreteDateSpanData.CategoryValue);
        v22 = v7;
        if (v7 == v12)
        {
          v7 = v53;
          v12 = v52;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      if ((a1 & 0x8000000000000000) == 0)
      {
        v51 = v19;
      }

      else
      {
        v51 = a1;
      }
    }

LABEL_22:
    v32 = *(v21 + 16);
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v70 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
      v33 = v70;
      v34 = v21 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v35 = v12;
      v36 = *(v65 + 72);
      v37 = (v35 + 16);
      do
      {
        outlined init with copy of DiscreteDateSpanData.CategoryValue(v34, v16);
        v38 = *(v64 + 48);
        (*v37)(v7, v16, v69);
        v39 = *&v16[*(v68 + 20)];
        outlined destroy of DiscreteDateSpanData.CategoryValue(v16);
        *&v7[v38] = v39;
        v70 = v33;
        v41 = *(v33 + 16);
        v40 = *(v33 + 24);
        if (v41 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
          v33 = v70;
        }

        *(v33 + 16) = v41 + 1;
        outlined init with take of (DateInterval, ClosedRange<Double>)(v7, v33 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v41, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, Double));
        v34 += v36;
        --v32;
      }

      while (v32);
    }

    DiscreteDateSpanData.description(for:)(v21, v73);

    v42 = v73[0];
    v43 = v73[1];
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_25149B950;
    _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SdTt3B5(v33, 0, 0, &v70);
    v45 = v72;
    v46 = v71 | 0x4000000000000000;
    *(v44 + 32) = v70;
    *(v44 + 40) = v46;
    *(v44 + 48) = v45;

    v48 = v54;
    *v54 = v42;
    v48[1] = v43;
    v48[2] = v44;
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
LABEL_39:
      swift_once();
    }

    v49 = unk_27F435E30;
    v50 = qword_27F435E38;
    *a3 = static HealthChartsData.empty;
    a3[1] = v49;
    a3[2] = v50;
  }

  return result;
}

uint64_t type metadata accessor for DiscreteDateSpanData.CategoryValue(uint64_t a1)
{
  result = type metadata singleton initialization cache for DiscreteDateSpanData.CategoryValue;
  if (!type metadata singleton initialization cache for DiscreteDateSpanData.CategoryValue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DiscreteDateSpanData.description(for:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = result;
      v5 = type metadata accessor for DiscreteDateSpanData.CategoryValue(0);
      v6 = *(v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(v5 + 24));
      type metadata accessor for _ContiguousArrayStorage<(HealthChartsData.DescriptionKey, Double)>(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25149B950;
      *(inited + 32) = 8;
      *(inited + 40) = v6;
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<(HealthChartsData.DescriptionKey, Double)>(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25149B950;
      *(inited + 32) = 9;
      *(inited + 40) = v3;
    }

    v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(inited);
    result = swift_setDeallocating();
    *a2 = 3;
    a2[1] = v8;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SdTt3B5@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for (DateInterval, Double)(0, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8]);
  v41 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v40 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(0);
  v38 = *(v17 - 8);
  v39 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v34 = a4;
    v35 = a2;
    v36 = a3;
    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = a1;
    v22 = v42;
    v23 = *(v9 + 80);
    v33 = v21;
    v24 = v21 + ((v23 + 32) & ~v23);
    v37 = *(v9 + 72);
    do
    {
      v25 = MEMORY[0x277CC88A8];
      outlined init with copy of (DateInterval, Double)(v24, v16, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, Double));
      v26 = v40;
      outlined init with copy of (DateInterval, Double)(v16, v40, &lazy cache variable for type metadata for (DateInterval, Double), v25, type metadata accessor for (DateInterval, Double));
      outlined init with take of (DateInterval, ClosedRange<Double>)(v16, v12, &lazy cache variable for type metadata for (DateInterval, Double), v25, type metadata accessor for (DateInterval, Double));
      v27 = *&v12[*(v41 + 48)];
      v28 = type metadata accessor for DateInterval();
      v29 = *(v28 - 8);
      (*(v29 + 32))(v19, v26, v28);
      *&v19[*(v39 + 52)] = v27;
      (*(v29 + 8))(v12, v28);
      v42 = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v22 = v42;
      }

      *(v22 + 16) = v31 + 1;
      outlined init with take of DiscreteDateSpanData.CategoryValue(v19, v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
      v24 += v37;
      --v20;
    }

    while (v20);

    a3 = v36;
    LOBYTE(a2) = v35;
    a4 = v34;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *a4 = v22;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SNySdGTt3B5@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for (Date, ClosedRange<Double>)(0, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8]);
  v40 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v39 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>(0);
  v37 = *(v17 - 8);
  v38 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v33 = a4;
    v34 = a2;
    v35 = a3;
    v41 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = a1;
    v22 = v41;
    v23 = *(v9 + 80);
    v32 = v21;
    v24 = v21 + ((v23 + 32) & ~v23);
    v36 = *(v9 + 72);
    do
    {
      v25 = MEMORY[0x277CC88A8];
      outlined init with copy of (DateInterval, Double)(v24, v16, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8], type metadata accessor for (Date, ClosedRange<Double>));
      v26 = v39;
      outlined init with copy of (DateInterval, Double)(v16, v39, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), v25, type metadata accessor for (Date, ClosedRange<Double>));
      outlined init with take of (DateInterval, ClosedRange<Double>)(v16, v12, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), v25, type metadata accessor for (Date, ClosedRange<Double>));
      *&v19[*(v38 + 52)] = *&v12[*(v40 + 48)];
      v27 = type metadata accessor for DateInterval();
      v28 = *(v27 - 8);
      (*(v28 + 32))(v19, v26, v27);
      (*(v28 + 8))(v12, v27);
      v41 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v22 = v41;
      }

      *(v22 + 16) = v30 + 1;
      outlined init with take of DiscreteDateSpanData.CategoryValue(v19, v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
      v24 += v36;
      --v20;
    }

    while (v20);

    a3 = v35;
    LOBYTE(a2) = v34;
    a4 = v33;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *a4 = v22;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation4DateV_SdTt3B5@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for (DateInterval, Double)(0, &lazy cache variable for type metadata for (Date, Double), MEMORY[0x277CC9578]);
  v40 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v39 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(0);
  v37 = *(v17 - 8);
  v38 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v33 = a4;
    v34 = a2;
    v35 = a3;
    v41 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = a1;
    v22 = v41;
    v23 = *(v9 + 80);
    v32 = v21;
    v24 = v21 + ((v23 + 32) & ~v23);
    v36 = *(v9 + 72);
    do
    {
      v25 = MEMORY[0x277CC9578];
      outlined init with copy of (DateInterval, Double)(v24, v16, &lazy cache variable for type metadata for (Date, Double), MEMORY[0x277CC9578], type metadata accessor for (DateInterval, Double));
      v26 = v39;
      outlined init with copy of (DateInterval, Double)(v16, v39, &lazy cache variable for type metadata for (Date, Double), v25, type metadata accessor for (DateInterval, Double));
      outlined init with take of (DateInterval, ClosedRange<Double>)(v16, v12, &lazy cache variable for type metadata for (Date, Double), v25, type metadata accessor for (DateInterval, Double));
      *&v19[*(v38 + 52)] = *&v12[*(v40 + 48)];
      v27 = type metadata accessor for Date();
      v28 = *(v27 - 8);
      (*(v28 + 32))(v19, v26, v27);
      (*(v28 + 8))(v12, v27);
      v41 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v22 = v41;
      }

      *(v22 + 16) = v30 + 1;
      outlined init with take of DiscreteDateSpanData.CategoryValue(v19, v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
      v24 += v36;
      --v20;
    }

    while (v20);

    a3 = v35;
    LOBYTE(a2) = v34;
    a4 = v33;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *a4 = v22;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation4DateV_SNySdGTt3B5@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for (Date, ClosedRange<Double>)(0, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578]);
  v40 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v39 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(0);
  v37 = *(v17 - 8);
  v38 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v33 = a4;
    v34 = a2;
    v35 = a3;
    v41 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = a1;
    v22 = v41;
    v23 = *(v9 + 80);
    v32 = v21;
    v24 = v21 + ((v23 + 32) & ~v23);
    v36 = *(v9 + 72);
    do
    {
      v25 = MEMORY[0x277CC9578];
      outlined init with copy of (DateInterval, Double)(v24, v16, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578], type metadata accessor for (Date, ClosedRange<Double>));
      v26 = v39;
      outlined init with copy of (DateInterval, Double)(v16, v39, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), v25, type metadata accessor for (Date, ClosedRange<Double>));
      outlined init with take of (DateInterval, ClosedRange<Double>)(v16, v12, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), v25, type metadata accessor for (Date, ClosedRange<Double>));
      *&v19[*(v38 + 52)] = *&v12[*(v40 + 48)];
      v27 = type metadata accessor for Date();
      v28 = *(v27 - 8);
      (*(v28 + 32))(v19, v26, v27);
      (*(v28 + 8))(v12, v27);
      v41 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v22 = v41;
      }

      *(v22 + 16) = v30 + 1;
      outlined init with take of DiscreteDateSpanData.CategoryValue(v19, v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
      v24 += v36;
      --v20;
    }

    while (v20);

    a3 = v35;
    LOBYTE(a2) = v34;
    a4 = v33;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *a4 = v22;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfCSNySdG_AOTt3B5@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = v21;
    v10 = *(v21 + 16);
    v11 = 32 * v10;
    v12 = (a1 + 48);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *(v21 + 24);
      v16 = v10 + 1;
      if (v10 >= v15 >> 1)
      {
        v19 = *v12;
        v20 = *(v12 - 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v10 + 1, 1);
        v14 = v19;
        v13 = v20;
      }

      *(v21 + 16) = v16;
      v17 = v21 + v11;
      *(v17 + 32) = v13;
      *(v17 + 48) = v14;
      v11 += 32;
      v12 += 2;
      v10 = v16;
      --v7;
    }

    while (v7);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  *a4 = v9;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfCSd_SdTt3B5@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = a1;
    v10 = v17;
    v11 = *(v17 + 16);
    v12 = 32;
    do
    {
      v13 = *(v9 + v12);
      v14 = *(v17 + 24);
      if (v11 >= v14 >> 1)
      {
        v16 = *(v9 + v12);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1);
        v13 = v16;
        v9 = a1;
      }

      *(v17 + 16) = v11 + 1;
      *(v17 + 16 * v11 + 32) = v13;
      v12 += 16;
      ++v11;
      --v7;
    }

    while (v7);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *a4 = v10;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
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
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t outlined init with copy of DiscreteDateSpanData.CategoryValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscreteDateSpanData.CategoryValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DiscreteDateSpanData.CategoryValue(uint64_t a1)
{
  v2 = type metadata accessor for DiscreteDateSpanData.CategoryValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of (DateInterval, ClosedRange<Double>)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>);
    }
  }
}

uint64_t sub_251476BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_251476C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for DiscreteDateSpanData.CategoryValue(uint64_t a1)
{
  result = type metadata accessor for DateInterval();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
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

void type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>)
  {
    v2 = type metadata accessor for Date();
    type metadata accessor for ClosedRange<Double>();
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], &protocol conformance descriptor for Date);
    v6[3] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, &protocol conformance descriptor for <> ClosedRange<A>);
    v4 = type metadata accessor for HealthChartsData.SeriesPoint(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
    }
  }
}

uint64_t outlined init with copy of (DateInterval, Double)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined init with take of DiscreteDateSpanData.CategoryValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (DateInterval, Double)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, Double>)
  {
    v2 = type metadata accessor for Date();
    v3 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], &protocol conformance descriptor for Date);
    v6[0] = v2;
    v6[1] = MEMORY[0x277D839F8];
    v6[2] = v3;
    v6[3] = &protocol witness table for Double;
    v4 = type metadata accessor for HealthChartsData.SeriesPoint(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, Double>);
    }
  }
}

void type metadata accessor for (Date, ClosedRange<Double>)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ClosedRange<Double>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>)
  {
    v2 = type metadata accessor for DateInterval();
    type metadata accessor for ClosedRange<Double>();
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], &protocol conformance descriptor for DateInterval);
    v6[3] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, &protocol conformance descriptor for <> ClosedRange<A>);
    v4 = type metadata accessor for HealthChartsData.SeriesPoint(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, Double>)
  {
    v2 = type metadata accessor for DateInterval();
    v3 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], &protocol conformance descriptor for DateInterval);
    v6[0] = v2;
    v6[1] = MEMORY[0x277D839F8];
    v6[2] = v3;
    v6[3] = &protocol witness table for Double;
    v4 = type metadata accessor for HealthChartsData.SeriesPoint(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, Double>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(HealthChartsData.DescriptionKey, Double)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(HealthChartsData.DescriptionKey, Double)>)
  {
    type metadata accessor for (HealthChartsData.DescriptionKey, Double)();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(HealthChartsData.DescriptionKey, Double)>);
    }
  }
}

void type metadata accessor for (HealthChartsData.DescriptionKey, Double)()
{
  if (!lazy cache variable for type metadata for (HealthChartsData.DescriptionKey, Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (HealthChartsData.DescriptionKey, Double));
    }
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesData<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return AnySeriesData.debugDescription.getter(a1, WitnessTable);
}

void *AnySeriesData.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v30);
  if (v30 <= 2u)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        v28 = 0xE600000000000000;
        v4 = 0x6574756E696DLL;
      }

      else
      {
        v28 = 0xE400000000000000;
        v4 = 1920298856;
      }
    }

    else
    {
      v28 = 0xE400000000000000;
      v4 = 1701736302;
    }
  }

  else if (v30 > 4u)
  {
    if (v30 == 5)
    {
      v28 = 0xE500000000000000;
      v4 = 0x68746E6F6DLL;
    }

    else
    {
      v28 = 0xE400000000000000;
      v4 = 1918985593;
    }
  }

  else if (v30 == 3)
  {
    v28 = 0xE300000000000000;
    v4 = 7954788;
  }

  else
  {
    v28 = 0xE400000000000000;
    v4 = 1801807223;
  }

  v34 = (*(a2 + 48))(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v30 = AssociatedTypeWitness;
  v31 = v6;
  v32 = AssociatedConformanceWitness;
  v33 = v8;
  type metadata accessor for HealthChartsData.SeriesPoint(255, &v30);
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2530770E0](&v30, v9, WitnessTable);

  v34 = v30;
  v12 = MEMORY[0x28223BE20](v11);
  v27[8] = a1;
  v27[9] = a2;
  MEMORY[0x28223BE20](v12);
  v27[2] = a1;
  v27[3] = a2;
  v27[4] = partial apply for closure #1 in AnySeriesData.debugDescription.getter;
  v27[5] = v13;
  v14 = type metadata accessor for EnumeratedSequence();
  v29 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed HealthChartsData.SeriesPoint<A.AnySeriesData.X, A.AnySeriesData.Y>) -> (@owned String), v27, v14, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);

  v30 = v17;
  type metadata accessor for [String]();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], type metadata accessor for [String], MEMORY[0x277D83958]);
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v30 = v4;
  v31 = v28;
  MEMORY[0x2530770D0](0x5B73746E696F703ALL, 0xE800000000000000);
  MEMORY[0x2530770D0](v18, v20);

  MEMORY[0x2530770D0](0x3A74696E752C5DLL, 0xE700000000000000);
  (*(a2 + 64))(&v34, a1, a2);
  if (v34)
  {
    v21 = v34;
    v22 = [v21 symbol];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v25 = 0xE400000000000000;
    v23 = 1701736302;
  }

  MEMORY[0x2530770D0](v23, v25);

  return v30;
}

uint64_t AnySeriesData.xScale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v70 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v71 = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v56 - v11;
  v68 = *(v7 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v56 - v14;
  v63 = type metadata accessor for Optional();
  v73 = *(v63 - 8);
  v15 = MEMORY[0x28223BE20](v63);
  v61 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v67 = &v56 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v74 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = (&v56 - v21);
  v23 = *(a2 + 48);
  v66 = a2 + 48;
  v69 = v23;
  v81[5] = v23(a1, a2);
  v79 = a1;
  v80 = a2;
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v81[0] = AssociatedTypeWitness;
  v81[1] = v24;
  v81[2] = AssociatedConformanceWitness;
  v81[3] = v25;
  type metadata accessor for HealthChartsData.SeriesPoint(255, v81);
  v26 = type metadata accessor for Array();
  v64 = v26;
  WitnessTable = swift_getWitnessTable();
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in AnySeriesData.xScale.getter, v78, v26, v7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v27);

  v81[0] = v28;
  type metadata accessor for Array();
  v62 = swift_getWitnessTable();
  v29 = swift_getAssociatedConformanceWitness();
  Sequence<>.min()();

  v30 = v69(a1, a2);
  v31 = v63;
  v81[0] = v30;
  v76 = a1;
  v77 = a2;
  v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in AnySeriesData.xScale.getter, v75, v64, v7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v32);

  v81[0] = v33;
  v34 = v68;
  v71 = v29;
  Sequence<>.max()();
  v35 = v67;

  v36 = *(v73 + 16);
  v69 = v22;
  v36(v35, v22, v31);
  v37 = *(v34 + 48);
  if (v37(v35, 1, v7) == 1)
  {
    v38 = v74;
LABEL_5:
    v39 = *(v73 + 8);
    v39(v38, v31);
    v39(v69, v31);
    v39(v35, v31);
    v40 = type metadata accessor for ClosedRange();
    return (*(*(v40 - 8) + 56))(v70, 1, 1, v40);
  }

  v67 = *(v34 + 32);
  (v67)(v72, v35, v7);
  v35 = v61;
  v36(v61, v74, v31);
  if (v37(v35, 1, v7) == 1)
  {
    v38 = v74;
    (*(v34 + 8))(v72, v7);
    goto LABEL_5;
  }

  v42 = v60;
  (v67)(v60, v35, v7);
  v43 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v44 = *(v73 + 8);
  v44(v74, v31);
  result = (v44)(v69, v31);
  if (v43)
  {
    v45 = v56;
    v46 = v7;
    v47 = v67;
    (v67)(v56, v72, v7);
    v48 = TupleTypeMetadata2;
    v47(&v45[*(TupleTypeMetadata2 + 48)], v42, v7);
    v49 = v57;
    v50 = v59;
    (*(v57 + 16))(v59, v45, v48);
    v51 = *(v48 + 48);
    v47(v70, v50, v46);
    v52 = *(v34 + 8);
    v52(&v50[v51], v46);
    (*(v49 + 32))(v50, v45, v48);
    v53 = *(v48 + 48);
    v54 = type metadata accessor for ClosedRange();
    v55 = v70;
    v47(&v70[*(v54 + 36)], &v50[v53], v46);
    v52(v50, v46);
    return (*(*(v54 - 8) + 56))(v55, 0, 1, v54);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in AnySeriesData.xScale.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 72);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t specialized Sequence<>.min()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t specialized Sequence<>.min()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t closure #2 in AnySeriesData.xScale.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 80);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t AnySeriesData.yScale.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v29[5] = v4();
  v27 = a1;
  v28 = a2;
  v29[0] = swift_getAssociatedTypeWitness();
  v29[1] = swift_getAssociatedTypeWitness();
  v29[2] = swift_getAssociatedConformanceWitness();
  v29[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for HealthChartsData.SeriesPoint(255, v29);
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in AnySeriesData.yScale.getter, v26, v5, MEMORY[0x277D839F8], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v8 + 32);
    v11 = v9 - 1;
    if (v9 != 1)
    {
      v12 = (v8 + 40);
      do
      {
        v13 = *v12++;
        v14 = v13;
        if (v13 < v10)
        {
          v10 = v14;
        }

        --v11;
      }

      while (v11);
    }

    v15 = v10;
  }

  else
  {
    v15 = 0.0;
  }

  v29[0] = (v4)(a1, a2);
  MEMORY[0x28223BE20](v29[0]);
  v25[2] = a1;
  v25[3] = a2;
  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in AnySeriesData.yScale.getter, v25, v5, MEMORY[0x277D839F8], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);

  v18 = *(v17 + 16);
  if (!v18)
  {

LABEL_19:
    v15 = 0.0;
    return *&v15;
  }

  v19 = *(v17 + 32);
  v20 = v18 - 1;
  if (v20)
  {
    v21 = (v17 + 40);
    do
    {
      v22 = *v21++;
      v23 = v22;
      if (v19 < v22)
      {
        v19 = v23;
      }

      --v20;
    }

    while (v20);
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  if (v19 >= v15)
  {
    return *&v15;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in AnySeriesData.yScale.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v8[0] = AssociatedTypeWitness;
  v8[1] = v4;
  v8[2] = AssociatedConformanceWitness;
  v8[3] = v6;
  type metadata accessor for HealthChartsData.SeriesPoint(0, v8);
  return (*(v6 + 72))(v4, v6);
}

uint64_t closure #2 in AnySeriesData.yScale.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v8[0] = AssociatedTypeWitness;
  v8[1] = v4;
  v8[2] = AssociatedConformanceWitness;
  v8[3] = v6;
  type metadata accessor for HealthChartsData.SeriesPoint(0, v8);
  return (*(v6 + 80))(v4, v6);
}

uint64_t closure #1 in AnySeriesData.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v4;
  MEMORY[0x2530770D0](58, 0xE100000000000000);
  v8[0] = swift_getAssociatedTypeWitness();
  v8[1] = swift_getAssociatedTypeWitness();
  v8[2] = swift_getAssociatedConformanceWitness();
  v8[3] = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for HealthChartsData.SeriesPoint(0, v8);
  v6 = HealthChartsData.SeriesPoint.debugDescription.getter(v5);
  MEMORY[0x2530770D0](v6);

  return v9;
}

uint64_t thunk for @callee_guaranteed (@unowned Int, @in_guaranteed HealthChartsData.SeriesPoint<A.AnySeriesData.X, A.AnySeriesData.Y>) -> (@owned String)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v12[0] = swift_getAssociatedTypeWitness();
  v12[1] = swift_getAssociatedTypeWitness();
  v12[2] = swift_getAssociatedConformanceWitness();
  v12[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for HealthChartsData.SeriesPoint(255, v12);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(v7, &a1[*(TupleTypeMetadata2 + 48)]);
  *a5 = result;
  a5[1] = v10;
  return result;
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

void *static HealthChartsData.SeriesData.empty()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getTupleTypeMetadata2();
  v10 = static Array._allocateUninitialized(_:)();
  v13 = 0;
  v12 = 0;
  return HealthChartsData.SeriesData.init(_:aggregation:unit:)(v10, &v12, &v13, a1, a2, a3, a4, a5);
}

void *HealthChartsData.SeriesData.init(_:aggregation:unit:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v22 = *a3;
  v33 = a1;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  swift_getTupleTypeMetadata2();
  v14 = type metadata accessor for Array();
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v15 = type metadata accessor for HealthChartsData.SeriesPoint(0, &v29);
  WitnessTable = swift_getWitnessTable();
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in HealthChartsData.SeriesData.init(_:aggregation:unit:), v23, v14, v15, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  v28 = v13;
  v33 = v22;
  result = HealthChartsData.SeriesData.init(points:aggregation:unit:)(v18, &v28, &v33, &v29);
  v20 = v30;
  v21 = v31;
  *a8 = v29;
  *(a8 + 8) = v20;
  *(a8 + 16) = v21;
  return result;
}

uint64_t closure #1 in HealthChartsData.SeriesData.init(_:aggregation:unit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a4;
  v22 = a5;
  v20 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = *(v10 + 16);
  v16(&v19 - v14, a1, TupleTypeMetadata2);
  v17 = *(TupleTypeMetadata2 + 48);
  v16(v13, a1, TupleTypeMetadata2);
  HealthChartsData.SeriesPoint.init(_:_:)(v15, &v13[*(TupleTypeMetadata2 + 48)], a2, a3, v21, v22, v20);
  (*(*(a2 - 8) + 8))(v13, a2);
  return (*(*(a3 - 8) + 8))(&v15[v17], a3);
}

void *HealthChartsData.SeriesData.init(_:aggregation:dimension:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v12 = a3;
  result = HealthChartsData.SeriesData.init(_:aggregation:unit:)(a1, &v13, &v12, a4, a5, a6, a7, &v14);
  v10 = v15;
  v11 = v16;
  *a8 = v14;
  *(a8 + 8) = v10;
  *(a8 + 16) = v11;
  return result;
}

void *HealthChartsData.SeriesData.transformed<A, B>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v23 = *(v8 + 8);
  v13 = v8[2];
  v40 = *v8;
  v14 = a3[3];
  v26 = a3[2];
  v27 = v14;
  v28 = a4;
  v29 = a5;
  v15 = a3[5];
  v30 = a3[4];
  v31 = v15;
  v32 = a6;
  v33 = a7;
  v34 = a1;
  v35 = a2;
  v16 = v13;

  v36 = v26;
  v37 = v14;
  v38 = v30;
  v39 = v15;
  type metadata accessor for HealthChartsData.SeriesPoint(255, &v36);
  v17 = type metadata accessor for Array();
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v18 = type metadata accessor for HealthChartsData.SeriesPoint(0, &v36);
  WitnessTable = swift_getWitnessTable();
  v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed HealthChartsData.SeriesPoint<A, B>) -> (@out HealthChartsData.SeriesPoint<A1, B1>), v25, v17, v18, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);

  LOBYTE(v40) = v23;
  v36 = v13;
  return HealthChartsData.SeriesData.init(points:aggregation:unit:)(v21, &v40, &v36, a8);
}

uint64_t instantiation function for generic protocol witness table for HealthChartsData.SeriesData<A, B>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

HealthChartsCore::HealthChartsData::Series __swiftcall HealthChartsData.Series.init(_:aggregation:dimension:)(Swift::OpaquePointer _, HealthChartsCore::HealthChartsData::Aggregation aggregation, NSDimension_optional *dimension)
{
  v6 = v3;
  v7 = *aggregation;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25149B950;
  v9 = dimension;
  _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SdTt3B5(_._rawValue, v7, dimension, &v13);
  v10 = v15;
  v11 = v14 | 0x4000000000000000;
  *(v8 + 32) = v13;
  *(v8 + 40) = v11;
  *(v8 + 48) = v10;

  *v6 = v8;
  return result;
}

{
  v6 = v3;
  v7 = *aggregation;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25149B950;
  v9 = dimension;
  _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation4DateV_SdTt3B5(_._rawValue, v7, dimension, &v13);
  v10 = v14;
  v11 = v15;
  *(v8 + 32) = v13;
  *(v8 + 40) = v10;
  *(v8 + 48) = v11;

  *v6 = v8;
  return result;
}

{
  v6 = v3;
  v7 = *aggregation;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25149B950;
  v9 = dimension;
  _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SNySdGTt3B5(_._rawValue, v7, dimension, &v13);
  v10 = v15;
  v11 = v14 | 0x2000000000000000;
  *(v8 + 32) = v13;
  *(v8 + 40) = v11;
  *(v8 + 48) = v10;

  *v6 = v8;
  return result;
}

{
  v6 = v3;
  v7 = *aggregation;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25149B950;
  v9 = dimension;
  _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation4DateV_SNySdGTt3B5(_._rawValue, v7, dimension, &v13);
  v10 = v15;
  v11 = v14 | 0x6000000000000000;
  *(v8 + 32) = v13;
  *(v8 + 40) = v11;
  *(v8 + 48) = v10;

  *v6 = v8;
  return result;
}

{
  v6 = v3;
  v7 = *aggregation;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25149B950;
  v9 = dimension;
  _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfCSNySdG_AOTt3B5(_._rawValue, v7, dimension, &v13);
  v10 = v15;
  v11 = v14 | 0xA000000000000000;
  *(v8 + 32) = v13;
  *(v8 + 40) = v11;
  *(v8 + 48) = v10;

  *v6 = v8;
  return result;
}

{
  v6 = v3;
  v7 = *aggregation;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25149B950;
  v9 = dimension;
  _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfCSd_SdTt3B5(_._rawValue, v7, dimension, &v13);
  v10 = v15;
  v11 = v14 | 0x8000000000000000;
  *(v8 + 32) = v13;
  *(v8 + 40) = v11;
  *(v8 + 48) = v10;

  *v6 = v8;
  return result;
}

uint64_t specialized AnySeriesData.xScale.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void (*a3)(char *, char *, uint64_t)@<X4>, char *a4@<X8>)
{
  v100 = a3;
  type metadata accessor for (lower: Date, upper: Date)(0);
  v83 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v84 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v81 - v10;
  v11 = a2(0);
  v98 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v99 = &v81 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v81 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v94 = &v81 - v22;
  MEMORY[0x28223BE20](v21);
  v97 = &v81 - v23;
  type metadata accessor for AnySeriesData?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v91 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v81 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v81 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v81 - v33;
  v35 = a1;
  v36 = *(a1 + 16);
  v90 = v17;
  if (v36)
  {
    v87 = v20;
    v88 = v29;
    v89 = v32;
    v92 = a4;
    v93 = &v81 - v33;
    v101 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v37 = v101;
    v38 = v97;
    v39 = v35 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v98 = *(v98 + 72);
    v96 = v14;
    v40 = (v14 + 32);
    v85 = v39;
    v86 = v36;
    do
    {
      v41 = v99;
      outlined init with copy of ClosedRange<Date>(v39, v99, v100);
      v97 = *v40;
      (v97)(v38, v41, v13);
      v101 = v37;
      v42 = v13;
      v44 = *(v37 + 16);
      v43 = *(v37 + 24);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
        v37 = v101;
      }

      *(v37 + 16) = v44 + 1;
      v45 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v46 = *(v96 + 72);
      (v97)(v37 + v45 + v46 * v44, v38, v42);
      v39 += v98;
      --v36;
      v13 = v42;
    }

    while (v36);
    specialized Sequence<>.min()(v37, v93);

    v101 = MEMORY[0x277D84F90];
    v47 = v86;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86, 0);
    v48 = v101;
    v49 = v87;
    v50 = v97;
    v95 = v45;
    v51 = v85;
    do
    {
      v52 = v47;
      v53 = v99;
      outlined init with copy of ClosedRange<Date>(v51, v99, v100);
      v50(v49, v53, v13);
      v101 = v48;
      v54 = v13;
      v56 = *(v48 + 16);
      v55 = *(v48 + 24);
      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
        v48 = v101;
      }

      *(v48 + 16) = v56 + 1;
      v50((v48 + v95 + v56 * v46), v49, v54);
      v51 += v98;
      v47 = v52 - 1;
      v13 = v54;
    }

    while (v52 != 1);
    a4 = v92;
    v57 = v93;
    v14 = v96;
    v29 = v88;
    v32 = v89;
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
    specialized Sequence<>.min()(MEMORY[0x277D84F90], &v81 - v33);

    v57 = v34;
  }

  specialized Sequence<>.max()(v48, v32);

  outlined init with copy of Date?(v57, v29, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  v58 = *(v14 + 48);
  v59 = v58(v29, 1, v13);
  v60 = v94;
  if (v59 == 1)
  {
    goto LABEL_15;
  }

  v100 = *(v14 + 32);
  v100(v94, v29, v13);
  v29 = v91;
  outlined init with copy of Date?(v32, v91, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  if (v58(v29, 1, v13) == 1)
  {
    (*(v14 + 8))(v60, v13);
LABEL_15:
    v61 = MEMORY[0x277CC9578];
    outlined destroy of AnySeriesData?(v32, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    outlined destroy of AnySeriesData?(v57, &lazy cache variable for type metadata for Date?, v61);
    outlined destroy of AnySeriesData?(v29, &lazy cache variable for type metadata for Date?, v61);
    type metadata accessor for ClosedRange<Date>(0);
    return (*(*(v62 - 8) + 56))(a4, 1, 1, v62);
  }

  v92 = a4;
  v64 = v90;
  v100(v90, v29, v13);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v65 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v66 = v57;
  v67 = v13;
  v68 = MEMORY[0x277CC9578];
  outlined destroy of AnySeriesData?(v32, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  result = outlined destroy of AnySeriesData?(v66, &lazy cache variable for type metadata for Date?, v68);
  if (v65)
  {
    v69 = v64;
    v70 = v82;
    v71 = v100;
    v100(v82, v60, v67);
    v72 = v83;
    v71(v70 + *(v83 + 48), v69, v67);
    v73 = v14;
    v74 = v84;
    outlined init with copy of ClosedRange<Date>(v70, v84, type metadata accessor for (lower: Date, upper: Date));
    v75 = *(v72 + 48);
    v76 = v92;
    v71(v92, v74, v67);
    v77 = *(v73 + 8);
    v77(v74 + v75, v67);
    outlined init with take of (lower: Date, upper: Date)(v70, v74, type metadata accessor for (lower: Date, upper: Date));
    v78 = *(v72 + 48);
    type metadata accessor for ClosedRange<Date>(0);
    v80 = v79;
    v71(&v76[*(v79 + 36)], (v74 + v78), v67);
    v77(v74, v67);
    return (*(*(v80 - 8) + 56))(v76, 0, 1, v80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized AnySeriesData.xScale.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v97 = a3;
  v98 = a4;
  type metadata accessor for (lower: Date, upper: Date)(0);
  v82 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v83 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v80 - v11;
  v12 = a2(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v96 = &v80 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v80 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v90 = &v80 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v80 - v25;
  type metadata accessor for AnySeriesData?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v87 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v88 = &v80 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v89 = &v80 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v80 - v34;
  v36 = *(a1 + 16);
  v91 = a5;
  v92 = &v80 - v34;
  if (v36)
  {
    v85 = v22;
    v86 = v19;
    v99 = v15;
    v100 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v37 = v13;
    v38 = v100;
    v39 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v40 = *(v37 + 72);
    v93 = v16;
    v94 = v16 + 32;
    v95 = v40;
    v41 = v39;
    v84 = v36;
    do
    {
      v42 = v96;
      outlined init with copy of ClosedRange<Date>(v41, v96, v97);
      DateInterval.start.getter();
      outlined destroy of HealthChartsData.SeriesPoint<DateInterval, Double>(v42, v98);
      v100 = v38;
      v44 = *(v38 + 16);
      v43 = *(v38 + 24);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
        v38 = v100;
      }

      *(v38 + 16) = v44 + 1;
      v45 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v46 = *(v93 + 72);
      v47 = v38 + v45 + v46 * v44;
      v48 = *(v93 + 32);
      v48(v47, v26, v99);
      v41 += v95;
      --v36;
    }

    while (v36);
    specialized Sequence<>.min()(v38, v92);

    v100 = MEMORY[0x277D84F90];
    v49 = v84;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84, 0);
    v50 = v100;
    v51 = v85;
    do
    {
      v52 = v96;
      outlined init with copy of ClosedRange<Date>(v39, v96, v97);
      DateInterval.end.getter();
      outlined destroy of HealthChartsData.SeriesPoint<DateInterval, Double>(v52, v98);
      v100 = v50;
      v54 = *(v50 + 16);
      v53 = *(v50 + 24);
      if (v54 >= v53 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
        v50 = v100;
      }

      *(v50 + 16) = v54 + 1;
      v48(v50 + v45 + v54 * v46, v51, v99);
      v39 += v95;
      --v49;
    }

    while (v49);
    a5 = v91;
    v35 = v92;
    v55 = v93;
    v19 = v86;
    v15 = v99;
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
    specialized Sequence<>.min()(MEMORY[0x277D84F90], &v80 - v34);

    v55 = v16;
  }

  v56 = v89;
  specialized Sequence<>.max()(v50, v89);

  v57 = v88;
  outlined init with copy of Date?(v35, v88, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  v58 = *(v55 + 48);
  v59 = v58(v57, 1, v15);
  v60 = v90;
  if (v59 == 1)
  {
    goto LABEL_15;
  }

  v61 = *(v55 + 32);
  v61(v90, v57, v15);
  v57 = v87;
  outlined init with copy of Date?(v56, v87, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  if (v58(v57, 1, v15) == 1)
  {
    (*(v55 + 8))(v60, v15);
    a5 = v91;
    v35 = v92;
LABEL_15:
    v62 = MEMORY[0x277CC9578];
    outlined destroy of AnySeriesData?(v56, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    outlined destroy of AnySeriesData?(v35, &lazy cache variable for type metadata for Date?, v62);
    outlined destroy of AnySeriesData?(v57, &lazy cache variable for type metadata for Date?, v62);
    type metadata accessor for ClosedRange<Date>(0);
    return (*(*(v63 - 8) + 56))(a5, 1, 1, v63);
  }

  v65 = v57;
  v66 = v61;
  v61(v19, v65, v15);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v67 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v68 = v56;
  v69 = MEMORY[0x277CC9578];
  outlined destroy of AnySeriesData?(v68, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  result = outlined destroy of AnySeriesData?(v92, &lazy cache variable for type metadata for Date?, v69);
  if (v67)
  {
    v70 = v19;
    v71 = v81;
    v61(v81, v60, v15);
    v72 = v82;
    v61((v71 + *(v82 + 48)), v70, v15);
    v73 = v83;
    outlined init with copy of ClosedRange<Date>(v71, v83, type metadata accessor for (lower: Date, upper: Date));
    v74 = *(v72 + 48);
    v75 = v91;
    v66(v91, v73, v15);
    v76 = *(v55 + 8);
    v76(v73 + v74, v15);
    outlined init with take of (lower: Date, upper: Date)(v71, v73, type metadata accessor for (lower: Date, upper: Date));
    v77 = *(v72 + 48);
    type metadata accessor for ClosedRange<Date>(0);
    v79 = v78;
    v66(v75 + *(v78 + 36), v73 + v77, v15);
    v76(v73, v15);
    return (*(*(v79 - 8) + 56))(v75, 0, 1, v79);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized AnySeriesData.xScale.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v21;
    v4 = (a1 + 32);
    v5 = *(v21 + 16);
    v6 = v2;
    do
    {
      v7 = *v4;
      v8 = *(v21 + 24);
      if (v5 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v5 + 1, 1);
      }

      *(v21 + 16) = v5 + 1;
      *(v21 + 8 * v5 + 32) = v7;
      v4 += 2;
      ++v5;
      --v6;
    }

    while (v6);
  }

  v9 = COERCE_DOUBLE(specialized Sequence<>.min()(v3));
  v11 = v10;

  v12 = MEMORY[0x277D84F90];
  if (v2)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v12 = v22;
    v13 = (a1 + 32);
    v14 = *(v22 + 16);
    do
    {
      v15 = *v13;
      v16 = *(v22 + 24);
      if (v14 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v14 + 1, 1);
      }

      *(v22 + 16) = v14 + 1;
      *(v22 + 8 * v14 + 32) = v15;
      v13 += 2;
      ++v14;
      --v2;
    }

    while (v2);
  }

  v17 = COERCE_DOUBLE(specialized Sequence<>.max()(v12));
  v19 = v18;

  if (v11 & 1) != 0 || (v19)
  {
    return 0;
  }

  result = *&v9;
  if (v9 > v17)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized AnySeriesData.xScale.getter(uint64_t *a1)
{
  v2 = a1[2];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v21;
    v4 = a1 + 4;
    v5 = *(v21 + 16);
    v6 = v2;
    do
    {
      v7 = *v4;
      v8 = *(v21 + 24);
      if (v5 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v5 + 1, 1);
      }

      *(v21 + 16) = v5 + 1;
      *(v21 + 8 * v5 + 32) = v7;
      v4 += 4;
      ++v5;
      --v6;
    }

    while (v6);
  }

  v9 = COERCE_DOUBLE(specialized Sequence<>.min()(v3));
  v11 = v10;

  v12 = MEMORY[0x277D84F90];
  if (v2)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v12 = v22;
    v13 = *(v22 + 16);
    v14 = a1 + 5;
    do
    {
      v15 = *v14;
      v16 = *(v22 + 24);
      if (v13 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v13 + 1, 1);
      }

      *(v22 + 16) = v13 + 1;
      *(v22 + 8 * v13 + 32) = v15;
      v14 += 4;
      ++v13;
      --v2;
    }

    while (v2);
  }

  v17 = COERCE_DOUBLE(specialized Sequence<>.max()(v12));
  v19 = v18;

  if (v11 & 1) != 0 || (v19)
  {
    return 0;
  }

  result = *&v9;
  if (v9 > v17)
  {
    __break(1u);
  }

  return result;
}

uint64_t HealthChartsData.Aggregation.debugDescription.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x68746E6F6DLL;
  if (v1 != 5)
  {
    v3 = 1918985593;
  }

  v4 = 7954788;
  if (v1 != 3)
  {
    v4 = 1801807223;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574756E696DLL;
  if (v1 != 1)
  {
    v5 = 1920298856;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t HealthChartsData.SeriesPoint.debugDescription.getter(void *a1)
{
  v3 = a1[2];
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  v9 = MEMORY[0x28223BE20](v5);
  (*(v11 + 16))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + *(v9 + 52), v8);
  type metadata accessor for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>();
  if (swift_dynamicCast())
  {
    sub_25147D004(v32, &v33);
    v12 = v35;
    v13 = v36;
    v14 = __swift_project_boxed_opaque_existential_1(&v33, v35);
    v15 = a1[5];
    v16 = specialized HealthChartsData.SeriesPoint.intervalDescription<A>(from:)(v14, v3, v8, v12, a1[4], v15, v13);
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    v15 = a1[5];
    v16 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    v18 = v19;
  }

  (*(v4 + 16))(v7, v1, v3);
  type metadata accessor for any IntervalChartValue<Self.IntervalChartValue.Bound == Date>();
  if (swift_dynamicCast())
  {
    sub_25147D004(v32, &v33);
    v20 = v35;
    v21 = v36;
    v22 = __swift_project_boxed_opaque_existential_1(&v33, v35);
    v23 = specialized HealthChartsData.SeriesPoint.intervalDescription<A>(from:)(v22, v3, v8, v20, a1[4], v15, v21);
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    v23 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    v25 = v26;
  }

  v27 = MEMORY[0x277D837D0];
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25149BA60;
  *(v28 + 32) = v23;
  *(v28 + 40) = v25;
  v33 = 0x5B7365756C6176;
  v34 = 0xE700000000000000;
  MEMORY[0x2530770D0](v16, v18);

  MEMORY[0x2530770D0](93, 0xE100000000000000);
  v29 = v34;
  *(v28 + 48) = v33;
  *(v28 + 56) = v29;
  v33 = v28;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for [String], v27, MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v30 = BidirectionalCollection<>.joined(separator:)();

  return v30;
}

double _sSnyxG16HealthChartsCore18IntervalChartValueABSdRszrlAbCP5start5BoundQzvgTW_0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double _sSnyxG16HealthChartsCore18IntervalChartValueABSdRszrlAbCP3end5BoundQzvgTW_0@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t Date.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IntervalChartValue.asVector()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  getContiguousArrayStorageType<A>(for:)(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v5 = static Array._adoptStorage(_:count:)();
  (*(a2 + 72))(a1, a2);
  (*(a2 + 80))(a1, a2);
  type metadata accessor for Array();
  return v5;
}

uint64_t IntervalChartValue.asClosedRange()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v28 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v27 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  (*(a2 + 72))(a1, a2);
  (*(a2 + 80))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v21 = *(v13 + 32);
    v21(v12, v18, AssociatedTypeWitness);
    v21(&v12[*(TupleTypeMetadata2 + 48)], v16, AssociatedTypeWitness);
    v22 = v28;
    (*(v7 + 16))(v28, v12, TupleTypeMetadata2);
    v23 = *(TupleTypeMetadata2 + 48);
    v27[1] = AssociatedConformanceWitness;
    v21(v29, v22, AssociatedTypeWitness);
    v24 = *(v13 + 8);
    v24(&v22[v23], AssociatedTypeWitness);
    (*(v7 + 32))(v22, v12, TupleTypeMetadata2);
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = type metadata accessor for ClosedRange();
    v21(&v29[*(v26 + 36)], &v22[v25], AssociatedTypeWitness);
    return (v24)(v22, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IntervalChartValue.asDateInterval<>()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  (*(a2 + 72))(a1, a2);
  (*(a2 + 80))(a1, a2);
  return DateInterval.init(start:end:)();
}

uint64_t HealthChartsData.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8))
  {
    strcpy(v12, "description(");
    BYTE5(v12[1]) = 0;
    HIWORD(v12[1]) = -5120;
    v3 = HealthChartsData.Description.debugDescription.getter();
    MEMORY[0x2530770D0](v3);

    MEMORY[0x2530770D0](41, 0xE100000000000000);
    v5 = v12[0];
    v4 = v12[1];
  }

  else
  {
    v4 = 0xED00006E6F697470;
    v5 = 0x6972637365646F6ELL;
  }

  v6 = HealthChartsData.Series.debugDescription.getter();
  MEMORY[0x2530770D0](v6);

  MEMORY[0x2530770D0](41, 0xE100000000000000);
  v7 = strcpy(v12, "series(");
  v8 = MEMORY[0x277D837D0];
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  v9[2] = 2;
  v9[3] = 4;
  v9[4] = v5;
  v9[5] = v4;
  v9[6] = v7;
  v9[7] = 0xE700000000000000;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for [String], v8, MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v10 = BidirectionalCollection<>.joined(separator:)();

  return v10;
}

uint64_t HealthChartsData.Description.debugDescription.getter()
{
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v47 = *(v1 - 8);
  v48 = v1;
  MEMORY[0x28223BE20](v1);
  v46 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v3 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  type metadata accessor for FloatingPointFormatStyle<Double>(0);
  v51 = v7;
  v49 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v50 = &v44 - v14;
  v15 = *(v0 + 8);
  if (*v0 == 3)
  {
    v44 = 0xE500000000000000;
    v16 = 0x7269446F4ELL;
  }

  else
  {
    v53.i8[0] = *v0;
    v16 = String.init<A>(describing:)();
    v44 = v17;
  }

  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[16 * v20];
  v22 = v44;
  *(v21 + 4) = v16;
  *(v21 + 5) = v22;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  v53 = vdupq_n_s64(4uLL);
  type metadata accessor for ClosedRange<Int>(0, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  static NumberFormatStyleConfiguration.Precision.significantDigits<A>(_:)();
  v23 = v51;
  MEMORY[0x253076E60](v5, v51);
  (*(v3 + 8))(v5, v45);
  v24 = v49 + 8;
  v25 = *(v49 + 8);
  v25(v10, v23);
  v26 = v46;
  static NumberFormatStyleConfiguration.Notation.scientific.getter();
  MEMORY[0x253076E50](v26, v23);
  (*(v47 + 8))(v26, v48);
  v48 = v25;
  v49 = v24;
  v25(v13, v23);
  v27 = *(v15 + 16);
  if (v27)
  {
    v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16HealthChartsCore0hI4DataV14DescriptionKeyO_Tt1g5(*(v15 + 16), 0);
    v29 = specialized Sequence._copySequenceContents(initializing:)(&v53, v28 + 32, v27, v15);
    v30 = v53.i64[0];
    swift_bridgeObjectRetain_n();
    outlined consume of [HealthChartsData.DescriptionKey : Double].Iterator._Variant(v30);
    if (v29 == v27)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v28 = MEMORY[0x277D84F90];
LABEL_10:
  v53.i64[0] = v28;
  specialized MutableCollection<>.sort(by:)(&v53);

  v31 = *(v53.i64[0] + 16);
  v47 = v53.i64[0];
  if (v31)
  {
    v32 = (v53.i64[0] + 32);
    do
    {
      v34 = *v32++;
      v33 = v34;
      if (*(v15 + 16))
      {
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
        if (v36)
        {
          v37 = *(*(v15 + 56) + 8 * v35);
          v53.i64[0] = 0;
          v53.i64[1] = 0xE000000000000000;
          LOBYTE(v52) = v33;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x2530770D0](58, 0xE100000000000000);
          v52 = v37;
          v38 = FloatingPointFormatStyle.format(_:)();
          MEMORY[0x2530770D0](v38);

          v39 = v53;
          v41 = *(v18 + 2);
          v40 = *(v18 + 3);
          if (v41 >= v40 >> 1)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v18);
          }

          *(v18 + 2) = v41 + 1;
          *&v18[16 * v41 + 32] = v39;
        }
      }

      --v31;
    }

    while (v31);
  }

  v53.i64[0] = v18;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v42 = BidirectionalCollection<>.joined(separator:)();

  v48(v50, v51);
  return v42;
}

uint64_t HealthChartsData.Series.debugDescription.getter()
{
  v1 = *v0;
  v35 = 91;
  v36 = 0xE100000000000000;
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = (v1 + 48);
    v3 = v34;
    while (1)
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = v6 >> 61;
      if ((v6 >> 61) <= 2)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
            v10 = v12;
            v11 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
          }

          else
          {
            type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
            v10 = v18;
            v11 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
          }
        }

        else
        {
          type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
          v10 = v17;
          v11 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
        }

        goto LABEL_16;
      }

      if (v8 > 4)
      {
        break;
      }

      if (v8 != 3)
      {
        v13 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>;
        type metadata accessor for HealthChartsData.SeriesData<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, type metadata accessor for HealthChartsData.SeriesData);
        v10 = v19;
        v15 = type metadata accessor for HealthChartsData.SeriesData<Double, Double>;
        v16 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>;
LABEL_15:
        v11 = lazy protocol witness table accessor for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>(v16, v13, v15);
        goto LABEL_16;
      }

      type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
      v10 = v9;
      v11 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
LABEL_16:
      v20 = v11;
      v21 = v7;
      v22 = v5;
      v23 = v6;
LABEL_17:
      v33[0] = v22;
      v33[1] = v23;
      v33[2] = v21;
      v33[3] = v10;
      v33[4] = v20;
      if (v10)
      {
        __swift_project_boxed_opaque_existential_1(v33, v10);
        outlined copy of HealthChartsData.SeriesDataShape(v5, v6, v7);
        outlined copy of HealthChartsData.SeriesDataShape(v5, v6, v7);
        v10 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_1(v33);
        outlined consume of HealthChartsData.SeriesDataShape(v5, v6, v7);
      }

      else
      {
        outlined copy of HealthChartsData.SeriesDataShape(v5, v6, v7);
        outlined copy of HealthChartsData.SeriesDataShape(v5, v6, v7);
        outlined destroy of AnySeriesData?(v33, &lazy cache variable for type metadata for AnySeriesData?, type metadata accessor for AnySeriesData);
        outlined consume of HealthChartsData.SeriesDataShape(v5, v6, v7);
        v25 = 0xE000000000000000;
      }

      v34 = v3;
      v27 = *(v3 + 16);
      v26 = *(v3 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v3 = v34;
      }

      v4 += 3;
      *(v3 + 16) = v27 + 1;
      v28 = v3 + 16 * v27;
      *(v28 + 32) = v10;
      *(v28 + 40) = v25;
      if (!--v2)
      {
        goto LABEL_25;
      }
    }

    if (v8 != 5)
    {
      v20 = 0;
      v10 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      goto LABEL_17;
    }

    v13 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesData);
    v10 = v14;
    v15 = type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    v16 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
    goto LABEL_15;
  }

LABEL_25:
  v33[0] = v3;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  MEMORY[0x2530770D0](v29, v31);

  MEMORY[0x2530770D0](93, 0xE100000000000000);
  return v35;
}

uint64_t HealthChartsData.SeriesDataShape.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v4 >> 61;
  if ((v4 >> 61) <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
        v8 = v11;
        v9 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
        v10 = type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>;
      }

      else
      {
        type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
        v8 = v17;
        v9 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>;
        v10 = type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>;
      }
    }

    else
    {
      type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
      v8 = v16;
      v9 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>;
      v10 = type metadata accessor for HealthChartsData.SeriesData<Date, Double>;
    }

    goto LABEL_12;
  }

  if (v6 <= 4)
  {
    if (v6 == 3)
    {
      type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
      v8 = v7;
      v9 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
      v10 = type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>;
LABEL_12:
      v18 = lazy protocol witness table accessor for type Date and conformance Date(v9, v10, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
LABEL_15:
      v20 = v4;
      v21 = v5;
      v22 = v3;
      goto LABEL_16;
    }

    v12 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>;
    type metadata accessor for HealthChartsData.SeriesData<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, type metadata accessor for HealthChartsData.SeriesData);
    v8 = v19;
    v14 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>;
    v15 = type metadata accessor for HealthChartsData.SeriesData<Double, Double>;
LABEL_14:
    v18 = lazy protocol witness table accessor for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>(v14, v12, v15);
    goto LABEL_15;
  }

  if (v6 == 5)
  {
    v12 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesData);
    v8 = v13;
    v14 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
    v15 = type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    goto LABEL_14;
  }

  v20 = 0;
  v18 = 0;
  v8 = 0;
  v21 = 0;
  v22 = 0;
LABEL_16:
  *a1 = v22;
  a1[1] = v20;
  a1[2] = v21;
  a1[3] = v8;
  a1[4] = v18;

  return outlined copy of HealthChartsData.SeriesDataShape(v3, v4, v5);
}

uint64_t HealthChartsData.SeriesDataShape.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
        v6 = v9;
        v7 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
        v8 = type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>;
      }

      else
      {
        type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
        v6 = v15;
        v7 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>;
        v8 = type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>;
      }
    }

    else
    {
      type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
      v6 = v14;
      v7 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>;
      v8 = type metadata accessor for HealthChartsData.SeriesData<Date, Double>;
    }

    goto LABEL_12;
  }

  if (v4 <= 4)
  {
    if (v4 == 3)
    {
      type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
      v6 = v5;
      v7 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
      v8 = type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>;
LABEL_12:
      v16 = lazy protocol witness table accessor for type Date and conformance Date(v7, v8, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
LABEL_15:
      v18 = v16;
      v19 = v3;
      v20 = v1;
      v21 = v2;
      goto LABEL_16;
    }

    v10 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>;
    type metadata accessor for HealthChartsData.SeriesData<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, type metadata accessor for HealthChartsData.SeriesData);
    v6 = v17;
    v12 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>;
    v13 = type metadata accessor for HealthChartsData.SeriesData<Double, Double>;
LABEL_14:
    v16 = lazy protocol witness table accessor for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>(v12, v10, v13);
    goto LABEL_15;
  }

  if (v4 == 5)
  {
    v10 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesData);
    v6 = v11;
    v12 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
    v13 = type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    goto LABEL_14;
  }

  v18 = 0;
  v6 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_16:
  v24[0] = v20;
  v24[1] = v21;
  v24[2] = v19;
  v24[3] = v6;
  v24[4] = v18;
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v24, v6);
    outlined copy of HealthChartsData.SeriesDataShape(v1, v2, v3);
    v22 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    outlined copy of HealthChartsData.SeriesDataShape(v1, v2, v3);
    outlined destroy of AnySeriesData?(v24, &lazy cache variable for type metadata for AnySeriesData?, type metadata accessor for AnySeriesData);
    return 0;
  }

  return v22;
}

uint64_t static HealthChartsData.SeriesDataShape.dateRange(_:aggregation:dimension:)@<X0>(unsigned __int8 *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a3;

  result = _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SNySdGTt3B5(v8, v6, a3, &v12);
  v10 = v14;
  v11 = v13 | 0x2000000000000000;
  *a4 = v12;
  a4[1] = v11;
  a4[2] = v10;
  return result;
}

uint64_t static HealthChartsData.SeriesDataShape.datePoint(_:aggregation:dimension:)@<X0>(unsigned __int8 *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a3;

  result = _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation4DateV_SdTt3B5(v8, v6, a3, &v12);
  v10 = v13;
  v11 = v14;
  *a4 = v12;
  a4[1] = v10;
  a4[2] = v11;
  return result;
}

__n128 HealthChartsData.Series.init(_:)@<Q0>(__n128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  v3 = a1[1].n128_u64[0];
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  result = v6;
  *(v4 + 16) = xmmword_25149B950;
  *(v4 + 32) = v6;
  *(v4 + 48) = v3;
  *a2 = v4;
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

unint64_t type metadata accessor for any IntervalChartValue<Self.IntervalChartValue.Bound == Date>()
{
  result = lazy cache variable for type metadata for any IntervalChartValue<Self.IntervalChartValue.Bound == Date>;
  if (!lazy cache variable for type metadata for any IntervalChartValue<Self.IntervalChartValue.Bound == Date>)
  {
    type metadata accessor for Date();
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for any IntervalChartValue<Self.IntervalChartValue.Bound == Date>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(255, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t sub_25147D004(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *HealthChartsData.Series.overlay(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *v2;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25149B950;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  *(inited + 48) = v6;

  outlined copy of HealthChartsData.SeriesDataShape(v4, v5, v6);
  result = specialized Array.append<A>(contentsOf:)(inited);
  *a2 = v7;
  return result;
}

HealthChartsCore::HealthChartsData::Series __swiftcall HealthChartsData.Series.overlay(_:)(HealthChartsCore::HealthChartsData::Series a1)
{
  v3 = v1;
  v4 = *a1.data._rawValue;
  v6 = *v2;

  result.data._rawValue = specialized Array.append<A>(contentsOf:)(v4);
  *v3 = v6;
  return result;
}

void HealthChartsData.Series.totalPointCount.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = (v1 + 48);
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = v7 >> 61;
      if ((v7 >> 61) <= 2)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
            v11 = v13;
            v12 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
          }

          else
          {
            type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
            v11 = v19;
            v12 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
          }
        }

        else
        {
          type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
          v11 = v18;
          v12 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
        }

        goto LABEL_19;
      }

      if (v9 > 4)
      {
        break;
      }

      if (v9 != 3)
      {
        v14 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>;
        type metadata accessor for HealthChartsData.SeriesData<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, type metadata accessor for HealthChartsData.SeriesData);
        v11 = v20;
        v16 = type metadata accessor for HealthChartsData.SeriesData<Double, Double>;
        v17 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>;
LABEL_18:
        v12 = lazy protocol witness table accessor for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>(v17, v14, v16);
        goto LABEL_19;
      }

      type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
      v11 = v10;
      v12 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
LABEL_19:
      v21 = v7;
      v22 = v8;
      v23 = v6;
LABEL_20:
      *&v40 = v23;
      *(&v40 + 1) = v21;
      v41 = v22;
      v42 = v11;
      v43 = v12;
      if (v11)
      {
        sub_25147D004(&v40, &v44);
        outlined copy of HealthChartsData.SeriesDataShape(v6, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
        }

        v25 = v3[2];
        v24 = v3[3];
        if (v25 >= v24 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v3);
        }

        v3[2] = v25 + 1;
        sub_25147D004(&v44, &v3[5 * v25 + 4]);
      }

      else
      {
        outlined copy of HealthChartsData.SeriesDataShape(v6, v7, v8);
        outlined destroy of AnySeriesData?(&v40, &lazy cache variable for type metadata for AnySeriesData?, type metadata accessor for AnySeriesData);
      }

      ++v4;
      v5 += 3;
      if (v2 == v4)
      {
        goto LABEL_27;
      }
    }

    if (v9 != 5)
    {
      v21 = 0;
      v12 = 0;
      v11 = 0;
      v22 = 0;
      v23 = 0;
      goto LABEL_20;
    }

    v14 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesData);
    v11 = v15;
    v16 = type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    v17 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
    goto LABEL_18;
  }

LABEL_27:
  v26 = v3[2];
  if (v26)
  {
    *&v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v27 = v40;
    v28 = (v3 + 4);
    do
    {
      outlined init with copy of AnySeriesData(v28, &v44);
      v29 = v45;
      v30 = v46;
      v31 = __swift_project_boxed_opaque_existential_1(&v44, v45);
      v32 = seriesCount #1 <A>(_:) in HealthChartsData.Series.totalPointCount.getter(v31, v29, v30);
      __swift_destroy_boxed_opaque_existential_1(&v44);
      *&v40 = v27;
      v34 = v27[2];
      v33 = v27[3];
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v27 = v40;
      }

      v27[2] = v34 + 1;
      v27[v34 + 4] = v32;
      v28 += 40;
      --v26;
    }

    while (v26);

    v35 = v27[2];
    if (v35)
    {
      goto LABEL_33;
    }

LABEL_38:

    return;
  }

  v27 = MEMORY[0x277D84F90];
  v35 = *(MEMORY[0x277D84F90] + 16);
  if (!v35)
  {
    goto LABEL_38;
  }

LABEL_33:
  v36 = 0;
  v37 = v27 + 4;
  while (1)
  {
    v38 = *v37++;
    v39 = __OFADD__(v36, v38);
    v36 += v38;
    if (v39)
    {
      break;
    }

    if (!--v35)
    {
      goto LABEL_38;
    }
  }

LABEL_40:
  __break(1u);
}

uint64_t seriesCount #1 <A>(_:) in HealthChartsData.Series.totalPointCount.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 48))(a2, a3);
  v7[0] = swift_getAssociatedTypeWitness();
  v7[1] = swift_getAssociatedTypeWitness();
  v7[2] = swift_getAssociatedConformanceWitness();
  v7[3] = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for HealthChartsData.SeriesPoint(0, v7);
  v5 = MEMORY[0x253077190](v3, v4);

  return v5;
}

uint64_t HealthChartsData.Series.dateXScale.getter@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  type metadata accessor for (lower: Date, upper: Date)(0);
  v95 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v94 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = &v86 - v5;
  v102 = type metadata accessor for Date();
  v100 = *(v102 - 8);
  v6 = MEMORY[0x28223BE20](v102);
  v103 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v96 = &v86 - v8;
  type metadata accessor for AnySeriesData?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v99 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v98 = &v86 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v87 = &v86 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v86 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v86 - v19;
  type metadata accessor for ClosedRange<Date>(0);
  v22 = v21;
  v23 = MEMORY[0x28223BE20](v21);
  v97 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v23);
  v108 = &v86 - v27;
  v28 = *v1;
  v29 = (*v1)[2];
  v105 = v26;
  v107 = v29;
  if (v29)
  {
    v30 = 0;
    v101 = (v26 + 56);
    v31 = (v26 + 48);
    v32 = (v28 + 6);
    v33 = MEMORY[0x277D84F90];
    v106 = v28;
    while (1)
    {
      if (v30 >= v28[2])
      {
        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }

      v34 = v33;
      v35 = v22;
      v36 = *(v32 - 2);
      v37 = *(v32 - 1);
      v38 = *v32;
      v39 = v37 >> 61;
      if ((v37 >> 61) > 1)
      {
        if (v39 == 2)
        {
          v50 = v38;

          v42 = type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>;
          v43 = type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>;
          v44 = type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>;
LABEL_17:
          specialized AnySeriesData.xScale.getter(v41, v42, v43, v44, v18);
LABEL_18:
          outlined consume of HealthChartsData.SeriesDataShape(v36, v37, v38);
          v22 = v35;
          goto LABEL_19;
        }

        if (v39 == 3)
        {
          v45 = v38;

          v47 = type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>;
          v48 = type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>;
          goto LABEL_15;
        }
      }

      else
      {
        if (!v39)
        {
          v49 = v38;

          v47 = type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>;
          v48 = type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>;
LABEL_15:
          specialized AnySeriesData.xScale.getter(v46, v47, v48, v18);
          goto LABEL_18;
        }

        if (v39 == 1)
        {
          v40 = v38;

          v42 = type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>;
          v43 = type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>;
          v44 = type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>;
          goto LABEL_17;
        }
      }

      v22 = v35;
      (*v101)(v18, 1, 1, v35);
LABEL_19:
      outlined init with take of ClosedRange<Date>?(v18, v20);
      v33 = v34;
      if ((*v31)(v20, 1, v22) == 1)
      {
        result = outlined destroy of AnySeriesData?(v20, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
      }

      else
      {
        outlined init with take of (lower: Date, upper: Date)(v20, v108, type metadata accessor for ClosedRange<Date>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
        }

        v52 = v33[2];
        v51 = v33[3];
        if (v52 >= v51 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v33);
        }

        v33[2] = v52 + 1;
        result = outlined init with take of (lower: Date, upper: Date)(v108, v33 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v52, type metadata accessor for ClosedRange<Date>);
      }

      ++v30;
      v32 += 3;
      v28 = v106;
      if (v107 == v30)
      {
        goto LABEL_26;
      }
    }
  }

  v33 = MEMORY[0x277D84F90];
LABEL_26:
  v53 = v33[2];
  if (v53)
  {
    v54 = v105;
    v55 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v56 = v87;
    outlined init with copy of ClosedRange<Date>(v33 + v55, v87, type metadata accessor for ClosedRange<Date>);
    v107 = *(v54 + 56);
    v108 = v54 + 56;
    (v107)(v56, 0, 1, v22);
    v57 = v104;
    outlined init with copy of Date?(v56, v104, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    v58 = (v53 - 1);
    if (v53 != 1)
    {
      v59 = v99;
      v91 = v33;
      v92 = (v100 + 16);
      v60 = *(v54 + 72);
      v89 = (v100 + 8);
      v90 = (v100 + 32);
      v105 = v60;
      v106 = (v54 + 48);
      v61 = v33 + v60 + v55;
      v63 = v97;
      v62 = v98;
      v88 = v22;
      do
      {
        outlined init with copy of ClosedRange<Date>(v61, v63, type metadata accessor for ClosedRange<Date>);
        outlined init with copy of Date?(v57, v59, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
        if ((*v106)(v59, 1, v22) == 1)
        {
          outlined destroy of HealthChartsData.SeriesPoint<DateInterval, Double>(v63, type metadata accessor for ClosedRange<Date>);
          outlined destroy of AnySeriesData?(v57, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
          outlined destroy of AnySeriesData?(v59, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
          (v107)(v62, 1, 1, v22);
        }

        else
        {
          v101 = v58;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v64 = v102;
          v65 = dispatch thunk of static Comparable.< infix(_:_:)();
          v66 = v63;
          v67 = *v92;
          if (v65)
          {
            v68 = v59;
          }

          else
          {
            v68 = v66;
          }

          v69 = v59;
          v70 = v96;
          v67(v96, v68, v64);
          v71 = *(v22 + 36);
          v72 = v66 + v71;
          v73 = v69 + v71;
          if (dispatch thunk of static Comparable.>= infix(_:_:)())
          {
            v74 = v73;
          }

          else
          {
            v74 = v72;
          }

          v67(v103, v74, v64);
          v75 = v70;
          v76 = dispatch thunk of static Comparable.<= infix(_:_:)();
          outlined destroy of HealthChartsData.SeriesPoint<DateInterval, Double>(v66, type metadata accessor for ClosedRange<Date>);
          result = outlined destroy of AnySeriesData?(v104, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
          if ((v76 & 1) == 0)
          {
            goto LABEL_43;
          }

          v77 = *v90;
          v78 = v93;
          v79 = v102;
          (*v90)(v93, v75, v102);
          v80 = v95;
          v77((v78 + *(v95 + 48)), v103, v79);
          v81 = v94;
          outlined init with copy of ClosedRange<Date>(v78, v94, type metadata accessor for (lower: Date, upper: Date));
          v82 = *(v80 + 48);
          v62 = v98;
          v77(v98, v81, v79);
          v100 = v61;
          v83 = *v89;
          (*v89)(v81 + v82, v79);
          outlined init with take of (lower: Date, upper: Date)(v78, v81, type metadata accessor for (lower: Date, upper: Date));
          v84 = *(v80 + 48);
          v22 = v88;
          v77((v62 + *(v88 + 36)), (v81 + v84), v79);
          v83(v81, v79);
          v59 = v99;
          v61 = v100;
          outlined destroy of HealthChartsData.SeriesPoint<DateInterval, Double>(v99, type metadata accessor for ClosedRange<Date>);
          (v107)(v62, 0, 1, v22);
          v63 = v97;
          v58 = v101;
          v57 = v104;
        }

        outlined init with take of ClosedRange<Date>?(v62, v57);
        v61 += v105;
        v58 = (v58 - 1);
      }

      while (v58);
    }
  }

  else
  {
    v85 = v87;
    (*(v105 + 56))(v87, 1, 1, v22);
    outlined init with copy of Date?(v85, v104, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
  }

  return outlined destroy of AnySeriesData?(v87, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
}

void HealthChartsData.Series.scalarXScale.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    v29 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v3 = 0;
  v4 = v1 + 48;
  v28 = *(*v0 + 16);
  v29 = MEMORY[0x277D84F90];
  do
  {
    v5 = v2 - v3;
    v6 = (v4 + 24 * v3);
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v15 = *(v6 - 2);
      v16 = *(v6 - 1);
      v17 = *v6;
      if (v16 >> 61 == 4)
      {
        v7 = v17;

        v9 = specialized AnySeriesData.xScale.getter(v8);
      }

      else
      {
        if (v16 >> 61 != 5)
        {
          goto LABEL_6;
        }

        v18 = v17;

        v9 = specialized AnySeriesData.xScale.getter(v19);
      }

      v12 = v9;
      v13 = v10;
      v14 = v11;
      outlined consume of HealthChartsData.SeriesDataShape(v15, v16, v17);
      if ((v14 & 1) == 0)
      {
        break;
      }

LABEL_6:
      v6 += 3;
      ++v3;
      if (!--v5)
      {
        goto LABEL_18;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v21 = *(v29 + 2);
    v20 = *(v29 + 3);
    if (v21 >= v20 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v29);
    }

    ++v3;
    v2 = v28;
    *(v29 + 2) = v21 + 1;
    v22 = &v29[16 * v21];
    *(v22 + 4) = v12;
    *(v22 + 5) = v13;
    v4 = v1 + 48;
  }

  while (v5 != 1);
LABEL_18:
  v23 = *(v29 + 2);
  if (!v23 || (v24 = v23 - 1, v23 == 1))
  {
LABEL_27:
  }

  else
  {
    v25 = *(v29 + 4);
    v26 = *(v29 + 5);
    v27 = (v29 + 56);
    while (1)
    {
      if (*(v27 - 1) <= v25)
      {
        v25 = *(v27 - 1);
      }

      if (*v27 > v26)
      {
        v26 = *v27;
      }

      if (v25 > v26)
      {
        break;
      }

      v27 += 2;
      if (!--v24)
      {
        goto LABEL_27;
      }
    }

LABEL_30:
    __break(1u);
  }
}

void HealthChartsData.Series.yScale.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    v5 = (v1 + 48);
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_50;
      }

      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = v7 >> 61;
      if ((v7 >> 61) <= 2)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
            v11 = v13;
            v12 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
          }

          else
          {
            type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
            v11 = v19;
            v12 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
          }
        }

        else
        {
          type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
          v11 = v18;
          v12 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
        }

        goto LABEL_19;
      }

      if (v9 > 4)
      {
        break;
      }

      if (v9 != 3)
      {
        v14 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>;
        type metadata accessor for HealthChartsData.SeriesData<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, type metadata accessor for HealthChartsData.SeriesData);
        v11 = v20;
        v16 = type metadata accessor for HealthChartsData.SeriesData<Double, Double>;
        v17 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>;
LABEL_18:
        v12 = lazy protocol witness table accessor for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>(v17, v14, v16);
        goto LABEL_19;
      }

      type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
      v11 = v10;
      v12 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
LABEL_19:
      v21 = v7;
      v22 = v8;
      v23 = v6;
LABEL_20:
      *&v44 = v23;
      *(&v44 + 1) = v21;
      v45 = v22;
      v46 = v11;
      v47 = v12;
      if (v11)
      {
        sub_25147D004(&v44, &v48);
        outlined copy of HealthChartsData.SeriesDataShape(v6, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v25 = v4[2];
        v24 = v4[3];
        if (v25 >= v24 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v4);
        }

        v4[2] = v25 + 1;
        sub_25147D004(&v48, &v4[5 * v25 + 4]);
      }

      else
      {
        outlined copy of HealthChartsData.SeriesDataShape(v6, v7, v8);
        outlined destroy of AnySeriesData?(&v44, &lazy cache variable for type metadata for AnySeriesData?, type metadata accessor for AnySeriesData);
      }

      ++v3;
      v5 += 3;
      if (v2 == v3)
      {
        goto LABEL_28;
      }
    }

    if (v9 != 5)
    {
      v21 = 0;
      v12 = 0;
      v11 = 0;
      v22 = 0;
      v23 = 0;
      goto LABEL_20;
    }

    v14 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesData);
    v11 = v15;
    v16 = type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    v17 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
    goto LABEL_18;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_28:
  v26 = v4[2];
  if (v26)
  {
    v27 = (v4 + 4);
    v28 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of AnySeriesData(v27, &v48);
      v30 = v49;
      v31 = v50;
      __swift_project_boxed_opaque_existential_1(&v48, v49);
      v32 = AnySeriesData.yScale.getter(v30, v31);
      v34 = v33;
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_1(&v48);
      if ((v36 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v38 = *(v28 + 2);
        v37 = *(v28 + 3);
        if (v38 >= v37 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v28);
        }

        *(v28 + 2) = v38 + 1;
        v29 = &v28[16 * v38];
        *(v29 + 4) = v32;
        *(v29 + 5) = v34;
      }

      v27 += 40;
      --v26;
    }

    while (v26);

    v39 = *(v28 + 2);
    if (!v39)
    {
      goto LABEL_46;
    }
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
    v39 = *(MEMORY[0x277D84F90] + 16);
    if (!v39)
    {
      goto LABEL_46;
    }
  }

  v40 = v39 - 1;
  if (v39 == 1)
  {
LABEL_46:

    return;
  }

  v41 = *(v28 + 4);
  v42 = *(v28 + 5);
  v43 = (v28 + 56);
  while (1)
  {
    if (*(v43 - 1) <= v41)
    {
      v41 = *(v43 - 1);
    }

    if (*v43 > v42)
    {
      v42 = *v43;
    }

    if (v41 > v42)
    {
      break;
    }

    v43 += 2;
    if (!--v40)
    {
      goto LABEL_46;
    }
  }

LABEL_50:
  __break(1u);
}

void HealthChartsData.Series.unit.getter(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_28:
    v27 = v5[2];
    if (v27)
    {
      v28 = (v5 + 4);
      v29 = MEMORY[0x277D84F90];
      do
      {
        outlined init with copy of AnySeriesData(v28, &v41);
        v30 = v42;
        v31 = v43;
        __swift_project_boxed_opaque_existential_1(&v41, v42);
        (*(v31 + 64))(&v37, v30, v31);
        __swift_destroy_boxed_opaque_existential_1(&v41);
        v32 = v37;
        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
          }

          v34 = *(v29 + 2);
          v33 = *(v29 + 3);
          if (v34 >= v33 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v29);
          }

          *(v29 + 2) = v34 + 1;
          *&v29[8 * v34 + 32] = v32;
        }

        v28 += 40;
        --v27;
      }

      while (v27);

      if (*(v29 + 2))
      {
        goto LABEL_38;
      }
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_38:
        v35 = *(v29 + 4);
LABEL_41:

        *a1 = v35;
        return;
      }
    }

    v35 = 0;
    goto LABEL_41;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = (v2 + 48);
  while (v4 < *(v2 + 16))
  {
    v7 = *(v6 - 2);
    v8 = *(v6 - 1);
    v9 = *v6;
    v10 = v8 >> 61;
    if ((v8 >> 61) <= 2)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
          v12 = v14;
          v13 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
        }

        else
        {
          type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
          v12 = v20;
          v13 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
        }
      }

      else
      {
        type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
        v12 = v19;
        v13 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
      }

      goto LABEL_19;
    }

    if (v10 > 4)
    {
      if (v10 != 5)
      {
        v22 = 0;
        v13 = 0;
        v12 = 0;
        v23 = 0;
        v24 = 0;
        goto LABEL_20;
      }

      v15 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
      type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesData);
      v12 = v16;
      v17 = type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
      v18 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
      goto LABEL_18;
    }

    if (v10 != 3)
    {
      v15 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>;
      type metadata accessor for HealthChartsData.SeriesData<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, type metadata accessor for HealthChartsData.SeriesData);
      v12 = v21;
      v17 = type metadata accessor for HealthChartsData.SeriesData<Double, Double>;
      v18 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>;
LABEL_18:
      v13 = lazy protocol witness table accessor for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>(v18, v15, v17);
      goto LABEL_19;
    }

    type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
    v12 = v11;
    v13 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
LABEL_19:
    v22 = v8;
    v23 = v9;
    v24 = v7;
LABEL_20:
    *&v37 = v24;
    *(&v37 + 1) = v22;
    v38 = v23;
    v39 = v12;
    v40 = v13;
    if (v12)
    {
      sub_25147D004(&v37, &v41);
      outlined copy of HealthChartsData.SeriesDataShape(v7, v8, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      }

      v26 = v5[2];
      v25 = v5[3];
      if (v26 >= v25 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v5);
      }

      v5[2] = v26 + 1;
      sub_25147D004(&v41, &v5[5 * v26 + 4]);
    }

    else
    {
      outlined copy of HealthChartsData.SeriesDataShape(v7, v8, v9);
      outlined destroy of AnySeriesData?(&v37, &lazy cache variable for type metadata for AnySeriesData?, type metadata accessor for AnySeriesData);
    }

    ++v4;
    v6 += 3;
    if (v3 == v4)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t HealthChartsData.Series.finestAggregation.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = (v2 + 48);
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = v8 >> 61;
      if ((v8 >> 61) <= 2)
      {
        if (v10)
        {
          if (v10 == 1)
          {
            type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
            v12 = v14;
            v13 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
          }

          else
          {
            type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
            v12 = v20;
            v13 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
          }
        }

        else
        {
          type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
          v12 = v19;
          v13 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
        }

        goto LABEL_19;
      }

      if (v10 > 4)
      {
        break;
      }

      if (v10 != 3)
      {
        v15 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>;
        type metadata accessor for HealthChartsData.SeriesData<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, type metadata accessor for HealthChartsData.SeriesData);
        v12 = v21;
        v17 = type metadata accessor for HealthChartsData.SeriesData<Double, Double>;
        v18 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>;
LABEL_18:
        v13 = lazy protocol witness table accessor for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>(v18, v15, v17);
        goto LABEL_19;
      }

      type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
      v12 = v11;
      v13 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
LABEL_19:
      v22 = v8;
      v23 = v9;
      v24 = v7;
LABEL_20:
      *&v39 = v24;
      *(&v39 + 1) = v22;
      v40 = v23;
      v41 = v12;
      v42 = v13;
      if (v12)
      {
        sub_25147D004(&v39, &v43);
        outlined copy of HealthChartsData.SeriesDataShape(v7, v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v26 = v4[2];
        v25 = v4[3];
        if (v26 >= v25 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v4);
        }

        v4[2] = v26 + 1;
        sub_25147D004(&v43, &v4[5 * v26 + 4]);
      }

      else
      {
        outlined copy of HealthChartsData.SeriesDataShape(v7, v8, v9);
        outlined destroy of AnySeriesData?(&v39, &lazy cache variable for type metadata for AnySeriesData?, type metadata accessor for AnySeriesData);
      }

      ++v5;
      v6 += 3;
      if (v3 == v5)
      {
        goto LABEL_27;
      }
    }

    if (v10 != 5)
    {
      v22 = 0;
      v13 = 0;
      v12 = 0;
      v23 = 0;
      v24 = 0;
      goto LABEL_20;
    }

    v15 = &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesData);
    v12 = v16;
    v17 = type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>;
    v18 = &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>;
    goto LABEL_18;
  }

LABEL_27:
  v27 = v4[2];
  if (v27)
  {
    *&v39 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v28 = v39;
    v29 = (v4 + 4);
    do
    {
      outlined init with copy of AnySeriesData(v29, &v43);
      v30 = v44;
      v31 = v45;
      __swift_project_boxed_opaque_existential_1(&v43, v44);
      (*(v31 + 56))(&v38, v30, v31);
      __swift_destroy_boxed_opaque_existential_1(&v43);
      v32 = v38;
      *&v39 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v28 = v39;
      }

      *(v28 + 16) = v34 + 1;
      *(v28 + v34 + 32) = v32;
      v29 += 40;
      --v27;
    }

    while (v27);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  *&v43 = v28;

  specialized MutableCollection<>.sort(by:)(implicit closure #1 in HealthChartsData.Series.finestAggregation.getter, 0);

  if (*(v43 + 16))
  {
    v35 = *(v43 + 32);
  }

  else
  {
    v35 = 0;
  }

  *a1 = v35;
  return result;
}

uint64_t one-time initialization function for empty()
{
  static HealthChartsData.empty = 0;
  unk_27F435E30 = 0;

  qword_27F435E38 = &outlined read-only object #0 of one-time initialization function for empty;
  return result;
}

uint64_t static HealthChartsData.empty.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for empty != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_27F435E30;
  v2 = qword_27F435E38;
  *a1 = static HealthChartsData.empty;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t HealthChartsData.init(description:dataShape:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v9 = *a2;
  v6 = *(a2 + 2);
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25149B950;
  *(v7 + 32) = v9;
  *(v7 + 48) = v6;

  *a3 = v4;
  a3[1] = v5;
  a3[2] = v7;
  return result;
}

uint64_t HealthChartsData.overlay(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25149B950;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  *(inited + 48) = v6;

  outlined copy of HealthChartsData.SeriesDataShape(v4, v5, v6);
  specialized Array.append<A>(contentsOf:)(inited);

  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  return result;
}

uint64_t HealthChartsData.overlay(_:)@<X0>(char **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  v8 = *a1;

  swift_bridgeObjectRetain_n();
  specialized Array.append<A>(contentsOf:)(v4);

  *a2 = v6;
  a2[1] = v5;
  a2[2] = v8;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<DateInterval, Double>>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DiscreteDateSpanData.CategoryValue>, type metadata accessor for DiscreteDateSpanData.CategoryValue, type metadata accessor for DiscreteDateSpanData.CategoryValue);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<Date, Double>>, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>>, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date>, MEMORY[0x277CC9578], MEMORY[0x277CC9578]);
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
LABEL_30:
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

  if (!v9)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v10 = MEMORY[0x277CC88A8];
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<Double, Double>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(DateInterval, Double)>, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, Double));
  type metadata accessor for (DateInterval, Double)(0, &lazy cache variable for type metadata for (DateInterval, Double), v10);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v8;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  type metadata accessor for (DateInterval, Double)(0, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8]);
  v17 = *(v16 - 8);
  if (v5)
  {
    if (v14 < a4 || (v18 = (*(v17 + 80) + 32) & ~*(v17 + 80), v14 + v18 >= a4 + v18 + *(v17 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
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
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<Double, Double>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<Double, Double>>, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Double, Double>, type metadata accessor for HealthChartsData.SeriesPoint, type metadata accessor for HealthChartsData.SeriesData<Double, Double>);
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
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
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
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Double>, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  type metadata accessor for AnySeriesData?(0, a5, a6, MEMORY[0x277D84560]);
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

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
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
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, a5, a6, MEMORY[0x277D84560]);
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

void getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  }

  else
  {

    type metadata accessor for _ContiguousArrayStorage();
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v28 = ~v3;
    v5 = 0xD000000000000010;
    v29 = a1;
    while (1)
    {
      v6 = *(*(v30 + 48) + v4);
      v31 = v4;
      if (v6 <= 4)
      {
        if (v6 == 3)
        {
          v9 = 0xD000000000000012;
        }

        else
        {
          v9 = 0x6E694D65676E6172;
        }

        if (v6 == 3)
        {
          v10 = 0x800000025149DB50;
        }

        else
        {
          v10 = 0xEC0000006D756D69;
        }

        if (v6 == 2)
        {
          v9 = 0xD000000000000012;
          v10 = 0x800000025149DB30;
        }

        v11 = *(*(v30 + 48) + v4) ? v5 : 0x65676172657661;
        v12 = v6 ? 0x800000025149DB10 : 0xE700000000000000;
        v7 = v6 <= 1 ? v11 : v9;
        v8 = v6 <= 1 ? v12 : v10;
      }

      else if (*(*(v30 + 48) + v4) > 7u)
      {
        if (v6 == 8)
        {
          v7 = 0x56746E6572727563;
          v8 = 0xEC00000065756C61;
        }

        else if (v6 == 9)
        {
          v8 = 0xE500000000000000;
          v7 = 0x746E756F63;
        }

        else
        {
          v8 = 0xE300000000000000;
          v7 = 7173491;
        }
      }

      else if (v6 == 5)
      {
        v7 = 0xD000000000000015;
        v8 = 0x800000025149DB70;
      }

      else if (v6 == 6)
      {
        v7 = 0x78614D65676E6172;
        v8 = 0xEC0000006D756D69;
      }

      else
      {
        v7 = 0xD000000000000015;
        v8 = 0x800000025149DBA0;
      }

      v13 = 0x746E756F63;
      if (v29 != 9)
      {
        v13 = 7173491;
      }

      v14 = 0xE500000000000000;
      if (v29 != 9)
      {
        v14 = 0xE300000000000000;
      }

      if (v29 == 8)
      {
        v13 = 0x56746E6572727563;
        v14 = 0xEC00000065756C61;
      }

      v15 = 0xD000000000000015;
      v16 = 0x78614D65676E6172;
      if (v29 != 6)
      {
        v16 = 0xD000000000000015;
      }

      v17 = 0x800000025149DBA0;
      if (v29 == 6)
      {
        v17 = 0xEC0000006D756D69;
      }

      if (v29 != 5)
      {
        v15 = v16;
      }

      v18 = 0x800000025149DB70;
      if (v29 != 5)
      {
        v18 = v17;
      }

      if (v29 <= 7)
      {
        v13 = v15;
        v14 = v18;
      }

      if (v29 == 3)
      {
        v19 = 0xD000000000000012;
      }

      else
      {
        v19 = 0x6E694D65676E6172;
      }

      if (v29 == 3)
      {
        v20 = 0x800000025149DB50;
      }

      else
      {
        v20 = 0xEC0000006D756D69;
      }

      if (v29 == 2)
      {
        v19 = 0xD000000000000012;
        v20 = 0x800000025149DB30;
      }

      if (v29)
      {
        v21 = v5;
      }

      else
      {
        v21 = 0x65676172657661;
      }

      if (v29)
      {
        v22 = 0x800000025149DB10;
      }

      else
      {
        v22 = 0xE700000000000000;
      }

      if (v29 <= 1)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = v29 <= 4 ? v19 : v13;
      v24 = v29 <= 4 ? v20 : v14;
      if (v7 == v23 && v8 == v24)
      {
        break;
      }

      v25 = v5;
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        return v31;
      }

      v4 = (v31 + 1) & v28;
      v5 = v25;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v31;
  }

  return v4;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  *v2 = v5;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16HealthChartsCore0hI4DataV14DescriptionKeyO_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.DescriptionKey>, &type metadata for HealthChartsData.DescriptionKey, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = *(v2 + 8);
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v32 = *a4;
    v4 = (*a4 + a3);
    v5 = result - a3;
LABEL_6:
    v30 = v4;
    v31 = a3;
    v6 = *(v32 + a3);
    v29 = v5;
    while (1)
    {
      if (v6 <= 4u)
      {
        if (v6 == 3)
        {
          v9 = 0xD000000000000012;
        }

        else
        {
          v9 = 0x6E694D65676E6172;
        }

        if (v6 == 3)
        {
          v10 = 0x800000025149DB50;
        }

        else
        {
          v10 = 0xEC0000006D756D69;
        }

        if (v6 == 2)
        {
          v9 = 0xD000000000000012;
          v10 = 0x800000025149DB30;
        }

        if (v6)
        {
          v11 = 0xD000000000000010;
        }

        else
        {
          v11 = 0x65676172657661;
        }

        if (v6)
        {
          v12 = 0x800000025149DB10;
        }

        else
        {
          v12 = 0xE700000000000000;
        }

        if (v6 <= 1u)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (v6 <= 1u)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (v6 > 7u)
      {
        if (v6 == 8)
        {
          v7 = 0x56746E6572727563;
          v8 = 0xEC00000065756C61;
        }

        else if (v6 == 9)
        {
          v8 = 0xE500000000000000;
          v7 = 0x746E756F63;
        }

        else
        {
          v8 = 0xE300000000000000;
          v7 = 7173491;
        }
      }

      else if (v6 == 5)
      {
        v7 = 0xD000000000000015;
        v8 = 0x800000025149DB70;
      }

      else if (v6 == 6)
      {
        v7 = 0x78614D65676E6172;
        v8 = 0xEC0000006D756D69;
      }

      else
      {
        v7 = 0xD000000000000015;
        v8 = 0x800000025149DBA0;
      }

      v13 = *(v4 - 1);
      v14 = 0x746E756F63;
      if (v13 != 9)
      {
        v14 = 7173491;
      }

      v15 = 0xE500000000000000;
      if (v13 != 9)
      {
        v15 = 0xE300000000000000;
      }

      if (v13 == 8)
      {
        v14 = 0x56746E6572727563;
        v15 = 0xEC00000065756C61;
      }

      v16 = 0xD000000000000015;
      v17 = 0x78614D65676E6172;
      if (v13 != 6)
      {
        v17 = 0xD000000000000015;
      }

      v18 = 0x800000025149DBA0;
      if (v13 == 6)
      {
        v18 = 0xEC0000006D756D69;
      }

      if (v13 != 5)
      {
        v16 = v17;
      }

      v19 = 0x800000025149DB70;
      if (v13 != 5)
      {
        v19 = v18;
      }

      if (*(v4 - 1) <= 7u)
      {
        v14 = v16;
        v15 = v19;
      }

      if (v13 == 3)
      {
        v20 = 0xD000000000000012;
      }

      else
      {
        v20 = 0x6E694D65676E6172;
      }

      if (v13 == 3)
      {
        v21 = 0x800000025149DB50;
      }

      else
      {
        v21 = 0xEC0000006D756D69;
      }

      if (v13 == 2)
      {
        v20 = 0xD000000000000012;
        v21 = 0x800000025149DB30;
      }

      if (*(v4 - 1))
      {
        v22 = 0xD000000000000010;
      }

      else
      {
        v22 = 0x65676172657661;
      }

      if (*(v4 - 1))
      {
        v23 = 0x800000025149DB10;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      if (*(v4 - 1) <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      if (*(v4 - 1) <= 4u)
      {
        v24 = v20;
      }

      else
      {
        v24 = v14;
      }

      if (*(v4 - 1) <= 4u)
      {
        v25 = v21;
      }

      else
      {
        v25 = v15;
      }

      if (v7 == v24 && v8 == v25)
      {

LABEL_5:
        a3 = v31 + 1;
        v4 = v30 + 1;
        v5 = v29 - 1;
        if (v31 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v6 = *v4;
      *v4 = *(v4 - 1);
      *--v4 = v6;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v9 = *v4;
    v10 = (*v4 + a3);
    v11 = result - a3;
LABEL_4:
    v12 = *(v9 + v7);
    v13 = v11;
    v14 = v10;
    while (1)
    {
      v17 = v12;
      v16 = *(v14 - 1);
      result = a4(&v17, &v16);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v12 = *v14;
        *v14 = *(v14 - 1);
        *--v14 = v12;
        if (!__CFADD__(v13++, 1))
        {
          continue;
        }
      }

      ++v7;
      ++v10;
      --v11;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v6 = a3;
  v121 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_221:
    v8 = *v121;
    if (!*v121)
    {
      goto LABEL_261;
    }

    v10 = v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_223:
      v110 = v5;
      v130 = v11;
      v111 = *(v11 + 16);
      if (v111 >= 2)
      {
        v112 = v10;
        while (1)
        {
          v113 = *v112;
          if (!v113)
          {
            goto LABEL_259;
          }

          v5 = v111 - 1;
          v114 = v11;
          v11 = *(v11 + 16 * v111);
          v115 = v114;
          v116 = *&v114[16 * v111 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((v113 + v11), (v113 + *&v114[16 * v111 + 16]), (v113 + v116), v8);
          if (v110)
          {
          }

          if (v116 < v11)
          {
            goto LABEL_248;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = specialized _ArrayBuffer._consumeAndCreateNew()(v115);
          }

          if (v111 - 2 >= *(v115 + 2))
          {
            goto LABEL_249;
          }

          v117 = &v115[16 * v111];
          *v117 = v11;
          v117[1] = v116;
          v130 = v115;
          result = specialized Array.remove(at:)(v111 - 1);
          v11 = v130;
          v111 = *(v130 + 16);
          v112 = v10;
          if (v111 <= 1)
          {
          }
        }
      }
    }

LABEL_255:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    v11 = result;
    goto LABEL_223;
  }

  v8 = 0;
  v9 = 0xEC0000006D756D69;
  v10 = 0x6E694D65676E6172;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v8++;
    v122 = v12;
    if (v8 < v7)
    {
      v123 = *v6;
      v13 = *(*v6 + v12);
      v129 = v8[*v6];
      v128 = v13;
      result = specialized static HealthChartsData.DescriptionKey.< infix(_:_:)(&v129, &v128);
      v125 = result;
      v14 = (v12 + 2);
      if (v12 + 2 < v7)
      {
        v8 = (v7 - 1);
        v6 = a3;
        while (1)
        {
          v17 = v14[v123];
          if (v17 <= 4)
          {
            if (v14[v123] <= 1u)
            {
              if (v14[v123])
              {
                v18 = 0xD000000000000010;
                v19 = 0x800000025149DB10;
              }

              else
              {
                v19 = 0xE700000000000000;
                v18 = 0x65676172657661;
              }
            }

            else if (v17 == 2)
            {
              v18 = 0xD000000000000012;
              v19 = 0x800000025149DB30;
            }

            else if (v17 == 3)
            {
              v18 = 0xD000000000000012;
              v19 = 0x800000025149DB50;
            }

            else
            {
              v18 = 0x6E694D65676E6172;
              v19 = 0xEC0000006D756D69;
            }
          }

          else if (v14[v123] > 7u)
          {
            if (v17 == 8)
            {
              v18 = 0x56746E6572727563;
              v19 = 0xEC00000065756C61;
            }

            else if (v17 == 9)
            {
              v19 = 0xE500000000000000;
              v18 = 0x746E756F63;
            }

            else
            {
              v19 = 0xE300000000000000;
              v18 = 7173491;
            }
          }

          else if (v17 == 5)
          {
            v18 = 0xD000000000000015;
            v19 = 0x800000025149DB70;
          }

          else if (v17 == 6)
          {
            v18 = 0x78614D65676E6172;
            v19 = 0xEC0000006D756D69;
          }

          else
          {
            v18 = 0xD000000000000015;
            v19 = 0x800000025149DBA0;
          }

          v20 = v14[v123 - 1];
          if (v20 <= 4)
          {
            if (v14[v123 - 1] <= 1u)
            {
              if (v14[v123 - 1])
              {
                v24 = 0xD000000000000010;
              }

              else
              {
                v24 = 0x65676172657661;
              }

              if (v14[v123 - 1])
              {
                v9 = 0x800000025149DB10;
              }

              else
              {
                v9 = 0xE700000000000000;
              }

              if (v18 != v24)
              {
                goto LABEL_7;
              }
            }

            else if (v20 == 2)
            {
              v9 = 0x800000025149DB30;
              if (v18 != 0xD000000000000012)
              {
                goto LABEL_7;
              }
            }

            else if (v20 == 3)
            {
              v9 = 0x800000025149DB50;
              if (v18 != 0xD000000000000012)
              {
                goto LABEL_7;
              }
            }

            else if (v18 != 0x6E694D65676E6172)
            {
              goto LABEL_7;
            }
          }

          else if (v14[v123 - 1] > 7u)
          {
            v21 = 0x746E756F63;
            if (v20 != 9)
            {
              v21 = 7173491;
            }

            v22 = 0xE500000000000000;
            if (v20 != 9)
            {
              v22 = 0xE300000000000000;
            }

            if (v20 == 8)
            {
              v23 = 0x56746E6572727563;
            }

            else
            {
              v23 = v21;
            }

            if (v20 == 8)
            {
              v9 = 0xEC00000065756C61;
            }

            else
            {
              v9 = v22;
            }

            if (v18 != v23)
            {
              goto LABEL_7;
            }
          }

          else if (v20 == 5)
          {
            v9 = 0x800000025149DB70;
            if (v18 != 0xD000000000000015)
            {
              goto LABEL_7;
            }
          }

          else if (v20 == 6)
          {
            if (v18 != 0x78614D65676E6172)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v9 = 0x800000025149DBA0;
            if (v18 != 0xD000000000000015)
            {
              goto LABEL_7;
            }
          }

          if (v19 == v9)
          {
            v25 = v7;
            v26 = v6;

            v6 = v26;
            v7 = v25;
            if (v125)
            {
              v27 = v14 - 1;
              v10 = 0x6E694D65676E6172;
              goto LABEL_75;
            }

            goto LABEL_8;
          }

LABEL_7:
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v16 = v125 ^ v15;
          v12 = v122;
          v6 = a3;
          if (v16)
          {
            v8 = v14 - 1;
            v10 = 0x6E694D65676E6172;
            goto LABEL_74;
          }

LABEL_8:
          ++v14;
          v9 = 0xEC0000006D756D69;
          v10 = 0x6E694D65676E6172;
          if (v7 == v14)
          {
            v14 = v7;
            goto LABEL_74;
          }
        }
      }

      v6 = a3;
LABEL_74:
      v27 = v8;
      v8 = v14;
      if (v125)
      {
LABEL_75:
        if (v14 < v12)
        {
          goto LABEL_252;
        }

        if (v12 <= v27)
        {
          v58 = v14 - 1;
          v59 = v12;
          do
          {
            if (v59 != v58)
            {
              v61 = *v6;
              if (!*v6)
              {
                goto LABEL_258;
              }

              v62 = *(v61 + v59);
              *(v61 + v59) = v58[v61];
              v58[v61] = v62;
            }
          }

          while (++v59 < v58--);
        }

        v8 = v14;
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v12))
      {
        goto LABEL_251;
      }

      if (&v8[-v12] < a4)
      {
        break;
      }
    }

LABEL_170:
    if (v8 < v12)
    {
      goto LABEL_250;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v64 = *(v11 + 16);
    v63 = *(v11 + 24);
    v65 = v64 + 1;
    v6 = a3;
    if (v64 >= v63 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v11);
      v6 = a3;
      v11 = result;
    }

    *(v11 + 16) = v65;
    v66 = v11 + 16 * v64;
    *(v66 + 32) = v12;
    *(v66 + 40) = v8;
    v67 = *v121;
    if (!*v121)
    {
      goto LABEL_260;
    }

    if (v64)
    {
      while (1)
      {
        v10 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v11 + 32);
          v69 = *(v11 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_190:
          if (v71)
          {
            goto LABEL_239;
          }

          v84 = (v11 + 16 * v65);
          v86 = *v84;
          v85 = v84[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_242;
          }

          v90 = (v11 + 32 + 16 * v10);
          v92 = *v90;
          v91 = v90[1];
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_245;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_246;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v10 = v65 - 2;
            }

            goto LABEL_211;
          }

          goto LABEL_204;
        }

        v94 = (v11 + 16 * v65);
        v96 = *v94;
        v95 = v94[1];
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_204:
        if (v89)
        {
          goto LABEL_241;
        }

        v97 = v11 + 16 * v10;
        v99 = *(v97 + 32);
        v98 = *(v97 + 40);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_244;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_211:
        v105 = v10 - 1;
        if (v10 - 1 >= v65)
        {
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
          goto LABEL_254;
        }

        if (!*v6)
        {
          goto LABEL_257;
        }

        v106 = v8;
        v107 = v11;
        v108 = v11 + 32;
        v11 = *(v11 + 32 + 16 * v105);
        v8 = *(v108 + 16 * v10 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + v11), (*v6 + *(v108 + 16 * v10)), &v8[*v6], v67);
        if (v5)
        {
        }

        if (v8 < v11)
        {
          goto LABEL_235;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = specialized _ArrayBuffer._consumeAndCreateNew()(v107);
        }

        if (v105 >= *(v107 + 2))
        {
          goto LABEL_236;
        }

        v109 = &v107[16 * v105];
        *(v109 + 4) = v11;
        *(v109 + 5) = v8;
        v130 = v107;
        result = specialized Array.remove(at:)(v10);
        v11 = v130;
        v65 = *(v130 + 16);
        v8 = v106;
        v6 = a3;
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = v11 + 32 + 16 * v65;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_237;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_238;
      }

      v79 = (v11 + 16 * v65);
      v81 = *v79;
      v80 = v79[1];
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_240;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_243;
      }

      if (v83 >= v75)
      {
        v101 = (v11 + 32 + 16 * v10);
        v103 = *v101;
        v102 = v101[1];
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_247;
        }

        if (v70 < v104)
        {
          v10 = v65 - 2;
        }

        goto LABEL_211;
      }

      goto LABEL_190;
    }

LABEL_3:
    v7 = v6[1];
    v9 = 0xEC0000006D756D69;
    v10 = 0x6E694D65676E6172;
    if (v8 >= v7)
    {
      goto LABEL_221;
    }
  }

  v29 = (v12 + a4);
  if (__OFADD__(v12, a4))
  {
    goto LABEL_253;
  }

  if (v29 >= v28)
  {
    v29 = v6[1];
  }

  if (v29 < v12)
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  if (v8 == v29)
  {
    goto LABEL_170;
  }

  v118 = v11;
  v119 = v5;
  v30 = v12;
  v31 = *v6;
  v32 = &v8[*v6];
  v33 = v30 - v8;
  v124 = v29;
LABEL_90:
  v126 = v8;
  v34 = v8[v31];
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 <= 4u)
    {
      if (v34 == 3)
      {
        v39 = 0xD000000000000012;
      }

      else
      {
        v39 = 0x6E694D65676E6172;
      }

      if (v34 == 3)
      {
        v40 = 0x800000025149DB50;
      }

      else
      {
        v40 = 0xEC0000006D756D69;
      }

      if (v34 == 2)
      {
        v39 = 0xD000000000000012;
        v40 = 0x800000025149DB30;
      }

      v41 = 0xD000000000000010;
      if (v34)
      {
        v42 = 0x800000025149DB10;
      }

      else
      {
        v41 = 0x65676172657661;
        v42 = 0xE700000000000000;
      }

      if (v34 <= 1u)
      {
        v37 = v41;
      }

      else
      {
        v37 = v39;
      }

      if (v34 <= 1u)
      {
        v38 = v42;
      }

      else
      {
        v38 = v40;
      }
    }

    else if (v34 > 7u)
    {
      if (v34 == 8)
      {
        v37 = 0x56746E6572727563;
        v38 = 0xEC00000065756C61;
      }

      else if (v34 == 9)
      {
        v38 = 0xE500000000000000;
        v37 = 0x746E756F63;
      }

      else
      {
        v38 = 0xE300000000000000;
        v37 = 7173491;
      }
    }

    else if (v34 == 5)
    {
      v37 = 0xD000000000000015;
      v38 = 0x800000025149DB70;
    }

    else if (v34 == 6)
    {
      v37 = 0x78614D65676E6172;
      v38 = 0xEC0000006D756D69;
    }

    else
    {
      v37 = 0xD000000000000015;
      v38 = 0x800000025149DBA0;
    }

    v43 = *(v36 - 1);
    v44 = 0x746E756F63;
    if (v43 != 9)
    {
      v44 = 7173491;
    }

    v45 = 0xE500000000000000;
    if (v43 != 9)
    {
      v45 = 0xE300000000000000;
    }

    if (v43 == 8)
    {
      v44 = 0x56746E6572727563;
      v45 = 0xEC00000065756C61;
    }

    v46 = 0xD000000000000015;
    v47 = 0x78614D65676E6172;
    if (v43 != 6)
    {
      v47 = 0xD000000000000015;
    }

    v48 = 0x800000025149DBA0;
    if (v43 == 6)
    {
      v48 = 0xEC0000006D756D69;
    }

    if (v43 != 5)
    {
      v46 = v47;
    }

    v49 = 0x800000025149DB70;
    if (v43 != 5)
    {
      v49 = v48;
    }

    if (*(v36 - 1) <= 7u)
    {
      v44 = v46;
      v45 = v49;
    }

    if (v43 == 3)
    {
      v50 = 0xD000000000000012;
    }

    else
    {
      v50 = 0x6E694D65676E6172;
    }

    if (v43 == 3)
    {
      v51 = 0x800000025149DB50;
    }

    else
    {
      v51 = 0xEC0000006D756D69;
    }

    if (v43 == 2)
    {
      v50 = 0xD000000000000012;
      v51 = 0x800000025149DB30;
    }

    v52 = 0xD000000000000010;
    if (*(v36 - 1))
    {
      v53 = 0x800000025149DB10;
    }

    else
    {
      v52 = 0x65676172657661;
      v53 = 0xE700000000000000;
    }

    if (*(v36 - 1) <= 1u)
    {
      v50 = v52;
      v51 = v53;
    }

    if (*(v36 - 1) <= 4u)
    {
      v54 = v50;
    }

    else
    {
      v54 = v44;
    }

    if (*(v36 - 1) <= 4u)
    {
      v55 = v51;
    }

    else
    {
      v55 = v45;
    }

    if (v37 == v54 && v38 == v55)
    {

LABEL_88:
      v10 = 0x6E694D65676E6172;
LABEL_89:
      v8 = v126 + 1;
      ++v32;
      --v33;
      if (v126 + 1 == v124)
      {
        v8 = v124;
        v11 = v118;
        v5 = v119;
        v12 = v122;
        goto LABEL_170;
      }

      goto LABEL_90;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
      goto LABEL_88;
    }

    v10 = 0x6E694D65676E6172;
    if (!v31)
    {
      break;
    }

    v34 = *v36;
    *v36 = *(v36 - 1);
    *--v36 = v34;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, char *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v85 = result;
  v8 = a3;
  v9 = *(a3 + 1);
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_90:
    v12 = *v85;
    if (*v85)
    {
      v9 = v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_92;
    }

    goto LABEL_128;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = (v10 + 1);
    if (v10 + 1 < v9)
    {
      v13 = *v8;
      v89 = v12[*v8];
      v88 = *(v13 + v10);
      result = a4(&v89, &v88);
      if (v6)
      {
      }

      v14 = result;
      v15 = 0;
      do
      {
        if (!(v10 - v9 + 2 + v15))
        {
          v16 = v9 - 1;
          v8 = a3;
          if ((v14 & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }

        v87 = *(v13 + v10 + 2);
        v86 = *(v13 + v10 + 1);
        result = a4(&v87, &v86);
        ++v15;
        ++v13;
      }

      while (((v14 ^ result) & 1) == 0);
      v16 = v10 + v15;
      v9 = v10 + v15 + 1;
      v8 = a3;
      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_12:
      if (v9 < v10)
      {
        goto LABEL_122;
      }

      if (v10 <= v16)
      {
        v71 = v9 - 1;
        v72 = v10;
        do
        {
          if (v72 != v71)
          {
            v74 = *v8;
            if (!*v8)
            {
              goto LABEL_126;
            }

            v75 = *(v74 + v72);
            *(v74 + v72) = *(v74 + v71);
            *(v74 + v71) = v75;
          }
        }

        while (++v72 < v71--);
      }

LABEL_14:
      v12 = v9;
    }

    v17 = *(v8 + 1);
    if (v12 >= v17)
    {
      goto LABEL_131;
    }

    if (__OFSUB__(v12, v10))
    {
      goto LABEL_118;
    }

    if (&v12[-v10] >= a6)
    {
      goto LABEL_131;
    }

    v18 = (v10 + a6);
    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v18 >= v17)
    {
      v18 = *(v8 + 1);
    }

    if (v18 < v10)
    {
      goto LABEL_121;
    }

    if (v12 == v18)
    {
LABEL_131:
      if (v12 < v10)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v65 = v12;
      v66 = *v8;
      v8 = &v12[*v8];
      v9 = v10 - v12;
      v80 = v18;
      do
      {
        v84 = v65;
        v67 = v65[v66];
        v68 = v9;
        v69 = v8;
        do
        {
          v91 = v67;
          v90 = *(v8 - 1);
          result = a4(&v91, &v90);
          if (v6)
          {
          }

          if ((result & 1) == 0)
          {
            break;
          }

          if (!v66)
          {
            goto LABEL_124;
          }

          v67 = *v8;
          *v8 = *(v8 - 1);
          *--v8 = v67;
        }

        while (!__CFADD__(v68++, 1));
        v65 = v84 + 1;
        v8 = v69 + 1;
        --v9;
      }

      while (v84 + 1 != v80);
      v12 = v80;
      if (v80 < v10)
      {
        goto LABEL_117;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v20 = *(v11 + 2);
    v19 = *(v11 + 3);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v11);
      v11 = result;
    }

    v8 = a3;
    *(v11 + 2) = v21;
    v22 = &v11[16 * v20];
    *(v22 + 4) = v10;
    *(v22 + 5) = v12;
    v83 = v12;
    v23 = *v85;
    if (!*v85)
    {
      goto LABEL_127;
    }

    if (v20)
    {
      break;
    }

LABEL_3:
    v9 = *(a3 + 1);
    v10 = v83;
    if (v83 >= v9)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v24 = v21 - 1;
    if (v21 >= 4)
    {
      v29 = &v11[16 * v21 + 32];
      v30 = *(v29 - 64);
      v31 = *(v29 - 56);
      v35 = __OFSUB__(v31, v30);
      v32 = v31 - v30;
      if (v35)
      {
        goto LABEL_104;
      }

      v34 = *(v29 - 48);
      v33 = *(v29 - 40);
      v35 = __OFSUB__(v33, v34);
      v27 = v33 - v34;
      v28 = v35;
      if (v35)
      {
        goto LABEL_105;
      }

      v36 = &v11[16 * v21];
      v38 = *v36;
      v37 = *(v36 + 1);
      v35 = __OFSUB__(v37, v38);
      v39 = v37 - v38;
      if (v35)
      {
        goto LABEL_107;
      }

      v35 = __OFADD__(v27, v39);
      v40 = v27 + v39;
      if (v35)
      {
        goto LABEL_110;
      }

      if (v40 >= v32)
      {
        v58 = &v11[16 * v24 + 32];
        v60 = *v58;
        v59 = *(v58 + 1);
        v35 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v35)
        {
          goto LABEL_116;
        }

        if (v27 < v61)
        {
          v24 = v21 - 2;
        }

        goto LABEL_64;
      }

      goto LABEL_43;
    }

    if (v21 == 3)
    {
      v25 = *(v11 + 4);
      v26 = *(v11 + 5);
      v35 = __OFSUB__(v26, v25);
      v27 = v26 - v25;
      v28 = v35;
LABEL_43:
      if (v28)
      {
        goto LABEL_106;
      }

      v41 = &v11[16 * v21];
      v43 = *v41;
      v42 = *(v41 + 1);
      v44 = __OFSUB__(v42, v43);
      v45 = v42 - v43;
      v46 = v44;
      if (v44)
      {
        goto LABEL_109;
      }

      v47 = &v11[16 * v24 + 32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v35 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v35)
      {
        goto LABEL_112;
      }

      if (__OFADD__(v45, v50))
      {
        goto LABEL_113;
      }

      if (v45 + v50 >= v27)
      {
        if (v27 < v50)
        {
          v24 = v21 - 2;
        }

        goto LABEL_64;
      }

      goto LABEL_57;
    }

    v51 = &v11[16 * v21];
    v53 = *v51;
    v52 = *(v51 + 1);
    v35 = __OFSUB__(v52, v53);
    v45 = v52 - v53;
    v46 = v35;
LABEL_57:
    if (v46)
    {
      goto LABEL_108;
    }

    v54 = &v11[16 * v24];
    v56 = *(v54 + 4);
    v55 = *(v54 + 5);
    v35 = __OFSUB__(v55, v56);
    v57 = v55 - v56;
    if (v35)
    {
      goto LABEL_111;
    }

    if (v57 < v45)
    {
      goto LABEL_3;
    }

LABEL_64:
    v62 = v24 - 1;
    if (v24 - 1 >= v21)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_123;
    }

    v63 = *&v11[16 * v62 + 32];
    v9 = *&v11[16 * v24 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v63), (*a3 + *&v11[16 * v24 + 32]), (*a3 + v9), v23, a4);
    if (v6)
    {
    }

    if (v9 < v63)
    {
      goto LABEL_102;
    }

    v12 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    if (v62 >= *(v11 + 2))
    {
      goto LABEL_103;
    }

    v64 = &v11[16 * v62];
    *(v64 + 4) = v63;
    *(v64 + 5) = v9;
    v92 = v11;
    result = specialized Array.remove(at:)(v24);
    v11 = v92;
    v21 = *(v92 + 2);
    if (v21 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  v11 = result;
LABEL_92:
  v92 = v11;
  v76 = *(v11 + 2);
  if (v76 < 2)
  {
  }

  while (*v8)
  {
    v77 = *&v11[16 * v76];
    v78 = *&v11[16 * v76 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v8 + v77), (*v8 + *&v11[16 * v76 + 16]), (*v8 + v78), v12, a4);
    if (v9)
    {
    }

    if (v78 < v77)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    if (v76 - 2 >= *(v11 + 2))
    {
      goto LABEL_115;
    }

    v79 = &v11[16 * v76];
    *v79 = v77;
    *(v79 + 1) = v78;
    v92 = v11;
    result = specialized Array.remove(at:)(v76 - 1);
    v11 = v92;
    v76 = *(v92 + 2);
    if (v76 <= 1)
    {
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        v16 = v10;
        while (1)
        {
          v17 = v5 + 1;
          v18 = *--v16;
          v19 = *v15;
          v24 = v18;
          v23 = v19;
          if (specialized static HealthChartsData.DescriptionKey.< infix(_:_:)(&v24, &v23))
          {
            break;
          }

          if (v17 < v10 || v5 >= v10)
          {
            *v5 = *v16;
          }

          --v5;
          v10 = v16;
          if (v16 <= v4)
          {
            v10 = v16;
            goto LABEL_40;
          }
        }

        if (v17 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v22 = *v6;
        v21 = v11;
        if (specialized static HealthChartsData.DescriptionKey.< infix(_:_:)(&v22, &v21))
        {
          v12 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v14 = v4 + 1;
          v13 = v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v14)
            {
              goto LABEL_16;
            }
          }
        }

        *v7 = *v13;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(char *, char *))
{
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v13 = &v7[v12];
    if (v12 >= 1 && v9 > v10)
    {
      v18 = -v7;
      while (1)
      {
        v19 = a5;
        v29 = v9--;
        v20 = &v13[v18];
        --v8;
        v21 = v13;
        while (1)
        {
          v22 = *--v21;
          v33 = v22;
          v32 = *v9;
          v23 = v19(&v33, &v32);
          if (v5)
          {
            v26 = v29;
            if (v29 >= v7 && v29 < v13 && v29 == v7)
            {
              return 1;
            }

            v27 = v7;
            v25 = v20;
LABEL_54:
            memmove(v26, v27, v25);
            return 1;
          }

          v24 = v8 + 1;
          if (v23)
          {
            break;
          }

          if (v24 < v13 || v8 >= v13)
          {
            *v8 = *v21;
          }

          --v20;
          --v8;
          v13 = v21;
          if (v21 <= v7)
          {
            v13 = v21;
            v9 = v29;
            goto LABEL_49;
          }
        }

        if (v24 < v29 || v8 >= v29)
        {
          *v8 = *v9;
        }

        if (v13 > v7)
        {
          a5 = v19;
          v18 = -v7;
          if (v9 > v10)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_49:
    v25 = v13 - v7;
    if (v9 >= v7 && v9 < v13 && v9 == v7)
    {
      return 1;
    }

    v26 = v9;
LABEL_53:
    v27 = v7;
    goto LABEL_54;
  }

  if (a4 != __dst || a4 >= __src)
  {
    memmove(a4, __dst, v11);
  }

  v13 = &v7[v11];
  if (v11 < 1 || v9 >= v8)
  {
LABEL_19:
    v9 = v10;
    goto LABEL_49;
  }

  while (1)
  {
    v31 = *v9;
    v30 = *v7;
    v14 = a5(&v31, &v30);
    if (v5)
    {
      break;
    }

    if (v14)
    {
      v15 = v9 + 1;
      v16 = v9;
      if (v10 >= v9 && v10 < v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = v7 + 1;
      v16 = v7;
      v15 = v9;
      if (v10 < v7)
      {
        ++v7;
      }

      else
      {
        ++v7;
        if (v10 < v17)
        {
          goto LABEL_17;
        }
      }
    }

    *v10 = *v16;
LABEL_17:
    ++v10;
    if (v7 < v13)
    {
      v9 = v15;
      if (v15 < v8)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  v25 = v13 - v7;
  if (v10 < v7 || v10 >= v13 || v10 != v7)
  {
    v26 = v10;
    goto LABEL_53;
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

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
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>, &type metadata for HealthChartsData.SeriesDataShape, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<ClosedRange<Double>>(0);
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
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsUnit>, &type metadata for HealthChartsUnit, MEMORY[0x277D84560]);
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
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Double>, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    type metadata accessor for AnySeriesData?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnySeriesData>, type metadata accessor for AnySeriesData, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnySeriesData();
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  type metadata accessor for AnySeriesData?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<Date>>, type metadata accessor for ClosedRange<Date>, MEMORY[0x277D84560]);
  type metadata accessor for ClosedRange<Date>(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  type metadata accessor for ClosedRange<Date>(0);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(DateInterval, Double)>, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(DateInterval, ClosedRange<Double>)>, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Date, ClosedRange<Double>)>, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578]);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<Double, Double>>(0, a5, a6, a7, type metadata accessor for (DateInterval, Double));
  type metadata accessor for (DateInterval, Double)(0, a6, a7);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v17) == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  type metadata accessor for (DateInterval, Double)(0, a6, a7);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  type metadata accessor for _ContiguousArrayStorage<(Date, ClosedRange<Double>)>(0, a5, a6, a7);
  _s10Foundation4DateV_SNySdGtMaTm_0(0, a6, a7);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v17) == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  _s10Foundation4DateV_SNySdGtMaTm_0(0, a6, a7);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.DescriptionKey>, &type metadata for HealthChartsData.DescriptionKey);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.Aggregation>, &type metadata for HealthChartsData.Aggregation);
}

uint64_t specialized static HealthChartsData.DescriptionKey.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x65676172657661;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 4)
  {
    if (*a1 > 1u)
    {
      if (v3 == 2)
      {
        v5 = 0xD000000000000012;
        v6 = "recommendedMinimum";
      }

      else
      {
        if (v3 != 3)
        {
          v5 = 0x6E694D65676E6172;
          goto LABEL_42;
        }

        v5 = 0xD000000000000012;
        v6 = "recommendedMaximum";
      }

      v7 = (v6 - 32) | 0x8000000000000000;
      if (*a2 > 4u)
      {
        goto LABEL_44;
      }

      goto LABEL_24;
    }

    if (*a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x65676172657661;
    }

    if (v3)
    {
      v7 = 0x800000025149DB10;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (*a2 <= 4u)
    {
      goto LABEL_24;
    }
  }

  else if (*a1 > 7u)
  {
    if (v3 == 8)
    {
      v5 = 0x56746E6572727563;
      v16 = 1702194273;
      goto LABEL_43;
    }

    if (v3 == 9)
    {
      v7 = 0xE500000000000000;
      v5 = 0x746E756F63;
      if (*a2 > 4u)
      {
        goto LABEL_44;
      }

      goto LABEL_24;
    }

    v7 = 0xE300000000000000;
    v5 = 7173491;
    if (*a2 <= 4u)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v3 == 5)
    {
      v15 = "secondaryRangeMinimum";
    }

    else
    {
      if (v3 == 6)
      {
        v5 = 0x78614D65676E6172;
LABEL_42:
        v16 = 1836412265;
LABEL_43:
        v7 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (*a2 > 4u)
        {
          goto LABEL_44;
        }

LABEL_24:
        v8 = 0xE700000000000000;
        v9 = 0xD000000000000012;
        v10 = 0x800000025149DB30;
        v11 = 0x800000025149DB50;
        v12 = 0x6E694D65676E6172;
        if (v4 == 3)
        {
          v12 = 0xD000000000000012;
        }

        else
        {
          v11 = 0xEC0000006D756D69;
        }

        if (v4 != 2)
        {
          v9 = v12;
          v10 = v11;
        }

        if (*a2)
        {
          v2 = 0xD000000000000010;
          v8 = 0x800000025149DB10;
        }

        if (*a2 <= 1u)
        {
          v13 = v2;
        }

        else
        {
          v13 = v9;
        }

        if (*a2 <= 1u)
        {
          v14 = v8;
        }

        else
        {
          v14 = v10;
        }

        if (v5 != v13)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v15 = "secondaryRangeMaximum";
    }

    v7 = (v15 - 32) | 0x8000000000000000;
    v5 = 0xD000000000000015;
    if (*a2 <= 4u)
    {
      goto LABEL_24;
    }
  }

LABEL_44:
  v17 = 0x56746E6572727563;
  v18 = 0xEC00000065756C61;
  v19 = 0xE500000000000000;
  v20 = 0x746E756F63;
  if (v4 != 9)
  {
    v20 = 7173491;
    v19 = 0xE300000000000000;
  }

  if (v4 != 8)
  {
    v17 = v20;
    v18 = v19;
  }

  v21 = 0x800000025149DB70;
  v22 = 0xD000000000000015;
  v23 = 0x78614D65676E6172;
  v24 = 0x800000025149DBA0;
  if (v4 == 6)
  {
    v24 = 0xEC0000006D756D69;
  }

  else
  {
    v23 = 0xD000000000000015;
  }

  if (v4 != 5)
  {
    v22 = v23;
    v21 = v24;
  }

  if (*a2 <= 7u)
  {
    v25 = v22;
  }

  else
  {
    v25 = v17;
  }

  if (*a2 <= 7u)
  {
    v14 = v21;
  }

  else
  {
    v14 = v18;
  }

  if (v5 != v25)
  {
    goto LABEL_62;
  }

LABEL_60:
  if (v7 != v14)
  {
LABEL_62:
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_63;
  }

  v26 = 1;
LABEL_63:

  return v26 & 1;
}

uint64_t specialized static HealthChartsData.DescriptionKey.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x65676172657661;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 4)
  {
    if (*a1 > 1u)
    {
      if (v3 == 2)
      {
        v5 = 0xD000000000000012;
        v6 = "recommendedMinimum";
      }

      else
      {
        if (v3 != 3)
        {
          v5 = 0x6E694D65676E6172;
          goto LABEL_42;
        }

        v5 = 0xD000000000000012;
        v6 = "recommendedMaximum";
      }

      v7 = (v6 - 32) | 0x8000000000000000;
      if (*a2 > 4u)
      {
        goto LABEL_44;
      }

      goto LABEL_24;
    }

    if (*a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x65676172657661;
    }

    if (v3)
    {
      v7 = 0x800000025149DB10;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (*a2 <= 4u)
    {
      goto LABEL_24;
    }
  }

  else if (*a1 > 7u)
  {
    if (v3 == 8)
    {
      v5 = 0x56746E6572727563;
      v16 = 1702194273;
      goto LABEL_43;
    }

    if (v3 == 9)
    {
      v7 = 0xE500000000000000;
      v5 = 0x746E756F63;
      if (*a2 > 4u)
      {
        goto LABEL_44;
      }

      goto LABEL_24;
    }

    v7 = 0xE300000000000000;
    v5 = 7173491;
    if (*a2 <= 4u)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v3 == 5)
    {
      v15 = "secondaryRangeMinimum";
    }

    else
    {
      if (v3 == 6)
      {
        v5 = 0x78614D65676E6172;
LABEL_42:
        v16 = 1836412265;
LABEL_43:
        v7 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (*a2 > 4u)
        {
          goto LABEL_44;
        }

LABEL_24:
        v8 = 0xE700000000000000;
        v9 = 0xD000000000000012;
        v10 = 0x800000025149DB30;
        v11 = 0x800000025149DB50;
        v12 = 0x6E694D65676E6172;
        if (v4 == 3)
        {
          v12 = 0xD000000000000012;
        }

        else
        {
          v11 = 0xEC0000006D756D69;
        }

        if (v4 != 2)
        {
          v9 = v12;
          v10 = v11;
        }

        if (*a2)
        {
          v2 = 0xD000000000000010;
          v8 = 0x800000025149DB10;
        }

        if (*a2 <= 1u)
        {
          v13 = v2;
        }

        else
        {
          v13 = v9;
        }

        if (*a2 <= 1u)
        {
          v14 = v8;
        }

        else
        {
          v14 = v10;
        }

        if (v5 != v13)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v15 = "secondaryRangeMaximum";
    }

    v7 = (v15 - 32) | 0x8000000000000000;
    v5 = 0xD000000000000015;
    if (*a2 <= 4u)
    {
      goto LABEL_24;
    }
  }

LABEL_44:
  v17 = 0x56746E6572727563;
  v18 = 0xEC00000065756C61;
  v19 = 0xE500000000000000;
  v20 = 0x746E756F63;
  if (v4 != 9)
  {
    v20 = 7173491;
    v19 = 0xE300000000000000;
  }

  if (v4 != 8)
  {
    v17 = v20;
    v18 = v19;
  }

  v21 = 0x800000025149DB70;
  v22 = 0xD000000000000015;
  v23 = 0x78614D65676E6172;
  v24 = 0x800000025149DBA0;
  if (v4 == 6)
  {
    v24 = 0xEC0000006D756D69;
  }

  else
  {
    v23 = 0xD000000000000015;
  }

  if (v4 != 5)
  {
    v22 = v23;
    v21 = v24;
  }

  if (*a2 <= 7u)
  {
    v25 = v22;
  }

  else
  {
    v25 = v17;
  }

  if (*a2 <= 7u)
  {
    v14 = v21;
  }

  else
  {
    v14 = v18;
  }

  if (v5 != v25)
  {
    goto LABEL_62;
  }

LABEL_60:
  if (v7 != v14)
  {
LABEL_62:
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_63;
  }

  v26 = 0;
LABEL_63:

  return v26 & 1;
}

uint64_t specialized HealthChartsData.SeriesPoint.intervalDescription<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a1;
  v50 = a4;
  v48 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v8 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v11 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v14 - 8);
  type metadata accessor for FloatingPointFormatStyle<Double>(0);
  v16 = v15;
  v52 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v47 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  v57 = vdupq_n_s64(4uLL);
  type metadata accessor for ClosedRange<Int>(0, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  static NumberFormatStyleConfiguration.Precision.significantDigits<A>(_:)();
  MEMORY[0x253076E60](v13, v16);
  v25 = v13;
  v26 = v52;
  (*(v11 + 8))(v25, v51);
  v27 = *(v26 + 8);
  v27(v19, v16);
  static NumberFormatStyleConfiguration.Notation.scientific.getter();
  v51 = v24;
  MEMORY[0x253076E50](v10, v16);
  (*(v8 + 8))(v10, v48);
  v52 = v26 + 8;
  v27(v22, v16);
  v28 = *(a7 + 72);
  v29 = v50;
  v28(&v57, v50, a7);
  v30 = *v57.i64;
  v31 = *(a7 + 80);
  v31(&v56, v29, a7);
  if (v30 == v56)
  {
    v28(&v57, v29, a7);
    v56 = *v57.i64;
    v32 = FloatingPointFormatStyle.format(_:)();
  }

  else
  {
    v48 = v27;
    v28(&v54, v29, a7);
    v31(&v55, v29, a7);
    v56 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
    v33 = v56;
    v34 = v54;
    v53 = 0;
    v57.i64[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v57.i64[1] = v35;
    MEMORY[0x2530770D0](58, 0xE100000000000000);
    v53 = v34;
    v36 = FloatingPointFormatStyle.format(_:)();
    MEMORY[0x2530770D0](v36);

    v37 = v57;
    v56 = v33;
    v39 = *(*&v33 + 16);
    v38 = *(*&v33 + 24);
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v33 = v56;
    }

    *(*&v33 + 16) = v39 + 1;
    *(*&v33 + 16 * v39 + 32) = v37;
    v40 = v55;
    v53 = 1;
    v57.i64[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v57.i64[1] = v41;
    MEMORY[0x2530770D0](58, 0xE100000000000000);
    v53 = v40;
    v42 = FloatingPointFormatStyle.format(_:)();
    MEMORY[0x2530770D0](v42);

    v43 = v57;
    v56 = v33;
    v45 = *(*&v33 + 16);
    v44 = *(*&v33 + 24);
    if (v45 >= v44 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
      v33 = v56;
    }

    *(*&v33 + 16) = v45 + 1;
    *(*&v33 + 16 * v45 + 32) = v43;
    *v57.i64 = v33;
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(0, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v32 = BidirectionalCollection<>.joined(separator:)();

    v27 = v48;
  }

  v27(v51, v16);
  return v32;
}

{
  v49 = a4;
  v9 = type metadata accessor for Date();
  v45 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = type metadata accessor for TimeZone();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  static TimeZone.current.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v16 + 8))(v18, v15);
  [v19 setTimeZone_];

  v21 = MEMORY[0x253077090](0xD000000000000013, 0x800000025149DBF0);
  v46 = v19;
  [v19 setDateFormat_];

  v22 = *(a7 + 72);
  v23 = v49;
  v22(v49, a7);
  v24 = *(a7 + 80);
  v47 = a1;
  v48 = a7;
  v25 = v45;
  v44 = v24;
  v24(v23, a7);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  LOBYTE(v21) = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v25 + 8);
  v26(v12, v9);
  v26(v14, v9);
  if (v21)
  {
    v22(v49, v48);
    v27 = Date._bridgeToObjectiveC()().super.isa;
    v26(v14, v9);
    v28 = v46;
    v29 = [v46 stringFromDate_];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v30;
  }

  else
  {
    v32 = v49;
    v22(v49, v48);
    v33 = Date._bridgeToObjectiveC()().super.isa;
    v26(v14, v9);
    v34 = v46;
    v35 = [v46 stringFromDate_];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v50 = v36;
    v51 = v38;
    MEMORY[0x2530770D0](540945696, 0xE400000000000000);
    v44(v32, v48);
    v39 = Date._bridgeToObjectiveC()().super.isa;
    v26(v14, v9);
    v40 = [v34 stringFromDate_];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    MEMORY[0x2530770D0](v41, v43);

    return v50;
  }
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

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>()
{
  result = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>);
  }

  return result;
}

uint64_t outlined copy of HealthChartsData.SeriesDataShape(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >> 62 != 3)
  {
    v4 = a3;
  }

  return v5;
}

unint64_t type metadata accessor for AnySeriesData()
{
  result = lazy cache variable for type metadata for AnySeriesData;
  if (!lazy cache variable for type metadata for AnySeriesData)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AnySeriesData);
  }

  return result;
}

void outlined consume of HealthChartsData.SeriesDataShape(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >> 62 != 3)
  {
  }
}

uint64_t lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClosedRange<Int>(255, a2, MEMORY[0x277D839F8], MEMORY[0x277D83A20], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)()))
{
  result = *a1;
  if (!result)
  {
    a3(255, a2, type metadata accessor for HealthChartsData.SeriesData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}