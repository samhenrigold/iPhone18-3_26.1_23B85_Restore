uint64_t EnergyTrends.calculatedAvgIntervalNetImportPercentChange(startDate:)(void (*a1)(void, void, void))
{
  v3 = sub_20DF475C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DF474E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, 0, 1, v11, 1);
  v13 = v12;
  v14 = *v1;
  if (v14 > 3)
  {
    v15 = MEMORY[0x277CC9988];
  }

  else
  {
    v15 = qword_277E1A2E8[v14];
  }

  (*(v4 + 104))(v6, *v15, v3);
  type metadata accessor for EnergyTrends(0);
  sub_20DF47AD4();
  (*(v4 + 8))(v6, v3);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v10, 0, 1, v16, 1);
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  result = 0;
  if (v18 != 0.0)
  {
    v20 = rint((v13 / v18 + -1.0) * 100.0);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v20 > -9.22337204e18)
    {
      if (v20 < 9.22337204e18)
      {
        if (v20 <= -100)
        {
          return -100;
        }

        else
        {
          return v20;
        }
      }

LABEL_14:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

double EnergyTrends.dailyAverageChangeForInterval(starting:)(void (*a1)(void, void, void))
{
  v3 = sub_20DF475C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DF474E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, 0, 1, v11, 1);
  v13 = v12;
  v14 = *v1;
  if (v14 > 3)
  {
    v15 = MEMORY[0x277CC9988];
  }

  else
  {
    v15 = qword_277E1A2E8[v14];
  }

  (*(v4 + 104))(v6, *v15, v3);
  type metadata accessor for EnergyTrends(0);
  sub_20DF47AD4();
  (*(v4 + 8))(v6, v3);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v10, 0, 1, v16, 1);
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  return v13 - v18;
}

uint64_t EnergyTrends.containsUsageForDate(_:)(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v38 = sub_20DF474E4();
  v35 = *(v38 - 8);
  v3 = MEMORY[0x28223BE20](v38);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = type metadata accessor for EnergySite.EnergyUsage(0);
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20DF47604();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20DF47574();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20DF475D4();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, *MEMORY[0x277CC9830], v14);
  sub_20DF47584();
  (*(v15 + 8))(v17, v14);
  v21 = type metadata accessor for EnergyTrends(0);
  (*(v11 + 16))(v13, v2 + *(v21 + 24), v10);
  result = sub_20DF475B4();
  v23 = 0;
  v24 = *(v2 + 8);
  v40 = *(v24 + 16);
  v25 = (v35 + 8);
  while (1)
  {
    v26 = v23;
    if (v40 == v23)
    {
LABEL_5:
      v32 = v40 != v26;
      (*(v33 + 8))(v20, v34);
      return v32;
    }

    if (v23 >= *(v24 + 16))
    {
      break;
    }

    sub_20DEEF8EC(v24 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23++, v9, type metadata accessor for EnergySite.EnergyUsage);
    sub_20DF47594();
    v27 = v37;
    sub_20DF47594();
    v28 = sub_20DF474A4();
    v29 = *v25;
    v30 = v27;
    v31 = v38;
    (*v25)(v30, v38);
    v29(v6, v31);
    result = sub_20DEEF954(v9, type metadata accessor for EnergySite.EnergyUsage);
    if (v28)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

Swift::tuple_totalImports_Double_totalDays_Int __swiftcall EnergyTrends.totalImportsByPricingPeriod(_:for:)(Swift::Int _, Swift::OpaquePointer a2)
{
  v4 = type metadata accessor for EnergySite.EnergyUsage(0);
  v5 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2._rawValue + 2);
  if (v9)
  {
    v10 = *(v5 + 40);
    v11 = *(v5 + 32);
    v12 = a2._rawValue + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    v14 = 0.0;
    do
    {
      sub_20DEEF8EC(v12, v8, type metadata accessor for EnergySite.EnergyUsage);
      v15 = *&v8[v10];
      v16 = 0.0;
      if (*(v15 + 16))
      {
        v17 = sub_20DEEFA18(_);
        v16 = 0.0;
        if (v18)
        {
          v16 = *(*(v15 + 56) + 8 * v17);
        }
      }

      v14 = v14 + v16 * *&v8[v11];
      sub_20DEEF954(v8, type metadata accessor for EnergySite.EnergyUsage);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  else
  {
    v14 = 0.0;
  }

  v19 = EnergyTrends.totalDaysForUsages(_:)(a2);
  v20 = v14;
  result.totalImports = v20;
  result.totalDays = v19;
  return result;
}

Swift::tuple_totalExports_Double_totalDays_Int __swiftcall EnergyTrends.totalExportsByPricingPeriod(_:for:)(Swift::Int _, Swift::OpaquePointer a2)
{
  v4 = type metadata accessor for EnergySite.EnergyUsage(0);
  v5 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2._rawValue + 2);
  if (v9)
  {
    v10 = *(v5 + 44);
    v11 = *(v5 + 32);
    v12 = a2._rawValue + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    v14 = 0.0;
    do
    {
      sub_20DEEF8EC(v12, v8, type metadata accessor for EnergySite.EnergyUsage);
      v15 = *&v8[v10];
      v16 = 0.0;
      if (*(v15 + 16))
      {
        v17 = sub_20DEEFA18(_);
        v16 = 0.0;
        if (v18)
        {
          v16 = *(*(v15 + 56) + 8 * v17);
        }
      }

      v14 = v14 + v16 * *&v8[v11];
      sub_20DEEF954(v8, type metadata accessor for EnergySite.EnergyUsage);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  else
  {
    v14 = 0.0;
  }

  v19 = EnergyTrends.totalDaysForUsages(_:)(a2);
  v20 = v14;
  result.totalExports = v20;
  result.totalDays = v19;
  return result;
}

Swift::tuple_totalImports_Double_totalDays_Int __swiftcall EnergyTrends.totalImportsFor(usages:)(Swift::OpaquePointer usages)
{
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  v3 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(usages._rawValue + 2);
  if (v7)
  {
    v8 = *(v3 + 24);
    v9 = *(v3 + 32);
    v10 = usages._rawValue + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    v12 = 0.0;
    do
    {
      sub_20DEEF8EC(v10, v6, type metadata accessor for EnergySite.EnergyUsage);
      v13 = *&v6[v8];
      v14 = *&v6[v9];
      sub_20DEEF954(v6, type metadata accessor for EnergySite.EnergyUsage);
      v12 = v12 + v13 * v14;
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  else
  {
    v12 = 0.0;
  }

  v15 = EnergyTrends.totalDaysForUsages(_:)(usages);
  v16 = v12;
  result.totalImports = v16;
  result.totalDays = v15;
  return result;
}

Swift::tuple_totalExports_Double_totalDays_Int __swiftcall EnergyTrends.totalExportsFor(usages:)(Swift::OpaquePointer usages)
{
  v2 = v1;
  v38 = type metadata accessor for EnergySite.EnergyUsage(0);
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnergyTrends(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20DF47BD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811225A8[0] != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281122F00);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  sub_20DEEF8EC(v2, v9, type metadata accessor for EnergyTrends);

  v15 = sub_20DF47BB4();
  v40 = v10;
  v16 = v15;
  v17 = sub_20DF48004();
  v18 = os_log_type_enabled(v16, v17);
  v41 = v2;
  v39 = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v19 = 136315650;
    *(v19 + 4) = sub_20DED38E8(0xD000000000000018, 0x800000020DF4F3D0, &v42);
    *(v19 + 12) = 2080;
    v20 = &v9[*(v7 + 28)];
    v22 = *v20;
    v21 = v20[1];

    sub_20DEEF954(v9, type metadata accessor for EnergyTrends);
    v23 = sub_20DED38E8(v22, v21, &v42);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = *(usages._rawValue + 2);

    _os_log_impl(&dword_20DEAF000, v16, v17, "%s (%s) found %ld usages in date range", v19, 0x20u);
    v24 = v37;
    swift_arrayDestroy();
    MEMORY[0x20F329700](v24, -1, -1);
    MEMORY[0x20F329700](v19, -1, -1);
  }

  else
  {

    sub_20DEEF954(v9, type metadata accessor for EnergyTrends);
  }

  (*(v11 + 8))(v13, v40);
  v25 = *(usages._rawValue + 2);
  if (v25)
  {
    v26 = *(v38 + 28);
    v27 = *(v38 + 32);
    v28 = usages._rawValue + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v29 = *(v39 + 72);
    v30 = 0.0;
    do
    {
      sub_20DEEF8EC(v28, v6, type metadata accessor for EnergySite.EnergyUsage);
      v31 = *&v6[v26];
      v32 = *&v6[v27];
      sub_20DEEF954(v6, type metadata accessor for EnergySite.EnergyUsage);
      v30 = v30 + v31 * v32;
      v28 += v29;
      --v25;
    }

    while (v25);
  }

  else
  {
    v30 = 0.0;
  }

  v33 = EnergyTrends.totalDaysForUsages(_:)(usages);
  v34 = v30;
  result.totalExports = v34;
  result.totalDays = v33;
  return result;
}

double EnergyTrends.totalImportsForInterval(starting:)(void (*a1)(void, void, void))
{
  v3 = type metadata accessor for EnergySite.EnergyUsage(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-v8];
  v25 = *v1;
  v10 = type metadata accessor for EnergyTrends(0);
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v25, v1 + *(v10 + 32), v9);
  v11 = *(v1 + 8);
  v24 = v9;

  v12 = sub_20DEEA4EC(sub_20DEF1600, v23, v11);
  v13._rawValue = v12;
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *(v3 + 24);
    v16 = *(v3 + 32);
    v17 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v4 + 72);
    v19 = 0.0;
    do
    {
      sub_20DEEF8EC(v17, v6, type metadata accessor for EnergySite.EnergyUsage);
      v20 = *&v6[v15];
      v21 = *&v6[v16];
      sub_20DEEF954(v6, type metadata accessor for EnergySite.EnergyUsage);
      v19 = v19 + v20 * v21;
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {
    v19 = 0.0;
  }

  EnergyTrends.totalDaysForUsages(_:)(v13);

  sub_20DED8730(v9, &qword_27C84C980, &unk_20DF49A50);
  return v19;
}

double EnergyTrends.calculateDeltaNetExports(startDate:pricingIndex:gridQualityIndex:)(void (*a1)(void, void, void), Swift::Int a2, int a3, uint64_t a4, int a5)
{
  v10 = sub_20DF475C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20DF474E4();
  v14 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a3;
  v28 = a5;
  EnergyTrends.dailyAverageNetExportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, a2, a3 & 1, v17, a5 & 1);
  v19 = v18;
  v20 = *v5;
  if (v20 > 3)
  {
    v21 = MEMORY[0x277CC9988];
  }

  else
  {
    v21 = qword_277E1A2E8[v20];
  }

  (*(v11 + 104))(v13, *v21, v10);
  type metadata accessor for EnergyTrends(0);
  sub_20DF47AD4();
  (*(v11 + 8))(v13, v10);
  EnergyTrends.dailyAverageNetExportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v16, a2, v27 & 1, v22, v28 & 1);
  v24 = v23;
  (*(v14 + 8))(v16, v26);
  return v19 - v24;
}

uint64_t EnergyTrends.dailyAverageNetExportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(void (*a1)(void, void, void), Swift::Int a2, char a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for EnergySite.EnergyUsage(0);
  v40 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - v17;
  v43 = *v5;
  v19 = type metadata accessor for EnergyTrends(0);
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v43, v5 + *(v19 + 32), v18);
  v20 = *(v5 + 8);
  v42 = v18;

  v21 = sub_20DEEA4EC(sub_20DEF1600, v41, v20);
  v22._rawValue = v21;
  if (a3)
  {
    EnergyTrends.totalExportsFor(usages:)(v21);
    v23 = *(v22._rawValue + 2);
    if (a5)
    {
      if (v23)
      {
        v24 = *(v10 + 24);
        v25 = *(v10 + 32);
        v26 = v22._rawValue + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v27 = *(v40 + 72);
        v28 = 0.0;
        do
        {
          sub_20DEEF8EC(v26, v13, type metadata accessor for EnergySite.EnergyUsage);
          v29 = *&v13[v24];
          v30 = *&v13[v25];
          sub_20DEEF954(v13, type metadata accessor for EnergySite.EnergyUsage);
          v28 = v28 + v29 * v30;
          v26 += v27;
          --v23;
        }

        while (v23);
      }
    }

    else if (v23)
    {
      v31 = *(v10 + 24);
      v32 = *(v10 + 32);
      v33 = v22._rawValue + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v34 = *(v40 + 72);
      v35 = 0.0;
      do
      {
        sub_20DEEF8EC(v33, v15, type metadata accessor for EnergySite.EnergyUsage);
        v36 = *&v15[v31];
        v37 = *&v15[v32];
        sub_20DEEF954(v15, type metadata accessor for EnergySite.EnergyUsage);
        v35 = v35 + v36 * v37;
        v33 += v34;
        --v23;
      }

      while (v23);
    }

    EnergyTrends.totalDaysForUsages(_:)(v22);
  }

  else
  {
    EnergyTrends.totalExportsByPricingPeriod(_:for:)(a2, v21);
    EnergyTrends.totalImportsByPricingPeriod(_:for:)(a2, v22);
  }

  return sub_20DED8730(v18, &qword_27C84C980, &unk_20DF49A50);
}

double EnergyTrends.previousDailyAverageExportsForInterval(starting:pricingIndex:gridQualityIndex:)(uint64_t a1, Swift::Int a2, char a3, uint64_t a4, int a5)
{
  v22 = a5;
  v23 = a2;
  v7 = sub_20DF475C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_20DF474E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v5;
  if (v15 > 3)
  {
    v16 = MEMORY[0x277CC9988];
  }

  else
  {
    v16 = qword_277E1A2E8[v15];
  }

  (*(v8 + 104))(v10, *v16, v7);
  type metadata accessor for EnergyTrends(0);
  sub_20DF47AD4();
  (*(v8 + 8))(v10, v7);
  EnergyTrends.dailyAverageNetExportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v14, v23, a3 & 1, v17, v22 & 1);
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  return v19;
}

double EnergyTrends.averageSurplusOrConsumption(startDate:pricingPeriod:gridQuality:)(void (*a1)(void, void, void), Swift::Int a2, char a3, uint64_t a4, char a5)
{
  v50 = type metadata accessor for EnergySite.EnergyUsage(0);
  v10 = *(v50 - 8);
  v11 = MEMORY[0x28223BE20](v50);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  MEMORY[0x28223BE20](v16 - 8);
  v52 = &v49 - v17;
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, a2, a3 & 1, v18, a5 & 1);
  v20 = v19;
  v21 = *v5;
  v51 = v10;
  if (!v21)
  {

    goto LABEL_4;
  }

  v22 = sub_20DF483D4();

  if (v22)
  {
LABEL_4:
    v53 = *v5;
    v24 = type metadata accessor for EnergyTrends(0);
    v25 = v52;
    v26 = static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v53, &v5[*(v24 + 32)], v52);
    v27 = *(v5 + 1);
    MEMORY[0x28223BE20](v26);
    *(&v49 - 2) = v25;

    v28 = sub_20DEEA4EC(sub_20DEF1600, (&v49 - 4), v27);
    v29._rawValue = v28;
    if (a3)
    {
      if ((a5 & 1) == 0)
      {
        if (v20 >= 0.0)
        {
          v30 = *(v28 + 16);
          if (v30)
          {
            v31 = *(v50 + 24);
            v32 = *(v50 + 32);
            v33 = v28 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
            v34 = *(v51 + 72);
            v35 = 0.0;
            do
            {
              sub_20DEEF8EC(v33, v15, type metadata accessor for EnergySite.EnergyUsage);
              v36 = *&v15[v31];
              v37 = *&v15[v32];
              sub_20DEEF954(v15, type metadata accessor for EnergySite.EnergyUsage);
              v35 = v35 + v36 * v37;
              v33 += v34;
              --v30;
            }

            while (v30);
            goto LABEL_28;
          }

LABEL_27:
          v35 = 0.0;
LABEL_28:
          EnergyTrends.totalDaysForUsages(_:)(v29);
LABEL_31:

          sub_20DED8730(v52, &qword_27C84C980, &unk_20DF49A50);
          return v35;
        }

LABEL_19:
        totalDays = EnergyTrends.totalExportsFor(usages:)(v28).totalDays;
LABEL_30:
        v35 = *&totalDays;
        goto LABEL_31;
      }
    }

    else if (a5)
    {
      if (v20 >= 0.0)
      {
        totalDays = EnergyTrends.totalImportsByPricingPeriod(_:for:)(a2, v28).totalDays;
      }

      else
      {
        totalDays = EnergyTrends.totalExportsByPricingPeriod(_:for:)(a2, v28).totalDays;
      }

      goto LABEL_30;
    }

    if (v20 >= 0.0)
    {
      v42 = *(v28 + 16);
      if (v42)
      {
        v43 = *(v50 + 24);
        v44 = *(v50 + 32);
        v45 = v28 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
        v46 = *(v51 + 72);
        v35 = 0.0;
        do
        {
          sub_20DEEF8EC(v45, v13, type metadata accessor for EnergySite.EnergyUsage);
          v47 = *&v13[v43];
          v48 = *&v13[v44];
          sub_20DEEF954(v13, type metadata accessor for EnergySite.EnergyUsage);
          v35 = v35 + v47 * v48;
          v45 += v46;
          --v42;
        }

        while (v42);
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v38 = a3 & 1;
  v39 = a5 & 1;
  if (v20 >= 0.0)
  {

    EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, a2, v38, v23, v39);
  }

  else
  {

    EnergyTrends.dailyAverageNetExportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, a2, v38, v23, v39);
  }

  return result;
}

char *static EnergyTrends.requestSnapshotDates(intervalType:timeZone:)(unsigned __int8 *a1, void (**a2)(char *, uint64_t))
{
  v80 = a2;
  v68 = sub_20DF475C4();
  v75 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_20DF474E4();
  v4 = *(v73 - 8);
  v5 = MEMORY[0x28223BE20](v73);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v60 = &v57 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v57 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v57 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v78 = &v57 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v57 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v76 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v79 = &v57 - v22;
  v23 = sub_20DF47604();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20DF47574();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_20DF475D4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a1;
  if (v65 < 2)
  {
    v33 = -1;
  }

  else
  {
    v33 = -5;
  }

  (*(v28 + 104))(v30, *MEMORY[0x277CC9830], v27);
  sub_20DF47584();
  (*(v28 + 8))(v30, v27);
  (*(v24 + 16))(v26, v80, v23);
  sub_20DF475B4();
  v64 = *MEMORY[0x277CC9988];
  v62 = (v75 + 1);
  v63 = (v75 + 13);
  v80 = (v4 + 8);
  v66 = v4;
  v74 = v4 + 32;
  v75 = (v4 + 16);
  v34 = v73;
  v35 = MEMORY[0x277D84F90];
  v59 = v19;
  v70 = v32;
  do
  {
    v36 = v76;
    sub_20DF474B4();
    v38 = v67;
    v37 = v68;
    (*v63)(v67, v64, v68);
    sub_20DF47AD4();
    (*v62)(v38, v37);
    v39 = *v80;
    (*v80)(v36, v34);
    sub_20DF47A74();
    if (v65 == 3)
    {

LABEL_10:
      sub_20DF47594();
      v41 = v78;
      sub_20DF47A94();
      v42 = *v75;
      (*v75)(v71, v41, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_20DEB84B4(0, *(v35 + 2) + 1, 1, v35);
      }

      v44 = *(v35 + 2);
      v43 = *(v35 + 3);
      if (v44 >= v43 >> 1)
      {
        v35 = sub_20DEB84B4((v43 > 1), v44 + 1, 1, v35);
      }

      *(v35 + 2) = v44 + 1;
      v69 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v45 = *(v66 + 72);
      v46 = &v35[v69 + v45 * v44];
      v47 = *(v66 + 32);
      v48 = v73;
      v47(v46, v71, v73);
      v49 = v76;
      sub_20DF47A54();
      v50 = v78;
      v39(v78, v48);
      v47(v50, v49, v48);
      v42(v72, v50, v48);
      v52 = *(v35 + 2);
      v51 = *(v35 + 3);
      if (v52 >= v51 >> 1)
      {
        v35 = sub_20DEB84B4((v51 > 1), v52 + 1, 1, v35);
      }

      v34 = v73;
      v39(v78, v73);
      v39(v77, v34);
      v19 = v59;
      v39(v59, v34);
      v39(v79, v34);
      *(v35 + 2) = v52 + 1;
      v47(&v35[v69 + v52 * v45], v72, v34);
      v32 = v70;
      goto LABEL_6;
    }

    v40 = sub_20DF483D4();

    if (v40)
    {
      goto LABEL_10;
    }

    v53 = v60;
    sub_20DF47594();
    (*v75)(v61, v53, v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_20DEB84B4(0, *(v35 + 2) + 1, 1, v35);
    }

    v55 = *(v35 + 2);
    v54 = *(v35 + 3);
    if (v55 >= v54 >> 1)
    {
      v35 = sub_20DEB84B4((v54 > 1), v55 + 1, 1, v35);
    }

    v39(v60, v34);
    v39(v19, v34);
    v39(v79, v34);
    *(v35 + 2) = v55 + 1;
    (*(v66 + 32))(&v35[((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v55], v61, v34);
LABEL_6:
    ++v33;
  }

  while (v33 != 1);
  (*(v57 + 8))(v32, v58);
  return v35;
}

unint64_t static EnergyTrends.allocateSeats<A>(for:seats:)(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v8 = sub_20DF47BD4();
  v62 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v58 = *(TupleTypeMetadata2 - 8);
  v59 = TupleTypeMetadata2;
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v61 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v57 = &v48 - v16;
  v64 = 0;
  v65[0] = a1;
  sub_20DF47C54();

  swift_getWitnessTable();
  v17 = 0;
  sub_20DF47DB4();

  v19 = v63[0];
  if (v63[0] <= 0.0)
  {
    v17 = sub_20DF47C64();
    if (qword_2811225A8[0] == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = a2 / v63[0];
    MEMORY[0x28223BE20](v18);
    *(&v48 - 2) = v19;
    v10 = sub_20DF47C64();
    v64 = v10;
    v65[0] = v10;
    v63[4] = 0.0;
    v62 = a3;
    sub_20DF47C54();

    swift_getWitnessTable();
    sub_20DF47DB4();

    if (!__OFSUB__(a2, *&v63[0]))
    {
      if (a2 - *&v63[0] < 1)
      {
        return v65[0];
      }

      MEMORY[0x28223BE20](v20);
      *(&v48 - 2) = v19;
      v8 = v62;
      *&v63[0] = sub_20DF47C64();
      MEMORY[0x28223BE20](*&v63[0]);
      *(&v48 - 2) = v8;
      *(&v48 - 1) = a4;
      v55 = a4;
      sub_20DF47C74();
      swift_getWitnessTable();
      v21 = sub_20DF47DC4();

      v64 = v21;
      v22 = v59;
      sub_20DF47EB4();
      swift_getWitnessTable();
      sub_20DF47FC4();
      v10 = *&v63[1];
      v23 = v63[2];
      v17 = *&v63[3];
      swift_unknownObjectRetain();
      v24 = sub_20DF48084();
      swift_unknownObjectRelease();
      v25 = sub_20DF480A4();
      v56 = v24;
      if (v24 == v25)
      {
LABEL_5:
        swift_unknownObjectRelease();
        return v65[0];
      }

      v53 = *(v22 + 48);
      v54 = v17 >> 1;
      v52 = v58 + 16;
      v51 = v8 - 8;
      v49 = (v58 + 8);
      v38 = v56;
      v50 = v17;
      while (1)
      {
        sub_20DF48094();
        if (v56 < *&v23 || v54 <= v38)
        {
          break;
        }

        v40 = v57;
        v41 = v10;
        v42 = *(v58 + 16);
        v42(v57, v10 + *(v58 + 72) * v38, v22);
        v19 = *&v40[v53];
        v43 = *(v22 + 48);
        v8 = *(v62 - 8);
        v44 = v60;
        (*(v8 + 32))(v60, v40, v62);
        *&v44[v43] = v19;
        v17 = v61;
        v10 = v62;
        v45 = v44;
        v22 = v59;
        v42(v61, v45, v59);
        sub_20DF47C74();
        v47 = sub_20DF47C84();
        if ((*(v46 + 8) & 1) == 0)
        {
          if (__OFADD__(*v46, 1))
          {
            goto LABEL_20;
          }

          ++*v46;
        }

        v47(v63, 0);
        ++v38;
        (*v49)(v60, v22);
        v39 = *(v8 + 8);
        v8 += 8;
        v39(v61, v10);
        v10 = v41;
        v17 = v50;
        if (v38 == sub_20DF480A4())
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  swift_once();
LABEL_8:
  v26 = __swift_project_value_buffer(v8, qword_281122F00);
  swift_beginAccess();
  v27 = v62;
  (*(v62 + 16))(v10, v26, v8);

  v28 = sub_20DF47BB4();
  v29 = sub_20DF48004();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v10;
    v32 = swift_slowAlloc();
    v65[0] = v32;
    *v30 = 136315650;
    *(v30 + 4) = sub_20DED38E8(0xD000000000000019, 0x800000020DF4F400, v65);
    *(v30 + 12) = 2048;
    *(v30 + 14) = v19;
    *(v30 + 22) = 2080;
    v33 = sub_20DF47C44();
    v35 = v34;

    v36 = sub_20DED38E8(v33, v35, v65);

    *(v30 + 24) = v36;
    _os_log_impl(&dword_20DEAF000, v28, v29, "%s total %f !!! returning %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v32, -1, -1);
    MEMORY[0x20F329700](v30, -1, -1);

    (*(v27 + 8))(v31, v8);
  }

  else
  {

    (*(v27 + 8))(v10, v8);
  }

  return v17;
}

double sub_20DEEE700@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

void *sub_20DEEE714@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

double *sub_20DEEE730@<X0>(double *result@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v3 = *result * a3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    *a2 = v3 - v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall EnergyTrends.importPricingPeriodsFor(usages:)(Swift::OpaquePointer usages)
{
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  v3 = MEMORY[0x28223BE20](v2);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(usages._rawValue + 2);
  v6 = 0;
  if (!v39)
  {
    v9 = MEMORY[0x277D84F98];
LABEL_26:
    if (v9[2])
    {
      sub_20DEF13FC(v6, 0);
    }

    else
    {

      sub_20DEF13FC(v6, 0);
      v9 = 0;
    }

    v35 = v9;
    goto LABEL_34;
  }

  v7 = 0;
  v8 = *(v3 + 40);
  v37 = usages._rawValue + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v38 = v8;
  v36 = *(v4 + 72);
  v9 = MEMORY[0x277D84F98];
LABEL_4:
  v10 = v40;
  sub_20DEEF8EC(&v37[v36 * v7++], v40, type metadata accessor for EnergySite.EnergyUsage);
  v11 = *(v10 + v38);

  sub_20DEEF954(v10, type metadata accessor for EnergySite.EnergyUsage);
  v12 = 0;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  for (i = v6; ; i = sub_20DEB677C)
  {
    if (!v15)
    {
      while (1)
      {
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v18 >= v16)
        {
          break;
        }

        v15 = *(v11 + 64 + 8 * v18);
        ++v12;
        if (v15)
        {
          v12 = v18;
          goto LABEL_14;
        }
      }

      v6 = i;

      if (v7 == v39)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_14:
    v19 = (v12 << 9) | (8 * __clz(__rbit64(v15)));
    v20 = *(*(v11 + 48) + v19);
    v21 = *(*(v11 + 56) + v19);
    sub_20DEF13FC(i, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v9;
    v23 = sub_20DEEFA18(v20);
    v25 = v9[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v9[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v23;
        sub_20DEF0B48();
        v23 = v33;
        v9 = v41;
        if (v29)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_20DEEFEF0(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_20DEEFA18(v20);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_33;
      }
    }

    v9 = v41;
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_20:
    v9[(v23 >> 6) + 8] |= 1 << v23;
    *(v9[6] + 8 * v23) = v20;
    *(v9[7] + 8 * v23) = 0;
    v31 = v9[2];
    v27 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v27)
    {
      goto LABEL_32;
    }

    v9[2] = v32;
LABEL_8:
    v15 &= v15 - 1;
    *(v9[7] + 8 * v23) = v21 + *(v9[7] + 8 * v23);
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  v35 = sub_20DF48424();
  __break(1u);
LABEL_34:
  result.value._rawValue = v35;
  result.is_nil = v34;
  return result;
}

uint64_t sub_20DEEEB3C(void (*a1)(void, void, void), uint64_t (*a2)(char *), uint64_t (*a3)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14[-v8];
  v16 = *v3;
  v10 = type metadata accessor for EnergyTrends(0);
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v16, v3 + *(v10 + 32), v9);
  v11 = *(v3 + 8);
  v15 = v9;

  sub_20DEEA4EC(a2, v14, v11);
  v12 = a3();

  sub_20DED8730(v9, &qword_27C84C980, &unk_20DF49A50);
  return v12;
}

Swift::OpaquePointer_optional __swiftcall EnergyTrends.totalPricingPeriodsFor(usages:)(Swift::OpaquePointer usages)
{
  v33 = *(usages._rawValue + 2);
  if (v33)
  {
    v3 = type metadata accessor for EnergySite.EnergyUsage(0);
    v4 = 0;
    v31 = usages._rawValue + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
    v32 = v3;
    v30 = *(*(v3 - 8) + 72);
    v5 = MEMORY[0x277D84F98];
LABEL_4:
    v6 = &v31[v30 * v4++];
    v7 = *&v6[*(v32 + 48)];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v5;
    v9 = 1 << *(v7 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;

    for (i = 0; ; i = v14)
    {
      if (!v11)
      {
        while (1)
        {
          v14 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          if (v14 >= v12)
          {
            break;
          }

          v11 = *(v7 + 64 + 8 * v14);
          ++i;
          if (v11)
          {
            goto LABEL_15;
          }
        }

        if (v4 == v33)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      v14 = i;
LABEL_15:
      v15 = (v14 << 9) | (8 * __clz(__rbit64(v11)));
      v16 = *(*(v7 + 48) + v15);
      v17 = *(*(v7 + 56) + v15);
      v18 = sub_20DEEFA18(v16);
      v20 = v5[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (v5[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = v18;
          sub_20DEF0B48();
          v18 = v28;
        }
      }

      else
      {
        sub_20DEEFEF0(v23, isUniquelyReferenced_nonNull_native & 1);
        v18 = sub_20DEEFA18(v16);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_31;
        }
      }

      v11 &= v11 - 1;
      v5 = v34;
      if (v24)
      {
        *(v34[7] + 8 * v18) = v17 + *(v34[7] + 8 * v18);
      }

      else
      {
        v34[(v18 >> 6) + 8] |= 1 << v18;
        *(v34[6] + 8 * v18) = v16;
        *(v34[7] + 8 * v18) = v17;
        v26 = v34[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_30;
        }

        v34[2] = v27;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v29 = sub_20DF48424();
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
LABEL_25:
    if (!v5[2])
    {

      v5 = 0;
    }

    v29 = v5;
  }

  result.value._rawValue = v29;
  result.is_nil = v1;
  return result;
}

Swift::OpaquePointer_optional __swiftcall EnergyTrends.exportPricingPeriodsFor(usages:)(Swift::OpaquePointer usages)
{
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  v3 = MEMORY[0x28223BE20](v2);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(usages._rawValue + 2);
  v6 = 0;
  if (!v39)
  {
    v9 = MEMORY[0x277D84F98];
LABEL_26:
    if (v9[2])
    {
      sub_20DEF13FC(v6, 0);
    }

    else
    {

      sub_20DEF13FC(v6, 0);
      v9 = 0;
    }

    v35 = v9;
    goto LABEL_34;
  }

  v7 = 0;
  v8 = *(v3 + 44);
  v37 = usages._rawValue + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v38 = v8;
  v36 = *(v4 + 72);
  v9 = MEMORY[0x277D84F98];
LABEL_4:
  v10 = v40;
  sub_20DEEF8EC(&v37[v36 * v7++], v40, type metadata accessor for EnergySite.EnergyUsage);
  v11 = *(v10 + v38);

  sub_20DEEF954(v10, type metadata accessor for EnergySite.EnergyUsage);
  v12 = 0;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  for (i = v6; ; i = sub_20DEB677C)
  {
    if (!v15)
    {
      while (1)
      {
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v18 >= v16)
        {
          break;
        }

        v15 = *(v11 + 64 + 8 * v18);
        ++v12;
        if (v15)
        {
          v12 = v18;
          goto LABEL_14;
        }
      }

      v6 = i;

      if (v7 == v39)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_14:
    v19 = (v12 << 9) | (8 * __clz(__rbit64(v15)));
    v20 = *(*(v11 + 48) + v19);
    v21 = *(*(v11 + 56) + v19);
    sub_20DEF13FC(i, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v9;
    v23 = sub_20DEEFA18(v20);
    v25 = v9[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v9[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v23;
        sub_20DEF0B48();
        v23 = v33;
        v9 = v41;
        if (v29)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_20DEEFEF0(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_20DEEFA18(v20);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_33;
      }
    }

    v9 = v41;
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_20:
    v9[(v23 >> 6) + 8] |= 1 << v23;
    *(v9[6] + 8 * v23) = v20;
    *(v9[7] + 8 * v23) = 0;
    v31 = v9[2];
    v27 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v27)
    {
      goto LABEL_32;
    }

    v9[2] = v32;
LABEL_8:
    v15 &= v15 - 1;
    *(v9[7] + 8 * v23) = v21 + *(v9[7] + 8 * v23);
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  v35 = sub_20DF48424();
  __break(1u);
LABEL_34:
  result.value._rawValue = v35;
  result.is_nil = v34;
  return result;
}

Swift::OpaquePointer_optional __swiftcall EnergyTrends.importGridQualityPeriodsFor(usages:)(Swift::OpaquePointer usages)
{
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  v3 = MEMORY[0x28223BE20](v2);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(usages._rawValue + 2);
  v6 = 0;
  if (!v39)
  {
    v9 = MEMORY[0x277D84F98];
LABEL_26:
    if (v9[2])
    {
      sub_20DEF13FC(v6, 0);
    }

    else
    {

      sub_20DEF13FC(v6, 0);
      v9 = 0;
    }

    v35 = v9;
    goto LABEL_34;
  }

  v7 = 0;
  v8 = *(v3 + 68);
  v37 = usages._rawValue + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v38 = v8;
  v36 = *(v4 + 72);
  v9 = MEMORY[0x277D84F98];
LABEL_4:
  v10 = v40;
  sub_20DEEF8EC(&v37[v36 * v7++], v40, type metadata accessor for EnergySite.EnergyUsage);
  v11 = *(v10 + v38);

  sub_20DEEF954(v10, type metadata accessor for EnergySite.EnergyUsage);
  v12 = 0;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  for (i = v6; ; i = sub_20DEB677C)
  {
    if (!v15)
    {
      while (1)
      {
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v18 >= v16)
        {
          break;
        }

        v15 = *(v11 + 64 + 8 * v18);
        ++v12;
        if (v15)
        {
          v12 = v18;
          goto LABEL_14;
        }
      }

      v6 = i;

      if (v7 == v39)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_14:
    v19 = (v12 << 9) | (8 * __clz(__rbit64(v15)));
    v20 = *(*(v11 + 48) + v19);
    v21 = *(*(v11 + 56) + v19);
    sub_20DEF13FC(i, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v9;
    v23 = sub_20DEEFA18(v20);
    v25 = v9[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v9[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v23;
        sub_20DEF0B48();
        v23 = v33;
        v9 = v41;
        if (v29)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_20DEEFEF0(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_20DEEFA18(v20);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_33;
      }
    }

    v9 = v41;
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_20:
    v9[(v23 >> 6) + 8] |= 1 << v23;
    *(v9[6] + 8 * v23) = v20;
    *(v9[7] + 8 * v23) = 0;
    v31 = v9[2];
    v27 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v27)
    {
      goto LABEL_32;
    }

    v9[2] = v32;
LABEL_8:
    v15 &= v15 - 1;
    *(v9[7] + 8 * v23) = v21 + *(v9[7] + 8 * v23);
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  v35 = sub_20DF48424();
  __break(1u);
LABEL_34:
  result.value._rawValue = v35;
  result.is_nil = v34;
  return result;
}

Swift::OpaquePointer_optional __swiftcall EnergyTrends.totalGridQualityPeriodsFor(usages:)(Swift::OpaquePointer usages)
{
  v33 = *(usages._rawValue + 2);
  if (v33)
  {
    v3 = type metadata accessor for EnergySite.EnergyUsage(0);
    v4 = 0;
    v31 = usages._rawValue + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
    v32 = v3;
    v30 = *(*(v3 - 8) + 72);
    v5 = MEMORY[0x277D84F98];
LABEL_4:
    v6 = &v31[v30 * v4++];
    v7 = *&v6[*(v32 + 76)];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v5;
    v9 = 1 << *(v7 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;

    for (i = 0; ; i = v14)
    {
      if (!v11)
      {
        while (1)
        {
          v14 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          if (v14 >= v12)
          {
            break;
          }

          v11 = *(v7 + 64 + 8 * v14);
          ++i;
          if (v11)
          {
            goto LABEL_15;
          }
        }

        if (v4 == v33)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      v14 = i;
LABEL_15:
      v15 = (v14 << 9) | (8 * __clz(__rbit64(v11)));
      v16 = *(*(v7 + 48) + v15);
      v17 = *(*(v7 + 56) + v15);
      v18 = sub_20DEEFA18(v16);
      v20 = v5[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (v5[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = v18;
          sub_20DEF0B48();
          v18 = v28;
        }
      }

      else
      {
        sub_20DEEFEF0(v23, isUniquelyReferenced_nonNull_native & 1);
        v18 = sub_20DEEFA18(v16);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_31;
        }
      }

      v11 &= v11 - 1;
      v5 = v34;
      if (v24)
      {
        *(v34[7] + 8 * v18) = v17 + *(v34[7] + 8 * v18);
      }

      else
      {
        v34[(v18 >> 6) + 8] |= 1 << v18;
        *(v34[6] + 8 * v18) = v16;
        *(v34[7] + 8 * v18) = v17;
        v26 = v34[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_30;
        }

        v34[2] = v27;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v29 = sub_20DF48424();
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
LABEL_25:
    if (!v5[2])
    {

      v5 = 0;
    }

    v29 = v5;
  }

  result.value._rawValue = v29;
  result.is_nil = v1;
  return result;
}

uint64_t sub_20DEEF8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20DEEF954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20DEEF9D4(uint64_t a1)
{
  v2 = sub_20DF480E4();

  return sub_20DEEFB58(a1, v2);
}

unint64_t sub_20DEEFA18(uint64_t a1)
{
  v2 = sub_20DF48484();

  return sub_20DEEFC20(a1, v2);
}

unint64_t sub_20DEEFA5C(uint64_t a1)
{
  sub_20DF474E4();
  sub_20DEF1558(&qword_27C84CA58, MEMORY[0x277CC9588]);
  v2 = sub_20DF47C94();

  return sub_20DEEFC8C(a1, v2);
}

unint64_t sub_20DEEFAE0(uint64_t a1, uint64_t a2)
{
  sub_20DF48494();
  sub_20DF47D54();
  v4 = sub_20DF484D4();

  return sub_20DEEFE38(a1, a2, v4);
}

unint64_t sub_20DEEFB58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20DEF14FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F328CD0](v9, a1);
      sub_20DED8790(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_20DEEFC20(uint64_t a1, uint64_t a2)
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

unint64_t sub_20DEEFC8C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_20DF474E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_20DEF1558(&qword_27C84C9A0, MEMORY[0x277CC9598]);
      v15 = sub_20DF47CF4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_20DEEFE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_20DF483D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_20DEEFEF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA60, &qword_20DF49FC8);
  result = sub_20DF48234();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_20DF48484();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_20DEF0154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_20DF47834();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DF474E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C84CCF8, &qword_20DF4AD78);
  v47 = v4;
  result = sub_20DF48234();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_20DEF1558(&qword_27C84CA58, MEMORY[0x277CC9588]);
      result = sub_20DF47C94();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_20DEF05E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9F0, &qword_20DF4AD80);
  v33 = v4;
  result = sub_20DF48234();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_20DED8390(v24, v34);
      }

      else
      {
        sub_20DEBA2EC(v24, v34);
      }

      sub_20DF48494();
      sub_20DF47D54();
      result = sub_20DF484D4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_20DED8390(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_20DEF08A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCF0, &qword_20DF4AD70);
  v34 = v4;
  result = sub_20DF48234();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_20DF48494();
      sub_20DF47D54();
      result = sub_20DF484D4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_20DEF0B48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA60, &qword_20DF49FC8);
  v2 = *v0;
  v3 = sub_20DF48224();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_20DEF0C94()
{
  v1 = v0;
  v41 = sub_20DF47834();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20DF474E4();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C84CCF8, &qword_20DF4AD78);
  v4 = *v0;
  v5 = sub_20DF48224();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_20DEF0FE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9F0, &qword_20DF4AD80);
  v2 = *v0;
  v3 = sub_20DF48224();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_20DEBA2EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20DED8390(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_20DEF118C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCF0, &qword_20DF4AD70);
  v2 = *v0;
  v3 = sub_20DF48224();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20DEF12FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20DF3789C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_20DEF131C@<X0>(double *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16) * *result;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    *a2 = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_20DEF13FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_20DEF1434(uint64_t a1)
{
  sub_20DED81A8(319);
  if (v1 <= 0x3F)
  {
    sub_20DF47604();
    if (v2 <= 0x3F)
    {
      sub_20DF475D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20DEF1558(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20DF474E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DEF159C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergySite.EnergyUsage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DEF1654(char a1)
{
  sub_20DF48494();
  MEMORY[0x20F329080](a1 & 1);
  return sub_20DF484D4();
}

uint64_t sub_20DEF16B8(uint64_t a1)
{
  sub_20DF48494();
  sub_20DEF162C(v3, *v1);
  return sub_20DF484D4();
}

uint64_t sub_20DEF1708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_20DEF175C(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *sub_20DEF17F0(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_20DEF1924()
{
  type metadata accessor for GuidanceService();
  result = swift_initStaticObject();
  if (qword_281122950 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  qword_27C84CE00 = result;
  return result;
}

uint64_t static GuidanceService.shared.getter()
{
  if (qword_27C84C750 != -1)
  {
    swift_once();
  }
}

uint64_t GuidanceService.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

uint64_t GuidanceService.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t GuidanceService.guidances(using:at:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE08, &qword_20DF4AE90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  LOBYTE(v9) = *a1;
  v11 = a1[1];
  v14 = v3;
  v15 = a2;
  v16 = v9;
  v17 = v11;
  type metadata accessor for Guidance(0);
  (*(v8 + 104))(v10, *MEMORY[0x277D858A0], v7);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE10, &qword_20DF4AE98);
  a3[4] = sub_20DEF2780();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_20DF47F54();
}

uint64_t GuidanceService.guidances(using:for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE08, &qword_20DF4AE90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  LOBYTE(v9) = *a1;
  v11 = a1[1];
  v14 = v3;
  v15 = a2;
  v16 = v9;
  v17 = v11;
  type metadata accessor for Guidance(0);
  (*(v8 + 104))(v10, *MEMORY[0x277D858A0], v7);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE10, &qword_20DF4AE98);
  a3[4] = sub_20DEF2780();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_20DF47F54();
}

uint64_t GuidanceService.guidance(using:at:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 98) = *a2;
  *(v4 + 99) = a2[1];
  v6 = swift_task_alloc();
  *(v4 + 64) = v6;
  *v6 = v4;
  v6[1] = sub_20DEF1E3C;

  return sub_20DF2A620(a3);
}

uint64_t sub_20DEF1E3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[9] = a2;

  return MEMORY[0x2822009F8](sub_20DEF1F44, 0, 0);
}

uint64_t sub_20DEF1F44()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 99);
    *(v0 + 96) = *(v0 + 98);
    *(v0 + 97) = v3;
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_20DEF2080;
    v5 = *(v0 + 48);
    v6 = *(v0 + 40);

    return sub_20DF24134(v6, v5, v2, v1, (v0 + 96));
  }

  else
  {
    sub_20DEDD4D8();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_20DEF2080()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DEF21D0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20DEF21D0()
{
  v1 = *(v0 + 88);
  sub_20DEDD4D8();
  swift_allocError();
  *v2 = 2;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t GuidanceService.guidance(using:near:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = v3;
  *(v4 + 90) = *a2;
  *(v4 + 91) = a2[1];
  v6 = swift_task_alloc();
  *(v4 + 56) = v6;
  *v6 = v4;
  v6[1] = sub_20DEF2330;

  return sub_20DF2A8BC(a3);
}

uint64_t sub_20DEF2330(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[8] = a2;

  return MEMORY[0x2822009F8](sub_20DEF2438, 0, 0);
}

uint64_t sub_20DEF2438()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 91);
    *(v0 + 88) = *(v0 + 90);
    *(v0 + 89) = v3;
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_20DEF2570;
    v5 = *(v0 + 40);

    return sub_20DF24EBC(v5, v2, v1, (v0 + 88));
  }

  else
  {
    sub_20DEDD4D8();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_20DEF2570()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DEF26C0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20DEF26C0()
{
  v1 = *(v0 + 80);
  sub_20DEDD4D8();
  swift_allocError();
  *v2 = 2;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20DEF2760(uint64_t a1)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_20DF25EF0(a1, *(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

unint64_t sub_20DEF2780()
{
  result = qword_27C84CE18;
  if (!qword_27C84CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C84CE10, &qword_20DF4AE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CE18);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20DEF2848(uint64_t a1)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_20DF28628(a1, *(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

uint64_t sub_20DEF28A4(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_20DF47D14();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return swift_continuation_resume();
}

void *sub_20DEF291C()
{
  type metadata accessor for HomeEnergyManager();
  v0 = swift_allocObject();
  result = sub_20DEF29B4();
  qword_281122958 = v0;
  return result;
}

uint64_t static HomeEnergyManager.shared.getter()
{
  if (qword_281122950 != -1)
  {
    swift_once();
  }
}

void *sub_20DEF29B4()
{
  v1 = v0;
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = [objc_opt_self() defaultCenter];
  v1[3] = 0;
  v1[4] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_20DF47BB4();
  v8 = sub_20DF48004();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20DEAF000, v7, v8, "[GridForecast] Setup notification observer", v9, 2u);
    MEMORY[0x20F329700](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_20DEF2BB0();
  return v1;
}

uint64_t sub_20DEF2BB0()
{
  sub_20DF47804();
  v1 = sub_20DF47D04();

  v2 = v0[2];
  v3 = v0[4];
  v9[4] = sub_20DF11EFC;
  v10 = v0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_20DEDA9EC;
  v9[3] = &block_descriptor_4;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v3;

  v7 = [v2 addObserverForName:v5 object:0 queue:v6 usingBlock:v4];

  _Block_release(v4);
  v0[3] = v7;
  return swift_unknownObjectRelease();
}

uint64_t sub_20DEF2CD8()
{
  v0 = sub_20DF47BD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_281122F18);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF48004();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DEAF000, v5, v6, "[GridForecast] Received notification from daemon", v7, 2u);
    MEMORY[0x20F329700](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v8 = sub_20DF473F4();
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v21 = sub_20DF477B4();
  v22 = v10;
  sub_20DF48104();
  if (!*(v9 + 16) || (v11 = sub_20DEEF9D4(v23), (v12 & 1) == 0))
  {

    sub_20DED8790(v23);
LABEL_12:
    v24 = 0u;
    v25 = 0u;
    goto LABEL_13;
  }

  sub_20DEBA2EC(*(v9 + 56) + 32 * v11, &v24);
  sub_20DED8790(v23);

  if (!*(&v25 + 1))
  {
LABEL_13:
    sub_20DED8730(&v24, &qword_27C84CA00, &qword_20DF4A170);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA08, &qword_20DF49F40);
  if (swift_dynamicCast())
  {
    v13 = sub_20DF3AAF4(*v23);

    sub_20DF11F1C(v13);
  }

LABEL_14:
  v14 = sub_20DF473F4();
  if (!v14)
  {
LABEL_22:
    v24 = 0u;
    v25 = 0u;
    return sub_20DED8730(&v24, &qword_27C84CA00, &qword_20DF4A170);
  }

  v15 = v14;
  v21 = sub_20DF477A4();
  v22 = v16;
  sub_20DF48104();
  if (!*(v15 + 16) || (v17 = sub_20DEEF9D4(v23), (v18 & 1) == 0))
  {

    sub_20DED8790(v23);
    goto LABEL_22;
  }

  sub_20DEBA2EC(*(v15 + 56) + 32 * v17, &v24);
  sub_20DED8790(v23);

  if (!*(&v25 + 1))
  {
    return sub_20DED8730(&v24, &qword_27C84CA00, &qword_20DF4A170);
  }

  result = swift_dynamicCast();
  if ((result & 1) != 0 && v23[0] == 1)
  {
    return sub_20DF12354();
  }

  return result;
}

uint64_t sub_20DEF3084()
{
  if (sub_20DF47794())
  {
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE20, qword_20DF4AF28);
    *v1 = v0;
    v1[1] = sub_20DEF327C;

    return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0x446C6C41706D7564, 0xED00002928617461, sub_20DEF33C4, 0, v2);
  }

  else
  {
    *(v0 + 40) = MEMORY[0x277D839B0];
    *(v0 + 16) = 0;
    sub_20DED8390((v0 + 16), (v0 + 48));
    v3 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF0E9A0((v0 + 48), 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v0 + 104) = MEMORY[0x277D837D0];
    *(v0 + 80) = 0xD00000000000002DLL;
    *(v0 + 88) = 0x800000020DF4F450;
    sub_20DED8390((v0 + 80), (v0 + 112));
    v5 = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF0E9A0((v0 + 112), 0x654D737574617473, 0xED00006567617373, v5);
    v6 = *(v0 + 8);

    return v6(v3);
  }
}

uint64_t sub_20DEF327C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_20DEF33AC;
  }

  else
  {
    v2 = sub_20DEF3390;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEF33F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEF8, &qword_20DF4B508);
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v4[23] = *(v6 + 64);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF34C8, 0, 0);
}

uint64_t sub_20DEF34C8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[25] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = sub_20DF3D598(sub_20DF15EF0, v6);
  v0[26] = v7;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEF36BC;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF00, &qword_20DF4B520);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEF3AC4;
  v0[13] = &block_descriptor_457;
  v0[14] = v8;
  [v7 dumpAllDataWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF36BC()
{

  return MEMORY[0x2822009F8](sub_20DEF379C, 0, 0);
}

uint64_t sub_20DEF379C()
{
  v1 = v0[25];
  v2 = v0[18];
  swift_unknownObjectRelease();
  [*(v1 + 16) invalidate];
  v0[19] = v2;
  sub_20DF47EE4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DEF3848(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to dump all data. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEF8, &qword_20DF4B508);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF3AC4(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_20DF47C34();

  return swift_continuation_resume();
}

uint64_t sub_20DEF3B48(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_20DEF3B70, 0, 0);
}

uint64_t sub_20DEF3B70()
{
  if (sub_20DF47794())
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    v3 = *(v0 + 64);
    v4 = *(v0 + 16);
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    *(v5 + 32) = v3;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_20DEF3CC0;
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000002FLL, 0x800000020DF4F480, sub_20DF0EAF0, v5, v7);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_20DEF3CC0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20DEF3DDC;
  }

  else
  {

    v2 = sub_20DEB9614;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEF3DDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DEF3E40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v27 = a5;
  v28 = a2;
  v30 = a4;
  v29 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_20DF47F04();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  sub_20DED8804(v27, v8, &qword_27C84C988, &qword_20DF4AD10);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v26 + 80) + v19 + 17) & ~*(v26 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v10 + 32))(v21 + v18, v13, v9);
  v22 = v21 + v19;
  v23 = v29;
  *v22 = v28;
  *(v22 + 8) = v23;
  *(v22 + 16) = v30;
  sub_20DED9CE8(v8, v21 + v20, &qword_27C84C988, &qword_20DF4AD10);

  sub_20DEBB534(0, 0, v16, &unk_20DF4B500, v21);
}

uint64_t sub_20DEF4128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 296) = a7;
  *(v8 + 184) = a6;
  *(v8 + 192) = a8;
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  v9 = sub_20DF47BD4();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  *(v8 + 224) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  *(v8 + 232) = v10;
  v11 = *(v10 - 8);
  *(v8 + 240) = v11;
  *(v8 + 248) = *(v11 + 64);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF4298, 0, 0);
}

uint64_t sub_20DEF4298()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 264) = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = sub_20DF3D598(sub_20DF15D0C, v7);
  *(v0 + 272) = v8;

  if (v4)
  {
    v9 = sub_20DF47D04();
  }

  else
  {
    v9 = 0;
  }

  *(v0 + 280) = v9;
  v10 = *(v0 + 224);
  sub_20DED8804(*(v0 + 192), v10, &qword_27C84C988, &qword_20DF4AD10);
  v11 = sub_20DF474E4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = *(v0 + 224);
    v14 = sub_20DF47464();
    (*(v12 + 8))(v15, v11);
  }

  *(v0 + 288) = v14;
  v16 = *(v0 + 296);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_20DEF454C;
  v17 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF2B4C4;
  *(v0 + 104) = &block_descriptor_447;
  *(v0 + 112) = v17;
  [v8 useMockDataWithFilePath:v9 disableMock:v16 validityDate:v14 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DEF454C()
{

  return MEMORY[0x2822009F8](sub_20DEF462C, 0, 0);
}

uint64_t sub_20DEF462C()
{
  v23 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = __swift_project_value_buffer(v6, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = sub_20DF47BB4();
  v9 = sub_20DF48004();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v13 = *(v0 + 200);
  if (v10)
  {
    v14 = *(v0 + 296);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    if (v14)
    {
      v17 = 0x64656C6261736964;
    }

    else
    {
      v17 = 0x64656C62616E65;
    }

    if (v14)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    v19 = sub_20DED38E8(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v8, v9, "Mock Data usage: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F329700](v16, -1, -1);
    MEMORY[0x20F329700](v15, -1, -1);
  }

  (*(v12 + 8))(v11, v13);
  sub_20DF47EE4();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_20DEF4888(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136446210;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to set mock data. %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF4B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  v4 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a3 + 64);
  v5 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v5;
  return MEMORY[0x2822009F8](sub_20DEF4B3C, 0, 0);
}

uint64_t sub_20DEF4B3C()
{
  if (sub_20DF47794())
  {
    v2 = v0[13];
    v1 = v0[14];
    v3 = swift_task_alloc();
    v0[15] = v3;
    v3[2] = v2;
    v3[3] = v1;
    v3[4] = v0 + 2;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_20DEF4C90;
    v5 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 11, 0, 0, 0xD000000000000031, 0x800000020DF4F4B0, sub_20DF0EB00, v3, v5);
  }

  else
  {
    v6 = v0[1];

    return v6(0, 0xE000000000000000);
  }
}

uint64_t sub_20DEF4C90()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_20DEF4DC8;
  }

  else
  {

    v2 = sub_20DEF4DAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEF4DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DEF4E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-v10 - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25[-v13 - 8];
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = (v18 + v17);
  *v19 = v24;
  v19[1] = a3;
  v20 = v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  *(v20 + 64) = *(a4 + 64);
  v21 = *(a4 + 48);
  *(v20 + 32) = *(a4 + 32);
  *(v20 + 48) = v21;
  v22 = *(a4 + 16);
  *v20 = *a4;
  *(v20 + 16) = v22;

  sub_20DF1550C(a4, v25);
  sub_20DEBB534(0, 0, v14, &unk_20DF4B4E8, v18);
}

uint64_t sub_20DEF5070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v8 = sub_20DF47BD4();
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258);
  v7[32] = v9;
  v10 = *(v9 - 8);
  v7[33] = v10;
  v7[34] = *(v10 + 64);
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF51A4, 0, 0);
}

uint64_t sub_20DEF51A4()
{
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[25];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[36] = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, v1, v3);
  v7 = sub_20DF3D598(sub_20DF15B48, v6);
  v0[37] = v7;

  v8 = sub_20DF47D04();
  v0[38] = v8;
  sub_20DF3B404();
  v9 = sub_20DF47C24();
  v0[39] = v9;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEF5414;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE60, &qword_20DF4B270);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEF5950;
  v0[13] = &block_descriptor_437;
  v0[14] = v10;
  [v7 testNotificationsForGridID:v8 notificationContext:v9 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF5414()
{

  return MEMORY[0x2822009F8](sub_20DEF54F4, 0, 0);
}

uint64_t sub_20DEF54F4()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[22];
  v17 = v0[21];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = __swift_project_value_buffer(v7, qword_281122F18);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20DEAF000, v9, v10, "Test notification triggered", v11, 2u);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  v12 = v0[31];
  v13 = v0[29];
  v14 = v0[30];

  (*(v14 + 8))(v12, v13);
  v0[23] = v17;
  v0[24] = v4;
  sub_20DF47EE4();

  v15 = v0[1];

  return v15();
}

uint64_t sub_20DEF56D4(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136446210;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to set Home Energy Notification.%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF5950(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = sub_20DF47D14();
  v4 = *(*(v2 + 64) + 40);
  *v4 = v3;
  v4[1] = v5;

  return swift_continuation_resume();
}

uint64_t sub_20DEF59D8()
{
  if (sub_20DF47794())
  {
    v1 = v0[2];
    v2 = swift_task_alloc();
    v0[3] = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_20DEF5B0C;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000019, 0x800000020DF4F4F0, sub_20DF0EB0C, v2, v4);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_20DEF5B0C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_20DEB962C;
  }

  else
  {

    v2 = sub_20DF161DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEF5C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_20DF47F04();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v5 + 32))(v14 + v13, v8, v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  sub_20DEBB534(0, 0, v11, &unk_20DF4B4D8, v14);
}

uint64_t sub_20DEF5E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = sub_20DF47BD4();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v5[26] = v7;
  v8 = *(v7 - 8);
  v5[27] = v8;
  v5[28] = *(v8 + 64);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF5F50, 0, 0);
}

uint64_t sub_20DEF5F50()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[30] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = sub_20DF3D598(sub_20DF159D4, v6);
  v0[31] = v7;

  v8 = sub_20DF47F74();
  v0[32] = v8;
  v0[2] = v0;
  v0[3] = sub_20DEF615C;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF2B4C4;
  v0[13] = &block_descriptor_427;
  v0[14] = v9;
  [v7 testDelegateForGridIds:v8 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF615C()
{

  return MEMORY[0x2822009F8](sub_20DEF623C, 0, 0);
}

uint64_t sub_20DEF623C()
{
  v1 = v0[32];
  v2 = v0[30];
  swift_unknownObjectRelease();

  [*(v2 + 16) invalidate];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = __swift_project_value_buffer(v5, qword_281122F18);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20DEAF000, v7, v8, "Test delegate", v9, 2u);
    MEMORY[0x20F329700](v9, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[24];

  (*(v12 + 8))(v10, v11);
  sub_20DF47EE4();

  v13 = v0[1];

  return v13();
}

uint64_t sub_20DEF63F8(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136446210;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to test Home Energy Delegate.%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF6690()
{
  if (sub_20DF47794())
  {
    v1 = swift_task_alloc();
    *(v0 + 16) = v1;
    *v1 = v0;
    v1[1] = sub_20DEF67A0;
    v2 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v1, 0, 0, 0xD000000000000017, 0x800000020DF4F510, sub_20DEF68B4, 0, v2);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_20DEF67A0()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_20DF161E8;
  }

  else
  {
    v2 = sub_20DF161DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEF68E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_20DF47BD4();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v4[25] = v6;
  v7 = *(v6 - 8);
  v4[26] = v7;
  v4[27] = *(v7 + 64);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF6A14, 0, 0);
}

uint64_t sub_20DEF6A14()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = sub_20DF3D598(sub_20DF15880, v6);
  v0[30] = v7;

  v0[2] = v0;
  v0[3] = sub_20DEF6BF8;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF2B4C4;
  v0[13] = &block_descriptor_417;
  v0[14] = v8;
  [v7 testSetMockURLSessionWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF6BF8()
{

  return MEMORY[0x2822009F8](sub_20DEF6CD8, 0, 0);
}

uint64_t sub_20DEF6CD8()
{
  v1 = v0[29];
  swift_unknownObjectRelease();
  [*(v1 + 16) invalidate];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_20DF47BB4();
  v7 = sub_20DF47FD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20DEAF000, v6, v7, "Set mock url session", v8, 2u);
    MEMORY[0x20F329700](v8, -1, -1);
  }

  v9 = v0[24];
  v10 = v0[22];
  v11 = v0[23];

  (*(v11 + 8))(v9, v10);
  sub_20DF47EE4();

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DEF6E8C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136446210;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to set URL Session for Home Services.%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF7108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_20DEF712C, 0, 0);
}

uint64_t sub_20DEF712C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v6 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_20DEF723C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000003DLL, 0x800000020DF4F530, sub_20DF0EB14, v3, &type metadata for HomeEnergyNotificationStatus);
}

uint64_t sub_20DEF723C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_20DEF7358;
  }

  else
  {

    v2 = sub_20DEDBBC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEF7358()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DEF73BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE8, &qword_20DF4B4A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = v21;
  *(v18 + 7) = a5;
  (*(v10 + 32))(&v18[v17], v12, v9);

  sub_20DEBB534(0, 0, v15, &unk_20DF4B4B0, v18);
}

uint64_t sub_20DEF75D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[23] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE8, &qword_20DF4B4A0);
  v8[28] = v9;
  v10 = *(v9 - 8);
  v8[29] = v10;
  v8[30] = *(v10 + 64);
  v8[31] = swift_task_alloc();
  v11 = sub_20DF47BD4();
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF7708, 0, 0);
}

uint64_t sub_20DEF7708()
{
  v36 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[26];
  v5 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_20DF47BB4();
  v7 = sub_20DF47FD4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[32];
  if (v8)
  {
    v33 = v0[34];
    v12 = v0[26];
    v31 = v0[25];
    v14 = v0[23];
    v13 = v0[24];
    v32 = v0[32];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136380931;
    *(v15 + 4) = sub_20DED38E8(v14, v13, &v35);
    *(v15 + 12) = 2081;
    if (v12)
    {
      v17 = v31;
    }

    else
    {
      v17 = 0x20656D6F48206F4ELL;
    }

    if (v12)
    {
      v18 = v4;
    }

    else
    {
      v18 = 0xEA00000000004449;
    }

    v19 = sub_20DED38E8(v17, v18, &v35);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v6, v7, "Checking if next clean energy window notification is enabled for %{private}s, %{private}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v16, -1, -1);
    MEMORY[0x20F329700](v15, -1, -1);

    (*(v9 + 8))(v33, v32);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v20 = v0[31];
  v21 = v0[28];
  v22 = v0[29];
  v23 = v0[27];
  v34 = v0[26];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[35] = sub_20DF3C9D8();
  (*(v22 + 16))(v20, v23, v21);
  v24 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v25 = swift_allocObject();
  (*(v22 + 32))(v25 + v24, v20, v21);
  v26 = sub_20DF3D598(sub_20DF1575C, v25);
  v0[36] = v26;

  v27 = sub_20DF47D04();
  v0[37] = v27;
  if (v34)
  {
    v28 = sub_20DF47D04();
  }

  else
  {
    v28 = 0;
  }

  v0[38] = v28;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEF7B48;
  v29 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEF0, &qword_20DF4B4B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_407;
  v0[14] = v29;
  [v26 isNextCleanEnergyWindowNotificationEnabledForGridID:v27 homeID:v28 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF7B48()
{

  return MEMORY[0x2822009F8](sub_20DEF7C28, 0, 0);
}

uint64_t sub_20DEF7C28()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[35];
  v4 = v0[21];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  v0[22] = v4;
  sub_20DF47EE4();

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DEF7CF4(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136446210;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to get Home Energy Notification status.%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE8, &qword_20DF4B4A0);
  return sub_20DF47ED4();
}

uint64_t sub_20DEF7F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v4 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a3 + 64);
  v5 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v5;
  return MEMORY[0x2822009F8](sub_20DEF7FA8, 0, 0);
}

uint64_t sub_20DEF7FA8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 2;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_20DEF80B0;

  return MEMORY[0x2822008A0](v0 + 11, 0, 0, 0xD000000000000048, 0x800000020DF4F570, sub_20DF0EB20, v3, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEF80B0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20DEF81E8;
  }

  else
  {

    v2 = sub_20DEF81CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEF81E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DEF824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24[-v14 - 8];
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v9 + 32))(&v18[v17], v12, v8);
  v19 = &v18[(v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8];
  v20 = *(a4 + 48);
  *(v19 + 2) = *(a4 + 32);
  *(v19 + 3) = v20;
  v19[64] = *(a4 + 64);
  v21 = *(a4 + 16);
  *v19 = *a4;
  *(v19 + 1) = v21;

  sub_20DF1550C(a4, v24);
  sub_20DEBB534(0, 0, v15, &unk_20DF4B498, v18);
}

uint64_t sub_20DEF8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();
  v10 = sub_20DF47BD4();
  v7[31] = v10;
  v7[32] = *(v10 - 8);
  v7[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF85B4, 0, 0);
}

uint64_t sub_20DEF85B4()
{
  v31 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FD4();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[31];
  if (v7)
  {
    v12 = v0[23];
    v11 = v0[24];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v29[0] = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_20DED38E8(v12, v11, v29);
    _os_log_impl(&dword_20DEAF000, v5, v6, "Enabling next clean energy window notification for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v15 = v0[30];
  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[25];
  v19 = v0[26];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[34] = sub_20DF3C9D8();
  (*(v16 + 16))(v15, v18, v17);
  v20 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v21 = swift_allocObject();
  (*(v16 + 32))(v21 + v20, v15, v17);
  v22 = sub_20DF3D598(sub_20DF15070, v21);
  v0[35] = v22;

  v23 = sub_20DF47D04();
  v0[36] = v23;
  v24 = *(v19 + 48);
  v29[2] = *(v19 + 32);
  v29[3] = v24;
  v30 = *(v19 + 64);
  v25 = *(v19 + 16);
  v29[0] = *v19;
  v29[1] = v25;
  sub_20DF3B404();
  v26 = sub_20DF47C24();
  v0[37] = v26;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEF8984;
  v27 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_397;
  v0[14] = v27;
  [v22 enableNextCleanEnergyWindowNotificationsForGridID:v23 notificationContext:v26 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF8984()
{

  return MEMORY[0x2822009F8](sub_20DEF8A64, 0, 0);
}

uint64_t sub_20DEF8A64()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[21];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  v0[22] = v4;
  sub_20DF47EE4();

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DEF8B34(uint64_t a1, uint64_t a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_20DEF8B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_20DEF8BB4, 0, 0);
}

uint64_t sub_20DEF8BB4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v6 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_20DEF8CC4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000003CLL, 0x800000020DF4F5C0, sub_20DF0EB2C, v3, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEF8CC4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_20DF161A8;
  }

  else
  {

    v2 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEF8DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = v21;
  *(v18 + 7) = a5;
  (*(v10 + 32))(&v18[v17], v12, v9);

  sub_20DEBB534(0, 0, v15, &unk_20DF4B488, v18);
}

uint64_t sub_20DEF8FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[23] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v8[28] = v9;
  v10 = *(v9 - 8);
  v8[29] = v10;
  v8[30] = *(v10 + 64);
  v8[31] = swift_task_alloc();
  v11 = sub_20DF47BD4();
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF912C, 0, 0);
}

uint64_t sub_20DEF912C()
{
  v30 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FD4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[33];
  v9 = v0[34];
  v10 = v0[32];
  if (v7)
  {
    v11 = v0[25];
    v27 = v0[26];
    v13 = v0[23];
    v12 = v0[24];
    v28 = v0[34];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136380931;
    *(v14 + 4) = sub_20DED38E8(v13, v12, &v29);
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_20DED38E8(v11, v27, &v29);
    _os_log_impl(&dword_20DEAF000, v5, v6, "Disabling next clean energy window notification for %{private}s, %{private}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);

    (*(v8 + 8))(v28, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v16 = v0[31];
  v18 = v0[28];
  v17 = v0[29];
  v19 = v0[27];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[35] = sub_20DF3C9D8();
  (*(v17 + 16))(v16, v19, v18);
  v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v21 = swift_allocObject();
  (*(v17 + 32))(v21 + v20, v16, v18);
  v22 = sub_20DF3D598(sub_20DF15280, v21);
  v0[36] = v22;

  v23 = sub_20DF47D04();
  v0[37] = v23;
  v24 = sub_20DF47D04();
  v0[38] = v24;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEF9518;
  v25 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_387;
  v0[14] = v25;
  [v22 disableNextCleanEnergyWindowNotificationsForGridID:v23 homeID:v24 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF9518()
{

  return MEMORY[0x2822009F8](sub_20DF161C8, 0, 0);
}

uint64_t sub_20DEF95F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_20DEF9618, 0, 0);
}

uint64_t sub_20DEF9618()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_20DEF9710;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000035, 0x800000020DF4F600, sub_20DF0EB38, v3, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEF9710()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20DEF3DDC;
  }

  else
  {

    v2 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEF982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v6[28] = *(v8 + 64);
  v6[29] = swift_task_alloc();
  v9 = sub_20DF47BD4();
  v6[30] = v9;
  v6[31] = *(v9 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEF9960, 0, 0);
}

uint64_t sub_20DEF9960()
{
  v26 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FD4();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  if (v7)
  {
    v12 = v0[23];
    v11 = v0[24];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_20DED38E8(v12, v11, &v25);
    _os_log_impl(&dword_20DEAF000, v5, v6, "Disabling next clean energy window notification for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v15 = v0[29];
  v16 = v0[26];
  v17 = v0[27];
  v18 = v0[25];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[33] = sub_20DF3C9D8();
  (*(v17 + 16))(v15, v18, v16);
  v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v20 = swift_allocObject();
  (*(v17 + 32))(v20 + v19, v15, v16);
  v21 = sub_20DF3D598(sub_20DF15280, v20);
  v0[34] = v21;

  v22 = sub_20DF47D04();
  v0[35] = v22;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEF9CD4;
  v23 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_377;
  v0[14] = v23;
  [v21 disableNextCleanEnergyWindowNotificationsForGridID:v22 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEF9CD4()
{

  return MEMORY[0x2822009F8](sub_20DEF9DB4, 0, 0);
}

uint64_t sub_20DEF9DB4()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[21];
  swift_unknownObjectRelease();

  [*(v2 + 16) invalidate];
  v0[22] = v3;
  sub_20DF47EE4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DEF9E78()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_20DEF9F50;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002ELL, 0x800000020DF4F640, sub_20DEFA064, 0, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEF9F50()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_20DEC93F0;
  }

  else
  {
    v2 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEFA094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v4[26] = *(v6 + 64);
  v4[27] = swift_task_alloc();
  v7 = sub_20DF47BD4();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFA1C4, 0, 0);
}

uint64_t sub_20DEFA1C4()
{
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DEAF000, v5, v6, "Disabling all next clean energy window notifications", v7, 2u);
    MEMORY[0x20F329700](v7, -1, -1);
  }

  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[28];
  v12 = v0[25];
  v14 = v0[23];
  v13 = v0[24];

  (*(v8 + 8))(v9, v11);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[31] = sub_20DF3C9D8();
  (*(v12 + 16))(v10, v14, v13);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v10, v13);
  v17 = sub_20DF3D598(sub_20DF15070, v16);
  v0[32] = v17;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEFA4B8;
  v18 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_367;
  v0[14] = v18;
  [v17 disableAllNextCleanEnergyWindowNotificationsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFA4B8()
{

  return MEMORY[0x2822009F8](sub_20DEFA598, 0, 0);
}

uint64_t sub_20DEFA598()
{
  v1 = v0[31];
  v2 = v0[21];
  swift_unknownObjectRelease();
  [*(v1 + 16) invalidate];
  v0[22] = v2;
  sub_20DF47EE4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DEFA650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v11;
  *(v8 + 88) = a8;
  *(v8 + 96) = v10;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  return MEMORY[0x2822009F8](sub_20DEFA690, 0, 0);
}

uint64_t sub_20DEFA690()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v10 = *(v0 + 56);
  v11 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  *(v5 + 40) = v10;
  *(v5 + 56) = v11;
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;
  *(v5 + 88) = v1;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_20DEFA7C8;
  v8 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000049, 0x800000020DF4F670, sub_20DF0EB70, v5, v8);
}

uint64_t sub_20DEFA7C8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_20DEFA8E4;
  }

  else
  {

    v2 = sub_20DF161C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEFA8E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DEFA948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v49 = a7;
  v50 = a8;
  v41 = a4;
  v42 = a2;
  v43 = a3;
  v48 = a11;
  v46 = a10;
  v47 = a6;
  v44 = a9;
  v45 = a5;
  v12 = sub_20DF47644();
  v38 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE0, &qword_20DF4B448);
  v37 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v37 - v21;
  v40 = &v37 - v21;
  v23 = sub_20DF47F04();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  (*(v16 + 16))(v19, a1, v15);
  (*(v13 + 16))(&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v12);
  v24 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v25 = (v17 + *(v13 + 80) + v24) & ~*(v13 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v43;
  *(v28 + 4) = v42;
  *(v28 + 5) = v29;
  (*(v16 + 32))(&v28[v24], v19, v37);
  (*(v13 + 32))(&v28[v25], v39, v38);
  v30 = &v28[v26];
  v31 = v46;
  v32 = v47;
  *v30 = v45;
  v30[1] = v32;
  v33 = &v28[v27];
  v34 = v50;
  *v33 = v49;
  v33[1] = v34;
  v35 = &v28[(v27 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v35 = v44;
  *(v35 + 1) = v31;
  v35[16] = v48;

  sub_20DEBB534(0, 0, v40, &unk_20DF4B458, v28);
}

uint64_t sub_20DEFAC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 424) = v17;
  *(v8 + 280) = v16;
  *(v8 + 264) = v15;
  *(v8 + 248) = v14;
  *(v8 + 232) = a7;
  *(v8 + 240) = a8;
  *(v8 + 216) = a5;
  *(v8 + 224) = a6;
  *(v8 + 208) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE0, &qword_20DF4B448);
  *(v8 + 288) = v9;
  v10 = *(v9 - 8);
  *(v8 + 296) = v10;
  *(v8 + 304) = *(v10 + 64);
  *(v8 + 312) = swift_task_alloc();
  v11 = sub_20DF47BD4();
  *(v8 + 320) = v11;
  *(v8 + 328) = *(v11 - 8);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFAE00, 0, 0);
}

uint64_t sub_20DEFAE00()
{
  v32 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = __swift_project_value_buffer(v2, qword_281122F18);
  *(v0 + 352) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 360) = v5;
  *(v0 + 368) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_20DF47BB4();
  v7 = sub_20DF47FD4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 344);
  v10 = *(v0 + 320);
  v11 = *(v0 + 328);
  if (v8)
  {
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_20DED38E8(v13, v12, &v31);
    _os_log_impl(&dword_20DEAF000, v6, v7, "Fetch energy windows for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v11 + 8))(v9, v10);
  v16 = *(v0 + 312);
  v18 = *(v0 + 288);
  v17 = *(v0 + 296);
  v30 = *(v0 + 424);
  v19 = *(v0 + 224);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 376) = sub_20DF3C9D8();
  (*(v17 + 16))(v16, v19, v18);
  v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v21 = swift_allocObject();
  (*(v17 + 32))(v21 + v20, v16, v18);
  v22 = sub_20DF3D598(sub_20DF14F4C, v21);
  *(v0 + 384) = v22;

  v23 = sub_20DF47D04();
  *(v0 + 392) = v23;
  v24 = sub_20DF47634();
  v25 = sub_20DF47D04();
  *(v0 + 400) = v25;
  v26 = sub_20DF47D04();
  *(v0 + 408) = v26;
  v27 = sub_20DF47D04();
  *(v0 + 416) = v27;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_20DEFB1FC;
  v28 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEC0, &qword_20DF4B400);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF16EC8;
  *(v0 + 104) = &block_descriptor_357;
  *(v0 + 112) = v28;
  [v22 energyGuidanceFor:v23 guidanceType:v24 ratePlan:v25 utilityID:v26 timeZone:v27 withCaching:v30 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DEFB1FC()
{

  return MEMORY[0x2822009F8](sub_20DEFB2DC, 0, 0);
}

uint64_t sub_20DEFB2DC()
{
  v21 = v0;
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  swift_unknownObjectRelease();

  [*(v5 + 16) invalidate];
  if (v7 >> 60 == 15)
  {
    (*(v0 + 360))(*(v0 + 336), *(v0 + 352), *(v0 + 320));
    v8 = sub_20DF47BB4();
    v9 = sub_20DF47FF4();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 328);
    v11 = *(v0 + 336);
    v13 = *(v0 + 320);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_20DED38E8(0xD00000000000001ELL, 0x800000020DF4FBB0, &v20);
      _os_log_impl(&dword_20DEAF000, v8, v9, "%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x20F329700](v15, -1, -1);
      MEMORY[0x20F329700](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    sub_20DED4D6C();
    v16 = swift_allocError();
    *v17 = 3;
    *(v0 + 200) = v16;
    sub_20DF47ED4();
  }

  else
  {
    *(v0 + 184) = v6;
    *(v0 + 192) = v7;
    sub_20DF47EE4();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_20DEFB50C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136446210;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to fetch energy guidance. %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE0, &qword_20DF4B448);
  return sub_20DF47ED4();
}

uint64_t sub_20DEFB788()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_20DEFB860;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x800000020DF4F6C0, sub_20DEFB974, 0, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEFB860()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_20DF161D0;
  }

  else
  {
    v2 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEFB9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v4[26] = *(v6 + 64);
  v4[27] = swift_task_alloc();
  v7 = sub_20DF47BD4();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFBAD4, 0, 0);
}

uint64_t sub_20DEFBAD4()
{
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DEAF000, v5, v6, "Disabling energy forecast collection", v7, 2u);
    MEMORY[0x20F329700](v7, -1, -1);
  }

  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[28];
  v12 = v0[25];
  v14 = v0[23];
  v13 = v0[24];

  (*(v8 + 8))(v9, v11);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[31] = sub_20DF3C9D8();
  (*(v12 + 16))(v10, v14, v13);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v10, v13);
  v17 = sub_20DF3D598(sub_20DF14C34, v16);
  v0[32] = v17;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEFBDC8;
  v18 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_347;
  v0[14] = v18;
  [v17 disableGuidanceCollectionWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFBDC8()
{

  return MEMORY[0x2822009F8](sub_20DF1619C, 0, 0);
}

uint64_t sub_20DEFBEA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_20DEFBEC8, 0, 0);
}

uint64_t sub_20DEFBEC8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_20DEFBFC0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000022, 0x800000020DF4F6E0, sub_20DF0EBB0, v3, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEFBFC0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20DF161AC;
  }

  else
  {

    v2 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEFC0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v6[28] = *(v8 + 64);
  v6[29] = swift_task_alloc();
  v9 = sub_20DF47BD4();
  v6[30] = v9;
  v6[31] = *(v9 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFC210, 0, 0);
}

uint64_t sub_20DEFC210()
{
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DEAF000, v5, v6, "Disabling energy forecast collection", v7, 2u);
    MEMORY[0x20F329700](v7, -1, -1);
  }

  v8 = v0[31];
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[26];
  v14 = v0[23];

  (*(v8 + 8))(v9, v11);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[33] = sub_20DF3C9D8();
  (*(v12 + 16))(v10, v14, v13);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v10, v13);
  v17 = sub_20DF3D598(sub_20DF14C34, v16);
  v0[34] = v17;

  v18 = sub_20DF47D04();
  v0[35] = v18;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEFC520;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_337;
  v0[14] = v19;
  [v17 disableGuidanceCollectionWithGridID:v18 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFC520()
{

  return MEMORY[0x2822009F8](sub_20DEFC600, 0, 0);
}

uint64_t sub_20DEFC600()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[21];
  swift_unknownObjectRelease();

  [*(v2 + 16) invalidate];
  v0[22] = v3;
  sub_20DF47EE4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DEFC6C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_20DEFC6E8, 0, 0);
}

uint64_t sub_20DEFC6E8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_20DEFBFC0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000021, 0x800000020DF4F710, sub_20DF0EBF8, v3, &type metadata for HomeEnergyStatusCode);
}

uint64_t sub_20DEFC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v10 + 32))(&v18[v17], v12, v9);

  sub_20DEBB534(0, 0, v15, a5, v18);
}

uint64_t sub_20DEFC9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v6[28] = *(v8 + 64);
  v6[29] = swift_task_alloc();
  v9 = sub_20DF47BD4();
  v6[30] = v9;
  v6[31] = *(v9 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFCB00, 0, 0);
}

uint64_t sub_20DEFCB00()
{
  v26 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FD4();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  if (v7)
  {
    v12 = v0[23];
    v11 = v0[24];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_20DED38E8(v12, v11, &v25);
    _os_log_impl(&dword_20DEAF000, v5, v6, "Enable energy forecast collection for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v15 = v0[29];
  v16 = v0[26];
  v17 = v0[27];
  v18 = v0[25];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[33] = sub_20DF3C9D8();
  (*(v17 + 16))(v15, v18, v16);
  v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v20 = swift_allocObject();
  (*(v17 + 32))(v20 + v19, v15, v16);
  v21 = sub_20DF3D598(sub_20DF149F4, v20);
  v0[34] = v21;

  v22 = sub_20DF47D04();
  v0[35] = v22;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20DEFCE74;
  v23 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED8, &qword_20DF4B420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF161EC;
  v0[13] = &block_descriptor_327;
  v0[14] = v23;
  [v21 enableGuidanceCollectionWithGridID:v22 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFCE74()
{

  return MEMORY[0x2822009F8](sub_20DF16198, 0, 0);
}

uint64_t sub_20DEFCF54(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136446210;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Enable energy forecast collection failed.%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  return sub_20DF47ED4();
}

uint64_t sub_20DEFD1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DEFD1F8, 0, 0);
}

uint64_t sub_20DEFD1F8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE28, &unk_20DF4AFA0);
  *v5 = v0;
  v5[1] = sub_20DEFD310;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000002CLL, 0x800000020DF4F740, sub_20DF0EC30, v3, v6);
}

uint64_t sub_20DEFD310()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DF161F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20DEFD44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v28 = a5;
  v25 = a4;
  v26 = a1;
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEB8, &qword_20DF4B3E8);
  v23 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v24 = &v23 - v9;
  v11 = sub_20DF473B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - v16;
  v18 = sub_20DF47F04();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v12 + 16))(v14, v25, v11);
  (*(v7 + 16))(v10, v26, v6);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = (v13 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v27;
  *(v21 + 5) = a3;
  (*(v12 + 32))(&v21[v19], v14, v11);
  (*(v7 + 32))(&v21[v20], v24, v23);
  v21[v20 + v8] = v28;

  sub_20DEBB534(0, 0, v17, &unk_20DF4B3F8, v21);
}

uint64_t sub_20DEFD728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 424) = a8;
  *(v8 + 216) = a6;
  *(v8 + 224) = a7;
  *(v8 + 200) = a4;
  *(v8 + 208) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE28, &unk_20DF4AFA0);
  *(v8 + 232) = swift_task_alloc();
  v9 = sub_20DF47624();
  *(v8 + 240) = v9;
  *(v8 + 248) = *(v9 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEB8, &qword_20DF4B3E8);
  *(v8 + 272) = v10;
  v11 = *(v10 - 8);
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v11 + 64);
  *(v8 + 296) = swift_task_alloc();
  v12 = sub_20DF473B4();
  *(v8 + 304) = v12;
  *(v8 + 312) = *(v12 - 8);
  *(v8 + 320) = swift_task_alloc();
  v13 = sub_20DF47BD4();
  *(v8 + 328) = v13;
  *(v8 + 336) = *(v13 - 8);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFD974, 0, 0);
}

uint64_t sub_20DEFD974()
{
  v42 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 304);
  v7 = *(v0 + 216);
  v8 = __swift_project_value_buffer(v2, qword_281122F18);
  *(v0 + 368) = v8;
  swift_beginAccess();
  v9 = *(v3 + 16);
  *(v0 + 376) = v9;
  *(v0 + 384) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);

  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FD4();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 360);
  v15 = *(v0 + 328);
  v14 = *(v0 + 336);
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v18 = *(v0 + 304);
  if (v12)
  {
    v39 = *(v0 + 360);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v38 = *(v0 + 328);
    v21 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v21 = 136380931;
    *(v21 + 4) = sub_20DED38E8(v19, v20, &v41);
    *(v21 + 12) = 2080;
    sub_20DF1489C(&qword_27C84CEC8, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v22 = sub_20DF483B4();
    v24 = v23;
    (*(v17 + 8))(v16, v18);
    v25 = sub_20DED38E8(v22, v24, &v41);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Fetch historical energy windows for %{private}s in %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v37, -1, -1);
    MEMORY[0x20F329700](v21, -1, -1);

    (*(v14 + 8))(v39, v38);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v26 = *(v0 + 296);
  v28 = *(v0 + 272);
  v27 = *(v0 + 280);
  v40 = *(v0 + 424);
  v29 = *(v0 + 224);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 392) = sub_20DF3C9D8();
  (*(v27 + 16))(v26, v29, v28);
  v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v31 = swift_allocObject();
  (*(v27 + 32))(v31 + v30, v26, v28);
  v32 = sub_20DF3D598(sub_20DF14860, v31);
  *(v0 + 400) = v32;

  v33 = sub_20DF47D04();
  *(v0 + 408) = v33;
  v34 = sub_20DF47384();
  *(v0 + 416) = v34;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_20DEFDE10;
  v35 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEC0, &qword_20DF4B400);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF16EC8;
  *(v0 + 104) = &block_descriptor_317;
  *(v0 + 112) = v35;
  [v32 historicalGridQualityFor:v33 from:v34 withCaching:v40 completionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DEFDE10()
{

  return MEMORY[0x2822009F8](sub_20DEFDEF0, 0, 0);
}

uint64_t sub_20DEFDEF0()
{
  v26 = v0;
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 392);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  swift_unknownObjectRelease();

  v6 = [*(v3 + 16) invalidate];
  if (v4 >> 60 == 15)
  {
    (*(v0 + 376))(*(v0 + 344), *(v0 + 368), *(v0 + 328));
    v7 = sub_20DF47BB4();
    v8 = sub_20DF47FF4();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 336);
    v10 = *(v0 + 344);
    v12 = *(v0 + 328);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_20DED38E8(0xD00000000000001ELL, 0x800000020DF4FBB0, &v25);
      _os_log_impl(&dword_20DEAF000, v7, v8, "%{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x20F329700](v14, -1, -1);
      MEMORY[0x20F329700](v13, -1, -1);
    }

    (*(v11 + 8))(v10, v12);
    sub_20DED4D6C();
    v15 = swift_allocError();
    *v16 = 3;
    *(v0 + 184) = v15;
    sub_20DF47ED4();
  }

  else
  {
    v17 = MEMORY[0x20F329140](v6);
    sub_20DF47324();
    swift_allocObject();
    sub_20DF47314();
    sub_20DF1489C(&qword_281122970, MEMORY[0x277D17ED0], MEMORY[0x277D17EE0]);
    sub_20DF47304();
    v20 = *(v0 + 264);
    v21 = *(v0 + 248);
    v22 = *(v0 + 256);
    v23 = *(v0 + 232);
    v24 = *(v0 + 240);

    objc_autoreleasePoolPop(v17);
    (*(v21 + 32))(v20, v22, v24);
    (*(v21 + 16))(v23, v20, v24);
    (*(v21 + 56))(v23, 0, 1, v24);
    sub_20DF47EE4();
    sub_20DF14888(v5, v4);

    (*(v21 + 8))(v20, v24);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_20DEFE404(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136446210;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to fetch historical energy windows. %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEB8, &qword_20DF4B3E8);
  return sub_20DF47ED4();
}

uint64_t sub_20DEFE680(double a1, double a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_20DEFE6A0, 0, 0);
}

uint64_t sub_20DEFE6A0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C930, qword_20DF4AFB0);
  *v4 = v0;
  v4[1] = sub_20DEFE7B0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000010, 0x800000020DF4E7D0, sub_20DEBB23C, v3, v5);
}

uint64_t sub_20DEFE7B0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20DEFE8E8;
  }

  else
  {

    v2 = sub_20DEFE8CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEFE8E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DEFE94C(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF08, &qword_20DF4B528);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_20DF47F04();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v10, a1, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v7 + 32))(v16 + v15, v10, v6);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;
  sub_20DEBB534(0, 0, v13, &unk_20DF4B538, v16);
}

uint64_t sub_20DEFEB4C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a1;
  *(v6 + 224) = a2;
  *(v6 + 208) = a6;
  v7 = sub_20DF47BD4();
  *(v6 + 232) = v7;
  *(v6 + 240) = *(v7 - 8);
  *(v6 + 248) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF08, &qword_20DF4B528);
  *(v6 + 256) = v8;
  v9 = *(v8 - 8);
  *(v6 + 264) = v9;
  *(v6 + 272) = *(v9 + 64);
  *(v6 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFEC80, 0, 0);
}

uint64_t sub_20DEFEC80()
{
  v1 = *(v0 + 35);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  v5 = v0[27];
  v4 = v0[28];
  v6 = *(v0 + 26);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 36) = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v6, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v9 = sub_20DF3D598(sub_20DF16058, v8);
  *(v0 + 37) = v9;

  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 21;
  *(v0 + 3) = sub_20DEFEE88;
  v10 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD8, &qword_20DF4AC80);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_20DEF28A4;
  *(v0 + 13) = &block_descriptor_467;
  *(v0 + 14) = v10;
  [v9 gridIDLookupWithCoordinate:v0 + 10 completionHandler:{v5, v4}];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFEE88()
{

  return MEMORY[0x2822009F8](sub_20DEFEF68, 0, 0);
}

uint64_t sub_20DEFEF68()
{
  v21 = v0;
  v1 = v0[36];
  v2 = v0[21];
  v3 = v0[22];
  swift_unknownObjectRelease();
  [*(v1 + 16) invalidate];
  if (v3)
  {
    v0[23] = v2;
    v0[24] = v3;
    sub_20DF47EE4();
  }

  else
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[29];
    v7 = __swift_project_value_buffer(v6, qword_281122F18);
    swift_beginAccess();
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_20DF47BB4();
    v9 = sub_20DF47FF4();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[29];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_20DED38E8(0xD000000000000018, 0x800000020DF4FBE0, &v20);
      _os_log_impl(&dword_20DEAF000, v8, v9, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x20F329700](v15, -1, -1);
      MEMORY[0x20F329700](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    sub_20DED4D6C();
    v16 = swift_allocError();
    *v17 = 4;
    v0[25] = v16;
    sub_20DF47ED4();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_20DEFF1D0(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Grid ID lookup failed. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF08, &qword_20DF4B528);
  return sub_20DF47ED4();
}

uint64_t sub_20DEFF44C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = sub_20DF0EC40();
  *v1 = v0;
  v1[1] = sub_20DEFB860;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000014, 0x800000020DF4F770, sub_20DEFF528, 0, v2);
}

uint64_t sub_20DEFF558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEA8, &qword_20DF4B3C8);
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v4[23] = *(v6 + 64);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEFF62C, 0, 0);
}

uint64_t sub_20DEFF62C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[25] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = sub_20DF3D598(sub_20DF14698, v6);
  v0[26] = v7;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEFF820;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEB0, &qword_20DF4B3E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEE2500;
  v0[13] = &block_descriptor_307;
  v0[14] = v8;
  [v7 getCurrentLocationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEFF820()
{

  return MEMORY[0x2822009F8](sub_20DF161A4, 0, 0);
}

uint64_t sub_20DEFF900(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to get Current Location. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEA8, &qword_20DF4B3C8);
  return sub_20DF47ED4();
}

uint64_t sub_20DEFFB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20DEFFBA0, 0, 0);
}

uint64_t sub_20DEFFBA0()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_20DEFFCA4;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000026, 0x800000020DF4F790, sub_20DF0EC8C, v2, v4);
}

uint64_t sub_20DEFFCA4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20DF161AC;
  }

  else
  {

    v2 = sub_20DF161DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEFFDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v26 = a1;
  v5 = sub_20DF47564();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, v26, v8);
  v17 = a2;
  v18 = v5;
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v5);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v9 + 32))(v21 + v19, v12, v8);
  (*(v6 + 32))(v21 + v20, v25, v18);
  v22 = (v21 + ((v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;

  sub_20DF00870(0, 0, v15, &unk_20DF4B3C0, v21);
}

uint64_t sub_20DF0009C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v7[24] = *(v9 + 64);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF00174, 0, 0);
}

uint64_t sub_20DF00174()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[26] = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, v1, v3);
  v7 = sub_20DF3D598(sub_20DF14574, v6);
  v0[27] = v7;

  v8 = sub_20DF47524();
  v0[28] = v8;
  v9 = sub_20DF47D04();
  v0[29] = v9;
  v0[2] = v0;
  v0[3] = sub_20DF0038C;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_296;
  v0[14] = v10;
  [v7 requestAddToShareForHomeUUID:v8 siteID:v9 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF0038C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_20DF00550;
  }

  else
  {
    v2 = sub_20DF0049C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF0049C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  sub_20DF47EE4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DF00550(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[28];
  swift_willThrow();

  swift_unknownObjectRelease();

  v4 = v1[1];

  return v4();
}

uint64_t sub_20DF005F4(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to request add to share. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF00870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_20DED8804(a3, v22 - v9, &qword_27C84C918, &qword_20DF49EE0);
  v11 = sub_20DF47F04();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_20DED8730(v10, &qword_27C84C918, &qword_20DF49EE0);
  }

  else
  {
    sub_20DF47EF4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_20DF47EC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_20DF47D44() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_20DED8730(a3, &qword_27C84C918, &qword_20DF49EE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20DED8730(a3, &qword_27C84C918, &qword_20DF49EE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_20DF00B1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20DF00BF0;
  v2 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v1, 0, 0, 0xD000000000000012, 0x800000020DF4F7C0, sub_20DF00D04, 0, v2);
}

uint64_t sub_20DF00BF0()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_20DECBDB4;
  }

  else
  {
    v2 = sub_20DF161DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF00D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v4[22] = *(v6 + 64);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF00E08, 0, 0);
}

uint64_t sub_20DF00E08()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[24] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = sub_20DF3D598(sub_20DF143B0, v6);
  v0[25] = v7;

  v0[2] = v0;
  v0[3] = sub_20DF00FEC;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_286;
  v0[14] = v8;
  [v7 resetUtilityDataWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF00FEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_20DF01190;
  }

  else
  {
    v2 = sub_20DF010FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF010FC()
{
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();
  [*(v1 + 16) invalidate];
  sub_20DF47EE4();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DF01190(uint64_t a1)
{
  v2 = v1[26];
  swift_willThrow();

  swift_unknownObjectRelease();
  v1[18] = v2;
  sub_20DF47ED4();

  v3 = v1[1];

  return v3();
}

uint64_t sub_20DF0123C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to purge all data. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF014B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 73) = a6;
  *(v6 + 72) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DF014E4, 0, 0);
}

uint64_t sub_20DF014E4()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 72);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v9 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *(v5 + 16) = v9;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
  *(v5 + 48) = v3;
  *(v5 + 56) = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_20DF0160C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000003FLL, 0x800000020DF4F7E0, sub_20DF0EC98, v5, v7);
}

uint64_t sub_20DF0160C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20DEFE8E8;
  }

  else
  {

    v2 = sub_20DF161DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF01728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v31 = a7;
  v30 = a6;
  v29 = a5;
  v27 = a2;
  v28 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_20DF47F04();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v10 + 32))(v20 + v18, v13, v9);
  v21 = (v20 + v19);
  v22 = v28;
  *v21 = v27;
  v21[1] = a3;
  v23 = v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v23 = v22;
  *(v23 + 8) = v29;
  v24 = v20 + ((v19 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v24 = v30;
  *(v24 + 8) = v31;

  sub_20DEBB534(0, 0, v16, &unk_20DF4B3A0, v20);
}

uint64_t sub_20DF01978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 257) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = v13;
  *(v8 + 256) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 152) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 + 64);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF01A68, 0, 0);
}

uint64_t sub_20DF01A68()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v14 = *(v0 + 257);
  v3 = *(v0 + 192);
  v13 = *(v0 + 184);
  v12 = *(v0 + 256);
  v11 = *(v0 + 176);
  v4 = *(v0 + 152);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 224) = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, v1, v3);
  v7 = sub_20DF3D598(sub_20DF1428C, v6);
  *(v0 + 232) = v7;

  v8 = sub_20DF47D04();
  *(v0 + 240) = v8;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_20DF01C94;
  v9 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DEC8A6C;
  *(v0 + 104) = &block_descriptor_276;
  *(v0 + 112) = v9;
  [v7 submitTestTaskWithTaskID:v8 delay:v11 withRetry:v12 taskDuration:v13 cancelOnly:v14 completionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DF01C94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_20DF01E44;
  }

  else
  {
    v2 = sub_20DF01DA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF01DA4()
{
  v1 = v0[30];
  v2 = v0[28];
  swift_unknownObjectRelease();

  [*(v2 + 16) invalidate];
  sub_20DF47EE4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DF01E44(uint64_t a1)
{
  v3 = v1[30];
  v2 = v1[31];
  swift_willThrow();

  swift_unknownObjectRelease();

  v1[18] = v2;
  sub_20DF47ED4();

  v4 = v1[1];

  return v4();
}

uint64_t sub_20DF01EF8(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to submit test task. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF02174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20DF02198, 0, 0);
}

uint64_t sub_20DF02198()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_20DEFFCA4;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD00000000000001BLL, 0x800000020DF4F820, sub_20DF0ECB0, v2, v4);
}

uint64_t sub_20DF0229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = (v18 + v17);
  *v19 = v22;
  v19[1] = a3;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_20DEBB534(0, 0, v14, &unk_20DF4B390, v18);
}

uint64_t sub_20DF024C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v7[25] = *(v9 + 64);
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0259C, 0, 0);
}

uint64_t sub_20DF0259C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v12 = v0[22];
  v4 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[27] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = sub_20DF3D598(sub_20DF140E0, v6);
  v0[28] = v7;

  v8 = sub_20DF47D04();
  v0[29] = v8;
  if (v12)
  {
    v9 = sub_20DF47C24();
  }

  else
  {
    v9 = 0;
  }

  v0[30] = v9;
  v0[2] = v0;
  v0[3] = sub_20DF027DC;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_266;
  v0[14] = v10;
  [v7 setKVSDictionaryWithKey:v8 dict:v9 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF027DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_20DF02998;
  }

  else
  {
    v2 = sub_20DF028EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF028EC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  sub_20DF47EE4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DF02998(uint64_t a1)
{
  v3 = v1[30];
  v2 = v1[31];
  v4 = v1[29];
  swift_willThrow();

  swift_unknownObjectRelease();

  v1[18] = v2;
  sub_20DF47ED4();

  v5 = v1[1];

  return v5();
}

uint64_t sub_20DF02A5C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to set kvs. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF02CD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_20DF02CF8, 0, 0);
}

uint64_t sub_20DF02CF8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE30, qword_20DF4AFE8);
  *v4 = v0;
  v4[1] = sub_20DEFBFC0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000016, 0x800000020DF4F840, sub_20DF0ECBC, v3, v5);
}

uint64_t sub_20DF02E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - v17;
  v19 = sub_20DF47F04();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a1, v11);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v12 + 32))(v21 + v20, v15, v11);
  v22 = (v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a2;
  v22[1] = a3;

  sub_20DEBB534(0, 0, v18, a7, v21);
}

uint64_t sub_20DF02FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE98, &qword_20DF4B368);
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v6[26] = *(v8 + 64);
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF030CC, 0, 0);
}

uint64_t sub_20DF030CC()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[28] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = sub_20DF3D598(sub_20DF13F68, v6);
  v0[29] = v7;

  v8 = sub_20DF47D04();
  v0[30] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEBCD38;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEA0, &qword_20DF4B380);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF0355C;
  v0[13] = &block_descriptor_256;
  v0[14] = v9;
  [v7 getKVSDictionaryWithKey:v8 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF032E0(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to get kvs. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE98, &qword_20DF4B368);
  return sub_20DF47ED4();
}

uint64_t sub_20DF0355C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_20DF47C34();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_20DF03658(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  *(v3 + 264) = a1;
  v4 = sub_20DF47BD4();
  *(v3 + 168) = v4;
  *(v3 + 176) = *(v4 - 8);
  *(v3 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0371C, 0, 0);
}

uint64_t sub_20DF0371C()
{
  v1 = sub_20DF477E4();
  v3 = v2;
  v0[24] = v2;
  v4 = swift_task_alloc();
  v0[25] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[26] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE30, qword_20DF4AFE8);
  *v5 = v0;
  v5[1] = sub_20DF03830;

  return MEMORY[0x2822008A0](v0 + 18, 0, 0, 0xD000000000000016, 0x800000020DF4F840, sub_20DF161FC, v4, v6);
}

uint64_t sub_20DF03830()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_20DF03B10;
  }

  else
  {

    v2 = sub_20DF03954;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF03954()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
    v1 = sub_20DED8600(MEMORY[0x277D84F90]);
  }

  v2 = *(v0 + 264);
  *(v0 + 136) = v1;
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  if (v2 == 1)
  {
    *(v0 + 72) = MEMORY[0x277D839B0];
    *(v0 + 48) = 1;
    sub_20DED8390((v0 + 48), (v0 + 80));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF0E9A0((v0 + 80), v4, v3, isUniquelyReferenced_nonNull_native);
    v6 = v1;
    *(v0 + 136) = v1;
  }

  else
  {
    sub_20DF0E74C(*(v0 + 152), *(v0 + 160), (v0 + 16));
    sub_20DED8730(v0 + 16, &qword_27C84CA00, &qword_20DF4A170);
    v6 = *(v0 + 136);
  }

  *(v0 + 224) = v6;
  v7 = sub_20DF477E4();
  v9 = v8;
  *(v0 + 232) = v8;
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v6;
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_20DF03DD0;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v11, 0, 0, 0xD00000000000001BLL, 0x800000020DF4F820, sub_20DF161D8, v10, v12);
}

uint64_t sub_20DF03B10()
{
  v25 = v0;

  v1 = v0[27];
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FF4();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[21];
  if (v9)
  {
    v23 = v0[23];
    v13 = v0[19];
    v14 = v0[20];
    v22 = v0[21];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_20DED38E8(0xD00000000000002BLL, 0x800000020DF4F860, &v24);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20DED38E8(v13, v14, &v24);
    *(v15 + 22) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v19;
    *v16 = v19;
    _os_log_impl(&dword_20DEAF000, v7, v8, "%s failed for homeID: %s error: %@", v15, 0x20u);
    sub_20DED8730(v16, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v17, -1, -1);
    MEMORY[0x20F329700](v15, -1, -1);

    (*(v11 + 8))(v23, v22);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20DF03DD0()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_20DF03F68;
  }

  else
  {

    v2 = sub_20DF03F08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF03F08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DF03F68()
{
  v25 = v0;

  v1 = v0[32];
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FF4();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[21];
  if (v9)
  {
    v23 = v0[23];
    v13 = v0[19];
    v14 = v0[20];
    v22 = v0[21];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_20DED38E8(0xD00000000000002BLL, 0x800000020DF4F860, &v24);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20DED38E8(v13, v14, &v24);
    *(v15 + 22) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v19;
    *v16 = v19;
    _os_log_impl(&dword_20DEAF000, v7, v8, "%s failed for homeID: %s error: %@", v15, 0x20u);
    sub_20DED8730(v16, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v17, -1, -1);
    MEMORY[0x20F329700](v15, -1, -1);

    (*(v11 + 8))(v23, v22);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20DF04234(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_20DF47BD4();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF042F4, 0, 0);
}

uint64_t sub_20DF042F4(uint64_t a1)
{
  v2 = sub_20DF477E4();
  v4 = v3;
  v1[15] = v3;
  v5 = swift_task_alloc();
  v1[16] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  v1[17] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE30, qword_20DF4AFE8);
  *v6 = v1;
  v6[1] = sub_20DF04408;

  return MEMORY[0x2822008A0](v1 + 9, 0, 0, 0xD000000000000016, 0x800000020DF4F840, sub_20DF161FC, v5, v7);
}

uint64_t sub_20DF04408()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20DF0461C;
  }

  else
  {

    v2 = sub_20DF0452C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF0452C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v1 = sub_20DED8600(MEMORY[0x277D84F90]);
    if (!*(v1 + 16))
    {
LABEL_8:

      goto LABEL_9;
    }
  }

  v2 = sub_20DEEFAE0(*(v0 + 80), *(v0 + 88));
  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_20DEBA2EC(*(v1 + 56) + 32 * v2, v0 + 16);

  if (swift_dynamicCast())
  {
    v4 = *(v0 + 152);
    goto LABEL_10;
  }

LABEL_9:
  v4 = 0;
LABEL_10:

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_20DF0461C()
{
  v26 = v0;

  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FF4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  if (v9)
  {
    v24 = v0[14];
    v14 = v0[10];
    v15 = v0[11];
    v23 = v0[12];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_20DED38E8(0xD000000000000026, 0x800000020DF4F890, &v25);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20DED38E8(v14, v15, &v25);
    *(v16 + 22) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v20;
    *v17 = v20;
    _os_log_impl(&dword_20DEAF000, v7, v8, "%s failed for homeID: %s error: %@", v16, 0x20u);
    sub_20DED8730(v17, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v18, -1, -1);
    MEMORY[0x20F329700](v16, -1, -1);

    (*(v12 + 8))(v24, v23);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_20DF048E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20DF04908, 0, 0);
}

uint64_t sub_20DF04908()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  *v4 = v0;
  v4[1] = sub_20DF04A18;
  v6 = *(v0 + 16);

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000020, 0x800000020DF4F8C0, sub_20DF0EEEC, v2, v5);
}

uint64_t sub_20DF04A18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20DF04B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320);
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v7[24] = *(v9 + 64);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF04C50, 0, 0);
}

uint64_t sub_20DF04C50()
{
  v12 = v0[27];
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, v1, v3);
  v7 = sub_20DF3D598(sub_20DF13E00, v6);
  v0[30] = v7;

  v8 = sub_20DF47D04();
  v0[31] = v8;
  v9 = sub_20DF47524();
  v0[32] = v9;
  v0[2] = v0;
  v0[7] = v12;
  v0[3] = sub_20DF04E78;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE88, &qword_20DF4B338);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF05090;
  v0[13] = &block_descriptor_246;
  v0[14] = v10;
  [v7 addGuidanceTokenWithGridID:v8 siteID:v9 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF04E78()
{

  return MEMORY[0x2822009F8](sub_20DF04F58, 0, 0);
}

uint64_t sub_20DF04F58()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[28];
  v5 = v0[26];
  sub_20DED9CE8(v0[27], v4, &qword_27C84CCB8, &qword_20DF4AC48);
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  sub_20DED8804(v4, v5, &qword_27C84CCB8, &qword_20DF4AC48);
  sub_20DF47EE4();

  sub_20DED8730(v4, &qword_27C84CCB8, &qword_20DF4AC48);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DF05090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_20DF47544();
    v11 = sub_20DF47564();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  }

  else
  {
    v12 = sub_20DF47564();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  sub_20DED9CE8(v7, v9, &qword_27C84CCB8, &qword_20DF4AC48);
  sub_20DED9CE8(v9, *(*(v10 + 64) + 40), &qword_27C84CCB8, &qword_20DF4AC48);
  return swift_continuation_resume();
}

uint64_t sub_20DF05240()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_20DF05334;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD00000000000001CLL, 0x800000020DF4F8F0, sub_20DF0EF28, v2, v4);
}

uint64_t sub_20DF05334()
{

  return MEMORY[0x2822009F8](sub_20DF0544C, 0, 0);
}

uint64_t sub_20DF05460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v5[22] = *(v7 + 64);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF05534, 0, 0);
}

uint64_t sub_20DF05534()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[24] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = sub_20DF3D598(sub_20DF13AE4, v6);
  v0[25] = v7;

  v8 = sub_20DF47524();
  v0[26] = v8;
  v0[2] = v0;
  v0[3] = sub_20DF05730;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF2B4C4;
  v0[13] = &block_descriptor_236;
  v0[14] = v9;
  [v7 deleteGuidanceTokenWithSiteID:v8 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF05730()
{

  return MEMORY[0x2822009F8](sub_20DF05810, 0, 0);
}

uint64_t sub_20DF05810()
{
  v1 = v0[26];
  v2 = v0[24];
  swift_unknownObjectRelease();

  [*(v2 + 16) invalidate];
  sub_20DF47EE4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DF058B8(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27C851F48);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_20DF47BB4();
  v9 = sub_20DF47FF4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[1] = a1;
    v18 = v11;
    *v10 = 136315138;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v13 = sub_20DF47D24();
    v15 = sub_20DED38E8(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_20DEAF000, v8, v9, "Failed to delete Guidance Token. %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F329700](v11, -1, -1);
    MEMORY[0x20F329700](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  return sub_20DF47EE4();
}

uint64_t sub_20DF05B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20DF05B40, 0, 0);
}

uint64_t sub_20DF05B40()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  *v4 = v0;
  v4[1] = sub_20DF16108;
  v6 = *(v0 + 16);

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000020, 0x800000020DF4F910, sub_20DF0EF70, v2, v5);
}

uint64_t sub_20DF05C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a3;
  v33 = a6;
  v30 = a5;
  v31 = a2;
  v29 = a1;
  v7 = sub_20DF47564();
  v27 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_20DF47F04();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, v29, v10);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v8 + 80) + v20 + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v11 + 32))(v22 + v19, v14, v10);
  v23 = (v22 + v20);
  v24 = v32;
  *v23 = v31;
  v23[1] = v24;
  (*(v8 + 32))(v22 + v21, v28, v27);

  sub_20DEBB534(0, 0, v17, v33, v22);
}

uint64_t sub_20DF05F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320);
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v7[24] = *(v9 + 64);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF06044, 0, 0);
}

uint64_t sub_20DF06044()
{
  v12 = v0[27];
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, v1, v3);
  v7 = sub_20DF3D598(sub_20DF161F4, v6);
  v0[30] = v7;

  v8 = sub_20DF47D04();
  v0[31] = v8;
  v9 = sub_20DF47524();
  v0[32] = v9;
  v0[2] = v0;
  v0[7] = v12;
  v0[3] = sub_20DF0626C;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE88, &qword_20DF4B338);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF05090;
  v0[13] = &block_descriptor_226;
  v0[14] = v10;
  [v7 getGuidanceTokenWithGridID:v8 siteID:v9 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF0626C()
{

  return MEMORY[0x2822009F8](sub_20DF161B0, 0, 0);
}

uint64_t sub_20DF0634C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_20DF47BD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_27C851F48);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = a1;
  v13 = sub_20DF47BB4();
  v14 = sub_20DF47FF4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24[0] = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24[1] = a1;
    v25 = v17;
    *v16 = 136315138;
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v19 = sub_20DF47D24();
    v21 = sub_20DED38E8(v19, v20, &v25);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_20DEAF000, v13, v14, "Failed to add Guidance Token. %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x20F329700](v17, -1, -1);
    MEMORY[0x20F329700](v16, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v22 = sub_20DF47564();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320);
  return sub_20DF47EE4();
}

uint64_t sub_20DF06668()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C930, qword_20DF4AFB0);
  *v3 = v0;
  v3[1] = sub_20DF06770;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000011, 0x800000020DF4F940, sub_20DF0EFAC, v2, v4);
}

uint64_t sub_20DF06770()
{

  return MEMORY[0x2822009F8](sub_20DF06888, 0, 0);
}

uint64_t sub_20DF068A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v28 = a2;
  v9 = sub_20DF47564();
  v10 = *(v9 - 8);
  v27 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = sub_20DF47F04();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v14 + 16))(v17, a1, v13);
  v22 = v9;
  (*(v10 + 16))(v12, v28, v9);
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = (v15 + *(v10 + 80) + v23) & ~*(v10 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v14 + 32))(v25 + v23, v17, v13);
  (*(v10 + 32))(v25 + v24, v12, v22);
  sub_20DEBB534(0, 0, v20, v30, v25);
}

uint64_t sub_20DF06B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE78, &qword_20DF4B300);
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v5[26] = *(v7 + 64);
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF06C24, 0, 0);
}

uint64_t sub_20DF06C24()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[28] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = sub_20DF3D598(sub_20DF1368C, v6);
  v0[29] = v7;

  v8 = sub_20DF47524();
  v0[30] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DF06E2C;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD8, &qword_20DF4AC80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEF28A4;
  v0[13] = &block_descriptor_216;
  v0[14] = v9;
  [v7 getGridIDWithToken:v8 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF06E2C()
{

  return MEMORY[0x2822009F8](sub_20DF06F0C, 0, 0);
}

uint64_t sub_20DF06F0C()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[18];
  v4 = v0[19];
  swift_unknownObjectRelease();

  [*(v2 + 16) invalidate];
  v0[20] = v3;
  v0[21] = v4;
  sub_20DF47EE4();

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DF06FCC(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27C851F48);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_20DF47BB4();
  v9 = sub_20DF47FF4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = a1;
    v18[0] = v11;
    *v10 = 136315138;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v13 = sub_20DF47D24();
    v15 = sub_20DED38E8(v13, v14, v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_20DEAF000, v8, v9, "Failed to get gridID for token. %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F329700](v11, -1, -1);
    MEMORY[0x20F329700](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v18[0] = 0;
  v18[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE78, &qword_20DF4B300);
  return sub_20DF47EE4();
}

uint64_t sub_20DF07238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_20DF0725C, 0, 0);
}

uint64_t sub_20DF0725C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_20DF0735C;
  v4 = MEMORY[0x277D83B88];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000025, 0x800000020DF4F960, sub_20DF0EFF4, v2, v4);
}

uint64_t sub_20DF0735C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20DEFE8E8;
  }

  else
  {

    v2 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF07478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v27 = a1;
  v28 = a2;
  v33 = sub_20DF473B4();
  v4 = *(v33 - 8);
  v29 = *(v4 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DF47564();
  v25 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE68, &qword_20DF4B2E0);
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_20DF47F04();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, v27, v9);
  (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v6);
  (*(v4 + 16))(v32, v30, v33);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + *(v7 + 80) + v18) & ~*(v7 + 80);
  v20 = (v8 + *(v4 + 80) + v19) & ~*(v4 + 80);
  v21 = (v29 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v10 + 32))(v22 + v18, v13, v24);
  (*(v7 + 32))(v22 + v19, v26, v25);
  (*(v4 + 32))(v22 + v20, v32, v33);
  *(v22 + v21) = v31;
  sub_20DEBB534(0, 0, v16, &unk_20DF4B2F0, v22);
}

uint64_t sub_20DF07814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE68, &qword_20DF4B2E0);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF078EC, 0, 0);
}

uint64_t sub_20DF078EC()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v12 = v0[24];
  v4 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, v1, v3);
  v7 = sub_20DF3D598(sub_20DF13508, v6);
  v0[30] = v7;

  v8 = sub_20DF47524();
  v0[31] = v8;
  v9 = sub_20DF47384();
  v0[32] = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEBEB7C;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE70, &qword_20DF4B2F8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF07D90;
  v0[13] = &block_descriptor_206;
  v0[14] = v10;
  [v7 downloadLoadEventsWithSite:v8 range:v9 limit:v12 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF07B14(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to fetch events. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE68, &qword_20DF4B2E0);
  return sub_20DF47ED4();
}

uint64_t sub_20DF07D90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_20DF07E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 65) = a5;
  *(v5 + 64) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_20DF07E88, 0, 0);
}

uint64_t sub_20DF07E88()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v8 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 41) = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_20DEFFCA4;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000004ALL, 0x800000020DF4F990, sub_20DF0F000, v4, v6);
}

uint64_t sub_20DF07FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v33 = a5;
  v34 = a6;
  v30 = a4;
  v31 = a2;
  v32 = a3;
  v7 = sub_20DF474E4();
  v28 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = sub_20DF47F04();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a1, v10);
  (*(v8 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v7);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v8 + 80) + v20 + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v11 + 32))(v22 + v19, v14, v10);
  v23 = (v22 + v20);
  v24 = v32;
  *v23 = v31;
  v23[1] = v24;
  (*(v8 + 32))(v22 + v21, v29, v28);
  v25 = (v22 + v21 + v9);
  v26 = v34;
  *v25 = v33;
  v25[1] = v26;

  sub_20DEBB534(0, 0, v17, &unk_20DF4B2D8, v22);
}

uint64_t sub_20DF08298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 257) = v13;
  *(v8 + 256) = a8;
  *(v8 + 168) = a6;
  *(v8 + 176) = a7;
  *(v8 + 152) = a4;
  *(v8 + 160) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  *(v8 + 184) = v9;
  v10 = *(v9 - 8);
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 + 64);
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF08380, 0, 0);
}

uint64_t sub_20DF08380()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 216) = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = sub_20DF3D598(sub_20DF132F0, v7);
  *(v0 + 224) = v8;

  if (v4)
  {
    v9 = sub_20DF47D04();
  }

  else
  {
    v9 = 0;
  }

  *(v0 + 232) = v9;
  v10 = *(v0 + 257);
  v11 = *(v0 + 256);
  v12 = sub_20DF47464();
  *(v0 + 240) = v12;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_20DF085A0;
  v13 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DEC8A6C;
  *(v0 + 104) = &block_descriptor_196;
  *(v0 + 112) = v13;
  [v8 saveAllHistoricalWithGridID:v9 untilDate:v12 mockCompleteSession:v11 deterministicMock:v10 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DF085A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_20DF161A0;
  }

  else
  {
    v2 = sub_20DF161C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF086B0(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to save initial historical guidance in cache. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}