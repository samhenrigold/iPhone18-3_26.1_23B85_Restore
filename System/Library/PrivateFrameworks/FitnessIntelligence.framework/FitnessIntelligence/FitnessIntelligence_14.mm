uint64_t sub_1B4AADC88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A22PlusPropertyDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v53 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A96F0, &qword_1B4D28FF8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_40;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_1B4D18DCC();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_40;
  }

  v23 = v14[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_40;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v29 = v14;
      v30 = sub_1B4D18DCC();
      v14 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_40;
  }

  v31 = v14[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_40;
    }
  }

  v36 = v14[8];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (!v38)
  {
    if (!v40)
    {
      goto LABEL_32;
    }

LABEL_40:
    v48 = 0;
    return v48 & 1;
  }

  if (!v40)
  {
    goto LABEL_40;
  }

  if (*v37 != *v39 || v38 != v40)
  {
    v41 = v14;
    v42 = sub_1B4D18DCC();
    v14 = v41;
    if ((v42 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_32:
  v43 = v14[9];
  v44 = *(v11 + 48);
  sub_1B4974FBC(a1 + v43, v13, &qword_1EB8A9540, &unk_1B4D27B00);
  v45 = a2 + v43;
  v46 = v44;
  sub_1B4974FBC(v45, &v13[v44], &qword_1EB8A9540, &unk_1B4D27B00);
  v47 = *(v5 + 48);
  if (v47(v13, 1, v4) == 1)
  {
    if (v47(&v13[v46], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A9540, &unk_1B4D27B00);
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A9540, &unk_1B4D27B00);
  if (v47(&v13[v46], 1, v4) == 1)
  {
    sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
LABEL_38:
    v49 = &qword_1EB8A96F0;
    v50 = &qword_1B4D28FF8;
LABEL_39:
    sub_1B4975024(v13, v49, v50);
    goto LABEL_40;
  }

  sub_1B4A9C0D4(&v13[v46], v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  if ((sub_1B4A0C158(*v10, *v7) & 1) == 0)
  {
    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    v49 = &qword_1EB8A9540;
    v50 = &unk_1B4D27B00;
    goto LABEL_39;
  }

  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v52 = sub_1B4D1816C();
  sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  sub_1B4975024(v13, &qword_1EB8A9540, &unk_1B4D27B00);
  if ((v52 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_35:
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v48 = sub_1B4D1816C();
  return v48 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A29PlusPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0 || (sub_1B4A0C158(a1[1], a2[1]) & 1) == 0 || (sub_1B4A0A164(a1[2], a2[2]) & 1) == 0 || (sub_1B4A0C158(a1[3], a2[3]) & 1) == 0 || (sub_1B4A0E6CC(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A18PlusCatalogWorkoutV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B4A0C158(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

void sub_1B4AAF178(uint64_t a1)
{
  sub_1B4AAF394(319, &qword_1EDC37930, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4AAF264(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4AAF550(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4AAF550(319, &qword_1EDC37890, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4AAF394(319, qword_1EDC3A020, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4AAF394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4AAF420(uint64_t a1)
{
  sub_1B4AAF550(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4AAF550(319, &qword_1EDC378E0, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B4AAF394(319, &qword_1EDC37928, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1B4D17BCC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4AAF550(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B4AAF5C8(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4AAF394(319, qword_1EDC3A0B8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4AAF394(319, qword_1EDC3A358, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4AAF724(uint64_t a1)
{
  sub_1B4AAF394(319, &qword_1EDC37920, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4AAF808(uint64_t a1)
{
  sub_1B4AAF550(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4AAF8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j____swift_get_extra_inhabitant_index_287Tm_0);
}

uint64_t sub_1B4AAF950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_288Tm_0);
}

void sub_1B4AAFA18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B4AAF394(319, a4, a5, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4AAFAB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1B495F6EC);
}

uint64_t sub_1B4AAFB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1B495F764);
}

uint64_t sub_1B4AAFB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1B4AAFC60(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4AAF394(319, qword_1EDC39D10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4AAF394(319, qword_1EDC39EE0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B4AAFDA4(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1B4AAFE6C(uint64_t a1)
{
  sub_1B4AAF550(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.accumulatedStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8A69A0, &qword_1B4D27A90);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4AB86FC(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.accumulatedStatistics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A69A0, &qword_1B4D27A90);
  sub_1B4AB86FC(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.timeZone.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.timeZone.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = sub_1B4D17BBC();
  v4 = (a1 + *(v2 + 40));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_CountPropertyValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t static Apple_Fitness_Intelligence_CountPropertyValue.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t Apple_Fitness_Intelligence_StatisticsPropertyValue.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  sub_1B4D17BBC();
  v4 = *(v3 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_MaxPropertyValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t static Apple_Fitness_Intelligence_MaxPropertyValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.bestStreak.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8A97F8, &qword_1B4D29008);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4AB86FC(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a1 = 0u;
  a1[1] = 0u;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB08D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v7 + 28), v6, &qword_1EB8A97F8, &qword_1B4D29008);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4AB86FC(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a2 = 0u;
  a2[1] = 0u;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB0A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AB8764(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.bestStreak.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.Streak.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  *a1 = 0u;
  a1[1] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_StreakPropertyValue.bestStreak.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A97F8, &qword_1B4D29008);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A97F8, &qword_1B4D29008);
    }
  }

  else
  {
    sub_1B4AB86FC(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  return sub_1B4AB0E74;
}

BOOL sub_1B4AB0EEC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.currentStreak.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A97F8, &qword_1B4D29008);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4AB86FC(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a1 = 0u;
  a1[1] = 0u;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB1184@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8A97F8, &qword_1B4D29008);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4AB86FC(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a2 = 0u;
  a2[1] = 0u;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB12E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AB8764(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 32);
  sub_1B4975024(a2 + v8, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.currentStreak.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 32);
  sub_1B4975024(v2 + v4, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*Apple_Fitness_Intelligence_StreakPropertyValue.currentStreak.modify(void *a1))(uint64_t, uint64_t)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A97F8, &qword_1B4D29008);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A97F8, &qword_1B4D29008);
    }
  }

  else
  {
    sub_1B4AB86FC(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  return sub_1B4ABA68C;
}

BOOL Apple_Fitness_Intelligence_StreakPropertyValue.hasCurrentStreak.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(v0 + *(v4 + 32), v3, &qword_1EB8A97F8, &qword_1B4D29008);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A97F8, &qword_1B4D29008);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_StreakPropertyValue.clearCurrentStreak()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 32);
  sub_1B4975024(v0 + v1, &qword_1EB8A97F8, &qword_1B4D29008);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.initialStreak.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(v1 + *(v6 + 36), v5, &qword_1EB8A97F8, &qword_1B4D29008);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4AB86FC(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a1 = 0u;
  a1[1] = 0u;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB19CC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v7 + 36), v6, &qword_1EB8A97F8, &qword_1B4D29008);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4AB86FC(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a2 = 0u;
  a2[1] = 0u;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB1B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AB8764(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 36);
  sub_1B4975024(a2 + v8, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.initialStreak.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 36);
  sub_1B4975024(v1 + v3, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Fitness_Intelligence_StreakPropertyValue.initialStreak.modify(void *a1))(uint64_t, uint64_t)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 36);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A97F8, &qword_1B4D29008);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A97F8, &qword_1B4D29008);
    }
  }

  else
  {
    sub_1B4AB86FC(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  return sub_1B4ABA68C;
}

BOOL Apple_Fitness_Intelligence_StreakPropertyValue.hasInitialStreak.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(v0 + *(v4 + 36), v3, &qword_1EB8A97F8, &qword_1B4D29008);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A97F8, &qword_1B4D29008);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_StreakPropertyValue.clearInitialStreak()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 36);
  sub_1B4975024(v0 + v1, &qword_1EB8A97F8, &qword_1B4D29008);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.currentPauseIntervals.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B4AB2120@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4AB21BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.Streak.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0) + 32);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.Streak.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0) + 32);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4D17BBC();
  v4 = v3[7];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a1[v4], 1, 1, v5);
  v8(&a1[v3[8]], 1, 1, v5);
  v6 = &a1[v3[9]];

  return (v8)(v6, 1, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_CountPropertyValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_CountPropertyValue.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_MaxPropertyValue.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_MaxPropertyValue.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_StatisticsPropertyValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_StatisticsPropertyValue.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B4AB2A6C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  sub_1B4974FBC(a1 + *(v7 + 28), v6, &qword_1EB8A69A0, &qword_1B4D27A90);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4AB86FC(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  return result;
}

uint64_t sub_1B4AB2BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AB8764(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A69A0, &qword_1B4D27A90);
  sub_1B4AB86FC(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.accumulatedStatistics.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A69A0, &qword_1B4D27A90);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A69A0, &qword_1B4D27A90);
    }
  }

  else
  {
    sub_1B4AB86FC(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  return sub_1B4AB2F24;
}

void sub_1B4AB2F60(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), double a7)
{
  v10 = *a1;
  v11 = *(*a1 + 12);
  v12 = (*a1)[4];
  v13 = (*a1)[5];
  v14 = (*a1)[2];
  v15 = (*a1)[3];
  v16 = **a1;
  v18 = (*a1)[1];
  if (a2)
  {
    sub_1B4AB8764(v13, v12, a6);
    sub_1B4975024(v16 + v11, a3, a4);
    sub_1B4AB86FC(v12, v16 + v11, a5);
    (*(v15 + 56))(v16 + v11, 0, 1, v14);
    sub_1B4AB87CC(v13, a6);
  }

  else
  {
    sub_1B4975024(v16 + v11, a3, a4);
    sub_1B4AB86FC(v13, v16 + v11, a5);
    (*(v15 + 56))(v16 + v11, 0, 1, v14);
  }

  free(v13);
  free(v12);
  free(v18);

  free(v10);
}

uint64_t sub_1B4AB30D8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1B4AB32DC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  *a2 = 0;
  a2[1] = 0;
  return sub_1B4D17BBC();
}

double sub_1B4AB340C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4AB3470(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*Apple_Fitness_Intelligence_LocalizedDate.timeZone.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A41888;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_LocalizedDate.clearTimeZone()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_CacheIndexRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_CacheIndexRange.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB3968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98D8, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB3A08(uint64_t a1)
{
  v2 = sub_1B4AB884C(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB3A74(uint64_t a1, uint64_t a2)
{
  sub_1B4AB884C(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB3AF0(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB3BBC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9718);
  __swift_project_value_buffer(v0, qword_1EB8A9718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B4D1CBF0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "cacheIndex";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bestStreak";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "currentStreak";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "initialStreak";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "currentPauseIntervals";
  *(v14 + 8) = 21;
  *(v14 + 16) = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1B4D17CCC();
        }

        else if (result == 2)
        {
          sub_1B4AB3FD8(a1, v5, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1B4AB408C(a1, v5, a2, a3);
            break;
          case 4:
            sub_1B4AB4140(a1, v5, a2, a3);
            break;
          case 5:
            type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
            sub_1B4AB884C(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);
            sub_1B4D17D3C();
            break;
        }
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4AB3FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4AB408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4AB4140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    result = sub_1B4AB4340(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1B4AB455C(v3, a1, a2, a3);
      sub_1B4AB4778(v3, a1, a2, a3);
      if (*(v3[1] + 16))
      {
        type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
        sub_1B4AB884C(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);
        sub_1B4D17E5C();
      }

      type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4AB4340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A97F8, &qword_1B4D29008);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  sub_1B4AB86FC(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4D17E6C();
  return sub_1B4AB87CC(v11, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
}

uint64_t sub_1B4AB455C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A97F8, &qword_1B4D29008);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  sub_1B4AB86FC(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4D17E6C();
  return sub_1B4AB87CC(v11, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
}

uint64_t sub_1B4AB4778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v12 + 36), v7, &qword_1EB8A97F8, &qword_1B4D29008);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  sub_1B4AB86FC(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4D17E6C();
  return sub_1B4AB87CC(v11, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
}

uint64_t sub_1B4AB49E0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 1) = v4;
  sub_1B4D17BBC();
  v5 = a1[7];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a2[v5], 1, 1, v6);
  v9(&a2[a1[8]], 1, 1, v6);
  v7 = &a2[a1[9]];

  return (v9)(v7, 1, 1, v6);
}

uint64_t sub_1B4AB4B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98D0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB4BBC(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB4C28(uint64_t a1, uint64_t a2)
{
  sub_1B4AB884C(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB4CA8()
{
  result = MEMORY[0x1B8C7C620](0x6B61657274532ELL, 0xE700000000000000);
  qword_1EB8A9730 = 0xD00000000000002ELL;
  *algn_1EB8A9738 = 0x80000001B4D60D70;
  return result;
}

uint64_t sub_1B4AB4D3C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9740);
  __swift_project_value_buffer(v0, qword_1EB8A9740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pausedDays";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "startCacheIndex";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expectedNextStartCacheIndex";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.Streak.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_1B4D17CCC();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.Streak.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      if (!v3[2] || (result = sub_1B4D17E0C(), !v4))
      {
        if (!v3[3] || (result = sub_1B4D17E0C(), !v4))
        {
          type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
          return sub_1B4D17BAC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4AB5184@<X0>(_OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AB51D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4AB5248(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4AB5310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98C8, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB53B0(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB541C(uint64_t a1, uint64_t a2)
{
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB54B8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9758);
  __swift_project_value_buffer(v0, qword_1EB8A9758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B4D1A800;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "count";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B4D17E7C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_CountPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CCC();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_CountPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AB57F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB5894(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB5900(uint64_t a1, uint64_t a2)
{
  sub_1B4AB884C(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB597C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB5A3C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9770);
  __swift_project_value_buffer(v0, qword_1EB8A9770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "measurement";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_MaxPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CFC();
    }

    else if (result == 2)
    {
      sub_1B4D17D1C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_MaxPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (!*v4 || (result = sub_1B4D17E2C(), !v5))
  {
    v7 = v4[2];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v4[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v8 || (result = sub_1B4D17E3C(), !v5))
    {
      type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4AB5DB4@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AB5E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98B8, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_MaxPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB5ECC(uint64_t a1)
{
  v2 = sub_1B4AB884C(&qword_1EB8A6DE0, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_MaxPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB5F38(uint64_t a1, uint64_t a2)
{
  sub_1B4AB884C(&qword_1EB8A6DE0, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_MaxPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB5FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v3 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB60A4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9788);
  __swift_project_value_buffer(v0, qword_1EB8A9788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B4D223E0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "total";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "count";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sumY2";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "min";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "max";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sumXY";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StatisticsPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5 || result == 6)
      {
LABEL_2:
        sub_1B4D17CFC();
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          sub_1B4D17CCC();
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

uint64_t Apple_Fitness_Intelligence_StatisticsPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E2C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      if (!v3[2] || (result = sub_1B4D17E2C(), !v4))
      {
        if (!v3[3] || (result = sub_1B4D17E2C(), !v4))
        {
          if (!v3[4] || (result = sub_1B4D17E2C(), !v4))
          {
            if (!v3[5] || (result = sub_1B4D17E2C(), !v4))
            {
              type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
              return sub_1B4D17BAC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4AB65E0@<X0>(_OWORD *a2@<X8>)
{
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AB6658(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98B0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB66F8(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB6764(uint64_t a1, uint64_t a2)
{
  sub_1B4AB884C(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB6800()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A97A0);
  __swift_project_value_buffer(v0, qword_1EB8A97A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "currentCacheIndex";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currentMonthMeasurementByStartOfWeek";
  *(v10 + 1) = 36;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "accumulatedStatistics";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1B4AB6B58(a1, v5, a2, a3);
          break;
        case 2:
          type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
          sub_1B4AB884C(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
          sub_1B4D17D3C();
          break;
        case 1:
          sub_1B4D17CCC();
          break;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4AB6B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  sub_1B4AB884C(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0), sub_1B4AB884C(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair), result = sub_1B4D17E5C(), !v4))
    {
      result = sub_1B4AB6D28(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AB6D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4AB86FC(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4AB884C(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17E6C();
  return sub_1B4AB87CC(v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
}

uint64_t sub_1B4AB6F8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 1) = v4;
  sub_1B4D17BBC();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1B4AB7064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98A8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB7104(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB7170(uint64_t a1, uint64_t a2)
{
  sub_1B4AB884C(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB71F0()
{
  result = MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D60ED0);
  qword_1EB8A97B8 = 0xD000000000000038;
  qword_1EB8A97C0 = 0x80000001B4D60E40;
  return result;
}

uint64_t sub_1B4AB72AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B4D1AA70;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 10;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1B4D17E7C();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4AB74B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CCC();
    }

    else if (result == 2)
    {
      a4(v4 + 8, a2, a3);
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E2C(), !v4))
    {
      type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB7754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98A0, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB77F4(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB7860(uint64_t a1, uint64_t a2)
{
  sub_1B4AB884C(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB78DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB79A8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A97E0);
  __swift_project_value_buffer(v0, qword_1EB8A97E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B4D223E0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "year";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "month";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "day";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hour";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "minute";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "timeZone";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_2:
        sub_1B4D17CAC();
      }

      else if (result == 6)
      {
        type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
        sub_1B4D17D0C();
      }
    }

    else if (result == 1 || result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17DFC(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17DFC(), !v4))
    {
      if (!v3[2] || (result = sub_1B4D17DFC(), !v4))
      {
        if (!v3[3] || (result = sub_1B4D17DFC(), !v4))
        {
          if (!v3[4] || (result = sub_1B4D17DFC(), !v4))
          {
            result = sub_1B4AB7E94(v3, a1, a2, a3);
            if (!v4)
            {
              type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
              return sub_1B4D17BAC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4AB7E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AB7F58(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4AB884C(a2, a3, a4);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AB7FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_1B4D17BBC();
  v5 = (a2 + *(a1 + 40));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1B4AB8070(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A9898, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB8110(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB817C(uint64_t a1, uint64_t a2)
{
  sub_1B4AB884C(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);

  return sub_1B4D17D9C();
}

uint64_t _s19FitnessIntelligence06Apple_a1_B30_WeeklyStatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A98E8, &qword_1B4D29F28);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2 || (sub_1B4A129A8(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 48);
  sub_1B4974FBC(a1 + v14, v13, &qword_1EB8A69A0, &qword_1B4D27A90);
  v16 = a2 + v14;
  v17 = v15;
  sub_1B4974FBC(v16, &v13[v15], &qword_1EB8A69A0, &qword_1B4D27A90);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A69A0, &qword_1B4D27A90);
LABEL_12:
      sub_1B4D17BCC();
      sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v19 = sub_1B4D1816C();
      return v19 & 1;
    }

    goto LABEL_8;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A69A0, &qword_1B4D27A90);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1B4AB87CC(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
LABEL_8:
    sub_1B4975024(v13, &qword_1EB8A98E8, &qword_1B4D29F28);
    goto LABEL_9;
  }

  sub_1B4AB86FC(&v13[v17], v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v21 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_1B4AB87CC(v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4AB87CC(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(v13, &qword_1EB8A69A0, &qword_1B4D27A90);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_9:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB86FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AB8764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AB87CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4AB884C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV0D0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v55 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A98E0, &qword_1B4D29F20);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v55 - v24;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  v57 = v23;
  v58 = v13;
  v56 = v10;
  v60 = v7;
  v26 = v22;
  v27 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v61 = v26;
  v62 = v27;
  v28 = *(v27 + 28);
  v29 = *(v26 + 48);
  v59 = a1;
  sub_1B4974FBC(a1 + v28, v25, &qword_1EB8A97F8, &qword_1B4D29008);
  v30 = a2 + v28;
  v31 = a2;
  sub_1B4974FBC(v30, &v25[v29], &qword_1EB8A97F8, &qword_1B4D29008);
  v34 = *(v5 + 48);
  v33 = v5 + 48;
  v32 = v34;
  if (v34(v25, 1, v4) == 1)
  {
    if (v32(&v25[v29], 1, v4) == 1)
    {
      sub_1B4975024(v25, &qword_1EB8A97F8, &qword_1B4D29008);
      goto LABEL_9;
    }

LABEL_7:
    v35 = v25;
LABEL_22:
    sub_1B4975024(v35, &qword_1EB8A98E0, &qword_1B4D29F20);
    goto LABEL_23;
  }

  sub_1B4974FBC(v25, v16, &qword_1EB8A97F8, &qword_1B4D29008);
  if (v32(&v25[v29], 1, v4) == 1)
  {
    sub_1B4AB87CC(v16, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
    goto LABEL_7;
  }

  v36 = &v25[v29];
  v37 = v60;
  sub_1B4AB86FC(v36, v60, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v38 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV0D0V2eeoiySbAE_AEtFZ_0(v16, v37);
  sub_1B4AB87CC(v37, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4AB87CC(v16, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4975024(v25, &qword_1EB8A97F8, &qword_1B4D29008);
  if ((v38 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v39 = *(v62 + 32);
  v40 = *(v61 + 48);
  v41 = v59;
  sub_1B4974FBC(v59 + v39, v20, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4974FBC(v31 + v39, &v20[v40], &qword_1EB8A97F8, &qword_1B4D29008);
  if (v32(v20, 1, v4) == 1)
  {
    if (v32(&v20[v40], 1, v4) == 1)
    {
      v55 = v33;
      sub_1B4975024(v20, &qword_1EB8A97F8, &qword_1B4D29008);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v42 = v58;
  sub_1B4974FBC(v20, v58, &qword_1EB8A97F8, &qword_1B4D29008);
  if (v32(&v20[v40], 1, v4) == 1)
  {
    sub_1B4AB87CC(v42, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
LABEL_14:
    v35 = v20;
    goto LABEL_22;
  }

  v55 = v33;
  v43 = &v20[v40];
  v44 = v60;
  sub_1B4AB86FC(v43, v60, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v45 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV0D0V2eeoiySbAE_AEtFZ_0(v42, v44);
  sub_1B4AB87CC(v44, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4AB87CC(v42, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4975024(v20, &qword_1EB8A97F8, &qword_1B4D29008);
  if ((v45 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  v46 = *(v62 + 36);
  v47 = *(v61 + 48);
  v48 = v57;
  sub_1B4974FBC(v41 + v46, v57, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4974FBC(v31 + v46, v48 + v47, &qword_1EB8A97F8, &qword_1B4D29008);
  if (v32(v48, 1, v4) != 1)
  {
    v49 = v56;
    sub_1B4974FBC(v48, v56, &qword_1EB8A97F8, &qword_1B4D29008);
    if (v32((v48 + v47), 1, v4) != 1)
    {
      v52 = v48 + v47;
      v53 = v60;
      sub_1B4AB86FC(v52, v60, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
      v54 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV0D0V2eeoiySbAE_AEtFZ_0(v49, v53);
      sub_1B4AB87CC(v53, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
      sub_1B4AB87CC(v49, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
      sub_1B4975024(v48, &qword_1EB8A97F8, &qword_1B4D29008);
      if ((v54 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    sub_1B4AB87CC(v49, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
    goto LABEL_21;
  }

  if (v32((v48 + v47), 1, v4) != 1)
  {
LABEL_21:
    v35 = v48;
    goto LABEL_22;
  }

  sub_1B4975024(v48, &qword_1EB8A97F8, &qword_1B4D29008);
LABEL_26:
  if (sub_1B4A1A554(v41[1], v31[1]))
  {
    sub_1B4D17BCC();
    sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v50 = sub_1B4D1816C();
    return v50 & 1;
  }

LABEL_23:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_LocalizedDateV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4])
  {
    v4 = *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1B4D18DCC() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v8)
    {
LABEL_13:
      sub_1B4D17BCC();
      sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1B4D1816C() & 1;
    }
  }

  return 0;
}

void sub_1B4AB9C8C(uint64_t a1)
{
  sub_1B4AB9DA0(319, &qword_1EDC37980, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      sub_1B4AB9DA0(319, qword_1EDC3BF78, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4AB9DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B4AB9E2C(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4AB9ED4(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4AB9FB4(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_1B4D17BCC();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_31Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_1B4D17BCC();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_1B4ABA2EC(uint64_t a1)
{
  sub_1B4AB9DA0(319, &qword_1EDC3CBB0, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      sub_1B4AB9DA0(319, qword_1EDC3B740, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1B4D17BCC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1B4D17BCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1B4ABA550(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4ABA5F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4ABA5F0()
{
  if (!qword_1EDC3CEC0)
  {
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC3CEC0);
    }
  }
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.entry.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A7818, &unk_1B4D29F40);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4ABD53C(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  }

  *a1 = 0;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7818, &unk_1B4D29F40);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.entry.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A7818, &unk_1B4D29F40);
  sub_1B4ABD53C(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool.BOOL.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.startCacheIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.endCacheIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8A8F90, &unk_1B4D32490);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4ABD53C(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  }

  sub_1B4D17BBC();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v8[7]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8F90, &unk_1B4D32490);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.property.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8A8F88, &unk_1B4D29F50);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4ABD53C(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1B4D17BBC();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8F88, &unk_1B4D29F50);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.startCacheIndex.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v6 = sub_1B4AC8F90(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.endCacheIndex.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v6 = sub_1B4AC8F90(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 24) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.dimensions.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4AC8F90(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4ABD53C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8A8F90, &unk_1B4D32490);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.property.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4AC8F90(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4ABD53C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8A8F88, &unk_1B4D29F50);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_RingsProperties.records.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsProperties.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.monthOfYear.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_1B4ABB2E4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4ABB348(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.monthOfYear.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_RingsPropertyDimensions.monthOfYear.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A3E8AC;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_RingsPropertyDimensions.clearMonthOfYear()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.dayOfWeek.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_1B4ABB550@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4ABB5B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.dayOfWeek.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_RingsPropertyDimensions.dayOfWeek.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_RingsPropertyDimensions.clearDayOfWeek()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.paused.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_RingsPropertyDimensions.paused.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A3B338;
}

int *Apple_Fitness_Intelligence_RingsPropertyDimensions.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v4 = (a2 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + result[6]);
  *v5 = 0;
  v5[1] = 0;
  *(a2 + result[7]) = 2;
  return result;
}

uint64_t sub_1B4ABB958@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4ABB9F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool.BOOL.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A6084C;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  *(a2 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1B4ABBBB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v6 = sub_1B4AC8F90(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 16) = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_RingsPropertyRecord.startCacheIndex.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 16);
  return sub_1B4ABBCEC;
}

void sub_1B4ABBCEC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4AC8F90(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;

  free(v2);
}

uint64_t sub_1B4ABBDB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v6 = sub_1B4AC8F90(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 24) = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_RingsPropertyRecord.endCacheIndex.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 24);
  return sub_1B4ABBEE4;
}

void sub_1B4ABBEE4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4AC8F90(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 24) = v3;

  free(v2);
}

uint64_t sub_1B4ABBFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AC9298(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4AC8F90(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4ABD53C(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8A8F90, &unk_1B4D32490);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_RingsPropertyRecord.dimensions.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A8F90, &unk_1B4D32490);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[6]);
    *v20 = 0;
    v20[1] = 0;
    *(v14 + v9[7]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8F90, &unk_1B4D32490);
    }
  }

  else
  {
    sub_1B4ABD53C(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  }

  return sub_1B4ABC408;
}

void sub_1B4ABC408(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4AC9298(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4AC8F90(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4ABD53C(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8A8F90, &unk_1B4D32490);
    swift_endAccess();
    sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4AC8F90(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4ABD53C(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8A8F90, &unk_1B4D32490);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

uint64_t sub_1B4ABC6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A8F88, &unk_1B4D29F50);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8F88, &unk_1B4D29F50);
  }

  return result;
}

uint64_t sub_1B4ABC878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AC9298(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4AC8F90(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4ABD53C(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8A8F88, &unk_1B4D29F50);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_RingsPropertyRecord.property.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A8F88, &unk_1B4D29F50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8F88, &unk_1B4D29F50);
    }
  }

  else
  {
    sub_1B4ABD53C(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  return sub_1B4ABCD24;
}

void sub_1B4ABCD24(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4AC9298(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4AC8F90(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4ABD53C(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8A8F88, &unk_1B4D29F50);
    swift_endAccess();
    sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4AC8F90(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4ABD53C(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8A8F88, &unk_1B4D29F50);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL sub_1B4ABCFA4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_1B4974FBC(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_1B4975024(v11, a1, a2);
  return v15;
}

uint64_t sub_1B4ABD0EC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v15 = sub_1B4AC8F90(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_1B49A205C(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  if (qword_1EDC3C1B0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EDC3C1B8;
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.currentEntries.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B4ABD53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4ABD624@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A7818, &unk_1B4D29F40);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  }

  *a2 = 0;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7818, &unk_1B4D29F40);
  }

  return result;
}

uint64_t sub_1B4ABD784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AC9298(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  sub_1B4975024(a2 + v8, &qword_1EB8A7818, &unk_1B4D29F40);
  sub_1B4ABD53C(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.entry.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7818, &unk_1B4D29F40);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7818, &unk_1B4D29F40);
    }
  }

  else
  {
    sub_1B4ABD53C(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  }

  return sub_1B4ABDACC;
}

void sub_1B4ABDACC(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1B4AC9298((*a1)[5], v5, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    sub_1B4975024(v10 + v4, &qword_1EB8A7818, &unk_1B4D29F40);
    sub_1B4ABD53C(v5, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  }

  else
  {
    sub_1B4975024(v10 + v4, &qword_1EB8A7818, &unk_1B4D29F40);
    sub_1B4ABD53C(v6, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.hasEntry.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(v0 + *(v4 + 24), v3, &qword_1EB8A7818, &unk_1B4D29F40);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A7818, &unk_1B4D29F40);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.clearEntry()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  sub_1B4975024(v0 + v1, &qword_1EB8A7818, &unk_1B4D29F40);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B4ABDDCC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4ABDE68(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  sub_1B4D17BBC();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1B4ABDFD8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a3 = a1;
  a3[1] = v4;
  a3[2] = v4;
  a2(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.localizedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8A7158, &unk_1B4D20310);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4ABD53C(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1B4D17BBC();
  v9 = (a1 + *(v7 + 40));
  *v9 = 0;
  v9[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7158, &unk_1B4D20310);
  }

  return result;
}

uint64_t sub_1B4ABE1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4974FBC(a1 + *(v7 + 28), v6, &qword_1EB8A7158, &unk_1B4D20310);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1B4D17BBC();
  v10 = (a2 + *(v8 + 40));
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7158, &unk_1B4D20310);
  }

  return result;
}

uint64_t sub_1B4ABE31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AC9298(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4ABD53C(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.localizedDate.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4ABD53C(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Apple_Fitness_Intelligence_RingsBestMeasurementEntry.localizedDate.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7158, &unk_1B4D20310);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 40));
    *v17 = 0;
    v17[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
    }
  }

  else
  {
    sub_1B4ABD53C(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  return sub_1B4ABE72C;
}

void sub_1B4ABE72C(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1B4AC9298((*a1)[5], v5, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    sub_1B4975024(v10 + v4, &qword_1EB8A7158, &unk_1B4D20310);
    sub_1B4ABD53C(v5, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  else
  {
    sub_1B4975024(v10 + v4, &qword_1EB8A7158, &unk_1B4D20310);
    sub_1B4ABD53C(v6, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_RingsBestMeasurementEntry.hasLocalizedDate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4974FBC(v0 + *(v4 + 28), v3, &qword_1EB8A7158, &unk_1B4D20310);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A7158, &unk_1B4D20310);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_RingsBestMeasurementEntry.clearLocalizedDate()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4975024(v0 + v1, &qword_1EB8A7158, &unk_1B4D20310);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 24);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 24);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  sub_1B4D17BBC();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.topEntries.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.measurementEntry.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  sub_1B4974FBC(v2, &v12 - v5, &qword_1EB8A7E30, &unk_1B4D29F60);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  }

  sub_1B4975024(v6, &qword_1EB8A7E30, &unk_1B4D29F60);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  sub_1B4D17BBC();
  v9 = *(v8 + 28);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  return (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
}

uint64_t sub_1B4ABEED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AC9298(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4975024(a2, &qword_1EB8A7E30, &unk_1B4D29F60);
  sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.measurementEntry.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7E30, &unk_1B4D29F60);
  sub_1B4ABD53C(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.measurementEntry.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7E30, &unk_1B4D29F60);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7E30, &unk_1B4D29F60);
    *v12 = 0;
    *(v12 + 1) = 0;
    sub_1B4D17BBC();
    v15 = *(v9 + 28);
    v16 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
    (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
  }

  else
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  }

  return sub_1B4ABF2B4;
}

void sub_1B4ABF2B4(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4AC9298((*a1)[3], v6, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    sub_1B4975024(v9, &qword_1EB8A7E30, &unk_1B4D29F60);
    sub_1B4ABD53C(v6, v9, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    (*(v5 + 56))(v9, 0, 1, v4);
    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7E30, &unk_1B4D29F60);
    sub_1B4ABD53C(v7, v9, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t static Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E28, &unk_1B4D20320);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v10 - v5);
  v8 = *(v7 + 56);
  sub_1B4AC9298(a1, &v10 - v5, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4AC9298(a2, v6 + v8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  LOBYTE(a2) = _s19FitnessIntelligence06Apple_a1_B26_RingsBestMeasurementEntryV2eeoiySbAC_ACtFZ_0(v6, v6 + v8);
  sub_1B4AC9300(v6 + v8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  return a2 & 1;
}

uint64_t sub_1B4ABF590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E28, &unk_1B4D20320);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  sub_1B4AC9298(a1, &v10 - v5, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4AC9298(a2, &v6[v8], type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  LOBYTE(a2) = static Apple_Fitness_Intelligence_RingsBestMeasurementEntry.== infix(_:_:)(v6, &v6[v8]);
  sub_1B4AC9300(&v6[v8], type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  return a2 & 1;
}

uint64_t sub_1B4ABF6B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4ABF75C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a2(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveStreak.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  sub_1B4974FBC(v2, &v14 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v8 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v8;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4D17BBC();
  v10 = v9[7];
  v11 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&a1[v10], 1, 1, v11);
  v12(&a1[v9[8]], 1, 1, v11);
  return (v12)(&a1[v9[9]], 1, 1, v11);
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveStreak.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4ABD53C(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      return sub_1B4ABFCE0;
    }

    sub_1B4AC9300(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v16 = MEMORY[0x1E69E7CC0];
  *v13 = 0;
  *(v13 + 1) = v16;
  sub_1B4D17BBC();
  v17 = v10[7];
  v18 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v19 = *(*(v18 - 8) + 56);
  v19(&v13[v17], 1, 1, v18);
  v19(&v13[v10[8]], 1, 1, v18);
  v19(&v13[v10[9]], 1, 1, v18);
  return sub_1B4ABFCE0;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.exerciseStreak.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  sub_1B4974FBC(v2, &v14 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4D17BBC();
  v11 = v10[7];
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v13 = *(*(v12 - 8) + 56);
  v13(&a1[v11], 1, 1, v12);
  v13(&a1[v10[8]], 1, 1, v12);
  return (v13)(&a1[v10[9]], 1, 1, v12);
}

void (*Apple_Fitness_Intelligence_RingsProperty.exerciseStreak.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v13 = 0;
    *(v13 + 1) = v16;
    sub_1B4D17BBC();
    v17 = v10[7];
    v18 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
    v19 = *(*(v18 - 8) + 56);
    v19(&v13[v17], 1, 1, v18);
    v19(&v13[v10[8]], 1, 1, v18);
    v19(&v13[v10[9]], 1, 1, v18);
    return sub_1B4AC01F8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4AC9300(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  return sub_1B4AC01F8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.standStreak.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  sub_1B4974FBC(v2, &v14 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4D17BBC();
  v11 = v10[7];
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v13 = *(*(v12 - 8) + 56);
  v13(&a1[v11], 1, 1, v12);
  v13(&a1[v10[8]], 1, 1, v12);
  return (v13)(&a1[v10[9]], 1, 1, v12);
}

void (*Apple_Fitness_Intelligence_RingsProperty.standStreak.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v13 = 0;
    *(v13 + 1) = v16;
    sub_1B4D17BBC();
    v17 = v10[7];
    v18 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
    v19 = *(*(v18 - 8) + 56);
    v19(&v13[v17], 1, 1, v18);
    v19(&v13[v10[8]], 1, 1, v18);
    v19(&v13[v10[9]], 1, 1, v18);
    return sub_1B4AC0710;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4AC9300(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  return sub_1B4AC0710;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.allThreeRingsStreak.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  sub_1B4974FBC(v2, &v14 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4D17BBC();
  v11 = v10[7];
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v13 = *(*(v12 - 8) + 56);
  v13(&a1[v11], 1, 1, v12);
  v13(&a1[v10[8]], 1, 1, v12);
  return (v13)(&a1[v10[9]], 1, 1, v12);
}

void (*Apple_Fitness_Intelligence_RingsProperty.allThreeRingsStreak.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v13 = 0;
    *(v13 + 1) = v16;
    sub_1B4D17BBC();
    v17 = v10[7];
    v18 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
    v19 = *(*(v18 - 8) + 56);
    v19(&v13[v17], 1, 1, v18);
    v19(&v13[v10[8]], 1, 1, v18);
    v19(&v13[v10[9]], 1, 1, v18);
    return sub_1B4AC0C28;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B4AC9300(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  return sub_1B4AC0C28;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveRingStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveRingStatistics.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC1028;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC1028;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveMinutesRingStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveMinutesRingStatistics.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC1428;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC1428;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.exerciseRingStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.exerciseRingStatistics.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC1828;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC1828;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.standRingStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.standRingStatistics.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC1C28;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC1C28;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.stepsStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.stepsStatistics.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC2028;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC2028;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.flightsStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.flightsStatistics.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC2428;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC2428;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.distanceStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.distanceStatistics.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC2828;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC2828;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveGoalAchievedCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC29DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveGoalAchievedCount.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v11 = 0;
    sub_1B4D17BBC();
    return sub_1B4AC2D88;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AC2D88;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.exerciseGoalAchievedCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC2F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.exerciseGoalAchievedCount.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v11 = 0;
    sub_1B4D17BBC();
    return sub_1B4AC32E8;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AC32E8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.standGoalAchievedCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC349C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.standGoalAchievedCount.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v11 = 0;
    sub_1B4D17BBC();
    return sub_1B4AC3848;
  }

  if (swift_getEnumCaseMultiPayload() != 13)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AC3848;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.allThreeRingsGoalAchievedCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC39FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.allThreeRingsGoalAchievedCount.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v11 = 0;
    sub_1B4D17BBC();
    return sub_1B4AC3DA8;
  }

  if (swift_getEnumCaseMultiPayload() != 14)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AC3DA8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveGoalDelta.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveGoalDelta.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC41A8;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC41A8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveMinutesGoalDelta.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveMinutesGoalDelta.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC45A8;
  }

  if (swift_getEnumCaseMultiPayload() != 16)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC45A8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.exerciseGoalDelta.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.exerciseGoalDelta.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC49A8;
  }

  if (swift_getEnumCaseMultiPayload() != 17)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC49A8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.standGoalDelta.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.standGoalDelta.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AC4DA8;
  }

  if (swift_getEnumCaseMultiPayload() != 18)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC4DA8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveGoalMilestone.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B4974FBC(v2, &v10 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v9;
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveGoalMilestone.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v14 = MEMORY[0x1E69E7CC0];
    *v11 = 0;
    v11[1] = v14;
    v11[2] = v14;
    sub_1B4D17BBC();
    return sub_1B4AC51B0;
  }

  if (swift_getEnumCaseMultiPayload() != 19)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4AC51B0;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.exerciseGoalMilestone.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B4974FBC(v2, &v10 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v9;
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.exerciseGoalMilestone.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v14 = MEMORY[0x1E69E7CC0];
    *v11 = 0;
    v11[1] = v14;
    v11[2] = v14;
    sub_1B4D17BBC();
    return sub_1B4AC55B8;
  }

  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4AC55B8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.standGoalMilestone.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B4974FBC(v2, &v10 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v9;
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.standGoalMilestone.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v14 = MEMORY[0x1E69E7CC0];
    *v11 = 0;
    v11[1] = v14;
    v11[2] = v14;
    sub_1B4D17BBC();
    return sub_1B4AC59C0;
  }

  if (swift_getEnumCaseMultiPayload() != 21)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4AC59C0;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.allThreeRingsGoalMilestone.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B4974FBC(v2, &v10 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v9;
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.allThreeRingsGoalMilestone.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v14 = MEMORY[0x1E69E7CC0];
    *v11 = 0;
    v11[1] = v14;
    v11[2] = v14;
    sub_1B4D17BBC();
    return sub_1B4AC5DC8;
  }

  if (swift_getEnumCaseMultiPayload() != 22)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4AC5DC8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.highestDailyStepCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC5F84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      return sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.highestDailyStepCount.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4AC6340;
  }

  if (swift_getEnumCaseMultiPayload() != 23)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  return sub_1B4AC6340;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.highestDailyDistance.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC64FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      return sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.highestDailyDistance.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4AC68B8;
  }

  if (swift_getEnumCaseMultiPayload() != 24)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  return sub_1B4AC68B8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.totalCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC6A6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A9A50, &qword_1B4D29F70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      return sub_1B4ABD53C(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC6BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1B4AC9298(a1, &v17 - v13, a6);
  sub_1B4975024(a2, &qword_1EB8A9A50, &qword_1B4D29F70);
  sub_1B4ABD53C(v14, a2, a7);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1B4AC6D0C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_1B4975024(v3, &qword_1EB8A9A50, &qword_1B4D29F70);
  sub_1B4ABD53C(a1, v3, a2);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*Apple_Fitness_Intelligence_RingsProperty.totalCount.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v11 = 0;
    sub_1B4D17BBC();
    return sub_1B4AC6FE4;
  }

  if (swift_getEnumCaseMultiPayload() != 25)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AC6FE4;
}

void sub_1B4AC7028(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), double a7)
{
  v8 = *a1;
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v14 = **a1;
  v13 = (*a1)[1];
  if (a2)
  {
    sub_1B4AC9298((*a1)[3], v11, a5);
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v11, v14, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14, 0, 1, v9);
    sub_1B4AC9300(v12, a6);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v12, v14, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14, 0, 1, v9);
  }

  free(v12);
  free(v11);
  free(v13);

  free(v8);
}

uint64_t static Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A12C0C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AC72CC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A98F0);
  __swift_project_value_buffer(v0, qword_1EB8A98F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startCacheIndex";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endCacheIndex";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "records";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsProperties.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
        sub_1B4ADE840(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        sub_1B4D17D3C();
      }

      else if (result == 2 || result == 1)
      {
        sub_1B4D17CCC();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsProperties.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0), sub_1B4ADE840(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyRecord), result = sub_1B4D17E5C(), !v4))
      {
        type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AC77CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B60, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AC786C(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AC78D8(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AC7974()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9908);
  __swift_project_value_buffer(v0, qword_1EB8A9908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "monthOfYear";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dayOfWeek";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "paused";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
      sub_1B4D17C4C();
    }

    else if (result == 2 || result == 1)
    {
      type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
      sub_1B4D17D0C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4AC7D0C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4AC7D84(v3, a1, a2, a3);
    sub_1B4AC7DFC(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AC7D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AC7D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AC7DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4AC7EC0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D17BBC();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_1B4AC7F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B58, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AC7FF4(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AC8060(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensions);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AC80FC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9920);
  __swift_project_value_buffer(v0, qword_1EB8A9920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "monthOfYear";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dayOfWeek";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "paused";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
        sub_1B4ADE840(&qword_1EB8A7EC0, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
        sub_1B4D17D3C();
      }

      else if (result == 2 || result == 1)
      {
        sub_1B4D17CDC();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1B4D17E1C(), !v4))
  {
    if (!*(v3[1] + 16) || (result = sub_1B4D17E1C(), !v4))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0), sub_1B4ADE840(&qword_1EB8A7EC0, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool), result = sub_1B4D17E5C(), !v4))
      {
        type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AC8610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B50, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AC86B0(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AC871C(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AC879C()
{
  result = MEMORY[0x1B8C7C620](0x616E6F6974704F2ELL, 0xED00006C6F6F426CLL);
  qword_1EB8A9938 = 0xD000000000000039;
  qword_1EB8A9940 = 0x80000001B4D61080;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
      sub_1B4D17C4C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4AC895C(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AC895C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4AC8A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D17BBC();
  *(a2 + *(a1 + 20)) = 2;
  return result;
}

uint64_t sub_1B4AC8AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B48, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AC8B4C(uint64_t a1)
{
  v2 = sub_1B4ADE840(&qword_1EB8A7EC0, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AC8BB8(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(&qword_1EB8A7EC0, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AC8C54()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9960);
  __swift_project_value_buffer(v0, qword_1EB8A9960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "startCacheIndex";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endCacheIndex";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dimensions";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "property";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4AC8EC0()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  result = (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  qword_1EDC3C1B8 = v0;
  return result;
}

uint64_t sub_1B4AC8F90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-v7];
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  swift_beginAccess();
  v13 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v13;
  swift_beginAccess();
  v14 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v14;
  v15 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v15, v8, &qword_1EB8A8F90, &unk_1B4D32490);
  swift_beginAccess();
  sub_1B49A205C(v8, v1 + v9, &qword_1EB8A8F90, &unk_1B4D32490);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v16, v5, &qword_1EB8A8F88, &unk_1B4D29F50);

  swift_beginAccess();
  sub_1B49A205C(v5, v1 + v11, &qword_1EB8A8F88, &unk_1B4D29F50);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B4AC9298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AC9300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4AC9400()
{
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions, &qword_1EB8A8F90, &unk_1B4D32490);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property, &qword_1EB8A8F88, &unk_1B4D29F50);

  return swift_deallocClassInstance();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    swift_allocObject();
    v10 = sub_1B4AC8F90(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B4AC953C(v10, a1, a2, a3);
}

uint64_t sub_1B4AC953C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1B4AC9728(a2, a1, a3, a4);
      }

      else if (result == 4)
      {
        sub_1B4AC9804(a2, a1, a3, a4);
      }
    }

    else if (result == 1)
    {
      sub_1B4AC9620(a2, a1, a3, a4);
    }

    else if (result == 2)
    {
      sub_1B4AC96A4(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B4AC9620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B4D17CCC();
  return swift_endAccess();
}

uint64_t sub_1B4AC96A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B4D17CCC();
  return swift_endAccess();
}

uint64_t sub_1B4AC9728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  sub_1B4ADE840(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4AC9804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4ADE840(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  result = sub_1B4AC994C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AC994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    result = sub_1B4D17E0C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 24))
  {
    v11 = v5;
    result = sub_1B4D17E0C();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v11 = v5;
  }

  result = sub_1B4AC9A34(a1, a2, a3, a4);
  if (!v11)
  {
    return sub_1B4AC9C5C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B4AC9A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8A8F90, &unk_1B4D32490);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8F90, &unk_1B4D32490);
  }

  sub_1B4ABD53C(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  sub_1B4ADE840(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  sub_1B4D17E6C();
  return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
}

uint64_t sub_1B4AC9C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8A8F88, &unk_1B4D29F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8F88, &unk_1B4D29F50);
  }

  sub_1B4ABD53C(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4ADE840(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4D17E6C();
  return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
}

BOOL sub_1B4AC9E88(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B68, &qword_1B4D2B400);
  MEMORY[0x1EEE9AC00](v45);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v42 - v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B70, &qword_1B4D2B408);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  swift_beginAccess();
  v23 = *(a1 + 16);
  swift_beginAccess();
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 24);
  swift_beginAccess();
  if (v24 != *(a2 + 24))
  {
    return 0;
  }

  v42 = v6;
  v50 = a2;
  v25 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v25, v22, &qword_1EB8A8F90, &unk_1B4D32490);
  v26 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  v27 = *(v14 + 48);
  sub_1B4974FBC(v22, v16, &qword_1EB8A8F90, &unk_1B4D32490);
  sub_1B4974FBC(v50 + v26, &v16[v27], &qword_1EB8A8F90, &unk_1B4D32490);
  v28 = *(v49 + 48);
  if (v28(v16, 1, v11) != 1)
  {
    sub_1B4974FBC(v16, v19, &qword_1EB8A8F90, &unk_1B4D32490);
    if (v28(&v16[v27], 1, v11) != 1)
    {
      sub_1B4ABD53C(&v16[v27], v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);

      v31 = _s19FitnessIntelligence06Apple_a1_B24_RingsPropertyDimensionsV2eeoiySbAC_ACtFZ_0(v19, v13);
      sub_1B4AC9300(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
      sub_1B4975024(v22, &qword_1EB8A8F90, &unk_1B4D32490);
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
      sub_1B4975024(v16, &qword_1EB8A8F90, &unk_1B4D32490);
      v30 = v42;
      if (v31)
      {
        goto LABEL_11;
      }

LABEL_9:

      return 0;
    }

    sub_1B4975024(v22, &qword_1EB8A8F90, &unk_1B4D32490);
    sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
LABEL_8:
    sub_1B4975024(v16, &qword_1EB8A9B70, &qword_1B4D2B408);
    goto LABEL_9;
  }

  sub_1B4975024(v22, &qword_1EB8A8F90, &unk_1B4D32490);
  v29 = v28(&v16[v27], 1, v11);
  v30 = v42;
  if (v29 != 1)
  {
    goto LABEL_8;
  }

  sub_1B4975024(v16, &qword_1EB8A8F90, &unk_1B4D32490);
LABEL_11:
  v32 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  v33 = v46;
  sub_1B4974FBC(a1 + v32, v46, &qword_1EB8A8F88, &unk_1B4D29F50);
  v34 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  v35 = *(v45 + 48);
  sub_1B4974FBC(v33, v30, &qword_1EB8A8F88, &unk_1B4D29F50);
  sub_1B4974FBC(v50 + v34, v30 + v35, &qword_1EB8A8F88, &unk_1B4D29F50);
  v36 = *(v47 + 48);
  v37 = v48;
  if (v36(v30, 1, v48) == 1)
  {

    sub_1B4975024(v33, &qword_1EB8A8F88, &unk_1B4D29F50);
    if (v36(v30 + v35, 1, v37) == 1)
    {
      sub_1B4975024(v30, &qword_1EB8A8F88, &unk_1B4D29F50);
      return 1;
    }

    goto LABEL_16;
  }

  v38 = v44;
  sub_1B4974FBC(v30, v44, &qword_1EB8A8F88, &unk_1B4D29F50);
  if (v36(v30 + v35, 1, v37) == 1)
  {

    sub_1B4975024(v33, &qword_1EB8A8F88, &unk_1B4D29F50);
    sub_1B4AC9300(v38, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
LABEL_16:
    sub_1B4975024(v30, &qword_1EB8A9B68, &qword_1B4D2B400);
    return 0;
  }

  v40 = v43;
  sub_1B4ABD53C(v30 + v35, v43, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  v41 = _s19FitnessIntelligence06Apple_a1_B14_RingsPropertyV2eeoiySbAC_ACtFZ_0(v38, v40);

  sub_1B4AC9300(v40, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4975024(v33, &qword_1EB8A8F88, &unk_1B4D29F50);
  sub_1B4AC9300(v38, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4975024(v30, &qword_1EB8A8F88, &unk_1B4D29F50);
  return (v41 & 1) != 0;
}

uint64_t sub_1B4ACA760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = *(a1 + 20);
  if (qword_1EDC3C1B0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EDC3C1B8;
}

uint64_t sub_1B4ACA824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B40, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACA8C4(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACA930(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4ACA9CC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9978);
  __swift_project_value_buffer(v0, qword_1EB8A9978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "currentCount";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currentEntries";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "milestones";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
        sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
LABEL_12:
        sub_1B4D17D3C();
        goto LABEL_4;
      }

      if (result == 1)
      {
        sub_1B4D17CCC();
      }

LABEL_4:
      result = sub_1B4D17C2C();
    }

    type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
    sub_1B4ADE840(qword_1EDC3B168, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
    goto LABEL_12;
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0), sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry), result = sub_1B4D17E5C(), !v4))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0), sub_1B4ADE840(qword_1EDC3B168, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair), result = sub_1B4D17E5C(), !v4))
      {
        type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4ACAF38@<X0>(uint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a3 = a2;
  a3[1] = v3;
  a3[2] = v3;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4ACAFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B38, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACB054(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACB0C0(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CCC();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4ACB404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B30, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACB4A4(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACB510(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4ACB58C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4ACB650(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD000000000000036;
  *a5 = 0x80000001B4D610F0;
  return result;
}

uint64_t sub_1B4ACB6E4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A99C8);
  __swift_project_value_buffer(v0, qword_1EB8A99C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "count";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entry";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CCC();
    }

    else if (result == 2)
    {
      sub_1B4ACB960(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4ACB960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    result = sub_1B4ACBAB0(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4ACBAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A7818, &unk_1B4D29F40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7818, &unk_1B4D29F40);
  }

  sub_1B4ABD53C(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  sub_1B4D17E6C();
  return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
}

uint64_t sub_1B4ACBD18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1B4D17BBC();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1B4ACBDF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B28, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACBE94(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3B168, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACBF00(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3B168, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4ACBF9C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A99E0);
  __swift_project_value_buffer(v0, qword_1EB8A99E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cacheIndex";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localizedDate";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "measurement";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B4D17CFC();
        break;
      case 2:
        sub_1B4ACC284(a1, v5, a2, a3);
        break;
      case 1:
        sub_1B4D17CCC();
        break;
    }
  }

  return result;
}

uint64_t sub_1B4ACC284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  sub_1B4ADE840(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    result = sub_1B4ACC3F8(v3, a1, a2, a3);
    if (!v4)
    {
      if (v3[1])
      {
        sub_1B4D17E2C();
      }

      type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4ACC3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A7158, &unk_1B4D20310);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7158, &unk_1B4D20310);
  }

  sub_1B4ABD53C(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4ADE840(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17E6C();
  return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
}

uint64_t sub_1B4ACC65C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_1B4D17BBC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1B4ACC72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B20, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACC7CC(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACC838(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
        sub_1B4ADE840(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
        sub_1B4D17D3C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0), sub_1B4ADE840(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4ACCB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACCC08(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACCC74(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4ACCCF0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A12C0C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4ACCD98()
{
  result = MEMORY[0x1B8C7C620](0x7972746E452ELL, 0xE600000000000000);
  qword_1EB8A9A10 = 0xD000000000000037;
  *algn_1EB8A9A18 = 0x80000001B4D61170;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4ACCED8(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4ACCED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B98, &unk_1B4D2B438);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v40 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - v23;
  v38 = v5;
  v25 = *(v5 + 56);
  v41 = v4;
  v25(&v34 - v23, 1, 1, v4, v22);
  sub_1B4974FBC(v46, v11, &qword_1EB8A7E30, &unk_1B4D29F60);
  v35 = v13;
  v36 = v12;
  v26 = (*(v13 + 48))(v11, 1, v12);
  if (v26 == 1)
  {
    sub_1B4975024(v11, &qword_1EB8A7E30, &unk_1B4D29F60);
    v27 = v41;
  }

  else
  {
    sub_1B4ABD53C(v11, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
    sub_1B4ABD53C(v18, v15, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
    sub_1B4975024(v24, &qword_1EB8A9B98, &unk_1B4D2B438);
    v28 = v39;
    sub_1B4ABD53C(v15, v39, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    sub_1B4ABD53C(v28, v24, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    v27 = v41;
    (v25)(v24, 0, 1, v41);
  }

  sub_1B4ADE840(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  v29 = v42;
  sub_1B4D17D4C();
  v30 = v40;
  if (v29)
  {
    return sub_1B4975024(v24, &qword_1EB8A9B98, &unk_1B4D2B438);
  }

  sub_1B4974FBC(v24, v40, &qword_1EB8A9B98, &unk_1B4D2B438);
  if ((*(v38 + 48))(v30, 1, v27) == 1)
  {
    sub_1B4975024(v24, &qword_1EB8A9B98, &unk_1B4D2B438);
    return sub_1B4975024(v30, &qword_1EB8A9B98, &unk_1B4D2B438);
  }

  else
  {
    v32 = v37;
    sub_1B4ABD53C(v30, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    if (v26 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v24, &qword_1EB8A9B98, &unk_1B4D2B438);
    v33 = v46;
    sub_1B4975024(v46, &qword_1EB8A7E30, &unk_1B4D29F60);
    sub_1B4ABD53C(v32, v33, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    return (*(v35 + 56))(v33, 0, 1, v36);
  }
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4ACD49C(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4ACD49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7E30, &unk_1B4D29F60);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7E30, &unk_1B4D29F60);
  }

  sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4ADE840(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4D17E6C();
  return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
}

uint64_t sub_1B4ACD758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B10, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACD7F8(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACD864(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4ACD900()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9A38);
  __swift_project_value_buffer(v0, qword_1EB8A9A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1B4D29F30;
  v4 = v57 + v3;
  v5 = v57 + v3 + v1[14];
  *(v57 + v3) = 1;
  *v5 = "moveStreak";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v57 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "exerciseStreak";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v57 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "standStreak";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v57 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "allThreeRingsStreak";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v57 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "moveRingStatistics";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v57 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "moveMinutesRingStatistics";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v57 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "exerciseRingStatistics";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v57 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "standRingStatistics";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v57 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "stepsStatistics";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v57 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "flightsStatistics";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v57 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "distanceStatistics";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v8();
  v27 = (v57 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "moveGoalAchievedCount";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  v29 = (v57 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "exerciseGoalAchievedCount";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v8();
  v31 = (v57 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "standGoalAchievedCount";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v8();
  v33 = (v57 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "allThreeRingsGoalAchievedCount";
  *(v34 + 1) = 30;
  v34[16] = 2;
  v8();
  v35 = (v57 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "moveGoalDelta";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = v57 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "moveMinutesGoalDelta";
  *(v37 + 8) = 20;
  *(v37 + 16) = 2;
  v8();
  v38 = (v57 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "exerciseGoalDelta";
  *(v39 + 1) = 17;
  v39[16] = 2;
  v8();
  v40 = (v57 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "standGoalDelta";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v57 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "moveGoalMilestone";
  *(v43 + 1) = 17;
  v43[16] = 2;
  v8();
  v44 = (v57 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "exerciseGoalMilestone";
  *(v45 + 1) = 21;
  v45[16] = 2;
  v8();
  v46 = (v57 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "standGoalMilestone";
  *(v47 + 1) = 18;
  v47[16] = 2;
  v8();
  v48 = (v57 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "allThreeRingsGoalMilestone";
  *(v49 + 1) = 26;
  v49[16] = 2;
  v8();
  v50 = (v57 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "highestDailyStepCount";
  *(v51 + 1) = 21;
  v51[16] = 2;
  v8();
  v52 = (v57 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "highestDailyDistance";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v57 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "totalCount";
  *(v55 + 1) = 10;
  v55[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B4ACE3F8(v5, a1, a2, a3);
        break;
      case 2:
        sub_1B4ACE9A8(v5, a1, a2, a3);
        break;
      case 3:
        sub_1B4ACEF64(v5, a1, a2, a3);
        break;
      case 4:
        sub_1B4ACF520(v5, a1, a2, a3);
        break;
      case 5:
        sub_1B4ACFADC(v5, a1, a2, a3);
        break;
      case 6:
        sub_1B4AD0098(v5, a1, a2, a3);
        break;
      case 7:
        sub_1B4AD0654(v5, a1, a2, a3);
        break;
      case 8:
        sub_1B4AD0C10(v5, a1, a2, a3);
        break;
      case 9:
        sub_1B4AD11CC(v5, a1, a2, a3);
        break;
      case 10:
        sub_1B4AD1788(v5, a1, a2, a3);
        break;
      case 11:
        sub_1B4AD1D44(v5, a1, a2, a3);
        break;
      case 12:
        sub_1B4AD2300(v5, a1, a2, a3);
        break;
      case 13:
        sub_1B4AD28BC(v5, a1, a2, a3);
        break;
      case 14:
        sub_1B4AD2E78(v5, a1, a2, a3);
        break;
      case 15:
        sub_1B4AD3434(v5, a1, a2, a3);
        break;
      case 16:
        sub_1B4AD39F0(v5, a1, a2, a3);
        break;
      case 17:
        sub_1B4AD3FAC(v5, a1, a2, a3);
        break;
      case 18:
        sub_1B4AD4568(v5, a1, a2, a3);
        break;
      case 19:
        sub_1B4AD4B24(v5, a1, a2, a3);
        break;
      case 20:
        sub_1B4AD50E0(v5, a1, a2, a3);
        break;
      case 21:
        sub_1B4AD569C(v5, a1, a2, a3);
        break;
      case 22:
        sub_1B4AD5C58(v5, a1, a2, a3);
        break;
      case 23:
        sub_1B4AD6214(v5, a1, a2, a3);
        break;
      case 24:
        sub_1B4AD67D0(v5, a1, a2, a3);
        break;
      case 25:
        sub_1B4AD6D8C(v5, a1, a2, a3);
        break;
      case 26:
        sub_1B4AD7348(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B4ACE3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B80, &qword_1B4D2B418);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1B4974FBC(a1, v12, &qword_1EB8A9A50, &qword_1B4D29F70);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A9A50, &qword_1B4D29F70);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4ABD53C(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }

    else
    {
      sub_1B4975024(v25, &qword_1EB8A9B80, &qword_1B4D2B418);
      v32 = v40;
      sub_1B4ABD53C(v16, v40, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9B80, &qword_1B4D2B418);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9B80, &qword_1B4D2B418);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9B80, &qword_1B4D2B418);
    return sub_1B4975024(v33, &qword_1EB8A9B80, &qword_1B4D2B418);
  }

  else
  {
    v36 = v41;
    sub_1B4ABD53C(v33, v41, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9B80, &qword_1B4D2B418);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}