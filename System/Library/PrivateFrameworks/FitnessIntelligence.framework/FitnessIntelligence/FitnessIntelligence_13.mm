uint64_t sub_1B4A8A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v33, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8AD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v33, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v33, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8B908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8BEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8DB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8E12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8E6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A0, &qword_1B4D27A98);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A93A0, &qword_1B4D27A98);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    return sub_1B4975024(v33, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9390, &qword_1B4D27A80);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9390, &qword_1B4D27A80);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
    return sub_1B4975024(v33, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9390, &qword_1B4D27A80);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9390, &qword_1B4D27A80);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
    return sub_1B4975024(v33, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8F81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A8, &unk_1B4D27AA0);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B4975024(v25, &qword_1EB8A93A8, &unk_1B4D27AA0);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A93A8, &unk_1B4D27AA0);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A93A8, &unk_1B4D27AA0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A93A8, &unk_1B4D27AA0);
    return sub_1B4975024(v33, &qword_1EB8A93A8, &unk_1B4D27AA0);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93A8, &unk_1B4D27AA0);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1B4974FBC(v3, &v13 - v9, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1B4A903F8(v3, a1, a2, a3, &qword_1EB8A7CC8, &qword_1B4D20180, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        result = sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        if (!v4)
        {
          break;
        }

        return result;
      case 2u:
        sub_1B4A9061C(v3, a1, a2, a3);
        goto LABEL_29;
      case 3u:
        sub_1B4A90854(v3, a1, a2, a3);
        goto LABEL_29;
      case 4u:
        sub_1B4A90A8C(v3, a1, a2, a3);
        goto LABEL_29;
      case 5u:
        sub_1B4A90CC4(v3, a1, a2, a3);
        goto LABEL_29;
      case 6u:
        sub_1B4A90EFC(v3, a1, a2, a3);
        goto LABEL_29;
      case 7u:
        sub_1B4A91134(v3, a1, a2, a3);
        goto LABEL_29;
      case 8u:
        sub_1B4A9136C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 9u:
        sub_1B4A915A4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xAu:
        sub_1B4A917DC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xBu:
        sub_1B4A91A14(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xCu:
        sub_1B4A91C4C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xDu:
        sub_1B4A91E84(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xEu:
        sub_1B4A920BC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xFu:
        sub_1B4A922F4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0x10u:
        sub_1B4A9252C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        }

        goto LABEL_8;
      case 0x11u:
        sub_1B4A92764(v3, a1, a2, a3);
        if (v4)
        {
          return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        }

LABEL_8:
        sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        break;
      default:
        sub_1B4A901C4(v3, a1, a2, a3);
LABEL_29:
        result = sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        if (v4)
        {
          return result;
        }

        break;
    }
  }

  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  return sub_1B4D17BAC();
}

uint64_t sub_1B4A901C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A903F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v20[0] = a8;
  v20[3] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v20 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v14, a5, a6);
  v18 = a7(0);
  if ((*(*(v18 - 8) + 48))(v14, 1, v18) == 1)
  {
    sub_1B4975024(v14, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6F890(v14, v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  result = sub_1B4A6FA60(v14, v20[0]);
  __break(1u);
  return result;
}

uint64_t sub_1B4A9061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A90854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A90A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A90CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A90EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A91134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A9136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A915A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A917DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A91A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A91C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A91E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A920BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4A97E08(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A922F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A9252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A92764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A929E8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4A97E08(a2, a3, a4);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A92AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9300, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A92B74(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A92BE0(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);

  return sub_1B4D17D9C();
}

BOOL _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV3KeyV06OneOf_H4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (v7 == 3)
        {
          v8 = *a1;
          v9 = *a2;
          sub_1B4A1F5D4(*a1, v3, 3);
          v10 = *&v5;
          v11 = v6;
          v12 = 3;
LABEL_13:
          sub_1B4A1F5D4(v10, v11, v12);
          return v8 == v9;
        }
      }

      else if (v7 == 4)
      {
        v8 = *a1;
        v9 = *a2;
        sub_1B4A1F5D4(*a1, v3, 4);
        v10 = *&v5;
        v11 = v6;
        v12 = 4;
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    if (v7 == 2)
    {
      sub_1B4A1F5D4(*a1, v3, 2);
      v13 = *&v5;
      v14 = v6;
      v15 = 2;
LABEL_16:
      sub_1B4A1F5D4(v13, v14, v15);
      return v2 == *&v5;
    }

    goto LABEL_17;
  }

  if (*(a1 + 16))
  {
    if (v7 == 1)
    {
      sub_1B4A1F5D4(*a1, v3, 1);
      v13 = *&v5;
      v14 = v6;
      v15 = 1;
      goto LABEL_16;
    }

LABEL_17:
    sub_1B4A1F5AC(*&v5, v6, v7);
    sub_1B4A1F5D4(v2, v3, v4);
    sub_1B4A1F5D4(*&v5, v6, v7);
    return 0;
  }

  if (*(a2 + 16))
  {

    goto LABEL_17;
  }

  v17 = *a1;
  if (v2 == *&v5 && v3 == v6)
  {
    sub_1B4A1F5AC(v17, v3, 0);
    sub_1B4A1F5AC(v2, v3, 0);
    sub_1B4A1F5D4(v2, v3, 0);
    sub_1B4A1F5D4(v2, v3, 0);
    return 1;
  }

  else
  {
    v19 = sub_1B4D18DCC();
    sub_1B4A1F5AC(*&v5, v6, 0);
    sub_1B4A1F5AC(v2, v3, 0);
    sub_1B4A1F5D4(v2, v3, 0);
    sub_1B4A1F5D4(*&v5, v6, 0);
    return v19 & 1;
  }
}

uint64_t _s19FitnessIntelligence06Apple_a1_B33_WorkoutPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0 || (sub_1B4A0C158(a1[1], a2[1]) & 1) == 0 || (sub_1B4A0A164(a1[2], a2[2]) & 1) == 0 || (sub_1B4A0A164(a1[3], a2[3]) & 1) == 0 || (sub_1B4A0C158(a1[4], a2[4]) & 1) == 0 || (sub_1B4A0C158(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV4PairV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v37 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E98, &unk_1B4D203B0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA8, &qword_1B4D203C0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_1B4974FBC(a1 + v19, v18, &qword_1EB8A7EA0, &unk_1B4D42260);
  sub_1B4974FBC(v46 + v19, &v18[v20], &qword_1EB8A7EA0, &unk_1B4D42260);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    sub_1B4974FBC(v18, v14, &qword_1EB8A7EA0, &unk_1B4D42260);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      sub_1B4A6F890(&v18[v20], v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      v25 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV3KeyV2eeoiySbAE_AEtFZ_0(v14, v11);
      sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      sub_1B4A6FA60(v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      sub_1B4975024(v18, &qword_1EB8A7EA0, &unk_1B4D42260);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1B4A6FA60(v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
LABEL_6:
    v22 = &qword_1EB8A7EA8;
    v23 = &qword_1B4D203C0;
    v24 = v18;
LABEL_14:
    sub_1B4975024(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4975024(v18, &qword_1EB8A7EA0, &unk_1B4D42260);
LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  sub_1B4974FBC(v45 + v26, v44, &qword_1EB8A7E90, &unk_1B4D25C60);
  sub_1B4974FBC(v46 + v26, v28 + v27, &qword_1EB8A7E90, &unk_1B4D25C60);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_1B4975024(v28, &qword_1EB8A7E90, &unk_1B4D25C60);
LABEL_18:
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v32 = sub_1B4D1816C();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v39;
  sub_1B4974FBC(v28, v39, &qword_1EB8A7E90, &unk_1B4D25C60);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_1B4A6FA60(v31, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
LABEL_13:
    v22 = &qword_1EB8A7E98;
    v23 = &unk_1B4D203B0;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v38;
  sub_1B4A6F890(v34, v38, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  v36 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV0G0V2eeoiySbAE_AEtFZ_0(v31, v35);
  sub_1B4A6FA60(v35, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  sub_1B4A6FA60(v31, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  sub_1B4975024(v28, &qword_1EB8A7E90, &unk_1B4D25C60);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV3KeyV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 != 255)
  {
    v13 = *a1;
    v14 = v2;
    v15 = v4;
    if (v7 != 255)
    {
      v10 = v6;
      v11 = v5;
      v12 = v7;
      sub_1B4A1F598(v3, v2, v4);
      sub_1B4A1F598(v6, v5, v7);
      sub_1B4A1F598(v3, v2, v4);
      v8 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV3KeyV06OneOf_H4TypeO2eeoiySbAG_AGtFZ_0(&v13, &v10);
      sub_1B4A1F5D4(v10, v11, v12);
      sub_1B4A1F5D4(v13, v14, v15);
      sub_1B4A1F5C0(v3, v2, v4);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_1B4A1F598(v3, v2, v4);
    sub_1B4A1F598(v6, v5, 255);
    sub_1B4A1F598(v3, v2, v4);
    sub_1B4A1F5D4(v3, v2, v4);
LABEL_8:
    sub_1B4A1F5C0(v3, v2, v4);
    sub_1B4A1F5C0(v6, v5, v7);
    return 0;
  }

  sub_1B4A1F598(*a1, v2, 255);
  if (v7 != 255)
  {
    sub_1B4A1F598(v6, v5, v7);
    goto LABEL_8;
  }

  sub_1B4A1F598(v6, v5, 255);
  sub_1B4A1F5C0(v3, v2, 255);
LABEL_10:
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV0G0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E88, &unk_1B4D203A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B4974FBC(a1, &v20 - v12, &qword_1EB8A7E80, &unk_1B4D25C50);
  sub_1B4974FBC(a2, &v13[v15], &qword_1EB8A7E80, &unk_1B4D25C50);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A7E80, &unk_1B4D25C50);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A7E80, &unk_1B4D25C50);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8A7E88, &unk_1B4D203A0);
    goto LABEL_7;
  }

  sub_1B4A6F890(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  v18 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV0G0V06OneOf_G4TypeO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4975024(v13, &qword_1EB8A7E80, &unk_1B4D25C50);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV0G0V06OneOf_G4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v29);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v28);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v28 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93D8, &qword_1B4D27AF8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - v15;
  v18 = *(v17 + 56);
  sub_1B4A6F9F8(a1, &v28 - v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4A6F9F8(a2, &v16[v18], type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6F9F8(v16, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4A6F890(&v16[v18], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      if (sub_1B4A10A90(*v10, *v5))
      {
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v19 = sub_1B4D1816C();
        sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        if (v19)
        {
          v20 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
          v21 = v10;
LABEL_13:
          sub_1B4A6FA60(v21, v20);
          sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
          return 1;
        }
      }

      else
      {
        sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      }

      v26 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      v27 = v10;
LABEL_18:
      sub_1B4A6FA60(v27, v26);
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
      return 0;
    }

    v22 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
    v23 = v10;
  }

  else
  {
    sub_1B4A6F9F8(v16, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B4A6F890(&v16[v18], v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      if (*v13 == *v7)
      {
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v24 = sub_1B4D1816C();
        sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        if (v24)
        {
          v20 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
          v21 = v13;
          goto LABEL_13;
        }
      }

      else
      {
        sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      }

      v26 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
      v27 = v13;
      goto LABEL_18;
    }

    v22 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
    v23 = v13;
  }

  sub_1B4A6FA60(v23, v22);
  sub_1B4975024(v16, &qword_1EB8A93D8, &qword_1B4D27AF8);
  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutBestMetricPropertyValueV5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EB8, &qword_1B4D203C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B4974FBC(a1, &v20 - v12, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  sub_1B4974FBC(a2, &v13[v15], &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A7BC8, &unk_1B4D1FD60);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8A7EB8, &qword_1B4D203C8);
    goto LABEL_7;
  }

  sub_1B4A6F890(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  v18 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutBestMetricPropertyValueV5EntryV06OneOf_I4TypeO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4975024(v13, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutBestMetricPropertyValueV5EntryV06OneOf_I4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EB0, &qword_1B4D27AF0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_1B4A6F9F8(a1, &v27 - v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4A6F9F8(a2, &v18[v20], type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6F9F8(v18, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4A6F890(&v18[v20], v6, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      v21 = _s19FitnessIntelligence06Apple_a1_B28_BestWorkoutMeasurementEntryV2eeoiySbAC_ACtFZ_0(v12, v6);
      sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      v22 = v12;
      v23 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry;
LABEL_9:
      sub_1B4A6FA60(v22, v23);
      sub_1B4A6FA60(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      return v21 & 1;
    }

    v24 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry;
    v25 = v12;
  }

  else
  {
    sub_1B4A6F9F8(v18, v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B4A6F890(&v18[v20], v9, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v21 = _s19FitnessIntelligence06Apple_a1_B23_BestWorkoutRecordEntryV2eeoiySbAC_ACtFZ_0(v15, v9);
      sub_1B4A6FA60(v9, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v22 = v15;
      v23 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry;
      goto LABEL_9;
    }

    v24 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry;
    v25 = v15;
  }

  sub_1B4A6FA60(v25, v24);
  sub_1B4975024(v18, &qword_1EB8A7EB0, &qword_1B4D27AF0);
  v21 = 0;
  return v21 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B30_WorkoutMilestonePropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || (sub_1B4A118C4(a1[1], a2[1]) & 1) == 0 || (sub_1B4A11F5C(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue(0);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B30_WorkoutMilestonePropertyValueV5EntryV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_11;
  }

  v21 = v7;
  v22 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v14 = *(v22 + 28);
  v15 = *(v11 + 48);
  sub_1B4974FBC(a1 + v14, v13, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4974FBC(a2 + v14, &v13[v15], &qword_1EB8A7158, &unk_1B4D20310);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A7158, &unk_1B4D20310);
LABEL_14:
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_10;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A7158, &unk_1B4D20310);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
LABEL_10:
    sub_1B4975024(v13, &qword_1EB8A7E20, &unk_1B4D2B450);
    goto LABEL_11;
  }

  v19 = v21;
  sub_1B4A6F890(&v13[v15], v21, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v20 = static Apple_Fitness_Intelligence_LocalizedDate.== infix(_:_:)(v10, v19);
  sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4975024(v13, &qword_1EB8A7158, &unk_1B4D20310);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_11:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B30_WorkoutMilestonePropertyValueV4PairV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E78, &unk_1B4D20390);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  v15 = a1;
  v16 = a2;
  v23[0] = v14;
  v23[1] = v15;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  sub_1B4974FBC(v15 + v17, v13, &qword_1EB8A7148, &unk_1B4D25C40);
  sub_1B4974FBC(v16 + v17, &v13[v18], &qword_1EB8A7148, &unk_1B4D25C40);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A7148, &unk_1B4D25C40);
LABEL_11:
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A7148, &unk_1B4D25C40);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
LABEL_7:
    sub_1B4975024(v13, &qword_1EB8A7E78, &unk_1B4D20390);
    goto LABEL_8;
  }

  sub_1B4A6F890(&v13[v18], v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  v22 = _s19FitnessIntelligence06Apple_a1_B30_WorkoutMilestonePropertyValueV5EntryV2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  sub_1B4975024(v13, &qword_1EB8A7148, &unk_1B4D25C40);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B28_BestWorkoutMeasurementEntryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = v7;
  v21 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v14 = *(v21 + 28);
  v15 = *(v11 + 48);
  sub_1B4974FBC(a1 + v14, v13, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4974FBC(a2 + v14, &v13[v15], &qword_1EB8A7158, &unk_1B4D20310);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A7158, &unk_1B4D20310);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A7158, &unk_1B4D20310);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
LABEL_8:
    sub_1B4975024(v13, &qword_1EB8A7E20, &unk_1B4D2B450);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v22;
  sub_1B4A6F890(&v13[v15], v22, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v18 = static Apple_Fitness_Intelligence_LocalizedDate.== infix(_:_:)(v10, v17);
  sub_1B4A6FA60(v17, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4975024(v13, &qword_1EB8A7158, &unk_1B4D20310);
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = sub_1B4D1816C();
  return v19 & 1;
}

BOOL _s19FitnessIntelligence06Apple_a1_B23_BestWorkoutRecordEntryV06OneOf_F4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9388, &unk_1B4D27A70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v11 - v5);
  v8 = (&v11 + *(v7 + 56) - v5);
  sub_1B4A6F9F8(a1, &v11 - v5, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  sub_1B4A6F9F8(a2, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  v9 = 0;
  if (*v6 == *v8 && v6[1] == v8[1] && v6[2] == v8[2] && v6[3] == v8[3] && v6[4] == v8[4])
  {
    type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
    sub_1B4D17BCC();
    sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    if (sub_1B4D1816C())
    {
      v9 = 1;
    }
  }

  sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  return v9;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_BestWorkoutRecordEntryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v42 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93D0, &qword_1B4D27AE8);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v42 - v9;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v21 = *a1;
  v22 = a1[1];
  v49 = a1;
  if ((v21 != *a2 || v22 != a2[1]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v44 = v10;
  v42 = v6;
  v23 = a2;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v24 = *(v43 + 28);
  v25 = *(v18 + 48);
  sub_1B4974FBC(v49 + v24, v20, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4974FBC(v23 + v24, &v20[v25], &qword_1EB8A7158, &unk_1B4D20310);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) != 1)
  {
    sub_1B4974FBC(v20, v17, &qword_1EB8A7158, &unk_1B4D20310);
    if (v26(&v20[v25], 1, v11) != 1)
    {
      sub_1B4A6F890(&v20[v25], v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v30 = static Apple_Fitness_Intelligence_LocalizedDate.== infix(_:_:)(v17, v14);
      sub_1B4A6FA60(v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      sub_1B4A6FA60(v17, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      sub_1B4975024(v20, &qword_1EB8A7158, &unk_1B4D20310);
      if ((v30 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_1B4A6FA60(v17, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
LABEL_9:
    v27 = &qword_1EB8A7E20;
    v28 = &unk_1B4D2B450;
    v29 = v20;
LABEL_17:
    sub_1B4975024(v29, v27, v28);
    goto LABEL_18;
  }

  if (v26(&v20[v25], 1, v11) != 1)
  {
    goto LABEL_9;
  }

  sub_1B4975024(v20, &qword_1EB8A7158, &unk_1B4D20310);
LABEL_11:
  v31 = v44;
  v32 = *(v43 + 20);
  v33 = *(v46 + 48);
  sub_1B4974FBC(v49 + v32, v44, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  sub_1B4974FBC(v23 + v32, v31 + v33, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v34 = v48;
  v35 = *(v47 + 48);
  if (v35(v31, 1, v48) == 1)
  {
    if (v35(v31 + v33, 1, v34) == 1)
    {
      sub_1B4975024(v31, &qword_1EB8A7B90, &unk_1B4D3B2C0);
LABEL_21:
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v37 = sub_1B4D1816C();
      return v37 & 1;
    }

    goto LABEL_16;
  }

  v36 = v45;
  sub_1B4974FBC(v31, v45, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  if (v35(v31 + v33, 1, v34) == 1)
  {
    sub_1B4A6FA60(v36, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
LABEL_16:
    v27 = &qword_1EB8A93D0;
    v28 = &qword_1B4D27AE8;
    v29 = v31;
    goto LABEL_17;
  }

  v39 = v31 + v33;
  v40 = v42;
  sub_1B4A6F890(v39, v42, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  v41 = _s19FitnessIntelligence06Apple_a1_B23_BestWorkoutRecordEntryV06OneOf_F4TypeO2eeoiySbAE_AEtFZ_0(v36, v40);
  sub_1B4A6FA60(v40, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  sub_1B4A6FA60(v36, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  sub_1B4975024(v31, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  if (v41)
  {
    goto LABEL_21;
  }

LABEL_18:
  v37 = 0;
  return v37 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B29_DistanceSampleIntervalRecordV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B22_WorkoutPropertyRecordV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v41 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE0, &unk_1B4D27AD0);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CF0, &qword_1B4D201A8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v43 = v10;
  v41 = v6;
  v42 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  v21 = *(v42 + 28);
  v22 = *(v18 + 48);
  v44 = a1;
  sub_1B4974FBC(a1 + v21, v20, &qword_1EB8A7CE8, &qword_1B4D201A0);
  v23 = a2 + v21;
  v24 = a2;
  sub_1B4974FBC(v23, &v20[v22], &qword_1EB8A7CE8, &qword_1B4D201A0);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) != 1)
  {
    sub_1B4974FBC(v20, v17, &qword_1EB8A7CE8, &qword_1B4D201A0);
    if (v25(&v20[v22], 1, v11) != 1)
    {
      sub_1B4A6F890(&v20[v22], v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v29 = _s19FitnessIntelligence06Apple_a1_B26_WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(v17, v14);
      sub_1B4A6FA60(v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4A6FA60(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4975024(v20, &qword_1EB8A7CE8, &qword_1B4D201A0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_1B4A6FA60(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
LABEL_7:
    v26 = &qword_1EB8A7CF0;
    v27 = &qword_1B4D201A8;
    v28 = v20;
LABEL_15:
    sub_1B4975024(v28, v26, v27);
    goto LABEL_16;
  }

  if (v25(&v20[v22], 1, v11) != 1)
  {
    goto LABEL_7;
  }

  sub_1B4975024(v20, &qword_1EB8A7CE8, &qword_1B4D201A0);
LABEL_9:
  v30 = v43;
  v31 = *(v42 + 32);
  v32 = *(v46 + 48);
  sub_1B4974FBC(v44 + v31, v43, &qword_1EB8A7CD8, &unk_1B4D20190);
  sub_1B4974FBC(v24 + v31, v30 + v32, &qword_1EB8A7CD8, &unk_1B4D20190);
  v33 = v48;
  v34 = *(v47 + 48);
  if (v34(v30, 1, v48) == 1)
  {
    if (v34(v30 + v32, 1, v33) == 1)
    {
      sub_1B4975024(v30, &qword_1EB8A7CD8, &unk_1B4D20190);
LABEL_19:
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v36 = sub_1B4D1816C();
      return v36 & 1;
    }

    goto LABEL_14;
  }

  v35 = v45;
  sub_1B4974FBC(v30, v45, &qword_1EB8A7CD8, &unk_1B4D20190);
  if (v34(v30 + v32, 1, v33) == 1)
  {
    sub_1B4A6FA60(v35, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
LABEL_14:
    v26 = &qword_1EB8A7CE0;
    v27 = &unk_1B4D27AD0;
    v28 = v30;
    goto LABEL_15;
  }

  v38 = v30 + v32;
  v39 = v41;
  sub_1B4A6F890(v38, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  v40 = _s19FitnessIntelligence06Apple_a1_B16_WorkoutPropertyV2eeoiySbAC_ACtFZ_0(v35, v39);
  sub_1B4A6FA60(v39, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  sub_1B4A6FA60(v35, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  sub_1B4975024(v30, &qword_1EB8A7CD8, &unk_1B4D20190);
  if (v40)
  {
    goto LABEL_19;
  }

LABEL_16:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B26_WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1B4D18DCC();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1B4D18DCC();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v4[8];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v4[9];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v4;
      v37 = sub_1B4D18DCC();
      v4 = v36;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v35)
  {
    return 0;
  }

  v38 = v4[10];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }

LABEL_43:
    sub_1B4D17BCC();
    sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1B4D1816C() & 1;
  }

  if (!v42)
  {
    goto LABEL_43;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B18_WorkoutPropertiesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1B4A185B4(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_WorkoutPropertyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD0, &qword_1B4D20188);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B4974FBC(a1, &v20 - v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4974FBC(a2, &v13[v15], &qword_1EB8A7CC8, &qword_1B4D20180);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A7CC8, &qword_1B4D20180);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8A7CD0, &qword_1B4D20188);
    goto LABEL_7;
  }

  sub_1B4A6F890(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  v18 = _s19FitnessIntelligence06Apple_a1_B16_WorkoutPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  sub_1B4975024(v13, &qword_1EB8A7CC8, &qword_1B4D20180);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_WorkoutPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v167 = a2;
  v168 = a1;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v152 = (&v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v134);
  v153 = (&v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v151 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v150 = &v134 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v149 = &v134 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v148 = &v134 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v134 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v134 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v143 = &v134 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v141 = &v134 - v20;
  v166 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v166);
  v146 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v144 = &v134 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v142 = &v134 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v140 = (&v134 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v139 = (&v134 - v29);
  v135 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v135);
  v138 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v137 = &v134 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v136 = (&v134 - v34);
  v35 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  MEMORY[0x1EEE9AC00](v35);
  v162 = (&v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v165 = (&v134 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v164 = (&v134 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v163 = (&v134 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v161 = (&v134 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v160 = (&v134 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v159 = (&v134 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v157 = (&v134 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v155 = (&v134 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v134 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = (&v134 - v57);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v134 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v158 = (&v134 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v156 = (&v134 - v65);
  MEMORY[0x1EEE9AC00](v66);
  v154 = (&v134 - v67);
  MEMORY[0x1EEE9AC00](v68);
  v70 = (&v134 - v69);
  MEMORY[0x1EEE9AC00](v71);
  v73 = (&v134 - v72);
  MEMORY[0x1EEE9AC00](v74);
  v76 = (&v134 - v75);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93C8, &qword_1B4D27AE0);
  MEMORY[0x1EEE9AC00](v77 - 8);
  v79 = &v134 - v78;
  v81 = *(v80 + 56);
  sub_1B4A6F9F8(v168, &v134 - v78, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  v168 = v81;
  sub_1B4A6F9F8(v167, &v79[v81], type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B4A6F9F8(v79, v73, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v116 = v168;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v126 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
        goto LABEL_59;
      }

      v86 = v79;
      v117 = v139;
      sub_1B4A6F890(&v79[v116], v139, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      if (sub_1B4A10A90(*v73, *v117))
      {
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1B4D1816C())
        {
          v104 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
          sub_1B4A6FA60(v117, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
          v93 = v73;
          goto LABEL_45;
        }
      }

      v129 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      sub_1B4A6FA60(v117, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v130 = v73;
      goto LABEL_64;
    case 2u:
      sub_1B4A6F9F8(v79, v70, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v102 = v168;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v83 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
        v84 = v70;
        goto LABEL_70;
      }

      v86 = v79;
      v103 = v140;
      sub_1B4A6F890(&v79[v102], v140, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      if (sub_1B4A10A90(*v70, *v103))
      {
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1B4D1816C())
        {
          v104 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
          sub_1B4A6FA60(v103, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
          v93 = v70;
          goto LABEL_45;
        }
      }

      v129 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      sub_1B4A6FA60(v103, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v130 = v70;
      goto LABEL_64;
    case 3u:
      v58 = v154;
      sub_1B4A6F9F8(v79, v154, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v109 = v168;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_47;
      }

      v86 = v79;
      v98 = &v79[v109];
      v99 = &v171;
      goto LABEL_41;
    case 4u:
      v58 = v156;
      sub_1B4A6F9F8(v79, v156, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v97 = v168;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_47;
      }

      v86 = v79;
      v98 = &v79[v97];
      v99 = &v172;
      goto LABEL_41;
    case 5u:
      v58 = v158;
      sub_1B4A6F9F8(v79, v158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v120 = v168;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
LABEL_47:
        v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
        goto LABEL_69;
      }

      v86 = v79;
      v98 = &v79[v120];
      v99 = &v173;
LABEL_41:
      v106 = *(v99 - 32);
      sub_1B4A6F890(v98, v106, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      if (sub_1B4A10A90(*v58, *v106))
      {
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1B4D1816C())
        {
          v107 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
          goto LABEL_44;
        }
      }

      v121 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      goto LABEL_63;
    case 6u:
      sub_1B4A6F9F8(v79, v61, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v123 = v168;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v124 = v141;
        sub_1B4A6F890(&v79[v123], v141, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v112 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v61, v124);
        v113 = v79;
        v114 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        sub_1B4A6FA60(v124, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v115 = v61;
        goto LABEL_57;
      }

      v83 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      v84 = v61;
      goto LABEL_70;
    case 7u:
      sub_1B4A6F9F8(v79, v58, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v110 = v168;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v111 = v143;
        sub_1B4A6F890(&v79[v110], v143, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v112 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v58, v111);
        v113 = v79;
        v114 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        sub_1B4A6FA60(v111, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v115 = v58;
        goto LABEL_57;
      }

      v108 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      goto LABEL_69;
    case 8u:
      sub_1B4A6F9F8(v79, v55, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v127 = v168;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v128 = v145;
        sub_1B4A6F890(&v79[v127], v145, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v112 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v55, v128);
        sub_1B4A6FA60(v128, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        sub_1B4A6FA60(v55, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        sub_1B4A6FA60(v79, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        return v112 & 1;
      }

      v83 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      v84 = v55;
      goto LABEL_70;
    case 9u:
      v73 = v155;
      sub_1B4A6F9F8(v79, v155, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v101 = v168;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_58;
      }

      v95 = &v79[v101];
      v96 = v147;
      goto LABEL_55;
    case 0xAu:
      v73 = v157;
      sub_1B4A6F9F8(v79, v157, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v125 = v168;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_58;
      }

      v95 = &v79[v125];
      v96 = v148;
      goto LABEL_55;
    case 0xBu:
      v73 = v159;
      sub_1B4A6F9F8(v79, v159, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v94 = v168;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_58;
      }

      v95 = &v79[v94];
      v96 = v149;
      goto LABEL_55;
    case 0xCu:
      v73 = v160;
      sub_1B4A6F9F8(v79, v160, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v100 = v168;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_58;
      }

      v95 = &v79[v100];
      v96 = v150;
      goto LABEL_55;
    case 0xDu:
      v73 = v161;
      sub_1B4A6F9F8(v79, v161, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v122 = v168;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
LABEL_58:
        v126 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        goto LABEL_59;
      }

      v95 = &v79[v122];
      v96 = v151;
LABEL_55:
      sub_1B4A6F890(v95, v96, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v112 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v73, v96);
      v119 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      goto LABEL_56;
    case 0xEu:
      v58 = v163;
      sub_1B4A6F9F8(v79, v163, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v89 = v168;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v108 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
        goto LABEL_69;
      }

      v86 = v79;
      v90 = v153;
      sub_1B4A6F890(&v79[v89], v153, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      if (*v58 == *v90)
      {
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v91 = sub_1B4D1816C();
        sub_1B4A6FA60(v90, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        if (v91)
        {
          v92 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
          v93 = v58;
          goto LABEL_46;
        }
      }

      else
      {
        sub_1B4A6FA60(v90, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      }

      v131 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
      v130 = v58;
      goto LABEL_65;
    case 0xFu:
      v58 = v164;
      sub_1B4A6F9F8(v79, v164, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v105 = v168;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_28;
      }

      v86 = v79;
      v87 = &v79[v105];
      v88 = &v169;
      goto LABEL_24;
    case 0x10u:
      v58 = v165;
      sub_1B4A6F9F8(v79, v165, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v85 = v168;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
LABEL_28:
        v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
LABEL_69:
        v83 = v108;
        v84 = v58;
        goto LABEL_70;
      }

      v86 = v79;
      v87 = &v79[v85];
      v88 = &v170;
LABEL_24:
      v106 = *(v88 - 32);
      sub_1B4A6F890(v87, v106, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      if ((sub_1B4A191CC(*v58, *v106) & 1) != 0 && v58[1] == v106[1])
      {
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1B4D1816C())
        {
          v107 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
LABEL_44:
          v104 = v107;
          sub_1B4A6FA60(v106, v107);
          v93 = v58;
          goto LABEL_45;
        }
      }

      v121 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
LABEL_63:
      v129 = v121;
      sub_1B4A6FA60(v106, v121);
      v130 = v58;
      goto LABEL_64;
    case 0x11u:
      v73 = v162;
      sub_1B4A6F9F8(v79, v162, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v118 = v168;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        v126 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue;
LABEL_59:
        v83 = v126;
        v84 = v73;
        goto LABEL_70;
      }

      v96 = v152;
      sub_1B4A6F890(&v79[v118], v152, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
      v112 = _s19FitnessIntelligence06Apple_a1_B30_WeeklyStatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v73, v96);
      v119 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue;
LABEL_56:
      v113 = v79;
      v114 = v119;
      sub_1B4A6FA60(v96, v119);
      v115 = v73;
LABEL_57:
      sub_1B4A6FA60(v115, v114);
      sub_1B4A6FA60(v113, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      return v112 & 1;
    default:
      sub_1B4A6F9F8(v79, v76, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v82 = v168;
      if (swift_getEnumCaseMultiPayload())
      {
        v83 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
        v84 = v76;
LABEL_70:
        sub_1B4A6FA60(v84, v83);
        sub_1B4975024(v79, &qword_1EB8A93C8, &qword_1B4D27AE0);
        goto LABEL_71;
      }

      v86 = v79;
      v133 = v136;
      sub_1B4A6F890(&v79[v82], v136, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      if ((sub_1B4A191CC(*v76, *v133) & 1) == 0 || v76[1] != v133[1] || (sub_1B4D17BCC(), sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]), (sub_1B4D1816C() & 1) == 0))
      {
        v129 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
        sub_1B4A6FA60(v133, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        v130 = v76;
LABEL_64:
        v131 = v129;
LABEL_65:
        sub_1B4A6FA60(v130, v131);
        sub_1B4A6FA60(v86, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
LABEL_71:
        v112 = 0;
        return v112 & 1;
      }

      v104 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
      sub_1B4A6FA60(v133, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      v93 = v76;
LABEL_45:
      v92 = v104;
LABEL_46:
      sub_1B4A6FA60(v93, v92);
      sub_1B4A6FA60(v86, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v112 = 1;
      return v112 & 1;
  }
}

uint64_t sub_1B4A97E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t keypath_set_51Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a1;
  result = sub_1B4A1F5C0(*a2, *(a2 + 8), *(a2 + 16));
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = a5;
  return result;
}

void sub_1B4A991DC(uint64_t a1)
{
  sub_1B4A995FC(319, &qword_1EDC37970, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A992C8(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A99A04(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4A99A04(319, &qword_1EDC37890, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A993DC(uint64_t a1)
{
  sub_1B4A99A04(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4A99A04(319, &qword_1EDC378E0, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B4D17BCC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A994F0(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A995FC(319, qword_1EDC3B3E0, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4A995FC(319, qword_1EDC3C560, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A995FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4A99688(uint64_t a1)
{
  sub_1B4A995FC(319, &qword_1EB8A92C8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4A995FC(319, &qword_1EB8A92D0, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B4D17BCC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A997F8(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A995FC(319, &qword_1EB8A92F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A998E4(uint64_t a1)
{
  sub_1B4A995FC(319, &qword_1EDC37938, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A99A04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B4A99A74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B4A99ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void sub_1B4A99BDC(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4A995FC(319, qword_1EDC3A6B0, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4A995FC(319, qword_1EDC3A760, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B4A99D00(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4A99DB0(uint64_t a1)
{
  sub_1B4A995FC(319, &qword_1EDC3BB88, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      sub_1B4A995FC(319, qword_1EDC3C950, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B4A99EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_221Tm);
}

uint64_t __swift_get_extra_inhabitant_index_221Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = sub_1B4D17BCC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B4A99F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_222Tm);
}

uint64_t __swift_store_extra_inhabitant_index_222Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = sub_1B4D17BCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B4A9A070(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1B4A9A150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B4D17BCC();
  if (v5 <= 0x3F)
  {
    sub_1B4A995FC(319, qword_1EDC3C950, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, MEMORY[0x1E69E6720]);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4A9A2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1B4D17BCC();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B4A9A3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_196Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_1B4D17BCC();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_197Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_1B4D17BCC();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1B4A9A690(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperties.records.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperties.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.monthOfYear.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));
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

double sub_1B4A9AA04@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));
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

uint64_t sub_1B4A9AA68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.monthOfYear.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.monthOfYear.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20);
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

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.clearMonthOfYear()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.dayOfWeek.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));
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

double sub_1B4A9AC70@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));
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

uint64_t sub_1B4A9ACD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.dayOfWeek.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.dayOfWeek.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24);
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

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.clearDayOfWeek()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.hourOfDay.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 28));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.hourOfDay.setter(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.hourOfDay.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_1B4A3E3D4;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.clearHourOfDay()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.modalityKind.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));
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

double sub_1B4A9B010@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));
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

uint64_t sub_1B4A9B074(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.modalityKind.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.modalityKind.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32);
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

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.clearModalityKind()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.trainerIdentifiers.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4974FBC(v1 + *(v6 + 36), v5, &qword_1EB8A9540, &unk_1B4D27B00);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A9C0D4(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A9540, &unk_1B4D27B00);
  }

  return result;
}

uint64_t sub_1B4A9B38C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4974FBC(a1 + *(v7 + 36), v6, &qword_1EB8A9540, &unk_1B4D27B00);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A9540, &unk_1B4D27B00);
  }

  return result;
}

uint64_t sub_1B4A9B4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
  sub_1B4975024(a2 + v8, &qword_1EB8A9540, &unk_1B4D27B00);
  sub_1B4A9C0D4(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.trainerIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
  sub_1B4975024(v1 + v3, &qword_1EB8A9540, &unk_1B4D27B00);
  sub_1B4A9C0D4(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.trainerIdentifiers.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A9540, &unk_1B4D27B00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A9540, &unk_1B4D27B00);
    }
  }

  else
  {
    sub_1B4A9C0D4(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  }

  return sub_1B4A9B928;
}

BOOL Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.hasTrainerIdentifiers.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4974FBC(v0 + *(v4 + 36), v3, &qword_1EB8A9540, &unk_1B4D27B00);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A9540, &unk_1B4D27B00);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.clearTrainerIdentifiers()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
  sub_1B4975024(v0 + v1, &qword_1EB8A9540, &unk_1B4D27B00);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v3[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v3[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v3[9];
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.dayOfWeek.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.modalityKind.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.trainerIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A9C0D4(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  }

  sub_1B4D17BBC();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a1 + v7[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v7[9];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7DC8, &qword_1B4D202B8);
  }

  return result;
}

uint64_t sub_1B4A9C0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A9C13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v7 + 28), v6, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  }

  sub_1B4D17BBC();
  v10 = (a2 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a2 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v8[9];
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7DC8, &qword_1B4D202B8);
  }

  return result;
}

uint64_t sub_1B4A9C310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A7DC8, &qword_1B4D202B8);
  sub_1B4A9C0D4(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.dimensions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A7DC8, &qword_1B4D202B8);
  sub_1B4A9C0D4(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.dimensions.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v9[9];
    v22 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7DC8, &qword_1B4D202B8);
    }
  }

  else
  {
    sub_1B4A9C0D4(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  }

  return sub_1B4A9C778;
}

uint64_t sub_1B4A9C7B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A9C81C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.hasDimensions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(v0 + *(v4 + 28), v3, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A7DC8, &qword_1B4D202B8);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.clearDimensions()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 28);
  sub_1B4975024(v0 + v1, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.property.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A9C0D4(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  }

  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7DB8, &unk_1B4D27B10);
  }

  return result;
}

uint64_t sub_1B4A9CB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7DB8, &unk_1B4D27B10);
  }

  return result;
}

uint64_t sub_1B4A9CD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 32);
  sub_1B4975024(a2 + v8, &qword_1EB8A7DB8, &unk_1B4D27B10);
  sub_1B4A9C0D4(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.property.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A7DB8, &unk_1B4D27B10);
  sub_1B4A9C0D4(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.property.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7DB8, &unk_1B4D27B10);
    }
  }

  else
  {
    sub_1B4A9C0D4(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  }

  return sub_1B4A9D1CC;
}

BOOL Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.hasProperty.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(v0 + *(v4 + 32), v3, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A7DB8, &unk_1B4D27B10);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.clearProperty()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 32);
  sub_1B4975024(v0 + v1, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  sub_1B4D17BBC();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 32);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers.identifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B4A9D5FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A9D6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A9D7B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A9D874(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A9D954@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a1(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.trainerIdentifiers.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  }

  sub_1B4975024(v6, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A9DB78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  }

  sub_1B4975024(v6, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A9DCB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  sub_1B4975024(a2, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

void (*Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.trainerIdentifiers.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
  }

  else
  {
    sub_1B4A9C0D4(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  }

  return sub_1B4A9DFE4;
}

uint64_t sub_1B4A9E104@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.count.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A6DC8, &unk_1B4D20350);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  sub_1B4975024(v6, &qword_1EB8A6DC8, &unk_1B4D20350);
  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A9E33C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A6DC8, &unk_1B4D20350);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  sub_1B4975024(v6, &qword_1EB8A6DC8, &unk_1B4D20350);
  *a2 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A9E474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A6DC8, &unk_1B4D20350);
  sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t sub_1B4A9E5B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  sub_1B4975024(v5, a2, a3);
  sub_1B4A9C0D4(a1, v5, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v5, 0, 1, v9);
}

void (*Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.count.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6DC8, &unk_1B4D20350);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6DC8, &unk_1B4D20350);
    *v11 = 0;
    sub_1B4D17BBC();
  }

  else
  {
    sub_1B4A9C0D4(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  return sub_1B4A9E830;
}

void sub_1B4A9E86C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v15 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_1B4A9C7B4((*a1)[3], v12, a5);
    sub_1B4975024(v15, a3, a4);
    sub_1B4A9C0D4(v12, v15, a5);
    (*(v11 + 56))(v15, 0, 1, v10);
    sub_1B4A9C81C(v13, a6);
  }

  else
  {
    sub_1B4975024(**a1, a3, a4);
    sub_1B4A9C0D4(v13, v15, a5);
    (*(v11 + 56))(v15, 0, 1, v10);
  }

  free(v13);
  free(v12);
  free(v14);

  free(v9);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v6 + 20), v5, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A9C0D4(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  }

  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6DB0, &unk_1B4D462F0);
  }

  return result;
}

uint64_t sub_1B4A9EBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v7 + 20), v6, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6DB0, &unk_1B4D462F0);
  }

  return result;
}

uint64_t sub_1B4A9ED80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(a2 + v8, &qword_1EB8A6DB0, &unk_1B4D462F0);
  sub_1B4A9C0D4(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A6DB0, &unk_1B4D462F0);
  sub_1B4A9C0D4(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.key.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6DB0, &unk_1B4D462F0);
    }
  }

  else
  {
    sub_1B4A9C0D4(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  }

  return sub_1B4A9F1B0;
}

BOOL Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.hasKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v0 + *(v4 + 20), v3, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A6DB0, &unk_1B4D462F0);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.clearKey()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(v0 + v1, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A9C0D4(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  }

  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  }

  return result;
}

uint64_t sub_1B4A9F504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  }

  return result;
}

uint64_t sub_1B4A9F6A0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  sub_1B4A9C0D4(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  return (*(v6 + 56))(a2 + v9, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  sub_1B4A9C0D4(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.value.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
    }
  }

  else
  {
    sub_1B4A9C0D4(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  }

  return sub_1B4A9FAD0;
}

void sub_1B4A9FB0C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_1B4A9C7B4(v12, v11, a5);
    sub_1B4975024(v15 + v10, a3, a4);
    sub_1B4A9C0D4(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_1B4A9C81C(v12, a6);
  }

  else
  {
    sub_1B4975024(v15 + v10, a3, a4);
    sub_1B4A9C0D4(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v0 + *(v4 + 24), v3, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.clearValue()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 24);
  sub_1B4975024(v0 + v1, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.bestWorkout.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    }

    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.bestWorkout.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4A9C0D4(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      return sub_1B4AA0324;
    }

    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0xE000000000000000;
  sub_1B4D17BBC();
  return sub_1B4AA0324;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.averageHeartRate.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.averageHeartRate.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AA0710;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A9C0D4(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AA0710;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.calories.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.calories.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AA0AFC;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A9C0D4(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AA0AFC;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.duration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.duration.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4AA0EE8;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A9C0D4(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AA0EE8;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.countByTrainer.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    }

    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA1090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    }

    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.countByTrainer.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    v11[1] = 0;
    sub_1B4D17BBC();
    return sub_1B4AA144C;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A9C0D4(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
  return sub_1B4AA144C;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.count.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA15EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1B4A9C0D4(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA175C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  sub_1B4A9C7B4(a1, &v15 - v11, a6);
  sub_1B4975024(a2, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  sub_1B4A9C0D4(v12, a2, a6);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

uint64_t sub_1B4AA1888(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_1B4975024(v3, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  sub_1B4A9C0D4(a1, v3, a2);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.count.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_15:
    *v11 = 0;
    sub_1B4D17BBC();
    return sub_1B4AA1B60;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A9C0D4(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AA1B60;
}

void sub_1B4AA1B90(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    sub_1B4A9C7B4((*a1)[3], v9, a3);
    sub_1B4975024(v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v9, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
    sub_1B4A9C81C(v10, a5);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v10, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v6);
}

uint64_t static Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A0F598(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.catalogIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.catalogIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.modalityKind.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.modalityKind.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_1B4AA1F6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4AA2008(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA2138()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A93E0);
  __swift_project_value_buffer(v0, qword_1EB8A93E0);
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

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperties.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
        sub_1B4AADC88(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
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

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperties.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0), sub_1B4AADC88(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord), result = sub_1B4D17E5C(), !v4))
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AA2638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96D0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperties);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA26D8(uint64_t a1)
{
  v2 = sub_1B4AADC88(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperties);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA2744(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperties);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
        sub_1B4D17D0C();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
          sub_1B4D17CBC();
          break;
        case 4:
          goto LABEL_2;
        case 5:
          sub_1B4AA2934(a1, v5, a2, a3);
          break;
      }
    }
  }
}

uint64_t sub_1B4AA2934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4AA2AA0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4AA2B18(v3, a1, a2, a3);
    sub_1B4AA2B90(v3, a1, a2, a3);
    sub_1B4AA2C08(v3, a1, a2, a3);
    sub_1B4AA2C80(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AA2AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AA2B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AA2B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_1B4D17E0C();
  }

  return result;
}

uint64_t sub_1B4AA2C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AA2C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4974FBC(a1 + *(v12 + 36), v7, &qword_1EB8A9540, &unk_1B4D27B00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A9540, &unk_1B4D27B00);
  }

  sub_1B4A9C0D4(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
}

uint64_t sub_1B4AA2EE8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *(v8 + 8) = 1;
  *v8 = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[9];
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t sub_1B4AA2FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA307C(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA30E8(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA3190(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B4D1CBF0;
  v7 = v19 + v6;
  v8 = v19 + v6 + v4[14];
  *(v19 + v6) = 1;
  *v8 = "monthOfYear";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_1B4D17E7C();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v8, v9, v10);
  v12 = v7 + v5 + v4[14];
  *(v7 + v5) = 2;
  *v12 = "dayOfWeek";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  v11();
  v13 = (v7 + 2 * v5);
  v14 = v13 + v4[14];
  *v13 = 3;
  *v14 = "hourOfDay";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v11();
  v15 = (v7 + 3 * v5);
  v16 = v15 + v4[14];
  *v15 = 4;
  *v16 = "modalityKind";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v11();
  v17 = v7 + 4 * v5 + v4[14];
  *(v7 + 4 * v5) = 5;
  *v17 = "trainerIdentifiers";
  *(v17 + 8) = 18;
  *(v17 + 16) = 2;
  v11();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_1B4D17CDC();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1B4D17C7C();
            break;
          case 4:
            goto LABEL_4;
          case 5:
            type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
            sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
            sub_1B4D17D3C();
            break;
        }
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1B4D17E1C(), !v4))
  {
    if (!*(v3[1] + 16) || (result = sub_1B4D17E1C(), !v4))
    {
      if (!*(v3[2] + 16) || (result = sub_1B4D17DBC(), !v4))
      {
        if (!*(v3[3] + 16) || (result = sub_1B4D17E1C(), !v4))
        {
          if (!*(v3[4] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0), sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers), result = sub_1B4D17E5C(), !v4))
          {
            type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
            return sub_1B4D17BAC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4AA3740@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  a2[2] = v2;
  a2[3] = v2;
  a2[4] = v2;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA37C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA3860(uint64_t a1)
{
  v2 = sub_1B4AADC88(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA38CC(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA3968()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9428);
  __swift_project_value_buffer(v0, qword_1EB8A9428);
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

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
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
        sub_1B4AA3CA0(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        sub_1B4AA3D54(a1, v5, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1B4D17CCC();
    }
  }

  return result;
}

uint64_t sub_1B4AA3CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4AADC88(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4AA3D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  sub_1B4AADC88(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      result = sub_1B4AA3EDC(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1B4AA40F8(v3, a1, a2, a3);
        type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AA3EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A7DC8, &qword_1B4D202B8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7DC8, &qword_1B4D202B8);
  }

  sub_1B4A9C0D4(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  sub_1B4AADC88(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
}

uint64_t sub_1B4AA40F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A7DB8, &unk_1B4D27B10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7DB8, &unk_1B4D27B10);
  }

  sub_1B4A9C0D4(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  sub_1B4AADC88(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
}

uint64_t sub_1B4AA4360@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_1B4D17BBC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1B4AA447C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96B8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA451C(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA4588(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA46BC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AA47EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA488C(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA48F8(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA4990()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9458);
  __swift_project_value_buffer(v0, qword_1EB8A9458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pairs";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "missed";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
        sub_1B4AADC88(&qword_1EB8A6DA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
        sub_1B4D17D3C();
      }

      else if (result == 2)
      {
        sub_1B4D17CCC();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0), sub_1B4AADC88(&qword_1EB8A6DA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair), result = sub_1B4D17E5C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4AA4E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA4EB0(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6D98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA4F1C(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(&qword_1EB8A6D98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA4F98(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A0F598(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AA5050()
{
  result = MEMORY[0x1B8C7C620](0xD000000000000013, 0x80000001B4D60D00);
  qword_1EB8A9470 = 0xD00000000000003DLL;
  *algn_1EB8A9478 = 0x80000001B4D60C10;
  return result;
}

uint64_t sub_1B4AA5128(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1B4D17CDC();
    }
  }

  return result;
}

uint64_t sub_1B4AA51C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (result = sub_1B4D17E1C(), !v5))
  {
    (a4)(0, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AA52E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96A0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA5384(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6DD8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA53F0(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(&qword_1EB8A6DD8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA546C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AA55C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A96E8, &qword_1B4D28FF0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v40 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - v23;
  v38 = v5;
  v25 = *(v5 + 56);
  v41 = v4;
  v25(&v34 - v23, 1, 1, v4, v22);
  sub_1B4974FBC(v46, v11, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v35 = v13;
  v36 = v12;
  v26 = (*(v13 + 48))(v11, 1, v12);
  if (v26 == 1)
  {
    sub_1B4975024(v11, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
    v27 = v41;
  }

  else
  {
    sub_1B4A9C0D4(v11, v18, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
    sub_1B4A9C0D4(v18, v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
    sub_1B4975024(v24, &qword_1EB8A96E8, &qword_1B4D28FF0);
    v28 = v39;
    sub_1B4A9C0D4(v15, v39, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    sub_1B4A9C0D4(v28, v24, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    v27 = v41;
    (v25)(v24, 0, 1, v41);
  }

  sub_1B4AADC88(&qword_1EB8A6DD8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  v29 = v42;
  sub_1B4D17D4C();
  v30 = v40;
  if (v29)
  {
    return sub_1B4975024(v24, &qword_1EB8A96E8, &qword_1B4D28FF0);
  }

  sub_1B4974FBC(v24, v40, &qword_1EB8A96E8, &qword_1B4D28FF0);
  if ((*(v38 + 48))(v30, 1, v27) == 1)
  {
    sub_1B4975024(v24, &qword_1EB8A96E8, &qword_1B4D28FF0);
    return sub_1B4975024(v30, &qword_1EB8A96E8, &qword_1B4D28FF0);
  }

  else
  {
    v32 = v37;
    sub_1B4A9C0D4(v30, v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    if (v26 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v24, &qword_1EB8A96E8, &qword_1B4D28FF0);
    v33 = v46;
    sub_1B4975024(v46, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
    sub_1B4A9C0D4(v32, v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    return (*(v35 + 56))(v33, 0, 1, v36);
  }
}

uint64_t sub_1B4AA5B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  }

  sub_1B4A9C0D4(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  sub_1B4AADC88(&qword_1EB8A6DD8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
}

uint64_t sub_1B4AA5E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A9698, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA5EA8(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6DA8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA5F14(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(&qword_1EB8A6DA8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA6044(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4AA60C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A0, &qword_1B4D27A98);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v40 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - v23;
  v38 = v5;
  v25 = *(v5 + 56);
  v41 = v4;
  v25(&v34 - v23, 1, 1, v4, v22);
  sub_1B4974FBC(v46, v11, &qword_1EB8A6DC8, &unk_1B4D20350);
  v35 = v13;
  v36 = v12;
  v26 = (*(v13 + 48))(v11, 1, v12);
  if (v26 == 1)
  {
    sub_1B4975024(v11, &qword_1EB8A6DC8, &unk_1B4D20350);
    v27 = v41;
  }

  else
  {
    sub_1B4A9C0D4(v11, v18, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
    sub_1B4A9C0D4(v18, v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
    sub_1B4975024(v24, &qword_1EB8A93A0, &qword_1B4D27A98);
    v28 = v39;
    sub_1B4A9C0D4(v15, v39, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4A9C0D4(v28, v24, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v27 = v41;
    (v25)(v24, 0, 1, v41);
  }

  sub_1B4AADC88(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
  v29 = v42;
  sub_1B4D17D4C();
  v30 = v40;
  if (v29)
  {
    return sub_1B4975024(v24, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  sub_1B4974FBC(v24, v40, &qword_1EB8A93A0, &qword_1B4D27A98);
  if ((*(v38 + 48))(v30, 1, v27) == 1)
  {
    sub_1B4975024(v24, &qword_1EB8A93A0, &qword_1B4D27A98);
    return sub_1B4975024(v30, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  else
  {
    v32 = v37;
    sub_1B4A9C0D4(v30, v37, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v26 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v24, &qword_1EB8A93A0, &qword_1B4D27A98);
    v33 = v46;
    sub_1B4975024(v46, &qword_1EB8A6DC8, &unk_1B4D20350);
    sub_1B4A9C0D4(v32, v33, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    return (*(v35 + 56))(v33, 0, 1, v36);
  }
}

uint64_t sub_1B4AA6654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AA66DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6DC8, &unk_1B4D20350);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6DC8, &unk_1B4D20350);
  }

  sub_1B4A9C0D4(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4AADC88(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
}

uint64_t sub_1B4AA6940@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA6A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A9690, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA6AAC(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6DB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA6B18(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(&qword_1EB8A6DB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA6BB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD00000000000003DLL;
  *a5 = 0x80000001B4D60C10;
  return result;
}

uint64_t sub_1B4AA6C4C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A94F8);
  __swift_project_value_buffer(v0, qword_1EB8A94F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1B4AA6ECC(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1B4AA6F80(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4AA6ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  sub_1B4AADC88(&qword_1EB8A6DA8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4AA6F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  sub_1B4AADC88(&qword_1EB8A6DB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4AA70A4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4AA72C0(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AA70A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v12 + 20), v7, &qword_1EB8A6DB0, &unk_1B4D462F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6DB0, &unk_1B4D462F0);
  }

  sub_1B4A9C0D4(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  sub_1B4AADC88(&qword_1EB8A6DA8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
}

uint64_t sub_1B4AA72C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  }

  sub_1B4A9C0D4(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  sub_1B4AADC88(&qword_1EB8A6DB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
}

uint64_t sub_1B4AA7528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1B4AA7644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A9688, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA76E4(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6DA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA7750(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(&qword_1EB8A6DA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA77EC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9510);
  __swift_project_value_buffer(v0, qword_1EB8A9510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B4D223E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "bestWorkout";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B4D17E7C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "averageHeartRate";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "calories";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "duration";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "countByTrainer";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "count";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_1B4AA8D24(v5, a1, a2, a3);
          break;
        case 5:
          sub_1B4AA92E0(v5, a1, a2, a3);
          break;
        case 6:
          sub_1B4AA989C(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_1B4AA7BFC(v5, a1, a2, a3);
          break;
        case 2:
          sub_1B4AA81AC(v5, a1, a2, a3);
          break;
        case 3:
          sub_1B4AA8768(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1B4AA7BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A96D8, &unk_1B4D28FB0);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A9C0D4(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4A9C81C(v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v30 = v45;
    }

    else
    {
      sub_1B4975024(v25, &qword_1EB8A96D8, &unk_1B4D28FB0);
      v32 = v40;
      sub_1B4A9C0D4(v16, v40, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      sub_1B4A9C0D4(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1B4AADC88(&qword_1EB8A6DE0, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_MaxPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A96D8, &unk_1B4D28FB0);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A96D8, &unk_1B4D28FB0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A96D8, &unk_1B4D28FB0);
    return sub_1B4975024(v33, &qword_1EB8A96D8, &unk_1B4D28FB0);
  }

  else
  {
    v36 = v41;
    sub_1B4A9C0D4(v33, v41, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A96D8, &unk_1B4D28FB0);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AA81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A9C0D4(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A9C0D4(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A9C0D4(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A9C81C(v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A9C0D4(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AA8768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A9C0D4(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A9C0D4(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A9C0D4(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A9C81C(v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A9C0D4(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AA8D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A9C0D4(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4A9C0D4(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A9C0D4(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A9C81C(v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v33, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v36 = v40;
    sub_1B4A9C0D4(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AA92E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A96E0, &unk_1B4D28FC0);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A9C0D4(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B4975024(v25, &qword_1EB8A96E0, &unk_1B4D28FC0);
      v32 = v41;
      sub_1B4A9C0D4(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
      sub_1B4A9C0D4(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A9C81C(v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4AADC88(&qword_1EB8A6D98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A96E0, &unk_1B4D28FC0);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A96E0, &unk_1B4D28FC0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A96E0, &unk_1B4D28FC0);
    return sub_1B4975024(v33, &qword_1EB8A96E0, &unk_1B4D28FC0);
  }

  else
  {
    v36 = v40;
    sub_1B4A9C0D4(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A96E0, &unk_1B4D28FC0);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AA989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A0, &qword_1B4D27A98);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A9C0D4(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
      v32 = v41;
      sub_1B4A9C0D4(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4A9C0D4(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A9C81C(v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4AADC88(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A93A0, &qword_1B4D27A98);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    return sub_1B4975024(v33, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  else
  {
    v36 = v40;
    sub_1B4A9C0D4(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1B4974FBC(v3, &v14 - v9, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B4AAA718(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1B4AAA950(v3, a1, a2, a3);
    }

    else
    {
      sub_1B4AAAB88(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4AAA2A8(v3, a1, a2, a3);
    }

    else
    {
      sub_1B4AAA4E0(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_1B4AAA074(v3, a1, a2, a3);
  }

  result = sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  if (!v4)
  {
LABEL_14:
    type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AAA074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4A9C0D4(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    sub_1B4AADC88(&qword_1EB8A6DE0, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_MaxPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
  }

  result = sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAA2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A9C0D4(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAA4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4A9C0D4(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAA718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1B4A9C0D4(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAA950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1B4A9C0D4(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    sub_1B4AADC88(&qword_1EB8A6D98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
  }

  result = sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAAB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1B4A9C0D4(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4AADC88(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAAE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A9680, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AAAF10(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AAAF7C(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperty);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AAB018()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9528);
  __swift_project_value_buffer(v0, qword_1EB8A9528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "catalogIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trainers";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "modalityKind";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_1B4D17CDC();
        break;
      case 1:
LABEL_8:
        sub_1B4D17D1C();
        break;
    }
  }
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = v4[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_1B4D17E3C(), !v5))
  {
    if (!*(v4[2] + 16) || (result = sub_1B4D17E1C(), !v5))
    {
      v9 = v4[4];
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v4[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v10 || (result = sub_1B4D17E3C(), !v5))
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AAB420(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4AADC88(a2, a3, a4);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AAB4A8@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = 0;
  a2[4] = 0xE000000000000000;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AAB52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A9678, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AAB5CC(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6A80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AAB638(uint64_t a1, uint64_t a2)
{
  sub_1B4AADC88(&qword_1EB8A6A80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);

  return sub_1B4D17D9C();
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV4PairV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, double a3)
{
  v47 = a2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v38 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E58, &unk_1B4D28FD0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v38 - v8;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E70, &unk_1B4D20380);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  v41 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v20 = *(v41 + 20);
  v21 = *(v17 + 56);
  v46 = a1;
  sub_1B4974FBC(a1 + v20, v19, &qword_1EB8A6DB0, &unk_1B4D462F0);
  sub_1B4974FBC(v47 + v20, &v19[v21], &qword_1EB8A6DB0, &unk_1B4D462F0);
  v22 = *(v10 + 48);
  if (v22(v19, 1, v9) != 1)
  {
    sub_1B4974FBC(v19, v15, &qword_1EB8A6DB0, &unk_1B4D462F0);
    if (v22(&v19[v21], 1, v9) != 1)
    {
      sub_1B4A9C0D4(&v19[v21], v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      v26 = _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV3KeyV2eeoiySbAE_AEtFZ_0(v15, v12);
      sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      sub_1B4A9C81C(v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      sub_1B4975024(v19, &qword_1EB8A6DB0, &unk_1B4D462F0);
      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1B4A9C81C(v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
LABEL_6:
    v23 = &qword_1EB8A7E70;
    v24 = &unk_1B4D20380;
    v25 = v19;
LABEL_14:
    sub_1B4975024(v25, v23, v24);
    goto LABEL_15;
  }

  if (v22(&v19[v21], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4975024(v19, &qword_1EB8A6DB0, &unk_1B4D462F0);
LABEL_8:
  v27 = *(v41 + 24);
  v28 = *(v42 + 48);
  v29 = v45;
  sub_1B4974FBC(v46 + v27, v45, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  sub_1B4974FBC(v47 + v27, v29 + v28, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v30 = v44;
  v31 = *(v43 + 48);
  if (v31(v29, 1, v44) == 1)
  {
    if (v31(v29 + v28, 1, v30) == 1)
    {
      sub_1B4975024(v29, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
LABEL_18:
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v33 = sub_1B4D1816C();
      return v33 & 1;
    }

    goto LABEL_13;
  }

  v32 = v40;
  sub_1B4974FBC(v29, v40, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  if (v31(v29 + v28, 1, v30) == 1)
  {
    sub_1B4A9C81C(v32, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
LABEL_13:
    v23 = &qword_1EB8A7E58;
    v24 = &unk_1B4D28FD0;
    v25 = v29;
    goto LABEL_14;
  }

  v35 = v29 + v28;
  v36 = v39;
  sub_1B4A9C0D4(v35, v39, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  v37 = _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV0G0V2eeoiySbAE_AEtFZ_0(v32, v36);
  sub_1B4A9C81C(v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  sub_1B4A9C81C(v32, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  sub_1B4975024(v29, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  if (v37)
  {
    goto LABEL_18;
  }

LABEL_15:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV3KeyV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E68, &unk_1B4D20370);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B4974FBC(a1, &v20 - v12, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  sub_1B4974FBC(a2, &v13[v15], &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8A7E68, &unk_1B4D20370);
    goto LABEL_7;
  }

  sub_1B4A9C0D4(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
  v18 = _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV3KeyV06OneOf_H4TypeO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
  sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
  sub_1B4975024(v13, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV3KeyV06OneOf_H4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E60, &unk_1B4D20360);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  v14 = *(v13 + 56);
  sub_1B4A9C7B4(a1, &v17 - v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
  sub_1B4A9C7B4(a2, &v12[v14], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
  sub_1B4A9C0D4(v12, v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  sub_1B4A9C0D4(&v12[v14], v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  if (sub_1B4A0C158(*v9, *v6))
  {
    sub_1B4D17BCC();
    sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v15 = sub_1B4D1816C();
    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    sub_1B4A9C81C(v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    if (v15)
    {
      return 1;
    }
  }

  else
  {
    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    sub_1B4A9C81C(v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV0G0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E50, &unk_1B4D28FE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B4974FBC(a1, &v20 - v12, &qword_1EB8A6DC8, &unk_1B4D20350);
  sub_1B4974FBC(a2, &v13[v15], &qword_1EB8A6DC8, &unk_1B4D20350);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A6DC8, &unk_1B4D20350);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A6DC8, &unk_1B4D20350);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8A7E50, &unk_1B4D28FE0);
    goto LABEL_7;
  }

  sub_1B4A9C0D4(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
  v18 = _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV0G0V06OneOf_G4TypeO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4975024(v13, &qword_1EB8A6DC8, &unk_1B4D20350);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV0G0V06OneOf_G4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E48, &qword_1B4D20348);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  v14 = *(v13 + 56);
  sub_1B4A9C7B4(a1, &v17 - v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4A9C7B4(a2, &v12[v14], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4A9C0D4(v12, v9, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4A9C0D4(&v12[v14], v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  if (*v9 == *v6)
  {
    sub_1B4D17BCC();
    sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v15 = sub_1B4D1816C();
    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4A9C81C(v9, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v15)
    {
      return 1;
    }
  }

  else
  {
    sub_1B4A9C81C(v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4A9C81C(v9, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A18PlusPropertyRecordV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v41 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC0, &qword_1B4D202B0);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD0, &unk_1B4D202C0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v43 = v10;
  v41 = v6;
  v42 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  v21 = *(v42 + 28);
  v22 = *(v18 + 48);
  v44 = a1;
  sub_1B4974FBC(a1 + v21, v20, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v23 = a2 + v21;
  v24 = a2;
  sub_1B4974FBC(v23, &v20[v22], &qword_1EB8A7DC8, &qword_1B4D202B8);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) != 1)
  {
    sub_1B4974FBC(v20, v17, &qword_1EB8A7DC8, &qword_1B4D202B8);
    if (v25(&v20[v22], 1, v11) != 1)
    {
      sub_1B4A9C0D4(&v20[v22], v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      v29 = _s19FitnessIntelligence06Apple_a1_b1_A22PlusPropertyDimensionsV2eeoiySbAC_ACtFZ_0(v17, v14);
      sub_1B4A9C81C(v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4A9C81C(v17, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4975024(v20, &qword_1EB8A7DC8, &qword_1B4D202B8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_1B4A9C81C(v17, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
LABEL_7:
    v26 = &qword_1EB8A7DD0;
    v27 = &unk_1B4D202C0;
    v28 = v20;
LABEL_15:
    sub_1B4975024(v28, v26, v27);
    goto LABEL_16;
  }

  if (v25(&v20[v22], 1, v11) != 1)
  {
    goto LABEL_7;
  }

  sub_1B4975024(v20, &qword_1EB8A7DC8, &qword_1B4D202B8);
LABEL_9:
  v30 = v43;
  v31 = *(v42 + 32);
  v32 = *(v46 + 48);
  sub_1B4974FBC(v44 + v31, v43, &qword_1EB8A7DB8, &unk_1B4D27B10);
  sub_1B4974FBC(v24 + v31, v30 + v32, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v33 = v48;
  v34 = *(v47 + 48);
  if (v34(v30, 1, v48) == 1)
  {
    if (v34(v30 + v32, 1, v33) == 1)
    {
      sub_1B4975024(v30, &qword_1EB8A7DB8, &unk_1B4D27B10);
LABEL_19:
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v36 = sub_1B4D1816C();
      return v36 & 1;
    }

    goto LABEL_14;
  }

  v35 = v45;
  sub_1B4974FBC(v30, v45, &qword_1EB8A7DB8, &unk_1B4D27B10);
  if (v34(v30 + v32, 1, v33) == 1)
  {
    sub_1B4A9C81C(v35, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
LABEL_14:
    v26 = &qword_1EB8A7DC0;
    v27 = &qword_1B4D202B0;
    v28 = v30;
    goto LABEL_15;
  }

  v38 = v30 + v32;
  v39 = v41;
  sub_1B4A9C0D4(v38, v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  v40 = _s19FitnessIntelligence06Apple_a1_b1_A12PlusPropertyV2eeoiySbAC_ACtFZ_0(v35, v39);
  sub_1B4A9C81C(v39, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  sub_1B4A9C81C(v35, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  sub_1B4975024(v30, &qword_1EB8A7DB8, &unk_1B4D27B10);
  if (v40)
  {
    goto LABEL_19;
  }

LABEL_16:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A14PlusPropertiesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1B4A0E980(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A12PlusPropertyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB0, &unk_1B4D202A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B4974FBC(a1, &v20 - v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  sub_1B4974FBC(a2, &v13[v15], &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8A7DB0, &unk_1B4D202A0);
    goto LABEL_7;
  }

  sub_1B4A9C0D4(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  v18 = _s19FitnessIntelligence06Apple_a1_b1_A12PlusPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  sub_1B4975024(v13, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A12PlusPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v56 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v56);
  v61 = (&v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v54);
  v60 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v55 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  MEMORY[0x1EEE9AC00](v12);
  v62 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v53 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v53 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A96F8, &qword_1B4D29000);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v53 - v30;
  v33 = *(v32 + 56);
  sub_1B4A9C7B4(v63, &v53 - v30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  sub_1B4A9C7B4(v64, &v31[v33], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B4A9C7B4(v31, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v42 = v59;
        sub_1B4A9C0D4(&v31[v33], v59, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v35 = static Apple_Fitness_Intelligence_StatisticsPropertyValue.== infix(_:_:)(v19, v42);
        sub_1B4A9C81C(v42, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v36 = v19;
        goto LABEL_19;
      }

      v47 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1B4A9C7B4(v31, v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          v40 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue;
          v41 = v16;
          goto LABEL_30;
        }

        v37 = v60;
        sub_1B4A9C0D4(&v31[v33], v60, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
        if ((sub_1B4A0F598(*v16, *v37) & 1) != 0 && v16[1] == v37[1])
        {
          sub_1B4D17BCC();
          sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          if (sub_1B4D1816C())
          {
            v38 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue;
            sub_1B4A9C81C(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
            v39 = v16;
LABEL_38:
            v46 = v38;
            goto LABEL_39;
          }
        }

        v48 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue;
        sub_1B4A9C81C(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
        v49 = v16;
        goto LABEL_41;
      }

      v19 = v62;
      sub_1B4A9C7B4(v31, v62, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v44 = v61;
        sub_1B4A9C0D4(&v31[v33], v61, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        if (*v19 == *v44)
        {
          sub_1B4D17BCC();
          sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v45 = sub_1B4D1816C();
          sub_1B4A9C81C(v44, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
          if (v45)
          {
            v46 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
            v39 = v19;
LABEL_39:
            sub_1B4A9C81C(v39, v46);
            sub_1B4A9C81C(v31, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
            v35 = 1;
            return v35 & 1;
          }
        }

        else
        {
          sub_1B4A9C81C(v44, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        }

        v51 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
        v49 = v19;
LABEL_44:
        sub_1B4A9C81C(v49, v51);
        sub_1B4A9C81C(v31, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
        goto LABEL_45;
      }

      v47 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
    }

    v40 = v47;
    v41 = v19;
    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B4A9C7B4(v31, v28, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    if (swift_getEnumCaseMultiPayload())
    {
      v40 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue;
      v41 = v28;
LABEL_30:
      sub_1B4A9C81C(v41, v40);
      sub_1B4975024(v31, &qword_1EB8A96F8, &qword_1B4D29000);
LABEL_45:
      v35 = 0;
      return v35 & 1;
    }

    v50 = v57;
    sub_1B4A9C0D4(&v31[v33], v57, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    if (*v28 == *v50 && (*(v28 + 1) == *(v50 + 8) && *(v28 + 2) == *(v50 + 16) || (sub_1B4D18DCC() & 1) != 0))
    {
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      if (sub_1B4D1816C())
      {
        v38 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue;
        sub_1B4A9C81C(v50, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
        v39 = v28;
        goto LABEL_38;
      }
    }

    v48 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue;
    sub_1B4A9C81C(v50, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    v49 = v28;
LABEL_41:
    v51 = v48;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B4A9C7B4(v31, v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v43 = v58;
      sub_1B4A9C0D4(&v31[v33], v58, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v35 = static Apple_Fitness_Intelligence_StatisticsPropertyValue.== infix(_:_:)(v22, v43);
      sub_1B4A9C81C(v43, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v36 = v22;
      goto LABEL_19;
    }

    v40 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
    v41 = v22;
    goto LABEL_30;
  }

  sub_1B4A9C7B4(v31, v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
    v41 = v25;
    goto LABEL_30;
  }

  sub_1B4A9C0D4(&v31[v33], v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v35 = static Apple_Fitness_Intelligence_StatisticsPropertyValue.== infix(_:_:)(v25, v10);
  sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v36 = v25;
LABEL_19:
  sub_1B4A9C81C(v36, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4A9C81C(v31, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  return v35 & 1;
}