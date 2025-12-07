uint64_t sub_1B4ACE9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
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
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v25, &qword_1EB8A9B80, &qword_1B4D2B418);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
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
    v36 = v40;
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
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

uint64_t sub_1B4ACEF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
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
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v25, &qword_1EB8A9B80, &qword_1B4D2B418);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
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
    v36 = v40;
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
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

uint64_t sub_1B4ACF520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
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
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B4975024(v25, &qword_1EB8A9B80, &qword_1B4D2B418);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
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
    v36 = v40;
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
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

uint64_t sub_1B4ACFADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD0098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD0654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD0C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD11CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD1788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD1D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD2300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD28BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD2E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD3434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD39F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD3FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD4568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD4B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A69A0, &qword_1B4D27A90);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD50E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B88, &qword_1B4D2B420);
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
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9B88, &qword_1B4D2B420);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
    return sub_1B4975024(v33, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  else
  {
    v36 = v40;
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B88, &qword_1B4D2B420);
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
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9B88, &qword_1B4D2B420);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
    return sub_1B4975024(v33, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  else
  {
    v36 = v40;
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD5C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B88, &qword_1B4D2B420);
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
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9B88, &qword_1B4D2B420);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
    return sub_1B4975024(v33, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  else
  {
    v36 = v40;
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD6214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B88, &qword_1B4D2B420);
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
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9B88, &qword_1B4D2B420);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
    return sub_1B4975024(v33, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  else
  {
    v36 = v40;
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9B88, &qword_1B4D2B420);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD67D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B90, &unk_1B4D2B428);
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
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_1B4975024(v25, &qword_1EB8A9B90, &unk_1B4D2B428);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9B90, &unk_1B4D2B428);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9B90, &unk_1B4D2B428);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9B90, &unk_1B4D2B428);
    return sub_1B4975024(v33, &qword_1EB8A9B90, &unk_1B4D2B428);
  }

  else
  {
    v36 = v40;
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9B90, &unk_1B4D2B428);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD6D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B90, &unk_1B4D2B428);
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
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_1B4975024(v25, &qword_1EB8A9B90, &unk_1B4D2B428);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9B90, &unk_1B4D2B428);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9B90, &unk_1B4D2B428);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9B90, &unk_1B4D2B428);
    return sub_1B4975024(v33, &qword_1EB8A9B90, &unk_1B4D2B428);
  }

  else
  {
    v36 = v40;
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9B90, &unk_1B4D2B428);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4AD7348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
      v32 = v41;
      sub_1B4ABD53C(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4ABD53C(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4AC9300(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4ABD53C(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1B4974FBC(v3, &v13 - v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1B4AD8010(v3, a1, a2, a3);
        goto LABEL_35;
      case 2u:
        sub_1B4AD8248(v3, a1, a2, a3);
        goto LABEL_35;
      case 3u:
        sub_1B4AD8480(v3, a1, a2, a3);
        goto LABEL_35;
      case 4u:
        sub_1B4AD86B8(v3, a1, a2, a3);
        goto LABEL_35;
      case 5u:
        sub_1B4AD88F0(v3, a1, a2, a3);
        goto LABEL_35;
      case 6u:
        sub_1B4AD8B28(v3, a1, a2, a3);
        goto LABEL_35;
      case 7u:
        sub_1B4AD8D60(v3, a1, a2, a3);
        goto LABEL_35;
      case 8u:
        sub_1B4AD8F98(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 9u:
        sub_1B4AD91D0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xAu:
        sub_1B4AD9408(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xBu:
        sub_1B4AD9640(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xCu:
        sub_1B4AD9878(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xDu:
        sub_1B4AD9AB0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xEu:
        sub_1B4AD9CE8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xFu:
        sub_1B4AD9F20(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x10u:
        sub_1B4ADA158(v3, a1, a2, a3);
        if (v4)
        {
          return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
        }

        goto LABEL_7;
      case 0x11u:
        sub_1B4ADA390(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x12u:
        sub_1B4ADA5C8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x13u:
        sub_1B4ADA800(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x14u:
        sub_1B4ADAA38(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x15u:
        sub_1B4ADAC70(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x16u:
        sub_1B4ADAEA8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x17u:
        sub_1B4ADB0E0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x18u:
        sub_1B4ADB318(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x19u:
        sub_1B4ADB550(v3, a1, a2, a3);
        if (v4)
        {
          return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
        }

LABEL_7:
        sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
        break;
      default:
        sub_1B4AD7DDC(v3, a1, a2, a3);
LABEL_35:
        result = sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  return sub_1B4D17BAC();
}

uint64_t sub_1B4AD7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD86B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD88F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD91D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADA158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADA390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADA5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADA800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADAA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADAC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADAEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADB0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADB318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADB550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 25)
  {
    sub_1B4ABD53C(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADB7D4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4ADE840(a2, a3, a4);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4ADB874@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4ADB934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B08, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ADB9D4(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ADBA40(uint64_t a1, uint64_t a2)
{
  sub_1B4ADE840(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperty);

  return sub_1B4D17D9C();
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_RingsPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0 || (sub_1B4A0C158(a1[1], a2[1]) & 1) == 0 || (sub_1B4A15970(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_RingsPropertyDimensionsFiltersV12OptionalBoolV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != 2)
  {
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_7:
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B29_RingsBestMetricPropertyValueV5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E28, &unk_1B4D20320);
  MEMORY[0x1EEE9AC00](v24);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E38, &unk_1B4D20330);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v16 = *(v15 + 56);
  v26 = a1;
  sub_1B4974FBC(a1, &v24 - v13, &qword_1EB8A7E30, &unk_1B4D29F60);
  v27 = a2;
  sub_1B4974FBC(a2, &v14[v16], &qword_1EB8A7E30, &unk_1B4D29F60);
  v17 = *(v7 + 48);
  if (v17(v14, 1, v6) == 1)
  {
    if (v17(&v14[v16], 1, v6) == 1)
    {
      sub_1B4975024(v14, &qword_1EB8A7E30, &unk_1B4D29F60);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
      sub_1B4D17BCC();
      sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = sub_1B4D1816C();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v14, v11, &qword_1EB8A7E30, &unk_1B4D29F60);
  if (v17(&v14[v16], 1, v6) == 1)
  {
    sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
LABEL_6:
    sub_1B4975024(v14, &qword_1EB8A7E38, &unk_1B4D20330);
    goto LABEL_7;
  }

  v19 = &v14[v16];
  v20 = v25;
  sub_1B4ABD53C(v19, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  v21 = *(v24 + 48);
  sub_1B4AC9298(v11, v5, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4AC9298(v20, v5 + v21, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  v22 = _s19FitnessIntelligence06Apple_a1_B26_RingsBestMeasurementEntryV2eeoiySbAC_ACtFZ_0(v5, v5 + v21);
  sub_1B4AC9300(v5 + v21, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4AC9300(v5, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4AC9300(v20, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4975024(v14, &qword_1EB8A7E30, &unk_1B4D29F60);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B28_RingsMilestonePropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2, double a3)
{
  if (*a1 != *a2 || (sub_1B4A137D8(a1[1], a2[1], a3) & 1) == 0 || (sub_1B4A13A2C(a1[2], a2[2], v5) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B28_RingsMilestonePropertyValueV4PairV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E40, &qword_1B4D20340);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v22 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  v23 = a2;
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_1B4974FBC(a1 + v14, v13, &qword_1EB8A7818, &unk_1B4D29F40);
  sub_1B4974FBC(v23 + v14, &v13[v15], &qword_1EB8A7818, &unk_1B4D29F40);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1B4974FBC(v13, v10, &qword_1EB8A7818, &unk_1B4D29F40);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1B4ABD53C(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      if (*v10 == *v7)
      {
        sub_1B4D17BCC();
        sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v21 = sub_1B4D1816C();
        sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
        sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
        sub_1B4975024(v13, &qword_1EB8A7818, &unk_1B4D29F40);
        if (v21)
        {
          goto LABEL_5;
        }

LABEL_10:
        v17 = 0;
        return v17 & 1;
      }

      sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      v18 = &qword_1EB8A7818;
      v19 = &unk_1B4D29F40;
LABEL_9:
      sub_1B4975024(v13, v18, v19);
      goto LABEL_10;
    }

    sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
LABEL_8:
    v18 = &qword_1EB8A7E40;
    v19 = &qword_1B4D20340;
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1B4975024(v13, &qword_1EB8A7818, &unk_1B4D29F40);
LABEL_5:
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = sub_1B4D1816C();
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B26_RingsBestMeasurementEntryV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v15 = *(v14 + 28);
  v16 = a1;
  v17 = *(v11 + 48);
  v22 = v14;
  v23 = v16;
  sub_1B4974FBC(v16 + v15, v13, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4974FBC(a2 + v15, &v13[v17], &qword_1EB8A7158, &unk_1B4D20310);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A7158, &unk_1B4D20310);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A7158, &unk_1B4D20310);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
LABEL_7:
    sub_1B4975024(v13, &qword_1EB8A7E20, &unk_1B4D2B450);
LABEL_11:
    v20 = 0;
    return v20 & 1;
  }

  sub_1B4ABD53C(&v13[v17], v7, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v19 = static Apple_Fitness_Intelligence_LocalizedDate.== infix(_:_:)(v10, v7);
  sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4975024(v13, &qword_1EB8A7158, &unk_1B4D20310);
  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (v23[1] != *(a2 + 8))
  {
    goto LABEL_11;
  }

  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = sub_1B4D1816C();
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B24_RingsPropertyDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
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
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 != 2)
  {
    if (v23 != 2 && ((v22 ^ v23) & 1) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v23 != 2)
  {
    return 0;
  }

LABEL_25:
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_RingsPropertyRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1B4AC9E88(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_RingsPropertiesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1B4A1A2C8(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_RingsPropertyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B78, &qword_1B4D2B410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B4974FBC(a1, &v20 - v12, &qword_1EB8A9A50, &qword_1B4D29F70);
  sub_1B4974FBC(a2, &v13[v15], &qword_1EB8A9A50, &qword_1B4D29F70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
      sub_1B4D17BCC();
      sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A9A50, &qword_1B4D29F70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8A9B78, &qword_1B4D2B410);
    goto LABEL_7;
  }

  sub_1B4ABD53C(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  v18 = _s19FitnessIntelligence06Apple_a1_B14_RingsPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  sub_1B4AC9300(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  sub_1B4975024(v13, &qword_1EB8A9A50, &qword_1B4D29F70);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_RingsPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v228 = a2;
  v229 = a1;
  v206 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v206);
  v205 = &v179 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v204 = &v179 - v4;
  v179 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  MEMORY[0x1EEE9AC00](v179);
  v203 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v202 = &v179 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v201 = &v179 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v200 = &v179 - v11;
  v226 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v226);
  v199 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v198 = &v179 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v197 = &v179 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v196 = &v179 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v195 = &v179 - v20;
  v21 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v194 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v193 = &v179 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v192 = &v179 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v191 = &v179 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v190 = &v179 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v189 = &v179 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v188 = &v179 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v187 = &v179 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v186 = &v179 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v185 = &v179 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v184 = &v179 - v42;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v183 = (&v179 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45);
  v182 = (&v179 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v181 = (&v179 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v180 = (&v179 - v50);
  v227 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  MEMORY[0x1EEE9AC00](v227);
  v225 = (&v179 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v52);
  v223 = (&v179 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v221 = (&v179 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v224 = (&v179 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v222 = (&v179 - v59);
  MEMORY[0x1EEE9AC00](v60);
  v220 = (&v179 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v219 = (&v179 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v215 = (&v179 - v65);
  MEMORY[0x1EEE9AC00](v66);
  v213 = (&v179 - v67);
  MEMORY[0x1EEE9AC00](v68);
  v212 = (&v179 - v69);
  MEMORY[0x1EEE9AC00](v70);
  v211 = (&v179 - v71);
  MEMORY[0x1EEE9AC00](v72);
  v218 = (&v179 - v73);
  MEMORY[0x1EEE9AC00](v74);
  v217 = (&v179 - v75);
  MEMORY[0x1EEE9AC00](v76);
  v216 = (&v179 - v77);
  MEMORY[0x1EEE9AC00](v78);
  v214 = (&v179 - v79);
  MEMORY[0x1EEE9AC00](v80);
  v210 = (&v179 - v81);
  MEMORY[0x1EEE9AC00](v82);
  v209 = (&v179 - v83);
  MEMORY[0x1EEE9AC00](v84);
  v208 = (&v179 - v85);
  MEMORY[0x1EEE9AC00](v86);
  v207 = (&v179 - v87);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v179 - v89;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v179 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v179 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = (&v179 - v98);
  MEMORY[0x1EEE9AC00](v100);
  v102 = (&v179 - v101);
  MEMORY[0x1EEE9AC00](v103);
  v105 = (&v179 - v104);
  MEMORY[0x1EEE9AC00](v106);
  v108 = (&v179 - v107);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BA0, &qword_1B4D2B448);
  MEMORY[0x1EEE9AC00](v109 - 8);
  v111 = &v179 - v110;
  v113 = *(v112 + 56);
  sub_1B4AC9298(v229, &v179 - v110, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  v229 = v113;
  sub_1B4AC9298(v228, &v111[v113], type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B4AC9298(v111, v105, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v144 = v229;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v145 = v181;
        sub_1B4ABD53C(&v111[v144], v181, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v127 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV2eeoiySbAC_ACtFZ_0(v105, v145);
        v128 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
        sub_1B4AC9300(v145, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v129 = v105;
        goto LABEL_56;
      }

      v115 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
      v116 = v105;
      goto LABEL_80;
    case 2u:
      sub_1B4AC9298(v111, v102, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v136 = v229;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v137 = v182;
        sub_1B4ABD53C(&v111[v136], v182, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v127 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV2eeoiySbAC_ACtFZ_0(v102, v137);
        v138 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
        goto LABEL_55;
      }

      v166 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
      goto LABEL_59;
    case 3u:
      sub_1B4AC9298(v111, v99, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v140 = v229;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v141 = v183;
        sub_1B4ABD53C(&v111[v140], v183, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v127 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV2eeoiySbAC_ACtFZ_0(v99, v141);
        sub_1B4AC9300(v141, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v129 = v99;
        v142 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
        goto LABEL_57;
      }

      v115 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
      v116 = v99;
      goto LABEL_80;
    case 4u:
      sub_1B4AC9298(v111, v96, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v125 = v229;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v126 = v184;
        sub_1B4ABD53C(&v111[v125], v184, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v127 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v96, v126);
        v128 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        sub_1B4AC9300(v126, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v129 = v96;
        goto LABEL_56;
      }

      v115 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      v116 = v96;
      goto LABEL_80;
    case 5u:
      sub_1B4AC9298(v111, v93, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v150 = v229;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v151 = v185;
        sub_1B4ABD53C(&v111[v150], v185, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v127 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v93, v151);
        v128 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        sub_1B4AC9300(v151, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v129 = v93;
        goto LABEL_56;
      }

      v115 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      v116 = v93;
      goto LABEL_80;
    case 6u:
      sub_1B4AC9298(v111, v90, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v161 = v229;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v162 = v186;
        sub_1B4ABD53C(&v111[v161], v186, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v127 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v90, v162);
        v128 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        sub_1B4AC9300(v162, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v129 = v90;
        goto LABEL_56;
      }

      v115 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      v116 = v90;
      goto LABEL_80;
    case 7u:
      v102 = v207;
      sub_1B4AC9298(v111, v207, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v143 = v229;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_58;
      }

      v118 = &v111[v143];
      v119 = &v219;
      goto LABEL_54;
    case 8u:
      v102 = v208;
      sub_1B4AC9298(v111, v208, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v165 = v229;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_58;
      }

      v118 = &v111[v165];
      v119 = &v220;
      goto LABEL_54;
    case 9u:
      v102 = v209;
      sub_1B4AC9298(v111, v209, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v131 = v229;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_58;
      }

      v118 = &v111[v131];
      v119 = &v221;
      goto LABEL_54;
    case 0xAu:
      v102 = v210;
      sub_1B4AC9298(v111, v210, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v164 = v229;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_58;
      }

      v118 = &v111[v164];
      v119 = &v222;
      goto LABEL_54;
    case 0xBu:
      v120 = v214;
      sub_1B4AC9298(v111, v214, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v124 = v229;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_43;
      }

      v122 = &v111[v124];
      v123 = &v227;
      goto LABEL_40;
    case 0xCu:
      v120 = v216;
      sub_1B4AC9298(v111, v216, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v130 = v229;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_43;
      }

      v122 = &v111[v130];
      v123 = &v228;
      goto LABEL_40;
    case 0xDu:
      v120 = v217;
      sub_1B4AC9298(v111, v217, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v153 = v229;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_43;
      }

      v122 = &v111[v153];
      v123 = &v229;
      goto LABEL_40;
    case 0xEu:
      v120 = v218;
      sub_1B4AC9298(v111, v218, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v121 = v229;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_43;
      }

      v122 = &v111[v121];
      v123 = &v230;
      goto LABEL_40;
    case 0xFu:
      v102 = v211;
      sub_1B4AC9298(v111, v211, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v139 = v229;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_58;
      }

      v118 = &v111[v139];
      v119 = &v223;
      goto LABEL_54;
    case 0x10u:
      v102 = v212;
      sub_1B4AC9298(v111, v212, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v117 = v229;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_58;
      }

      v118 = &v111[v117];
      v119 = &v224;
      goto LABEL_54;
    case 0x11u:
      v102 = v213;
      sub_1B4AC9298(v111, v213, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v146 = v229;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_58;
      }

      v118 = &v111[v146];
      v119 = &v225;
      goto LABEL_54;
    case 0x12u:
      v102 = v215;
      sub_1B4AC9298(v111, v215, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v163 = v229;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v118 = &v111[v163];
        v119 = &v226;
LABEL_54:
        v137 = *(v119 - 32);
        sub_1B4ABD53C(v118, v137, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v127 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v102, v137);
        v138 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
LABEL_55:
        v128 = v138;
        sub_1B4AC9300(v137, v138);
        v129 = v102;
        goto LABEL_56;
      }

LABEL_58:
      v166 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
LABEL_59:
      v115 = v166;
      v116 = v102;
      goto LABEL_80;
    case 0x13u:
      v120 = v219;
      sub_1B4AC9298(v111, v219, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v168 = v229;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_69;
      }

      v148 = &v111[v168];
      v149 = &v232;
      goto LABEL_64;
    case 0x14u:
      v120 = v220;
      sub_1B4AC9298(v111, v220, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v147 = v229;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_69;
      }

      v148 = &v111[v147];
      v149 = &v233;
      goto LABEL_64;
    case 0x15u:
      v120 = v222;
      sub_1B4AC9298(v111, v222, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v152 = v229;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_69;
      }

      v148 = &v111[v152];
      v149 = &v234;
      goto LABEL_64;
    case 0x16u:
      v120 = v224;
      sub_1B4AC9298(v111, v224, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v167 = v229;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
LABEL_69:
        v158 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue;
        goto LABEL_79;
      }

      v148 = &v111[v167];
      v149 = &v235;
LABEL_64:
      v169 = *(v149 - 32);
      sub_1B4ABD53C(v148, v169, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      if (*v120 == *v169 && (sub_1B4A137D8(v120[1], v169[1], v170) & 1) != 0 && (sub_1B4A13A2C(v120[2], v169[2], v171) & 1) != 0)
      {
        sub_1B4D17BCC();
        sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1B4D1816C())
        {
          v172 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue;
          goto LABEL_76;
        }
      }

      v173 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue;
      goto LABEL_82;
    case 0x17u:
      v120 = v221;
      sub_1B4AC9298(v111, v221, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v174 = v229;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_78;
      }

      v134 = &v111[v174];
      v135 = &v236;
      goto LABEL_73;
    case 0x18u:
      v120 = v223;
      sub_1B4AC9298(v111, v223, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v133 = v229;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
LABEL_78:
        v158 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue;
        goto LABEL_79;
      }

      v134 = &v111[v133];
      v135 = &v237;
LABEL_73:
      v169 = *(v135 - 32);
      sub_1B4ABD53C(v134, v169, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      if (sub_1B4A12C0C(*v120, *v169))
      {
        sub_1B4D17BCC();
        sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1B4D1816C())
        {
          v172 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue;
LABEL_76:
          v175 = v172;
          sub_1B4AC9300(v169, v172);
          v157 = v120;
          v156 = v175;
          goto LABEL_77;
        }
      }

      v173 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue;
LABEL_82:
      v176 = v173;
      sub_1B4AC9300(v169, v173);
      v160 = v120;
      v159 = v176;
      goto LABEL_83;
    case 0x19u:
      v120 = v225;
      sub_1B4AC9298(v111, v225, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v132 = v229;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
LABEL_43:
        v158 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
LABEL_79:
        v115 = v158;
        v116 = v120;
        goto LABEL_80;
      }

      v122 = &v111[v132];
      v123 = &v231;
LABEL_40:
      v154 = *(v123 - 32);
      sub_1B4ABD53C(v122, v154, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      if (*v120 == *v154)
      {
        sub_1B4D17BCC();
        sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v155 = sub_1B4D1816C();
        sub_1B4AC9300(v154, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        if (v155)
        {
          v156 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
          v157 = v120;
LABEL_77:
          sub_1B4AC9300(v157, v156);
          sub_1B4AC9300(v111, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
          v127 = 1;
          return v127 & 1;
        }
      }

      else
      {
        sub_1B4AC9300(v154, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      }

      v159 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
      v160 = v120;
LABEL_83:
      sub_1B4AC9300(v160, v159);
      sub_1B4AC9300(v111, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      goto LABEL_84;
    default:
      sub_1B4AC9298(v111, v108, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v114 = v229;
      if (swift_getEnumCaseMultiPayload())
      {
        v115 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
        v116 = v108;
LABEL_80:
        sub_1B4AC9300(v116, v115);
        sub_1B4975024(v111, &qword_1EB8A9BA0, &qword_1B4D2B448);
LABEL_84:
        v127 = 0;
      }

      else
      {
        v178 = v180;
        sub_1B4ABD53C(&v111[v114], v180, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v127 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV2eeoiySbAC_ACtFZ_0(v108, v178);
        v128 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
        sub_1B4AC9300(v178, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v129 = v108;
LABEL_56:
        v142 = v128;
LABEL_57:
        sub_1B4AC9300(v129, v142);
        sub_1B4AC9300(v111, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      }

      return v127 & 1;
  }
}

uint64_t sub_1B4ADE840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B4ADF630(uint64_t a1)
{
  sub_1B4ADF968(319, &qword_1EDC37978, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4ADF71C(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4ADF918(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4ADF918(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4ADF828(uint64_t a1)
{
  sub_1B4ADF918(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4ADF968(319, &qword_1EDC3CBA8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool, MEMORY[0x1E69E62F8]);
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

void sub_1B4ADF918(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B4ADF968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4ADF9F4(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4ADF918(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4ADFAC4(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B4ADFB70(uint64_t a1)
{
  sub_1B4ADF968(319, &qword_1EDC37950, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4ADF968(319, &qword_1EDC37958, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair, MEMORY[0x1E69E62F8]);
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

void sub_1B4ADFCCC(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4ADF968(319, qword_1EDC3B078, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4ADFDB8(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4ADF968(319, qword_1EDC3C950, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4ADFF3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1B4ADF968(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4ADFFCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_168Tm);
}

uint64_t __swift_get_extra_inhabitant_index_168Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4D17BCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1B4AE0124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_169Tm);
}

uint64_t __swift_store_extra_inhabitant_index_169Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B4D17BCC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1B4AE0298(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1B4AE0398(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(319);
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

void sub_1B4AE0484(uint64_t a1)
{
  sub_1B4ADF968(319, qword_1EDC3B800, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B4ADF968(319, qword_1EDC3C7F8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B4AE0620()
{
  result = qword_1EB8A9BA8;
  if (!qword_1EB8A9BA8)
  {
    type metadata accessor for WorkoutGoalAchievementStatusFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9BA8);
  }

  return result;
}

unint64_t sub_1B4AE067C()
{
  result = qword_1EB8A9BB0;
  if (!qword_1EB8A9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9BB0);
  }

  return result;
}

uint64_t sub_1B4AE06DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4AE077C, 0, 0);
}

uint64_t sub_1B4AE077C()
{
  v1 = v0[5];
  sub_1B4992854(v0[3], v1);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4AE0878;
  v4 = v0[5];
  v5 = v0[2];

  return sub_1B4B7A120(v5, v4);
}

uint64_t sub_1B4AE0878(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v6 = *v1;

  sub_1B49933E8(v3);

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t WorkoutProperties.init(startCacheIndex:endCacheIndex:records:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a4;
  v6 = *a1;
  v7 = *a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, v8, 0);
    v9 = a3 + 32;
    v10 = v37;
    for (i = v8 - 1; ; --i)
    {
      sub_1B498ADFC(v9, v22);
      v33 = v23;
      v34 = v24;
      v35 = v25;
      v36 = v26;
      sub_1B496F398(&v27, v32 + 8);
      *&v28 = v6;
      *(&v28 + 1) = v7;
      v29 = v33;
      v30 = v34;
      v31 = v35;
      *&v32[0] = v36;
      v37 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B4BCECFC((v12 > 1), v13 + 1, 1);
        v10 = v37;
      }

      *(v10 + 16) = v13 + 1;
      v14 = (v10 + 112 * v13);
      v15 = v28;
      v16 = v30;
      v14[3] = v29;
      v14[4] = v16;
      v14[2] = v15;
      v17 = v31;
      v18 = v32[0];
      v19 = v32[2];
      v14[7] = v32[1];
      v14[8] = v19;
      v14[5] = v17;
      v14[6] = v18;
      if (!i)
      {
        break;
      }

      v9 += 112;
    }

    v5 = a4;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *v5 = v6;
  v5[1] = v7;
  v5[2] = v10;
  return result;
}

void *sub_1B4AE0B18(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BD8, &qword_1B4D2B590);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for RingStateFact(0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v29 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = (a3 + 32);
  v26 = v13;
  v18 = (v13 + 48);
  v19 = MEMORY[0x1E69E7CC0];
  v27 = v10;
  v28 = a2;
  while (1)
  {
    v20 = *v17++;
    v31 = v20;
    a1(&v31, v14);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_1B4975024(v9, &qword_1EB8A9BD8, &qword_1B4D2B590);
    }

    else
    {
      v21 = v29;
      sub_1B4AE617C(v9, v29, type metadata accessor for RingStateFact);
      sub_1B4AE617C(v21, v30, type metadata accessor for RingStateFact);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1B4A1DA48(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_1B4A1DA48((v22 > 1), v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      sub_1B4AE617C(v30, v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for RingStateFact);
      v10 = v27;
    }

    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

char *sub_1B4AE0DE0(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *(v5 + 32);
    v9 = *(v5 + 10);
    v10 = *(v5 + 9);
    v11 = *(v5 + 8);
    v22 = *v5;
    v23 = v11;
    v24 = v10;
    v25 = v9;
    v26 = *(v5 + 1);
    v27 = v8;
    (v28)(v19, &v22, a2);
    if (v3)
    {
      break;
    }

    v12 = v21;
    if (v21)
    {
      v17 = v19[1];
      v18 = v19[0];
      v13 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B4A1DA70(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = sub_1B4A1DA70((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      v7 = &v6[48 * v15];
      *(v7 + 2) = v18;
      *(v7 + 3) = v17;
      *(v7 + 8) = v13;
      *(v7 + 9) = v12;
    }

    v5 += 5;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1B4AE0F50(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C00, &qword_1B4D2B5C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for WorkoutAwardsFact(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(type metadata accessor for ActivityAchievementAward(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1B4975024(v9, &qword_1EB8A9C00, &qword_1B4D2B5C0);
    }

    else
    {
      v20 = v28;
      sub_1B4AE617C(v9, v28, type metadata accessor for WorkoutAwardsFact);
      sub_1B4AE617C(v20, v30, type metadata accessor for WorkoutAwardsFact);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1B4A1DB90(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1B4A1DB90((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_1B4AE617C(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for WorkoutAwardsFact);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_1B4AE126C(void (*a1)(__int128 *__return_ptr, __int128 *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;
    a1(&v11, &v14, a2);
    if (v3)
    {
      break;
    }

    if (v12)
    {
      sub_1B496F398(&v11, v13);
      sub_1B496F398(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B4A1DBDC(0, v6[2] + 1, 1, v6);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1B4A1DBDC((v8 > 1), v9 + 1, 1, v6);
      }

      v6[2] = v9 + 1;
      sub_1B496F398(&v11, &v6[5 * v9 + 4]);
    }

    else
    {
      sub_1B4975024(&v11, &qword_1EB8A9BE0, &qword_1B4D2B598);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_1B4AE13D0(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 32); ; ++i)
  {
    v21 = *i;
    (a1)(v19, &v21, a2);
    if (v3)
    {
      break;
    }

    if (v20)
    {
      v16 = v19[4];
      v17 = v19[5];
      v18 = v20;
      v12 = v19[0];
      v13 = v19[1];
      v14 = v19[2];
      v15 = v19[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B4A1DD0C(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1B4A1DD0C((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      v10 = &v6[112 * v9];
      *(v10 + 3) = v13;
      *(v10 + 4) = v14;
      *(v10 + 2) = v12;
      *(v10 + 7) = v17;
      *(v10 + 8) = v18;
      *(v10 + 5) = v15;
      *(v10 + 6) = v16;
    }

    else
    {
      sub_1B4975024(v19, &qword_1EB8A9BF0, &unk_1B4D2B5B0);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_1B4AE1550(void (*a1)(_OWORD *__return_ptr, __int16 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 34);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v6;
    v19 = *(v6 - 1);
    v20 = v8;
    (a1)(v17, &v19, a2);
    if (v3)
    {
      break;
    }

    if (v18)
    {
      v13 = v17[0];
      v14 = v17[1];
      v15 = v17[2];
      v16 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B4A1DC00(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1B4A1DC00((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      v11 = &v7[64 * v10];
      *(v11 + 4) = v15;
      *(v11 + 5) = v16;
      *(v11 + 2) = v13;
      *(v11 + 3) = v14;
    }

    else
    {
      sub_1B4975024(v17, &qword_1EB8A9BD0, "h");
    }

    v6 += 3;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t WorkoutProperties.resolve<A>(_:filter:)@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v57 = a4;
  v9 = sub_1B4D1880C();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v10;
  v11 = a1[1];
  v75[0] = *a1;
  v75[1] = v11;
  v75[2] = a1[2];
  v12 = *(v4 + 16);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v59 = a3;
  v60 = a2;
  v76 = v13;
  if (v13)
  {
    v15 = 0;
    v16 = (v12 + 32);
    while (v15 < *(v12 + 16))
    {
      sub_1B498ADFC(v16, v71);
      v17 = sub_1B4AE1D4C(v71, v75, a2, a3);
      if (v5)
      {
        goto LABEL_28;
      }

      if (v17)
      {
        v68 = v72[0];
        v69 = v72[1];
        v70 = v73;
        v64 = v71[0];
        v65 = v71[1];
        v66 = v71[2];
        v67 = v71[3];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v14 + 16) + 1, 1);
          v14 = v74;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B4BCECFC((v19 > 1), v20 + 1, 1);
          v14 = v74;
        }

        *(v14 + 16) = v20 + 1;
        v21 = (v14 + 112 * v20);
        v22 = v64;
        v23 = v66;
        v21[3] = v65;
        v21[4] = v23;
        v21[2] = v22;
        v24 = v67;
        v25 = v68;
        v26 = v70;
        v21[7] = v69;
        v21[8] = v26;
        v21[5] = v24;
        v21[6] = v25;
        a3 = v59;
        a2 = v60;
      }

      else
      {
        sub_1B498AE58(v71);
      }

      ++v15;
      v16 += 112;
      if (v76 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:

    sub_1B498AE58(v71);

    __break(1u);
    goto LABEL_29;
  }

LABEL_13:
  *&v71[0] = v14;

  sub_1B4AE42D0(v71);
  v16 = v5;
  if (v5)
  {
LABEL_29:

    __break(1u);
    return result;
  }

  v27 = *&v71[0];
  v28 = *(*&v71[0] + 16);
  if (v28)
  {
    v56 = 0;
    v74 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF0BC(0, v28, 0);
    v29 = v74;
    v55 = v27;
    v30 = v27 + 32;
    do
    {
      v76 = v28;
      v63 = v30;
      sub_1B498ADFC(v30, v71);
      v31 = v73;
      v32 = __swift_project_boxed_opaque_existential_1(v72 + 1, v73);
      v33 = *(*(&v31 + 1) + 8);
      v61 = *(v33 + 64);
      v62 = v32;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *(&v65 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *&v66 = AssociatedConformanceWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
      v61(v31, v33);
      v37 = sub_1B498AE58(v71);
      v74 = v29;
      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1B4BCF0BC((v38 > 1), v39 + 1, 1);
      }

      v40 = MEMORY[0x1EEE9AC00](v37);
      v42 = &v52 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42, boxed_opaque_existential_1, AssociatedTypeWitness, v40);
      sub_1B4CB7620(v39, v42, &v74, AssociatedTypeWitness, AssociatedConformanceWitness);
      __swift_destroy_boxed_opaque_existential_1Tm(&v64);
      v29 = v74;
      v30 = v63 + 112;
      v28 = v76 - 1;
    }

    while (v76 != 1);

    a3 = v59;
    a2 = v60;
    v16 = v56;
  }

  else
  {
  }

  v44 = *(a3 + 8);
  v45 = v58;
  static SnapshotProperty.reduce(_:)(a2, v44, v58);

  if (!v16)
  {
    v47 = *(a2 - 8);
    v48 = a2;
    if ((*(v47 + 48))(v45, 1, a2) == 1)
    {
      (*(v53 + 8))(v45, v54);
      v49 = 1;
      v50 = v57;
    }

    else
    {
      v50 = v57;
      (*(v44 + 64))(v48, v44);
      (*(v47 + 8))(v45, v48);
      v49 = 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v51 = swift_getAssociatedTypeWitness();
    return (*(*(v51 - 8) + 56))(v50, v49, 1, v51);
  }

  return result;
}

uint64_t sub_1B4AE1D4C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v25[0] = *(a1 + 16);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v25[1] = v7;
  v25[2] = v10;
  v26 = *(a1 + 64);
  *&v21[48] = v8;
  v22 = v9;
  v23 = *(a1 + 48);
  v24 = *(a1 + 64);
  v11 = a2[1];
  *v21 = *a2;
  *&v21[16] = v11;
  *&v21[32] = a2[2];
  sub_1B498B0D4(v25, v27);
  v12 = WorkoutPropertyDimensions.matches(_:)(v21);
  v27[0] = *&v21[48];
  v27[1] = v22;
  v27[2] = v23;
  v28 = v24;
  sub_1B498AD54(v27);
  if (v12)
  {
    v13 = *(a1 + 96);
    v14 = *(a1 + 104);
    __swift_project_boxed_opaque_existential_1((a1 + 72), v13);
    sub_1B4B70700(v13, *(v14 + 8));
    (*(*(a4 + 8) + 56))(v21, a3);
    v15 = WorkoutPropertyKind.rawValue.getter();
    v17 = v16;
    if (v15 == WorkoutPropertyKind.rawValue.getter() && v17 == v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = sub_1B4D18DCC();
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t WorkoutProperties.resolve(kind:filter:)@<X0>(unsigned __int8 *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v169 = *a1;
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[3];
  v143 = a2[2];
  v144 = v6;
  v9 = a2[5];
  v141 = a2[4];
  v142 = v8;
  v145 = v9;
  v151 = *(v3 + 16);
  v10 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_64:

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v149 = v7;
  v12 = 0;
  v139 = 0x80000001B4D48CC0;
  v140 = 0x80000001B4D48CE0;
  v137 = 0x80000001B4D48C80;
  v138 = 0x80000001B4D48CA0;
  v135 = 0x80000001B4D48C40;
  v136 = 0x80000001B4D48C60;
  v133 = 0x80000001B4D48C00;
  v134 = 0x80000001B4D48C20;
  v131 = 0x80000001B4D48BC0;
  v132 = 0x80000001B4D48BE0;
  v129 = 0x80000001B4D48B80;
  v130 = 0x80000001B4D48BA0;
  v127 = 0x80000001B4D48B40;
  v128 = 0x80000001B4D48B60;
  v125 = 0x80000001B4D488D0;
  v126 = 0x80000001B4D48B20;
  v124 = 0x80000001B4D48AF0;
  while (2)
  {
    if (v12 >= *(v10 + 16))
    {
      goto LABEL_270;
    }

    v13 = *(v10 + 16 * v12 + 32);
    v14 = *(v10 + 16 * v12++ + 40);
    v15 = *(v14 + 8);
    v16 = *(v15 + 56);
    v147 = v13;
    v4 = v13;
    v148 = v15;
    v16(&v163, v13);
    v17 = 0xEE00736369747369;
    v18 = 0x7461745365636170;
    switch(v163)
    {
      case 1:
        v18 = 0xD000000000000012;
        v17 = v125;
        break;
      case 2:
        break;
      case 3:
        v18 = 0xD000000000000017;
        v17 = v126;
        break;
      case 4:
        v18 = 0xD00000000000001ALL;
        v17 = v127;
        break;
      case 5:
        v18 = 0xD000000000000013;
        v17 = v128;
        break;
      case 6:
        v18 = 0xD000000000000012;
        v17 = v129;
        break;
      case 7:
        v18 = 0xD000000000000012;
        v17 = v130;
        break;
      case 8:
        v18 = 0xD00000000000001CLL;
        v17 = v131;
        break;
      case 9:
        v18 = 0xD000000000000015;
        v17 = v132;
        break;
      case 10:
        v18 = 0xD000000000000017;
        v17 = v133;
        break;
      case 11:
        v18 = 0xD000000000000013;
        v17 = v134;
        break;
      case 12:
        v18 = 0xD00000000000001CLL;
        v17 = v135;
        break;
      case 13:
        v18 = 0xD000000000000018;
        v17 = v136;
        break;
      case 14:
        v18 = 0xD000000000000017;
        v17 = v137;
        break;
      case 15:
        v18 = 0xD000000000000017;
        v17 = v138;
        break;
      case 16:
        v18 = 0xD000000000000017;
        v17 = v139;
        break;
      case 17:
        v18 = 0xD000000000000016;
        v17 = v140;
        break;
      case 18:
        v18 = 0x756F436C61746F74;
        v17 = 0xEA0000000000746ELL;
        break;
      default:
        v18 = 0xD000000000000011;
        v17 = v124;
        break;
    }

    v19 = 0x7461745365636170;
    v20 = 0xEE00736369747369;
    switch(v169)
    {
      case 1:
        v20 = v125;
        if (v18 == 0xD000000000000012)
        {
          goto LABEL_58;
        }

        goto LABEL_59;
      case 2:
        goto LABEL_57;
      case 3:
        v20 = v126;
        if (v18 != 0xD000000000000017)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 4:
        v20 = v127;
        if (v18 != 0xD00000000000001ALL)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 5:
        v20 = v128;
        if (v18 != 0xD000000000000013)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 6:
        v20 = v129;
        if (v18 != 0xD000000000000012)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 7:
        v20 = v130;
        if (v18 != 0xD000000000000012)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 8:
        v20 = v131;
        if (v18 != 0xD00000000000001CLL)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 9:
        v20 = v132;
        if (v18 != 0xD000000000000015)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 10:
        v19 = 0xD000000000000017;
        v20 = v133;
LABEL_57:
        if (v18 == v19)
        {
          goto LABEL_58;
        }

        goto LABEL_59;
      case 11:
        v20 = v134;
        if (v18 != 0xD000000000000013)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 12:
        v20 = v135;
        if (v18 != 0xD00000000000001CLL)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 13:
        v20 = v136;
        if (v18 != 0xD000000000000018)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 14:
        v20 = v137;
        if (v18 != 0xD000000000000017)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 15:
        v20 = v138;
        if (v18 != 0xD000000000000017)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 16:
        v20 = v139;
        if (v18 != 0xD000000000000017)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 17:
        v20 = v140;
        if (v18 != 0xD000000000000016)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 18:
        v20 = 0xEA0000000000746ELL;
        if (v18 != 0x756F436C61746F74)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      default:
        v20 = v124;
        if (v18 != 0xD000000000000011)
        {
          goto LABEL_59;
        }

LABEL_58:
        if (v17 != v20)
        {
LABEL_59:
          v21 = sub_1B4D18DCC();

          if (v21)
          {
            goto LABEL_66;
          }

          if (v11 == v12)
          {
            goto LABEL_64;
          }

          continue;
        }

LABEL_66:

        v118 = a3;
        v119 = v4;
        v23 = v151;
        v24 = MEMORY[0x1E69E7CC0];
        v25 = v149;
        v152 = *(v151 + 16);
        if (v152)
        {
          v4 = 0;
          v150 = (v151 + 32);
          v122 = v143 + 4;
          v123 = v144 + 32;
          v120 = v141 + 4;
          v121 = v142 + 4;
          do
          {
            if (v4 >= *(v23 + 16))
            {
              __break(1u);
LABEL_270:
              __break(1u);
LABEL_271:

              __break(1u);
              return result;
            }

            sub_1B498ADFC(&v150[14 * v4], &v163);
            v160 = *v164;
            v161 = *&v164[16];
            *v162 = v165;
            *&v162[16] = *&v166[0];
            if (!v25)
            {
              goto LABEL_193;
            }

            v26 = v160;
            if (v160 == 12 || !*(v25 + 16))
            {
              v27 = sub_1B498B0D4(&v160, &v153);
            }

            else
            {
              sub_1B498B0D4(&v160, &v153);
              v27 = sub_1B4978C4C(v26, v25);
              if ((v27 & 1) == 0)
              {
                goto LABEL_69;
              }
            }

            v28 = BYTE1(v160);
            if (BYTE1(v160) != 7)
            {
              v29 = *(v144 + 2);
              if (v29)
              {
                v30 = v123;
                do
                {
                  if (!v29)
                  {
LABEL_68:
                    v25 = v149;
                    v23 = v151;
                    goto LABEL_69;
                  }

                  v32 = *v30;
                  if (v32 <= 2)
                  {
                    v35 = 0xE900000000000079;
                    v36 = 0x616473656E646577;
                    if (v32 == 1)
                    {
                      v36 = 0x79616473657574;
                      v35 = 0xE700000000000000;
                    }

                    if (*v30)
                    {
                      v33 = v36;
                    }

                    else
                    {
                      v33 = 0x7961646E6F6DLL;
                    }

                    if (*v30)
                    {
                      v34 = v35;
                    }

                    else
                    {
                      v34 = 0xE600000000000000;
                    }

                    if (v28 > 2)
                    {
LABEL_106:
                      v37 = 0x7961646E7573;
                      if (v28 == 5)
                      {
                        v37 = 0x7961647275746173;
                        v38 = 0xE800000000000000;
                      }

                      else
                      {
                        v38 = 0xE600000000000000;
                      }

                      v39 = 0x7961647372756874;
                      if (v28 == 3)
                      {
                        v40 = 0xE800000000000000;
                      }

                      else
                      {
                        v39 = 0x796164697266;
                        v40 = 0xE600000000000000;
                      }

                      if (v28 <= 4)
                      {
                        v41 = v39;
                      }

                      else
                      {
                        v41 = v37;
                      }

                      if (v28 <= 4)
                      {
                        v42 = v40;
                      }

                      else
                      {
                        v42 = v38;
                      }

                      if (v33 != v41)
                      {
                        goto LABEL_82;
                      }

                      goto LABEL_131;
                    }
                  }

                  else if (*v30 > 4u)
                  {
                    if (v32 == 5)
                    {
                      v34 = 0xE800000000000000;
                      v33 = 0x7961647275746173;
                      if (v28 > 2)
                      {
                        goto LABEL_106;
                      }
                    }

                    else
                    {
                      v33 = 0x7961646E7573;
                      v34 = 0xE600000000000000;
                      if (v28 > 2)
                      {
                        goto LABEL_106;
                      }
                    }
                  }

                  else
                  {
                    if (v32 == 3)
                    {
                      v33 = 0x7961647372756874;
                    }

                    else
                    {
                      v33 = 0x796164697266;
                    }

                    if (v32 == 3)
                    {
                      v34 = 0xE800000000000000;
                    }

                    else
                    {
                      v34 = 0xE600000000000000;
                    }

                    if (v28 > 2)
                    {
                      goto LABEL_106;
                    }
                  }

                  if (v28)
                  {
                    if (v28 == 1)
                    {
                      v43 = 0x79616473657574;
                    }

                    else
                    {
                      v43 = 0x616473656E646577;
                    }

                    if (v28 == 1)
                    {
                      v42 = 0xE700000000000000;
                    }

                    else
                    {
                      v42 = 0xE900000000000079;
                    }

                    if (v33 != v43)
                    {
                      goto LABEL_82;
                    }
                  }

                  else
                  {
                    v42 = 0xE600000000000000;
                    if (v33 != 0x7961646E6F6DLL)
                    {
                      goto LABEL_82;
                    }
                  }

LABEL_131:
                  if (v34 == v42)
                  {

                    break;
                  }

LABEL_82:
                  v31 = sub_1B4D18DCC();

                  ++v30;
                  --v29;
                }

                while ((v31 & 1) == 0);
              }
            }

            if (v161)
            {
              v25 = v149;
              v23 = v151;
              if (v162[0])
              {
                goto LABEL_147;
              }
            }

            else
            {
              v44 = v143[2];
              v23 = v151;
              if (v44)
              {
                v45 = v122;
                v25 = v149;
                do
                {
                  if (!v44)
                  {
                    goto LABEL_69;
                  }

                  v46 = *v45++;
                  --v44;
                }

                while (v46 != *(&v160 + 1));
                if (v162[0])
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v25 = v149;
                if (v162[0])
                {
                  goto LABEL_147;
                }
              }
            }

            v47 = v142[2];
            if (v47)
            {
              v48 = v121;
              while (v47)
              {
                v49 = *v48++;
                --v47;
                if (v49 == *(&v161 + 1))
                {
                  goto LABEL_147;
                }
              }

LABEL_69:
              sub_1B498AD54(&v160);
              goto LABEL_70;
            }

LABEL_147:
            v50 = v162[1];
            if (v162[1] != 5)
            {
              v51 = v141[2];
              if (v51)
              {
                v52 = v120;
                do
                {
                  if (!v51)
                  {
                    goto LABEL_68;
                  }

                  v54 = *v52;
                  if (v54 <= 1)
                  {
                    if (*v52)
                    {
                      v55 = 0x726F6F646E69;
                    }

                    else
                    {
                      v55 = 0x6E776F6E6B6E75;
                    }

                    if (*v52)
                    {
                      v56 = 0xE600000000000000;
                    }

                    else
                    {
                      v56 = 0xE700000000000000;
                    }

                    if (v50 > 1)
                    {
LABEL_169:
                      v57 = 0x676E696D6D697773;
                      if (v50 == 3)
                      {
                        v57 = 0x657461576E65706FLL;
                      }

                      v58 = 0xEC0000006C6F6F50;
                      if (v50 == 3)
                      {
                        v58 = 0xE900000000000072;
                      }

                      if (v50 == 2)
                      {
                        v59 = 0x726F6F6474756FLL;
                      }

                      else
                      {
                        v59 = v57;
                      }

                      if (v50 == 2)
                      {
                        v60 = 0xE700000000000000;
                      }

                      else
                      {
                        v60 = v58;
                      }

                      if (v55 != v59)
                      {
                        goto LABEL_150;
                      }

                      goto LABEL_186;
                    }
                  }

                  else if (v54 == 2)
                  {
                    v56 = 0xE700000000000000;
                    v55 = 0x726F6F6474756FLL;
                    if (v50 > 1)
                    {
                      goto LABEL_169;
                    }
                  }

                  else
                  {
                    if (v54 == 3)
                    {
                      v55 = 0x657461576E65706FLL;
                    }

                    else
                    {
                      v55 = 0x676E696D6D697773;
                    }

                    if (v54 == 3)
                    {
                      v56 = 0xE900000000000072;
                    }

                    else
                    {
                      v56 = 0xEC0000006C6F6F50;
                    }

                    if (v50 > 1)
                    {
                      goto LABEL_169;
                    }
                  }

                  if (v50)
                  {
                    v60 = 0xE600000000000000;
                    if (v55 != 0x726F6F646E69)
                    {
                      goto LABEL_150;
                    }
                  }

                  else
                  {
                    v60 = 0xE700000000000000;
                    if (v55 != 0x6E776F6E6B6E75)
                    {
                      goto LABEL_150;
                    }
                  }

LABEL_186:
                  if (v56 == v60)
                  {

                    break;
                  }

LABEL_150:
                  v53 = sub_1B4D18DCC();

                  ++v52;
                  --v51;
                }

                while ((v53 & 1) == 0);
              }
            }

            v25 = v149;
            if (!*&v162[16] || !v145[2])
            {
              sub_1B498AD54(&v160);
              v23 = v151;
LABEL_193:
              v64 = *(&v167 + 1);
              v63 = v167;
              __swift_project_boxed_opaque_existential_1(v166 + 1, v167);
              sub_1B4B70700(v63, *(v64 + 8));
              v65 = 0xEE00736369747369;
              v66 = 0x7461745365636170;
              switch(v153)
              {
                case 1:
                  v66 = 0xD000000000000012;
                  v65 = v125;
                  break;
                case 2:
                  break;
                case 3:
                  v66 = 0xD000000000000017;
                  v65 = v126;
                  break;
                case 4:
                  v66 = 0xD00000000000001ALL;
                  v65 = v127;
                  break;
                case 5:
                  v66 = 0xD000000000000013;
                  v65 = v128;
                  break;
                case 6:
                  v66 = 0xD000000000000012;
                  v65 = v129;
                  break;
                case 7:
                  v66 = 0xD000000000000012;
                  v65 = v130;
                  break;
                case 8:
                  v66 = 0xD00000000000001CLL;
                  v65 = v131;
                  break;
                case 9:
                  v66 = 0xD000000000000015;
                  v65 = v132;
                  break;
                case 10:
                  v66 = 0xD000000000000017;
                  v65 = v133;
                  break;
                case 11:
                  v66 = 0xD000000000000013;
                  v65 = v134;
                  break;
                case 12:
                  v66 = 0xD00000000000001CLL;
                  v65 = v135;
                  break;
                case 13:
                  v66 = 0xD000000000000018;
                  v65 = v136;
                  break;
                case 14:
                  v66 = 0xD000000000000017;
                  v65 = v137;
                  break;
                case 15:
                  v66 = 0xD000000000000017;
                  v65 = v138;
                  break;
                case 16:
                  v66 = 0xD000000000000017;
                  v65 = v139;
                  break;
                case 17:
                  v66 = 0xD000000000000016;
                  v65 = v140;
                  break;
                case 18:
                  v66 = 0x756F436C61746F74;
                  v65 = 0xEA0000000000746ELL;
                  break;
                default:
                  v66 = 0xD000000000000011;
                  v65 = v124;
                  break;
              }

              v67 = 0x7461745365636170;
              v68 = 0xEE00736369747369;
              switch(v169)
              {
                case 1:
                  v68 = v125;
                  if (v66 == 0xD000000000000012)
                  {
                    goto LABEL_247;
                  }

                  goto LABEL_250;
                case 2:
                  goto LABEL_246;
                case 3:
                  v68 = v126;
                  if (v66 != 0xD000000000000017)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 4:
                  v68 = v127;
                  if (v66 != 0xD00000000000001ALL)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 5:
                  v68 = v128;
                  if (v66 != 0xD000000000000013)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 6:
                  v68 = v129;
                  if (v66 != 0xD000000000000012)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 7:
                  v68 = v130;
                  if (v66 != 0xD000000000000012)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 8:
                  v68 = v131;
                  if (v66 != 0xD00000000000001CLL)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 9:
                  v68 = v132;
                  if (v66 != 0xD000000000000015)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 10:
                  v67 = 0xD000000000000017;
                  v68 = v133;
LABEL_246:
                  if (v66 == v67)
                  {
                    goto LABEL_247;
                  }

                  goto LABEL_250;
                case 11:
                  v68 = v134;
                  if (v66 != 0xD000000000000013)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 12:
                  v68 = v135;
                  if (v66 != 0xD00000000000001CLL)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 13:
                  v68 = v136;
                  if (v66 != 0xD000000000000018)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 14:
                  v68 = v137;
                  if (v66 != 0xD000000000000017)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 15:
                  v68 = v138;
                  if (v66 != 0xD000000000000017)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 16:
                  v68 = v139;
                  if (v66 != 0xD000000000000017)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 17:
                  v68 = v140;
                  if (v66 != 0xD000000000000016)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 18:
                  v68 = 0xEA0000000000746ELL;
                  if (v66 != 0x756F436C61746F74)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                default:
                  v68 = v124;
                  if (v66 != 0xD000000000000011)
                  {
                    goto LABEL_250;
                  }

LABEL_247:
                  if (v65 == v68)
                  {
                  }

                  else
                  {
LABEL_250:
                    v69 = sub_1B4D18DCC();

                    if ((v69 & 1) == 0)
                    {
                      goto LABEL_70;
                    }
                  }

                  v157 = v166[0];
                  v158 = v166[1];
                  v159 = v167;
                  v153 = v163;
                  v154 = *v164;
                  v155 = *&v164[16];
                  v156 = v165;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v168[0] = v24;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1B4BCECFC(0, *(v24 + 16) + 1, 1);
                    v24 = v168[0];
                  }

                  v72 = *(v24 + 16);
                  v71 = *(v24 + 24);
                  if (v72 >= v71 >> 1)
                  {
                    sub_1B4BCECFC((v71 > 1), v72 + 1, 1);
                    v24 = v168[0];
                  }

                  *(v24 + 16) = v72 + 1;
                  v73 = (v24 + 112 * v72);
                  v74 = v153;
                  v75 = v155;
                  v73[3] = v154;
                  v73[4] = v75;
                  v73[2] = v74;
                  v76 = v156;
                  v77 = v157;
                  v78 = v159;
                  v73[7] = v158;
                  v73[8] = v78;
                  v73[5] = v76;
                  v73[6] = v77;
                  break;
              }

              goto LABEL_71;
            }

            v153 = *&v162[8];
            MEMORY[0x1EEE9AC00](v27);
            v116[2] = &v153;
            v61 = v146;
            v62 = sub_1B49B1748(sub_1B4AE535C, v116, v145);
            v146 = v61;
            sub_1B498AD54(&v160);
            v23 = v151;
            if (v62)
            {
              goto LABEL_193;
            }

LABEL_70:
            sub_1B498AE58(&v163);
LABEL_71:
            ++v4;
          }

          while (v4 != v152);
        }

        *&v163 = v24;

        v79 = v146;
        sub_1B4AE42D0(&v163);
        v4 = v79;
        if (v79)
        {
          goto LABEL_271;
        }

        v80 = v163;
        v81 = *(v163 + 16);
        if (v81)
        {
          v149 = 0;
          v168[0] = MEMORY[0x1E69E7CC0];
          sub_1B4BCF0BC(0, v81, 0);
          v82 = v168[0];
          v146 = v80;
          v83 = v80 + 32;
          do
          {
            v169 = v81;
            v152 = v83;
            sub_1B498ADFC(v83, &v163);
            v84 = v82;
            v85 = v167;
            v86 = __swift_project_boxed_opaque_existential_1(v166 + 1, v167);
            *(&v161 + 1) = v85;
            *v162 = *(*(&v85 + 1) + 8);
            v87 = *v162;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
            (*(*(v85 - 8) + 16))(boxed_opaque_existential_1, v86, v85);
            v89 = *(&v161 + 1);
            v90 = *v162;
            v91 = __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
            v92 = *(v87 + 64);
            v150 = v91;
            v151 = v92;
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            *(&v154 + 1) = AssociatedTypeWitness;
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            *&v155 = AssociatedConformanceWitness;
            v95 = __swift_allocate_boxed_opaque_existential_1(&v153);
            (v151)(v89, v90);
            sub_1B498AE58(&v163);
            v96 = __swift_destroy_boxed_opaque_existential_1Tm(&v160);
            v168[0] = v84;
            v98 = *(v84 + 16);
            v97 = *(v84 + 24);
            if (v98 >= v97 >> 1)
            {
              v96 = sub_1B4BCF0BC((v97 > 1), v98 + 1, 1);
            }

            v99 = MEMORY[0x1EEE9AC00](v96);
            v101 = &v117 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v102 + 16))(v101, v95, AssociatedTypeWitness, v99);
            sub_1B4CB7620(v98, v101, v168, AssociatedTypeWitness, AssociatedConformanceWitness);
            __swift_destroy_boxed_opaque_existential_1Tm(&v153);
            v82 = v168[0];
            v83 = v152 + 112;
            v81 = v169 - 1;
          }

          while (v169 != 1);

          v4 = v149;
        }

        else
        {
        }

        v103 = v119;
        v104 = sub_1B4D1880C();
        v105 = *(v104 - 8);
        MEMORY[0x1EEE9AC00](v104);
        v107 = &v117 - v106;
        static SnapshotProperty.reduce(_:)(v103, v148, &v117 - v106);

        if (!v4)
        {
          v108 = *(v103 - 8);
          if ((*(v108 + 48))(v107, 1, v103) == 1)
          {
            result = (*(v105 + 8))(v107, v104);
            v109 = v118;
            *(v118 + 32) = 0;
            *v109 = 0u;
            v109[1] = 0u;
          }

          else
          {
            *&v164[8] = v147;
            v110 = __swift_allocate_boxed_opaque_existential_1(&v163);
            (*(v108 + 32))(v110, v107, v103);
            v111 = *&v164[8];
            v112 = *&v164[16];
            v113 = __swift_project_boxed_opaque_existential_1(&v163, *&v164[8]);
            v114 = v118;
            *(v118 + 24) = v111;
            v114[4] = *(v112 + 8);
            v115 = __swift_allocate_boxed_opaque_existential_1(v114);
            (*(*(v111 - 8) + 16))(v115, v113, v111);
            return __swift_destroy_boxed_opaque_existential_1Tm(&v163);
          }
        }

        return result;
    }
  }
}

uint64_t static WorkoutProperties.from(_:cacheIndex:filters:groupBy:propertyKinds:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *a2;
  v12 = a3[1];
  v55[0] = *a3;
  v55[1] = v12;
  v55[2] = a3[2];
  sub_1B497558C(a1, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BC0, &qword_1B4D33730);
  if (swift_dynamicCast())
  {
    sub_1B496F398(&v37, v54);
    v13 = sub_1B4AE537C(a5);
    MEMORY[0x1EEE9AC00](v13);
    v34[2] = v54;
    v34[3] = v55;
    v34[4] = a4;
    v34[5] = v11;
    v14 = sub_1B4AE13D0(sub_1B4AE54CC, v34, v13);

    if (!v6)
    {
      v35 = a6;
      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      (*(v16 + 8))(&v56, v15, v16);
      v36 = v56;
      v17 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v17);
      (*(v18 + 8))(&v53, v17, v18);
      v19 = v53;
      v20 = *(v14 + 2);
      if (v20)
      {
        v34[7] = 0;
        v52 = MEMORY[0x1E69E7CC0];
        sub_1B4BCECFC(0, v20, 0);
        v34[6] = v14;
        v21 = (v14 + 32);
        v22 = v52;
        for (i = v20 - 1; ; --i)
        {
          sub_1B498ADFC(v21, &v37);
          v48 = v38;
          v49 = v39;
          v50 = v40;
          v51 = v41;
          sub_1B496F398(&v42, v47 + 8);
          *&v43 = v36;
          *(&v43 + 1) = v19;
          v44 = v48;
          v45 = v49;
          v46 = v50;
          *&v47[0] = v51;
          v52 = v22;
          v25 = *(v22 + 16);
          v24 = *(v22 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1B4BCECFC((v24 > 1), v25 + 1, 1);
            v22 = v52;
          }

          *(v22 + 16) = v25 + 1;
          v26 = (v22 + 112 * v25);
          v27 = v43;
          v28 = v45;
          v26[3] = v44;
          v26[4] = v28;
          v26[2] = v27;
          v29 = v46;
          v30 = v47[0];
          v31 = v47[2];
          v26[7] = v47[1];
          v26[8] = v31;
          v26[5] = v29;
          v26[6] = v30;
          if (!i)
          {
            break;
          }

          v21 += 112;
        }
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      v33 = v35;
      *v35 = v36;
      v33[1] = v19;
      v33[2] = v22;
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  else
  {
    *&v39 = 0;
    v37 = 0u;
    v38 = 0u;
    result = sub_1B4975024(&v37, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
    *a6 = v11;
    a6[1] = v11;
    a6[2] = MEMORY[0x1E69E7CC0];
  }

  return result;
}

double sub_1B4AE3858@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v46 = a5;
  v9 = *a3;
  v48 = a3[1];
  v49 = v9;
  v47 = a3[2];
  v10 = *a1;
  v11 = a1[1];
  v12 = *(v11 + 8);
  (*(v12 + 56))(&v59, *a1, v12);
  LOBYTE(v51) = v59;
  static WorkoutPropertyDimensions.dimensions(from:for:)(a2, &v64);
  if (v70 == 1)
  {
    goto LABEL_6;
  }

  v41 = a2;
  v39 = v11;
  v13 = v64;
  v14 = v68;
  v15 = v69;
  v43 = v65;
  v44 = v66;
  v71 = v66 & 1;
  v63 = v68 & 1;
  LOWORD(v59) = v64;
  v37 = v64 >> 8;
  *(&v59 + 1) = v65;
  v72 = v66 & 1;
  LOBYTE(v60) = v66 & 1;
  v42 = v67;
  *(&v60 + 1) = v67;
  v36 = v68 & 1;
  LOWORD(v61) = v68 & 0xFF01;
  v38 = v68 >> 8;
  *(&v61 + 1) = v69;
  v62 = v70;
  v51 = v49;
  v52 = v48;
  v53 = v47;
  v16 = a3;
  v17 = v70;
  sub_1B4AE5DF8(v16, v58);
  v18 = WorkoutPropertyDimensions.matches(_:)(&v51);
  sub_1B4AE5E54(v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1));
  if (!v18)
  {
    sub_1B4AE5ED4(v13, v43, v44, v42, v14, v15, v17);
LABEL_6:
    result = 0.0;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
    return result;
  }

  *&v47 = v13;
  *&v48 = v17;
  v40 = v14;
  *&v49 = v15;
  v19 = sub_1B4D1880C();
  v35 = &v35;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  v23 = v50;
  static SnapshotProperty.from(representable:)(v41, v10, v12, &v35 - v21);
  if (v23)
  {
    sub_1B4AE5ED4(v47, v43, v44, v42, v40, v49, v48);
    return result;
  }

  v41 = v20;
  v50 = v19;
  v25 = *(v10 - 8);
  v26 = (*(v25 + 48))(v22, 1, v10);
  v27 = v49;
  v28 = v42;
  if (v26 == 1)
  {
    sub_1B4AE5ED4(v47, v43, v44, v42, v40, v49, v48);
    (v41[1])(v22, v50);
    goto LABEL_6;
  }

  v56 = v10;
  v57 = v39;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
  (*(v25 + 32))(boxed_opaque_existential_1, v22, v10);
  sub_1B496F398(&v55, v58);
  v30 = v47;
  LOBYTE(v51) = v47;
  BYTE1(v51) = v37;
  v31 = v43;
  *(&v51 + 1) = v43;
  LOBYTE(v52) = v72;
  *(&v52 + 1) = v28;
  LOBYTE(v53) = v36;
  BYTE1(v53) = v38;
  v32 = v48;
  *(&v53 + 1) = v27;
  v54 = v48;
  WorkoutPropertyDimensions.mask(with:)(v45, &v59);
  sub_1B4AE5ED4(v30, v31, v44, v28, v40, v27, v32);
  sub_1B496F398(v58, a6 + 72);
  v33 = v46;
  *a6 = v46;
  *(a6 + 8) = v33;
  v34 = v60;
  *(a6 + 16) = v59;
  *(a6 + 32) = v34;
  result = *&v61;
  *(a6 + 48) = v61;
  *(a6 + 64) = v62;
  return result;
}

uint64_t sub_1B4AE3C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a1;
    v6 = a2 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B497558C(v6, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      if (swift_getDynamicType() == v5)
      {
        sub_1B496F398(&v14, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCF35C(0, *(v7 + 16) + 1, 1);
          v7 = v16;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1B4BCF35C((v9 > 1), v10 + 1, 1);
          v7 = v16;
        }

        *(v7 + 16) = v10 + 1;
        a1 = sub_1B496F398(v13, v7 + 40 * v10 + 32);
      }

      else
      {
        a1 = __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      }

      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  *&v14 = v7;
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BE8, &unk_1B4D2B5A0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B4AE5D94();
  v11 = sub_1B4D182BC();

  return v11;
}

uint64_t sub_1B4AE3F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v7 = v4;
  return WorkoutProperties.init(startCacheIndex:endCacheIndex:records:)(&v7, &v6, a3, a4);
}

uint64_t sub_1B4AE3F50(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 2);
  v10 = *v1;
  v11 = v7;
  v8 = sub_1B4AE5C30();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4AE6134(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);
    v4 = sub_1B4D17D6C();
    sub_1B4AE5D1C(v6);
  }

  return v4;
}

double sub_1B4AE408C@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_1B4B226A8(a2, a3, &v7);
  if (!v3)
  {
    v6 = v8;
    result = *&v7;
    *a1 = v7;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t Array<A>.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B4AE3C7C(a3, a2, a3, a4);
}

{
  return sub_1B4B9E56C(a3, a2, a3, a4);
}

{
  return sub_1B4CB6490(a3, a2, a3, a4);
}

uint64_t sub_1B4AE40D8@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 64))(v6, v7, v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCast();
  return (*(*(v10 - 8) + 56))(a4, v11 ^ 1u, 1, v10);
}

uint64_t sub_1B4AE42D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE228(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B4AE433C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B4AE433C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B4D18D4C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B4D1844C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B4AE45A8(v7, v8, a1, v4);
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
    return sub_1B4AE4434(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B4AE4434(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v27 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 112 * a3;
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      sub_1B498ADFC(v9, &v20);
      v10 = v9 - 7;
      sub_1B498ADFC((v9 - 7), v19);
      v11 = v20;
      v12 = v19[0];
      sub_1B498AE58(v19);
      result = sub_1B498AE58(&v20);
      if (v11 >= v12)
      {
LABEL_4:
        ++v4;
        v6 += 112;
        --v7;
        if (v4 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v23 = v9[3];
      v24 = v9[4];
      v25 = v9[5];
      v26 = v9[6];
      v20 = *v9;
      v21 = v9[1];
      v22 = v9[2];
      v13 = *(v9 - 6);
      *v9 = *v10;
      v9[1] = v13;
      v14 = *(v9 - 5);
      v15 = *(v9 - 4);
      v16 = *(v9 - 1);
      v9[5] = *(v9 - 2);
      v9[6] = v16;
      v17 = *(v9 - 3);
      v9[3] = v15;
      v9[4] = v17;
      v9[2] = v14;
      *(v9 - 2) = v25;
      *(v9 - 3) = v24;
      *(v9 - 4) = v23;
      *(v9 - 1) = v26;
      *v10 = v20;
      *(v9 - 6) = v21;
      *(v9 - 5) = v22;
      v9 -= 7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4AE45A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v90 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_1B4CDDE84(v9);
      v9 = result;
    }

    v104 = v9;
    v83 = *(v9 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = *&v9[16 * v83];
        v85 = *&v9[16 * v83 + 24];
        sub_1B4AE4D04((*a3 + 112 * v84), (*a3 + 112 * *&v9[16 * v83 + 16]), (*a3 + 112 * v85), v5);
        if (v6)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v83 - 2 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v86 = &v9[16 * v83];
        *v86 = v84;
        *(v86 + 1) = v85;
        v104 = v9;
        result = sub_1B4CDDDF8(v83 - 1);
        v9 = v104;
        v83 = *(v104 + 2);
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
    }

    else
    {
      v11 = *a3;
      sub_1B498ADFC(*a3 + 112 * (v8 + 1), &v97);
      v12 = 112 * v8;
      sub_1B498ADFC(v11 + 112 * v8, v96);
      v91 = v96[0];
      v93 = v97;
      sub_1B498AE58(v96);
      result = sub_1B498AE58(&v97);
      v13 = v8 + 2;
      v14 = v11 + 112 * v8 + 224;
      while (v7 != v13)
      {
        sub_1B498ADFC(v14, &v97);
        sub_1B498ADFC(v14 - 112, v96);
        v5 = v7;
        v15 = v6;
        v16 = v97;
        v17 = v96[0];
        sub_1B498AE58(v96);
        result = sub_1B498AE58(&v97);
        v18 = v16 < v17;
        v6 = v15;
        v7 = v5;
        v19 = !v18;
        ++v13;
        v14 += 112;
        if ((((v93 < v91) ^ v19) & 1) == 0)
        {
          v7 = v13 - 1;
          break;
        }
      }

      v10 = v8;
      if (v93 < v91)
      {
        if (v7 < v8)
        {
          goto LABEL_121;
        }

        if (v8 < v7)
        {
          v20 = 112 * v7 - 112;
          v5 = v7;
          do
          {
            if (v10 != --v5)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v21 = (v22 + v20);
              v100 = *(v22 + v12 + 48);
              v101 = *(v22 + v12 + 64);
              v102 = *(v22 + v12 + 80);
              v103 = *(v22 + v12 + 96);
              v97 = *(v22 + v12);
              v98 = *(v22 + v12 + 16);
              v99 = *(v22 + v12 + 32);
              result = memmove((v22 + v12), (v22 + v20), 0x70uLL);
              v21[3] = v100;
              v21[4] = v101;
              v21[5] = v102;
              v21[6] = v103;
              *v21 = v97;
              v21[1] = v98;
              v21[2] = v99;
            }

            ++v10;
            v20 -= 112;
            v12 += 112;
          }

          while (v10 < v5);
          v10 = v8;
        }
      }
    }

    v23 = a3[1];
    if (v7 < v23)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_120;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_122;
        }

        if (&v10[a4] < v23)
        {
          v23 = &v10[a4];
        }

        if (v23 < v10)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v7 != v23)
        {
          break;
        }
      }
    }

    v8 = v7;
    if (v7 < v10)
    {
      goto LABEL_119;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v25 = *(v9 + 2);
    v24 = *(v9 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      result = sub_1B4A1D58C((v24 > 1), v25 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v26;
    v27 = &v9[16 * v25];
    *(v27 + 4) = v10;
    *(v27 + 5) = v8;
    v28 = *v90;
    if (!*v90)
    {
      goto LABEL_129;
    }

    if (v25)
    {
      while (1)
      {
        v29 = v26 - 1;
        if (v26 >= 4)
        {
          break;
        }

        if (v26 == 3)
        {
          v30 = *(v9 + 4);
          v31 = *(v9 + 5);
          v40 = __OFSUB__(v31, v30);
          v32 = v31 - v30;
          v33 = v40;
LABEL_50:
          if (v33)
          {
            goto LABEL_108;
          }

          v46 = &v9[16 * v26];
          v48 = *v46;
          v47 = *(v46 + 1);
          v49 = __OFSUB__(v47, v48);
          v50 = v47 - v48;
          v51 = v49;
          if (v49)
          {
            goto LABEL_111;
          }

          v52 = &v9[16 * v29 + 32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v40 = __OFSUB__(v53, v54);
          v55 = v53 - v54;
          if (v40)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v50, v55))
          {
            goto LABEL_115;
          }

          if (v50 + v55 >= v32)
          {
            if (v32 < v55)
            {
              v29 = v26 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v56 = &v9[16 * v26];
        v58 = *v56;
        v57 = *(v56 + 1);
        v40 = __OFSUB__(v57, v58);
        v50 = v57 - v58;
        v51 = v40;
LABEL_64:
        if (v51)
        {
          goto LABEL_110;
        }

        v59 = &v9[16 * v29];
        v61 = *(v59 + 4);
        v60 = *(v59 + 5);
        v40 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v40)
        {
          goto LABEL_113;
        }

        if (v62 < v50)
        {
          goto LABEL_3;
        }

LABEL_71:
        v67 = v29 - 1;
        if (v29 - 1 >= v26)
        {
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
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v5 = *&v9[16 * v67 + 32];
        v68 = *&v9[16 * v29 + 40];
        sub_1B4AE4D04((*a3 + 112 * v5), (*a3 + 112 * *&v9[16 * v29 + 32]), (*a3 + 112 * v68), v28);
        if (v6)
        {
        }

        if (v68 < v5)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v67 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v69 = &v9[16 * v67];
        *(v69 + 4) = v5;
        *(v69 + 5) = v68;
        v104 = v9;
        result = sub_1B4CDDDF8(v29);
        v9 = v104;
        v26 = *(v104 + 2);
        if (v26 <= 1)
        {
          goto LABEL_3;
        }
      }

      v34 = &v9[16 * v26 + 32];
      v35 = *(v34 - 64);
      v36 = *(v34 - 56);
      v40 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      if (v40)
      {
        goto LABEL_106;
      }

      v39 = *(v34 - 48);
      v38 = *(v34 - 40);
      v40 = __OFSUB__(v38, v39);
      v32 = v38 - v39;
      v33 = v40;
      if (v40)
      {
        goto LABEL_107;
      }

      v41 = &v9[16 * v26];
      v43 = *v41;
      v42 = *(v41 + 1);
      v40 = __OFSUB__(v42, v43);
      v44 = v42 - v43;
      if (v40)
      {
        goto LABEL_109;
      }

      v40 = __OFADD__(v32, v44);
      v45 = v32 + v44;
      if (v40)
      {
        goto LABEL_112;
      }

      if (v45 >= v37)
      {
        v63 = &v9[16 * v29 + 32];
        v65 = *v63;
        v64 = *(v63 + 1);
        v40 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v40)
        {
          goto LABEL_116;
        }

        if (v32 < v66)
        {
          v29 = v26 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v92 = v23;
  v87 = v6;
  v5 = *a3;
  v70 = *a3 + 112 * v7;
  v89 = v10;
  v71 = &v10[-v7];
LABEL_83:
  v94 = v7;
  v72 = v71;
  v73 = v70;
  while (1)
  {
    sub_1B498ADFC(v73, &v97);
    v74 = v73 - 7;
    sub_1B498ADFC((v73 - 7), v96);
    v75 = v97;
    v76 = v96[0];
    sub_1B498AE58(v96);
    result = sub_1B498AE58(&v97);
    if (v75 >= v76)
    {
LABEL_82:
      v7 = v94 + 1;
      v70 += 112;
      --v71;
      if (v94 + 1 != v92)
      {
        goto LABEL_83;
      }

      v6 = v87;
      v8 = v92;
      v10 = v89;
      if (v92 < v89)
      {
        goto LABEL_119;
      }

      goto LABEL_31;
    }

    if (!v5)
    {
      break;
    }

    v100 = v73[3];
    v101 = v73[4];
    v102 = v73[5];
    v103 = v73[6];
    v97 = *v73;
    v98 = v73[1];
    v99 = v73[2];
    v77 = *(v73 - 6);
    *v73 = *v74;
    v73[1] = v77;
    v78 = *(v73 - 5);
    v79 = *(v73 - 4);
    v80 = *(v73 - 1);
    v73[5] = *(v73 - 2);
    v73[6] = v80;
    v81 = *(v73 - 3);
    v73[3] = v79;
    v73[4] = v81;
    v73[2] = v78;
    *(v73 - 2) = v102;
    *(v73 - 3) = v101;
    *(v73 - 4) = v100;
    *(v73 - 1) = v103;
    *v74 = v97;
    *(v73 - 6) = v98;
    *(v73 - 5) = v99;
    v73 -= 7;
    if (__CFADD__(v72++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_1B4AE4D04(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 112;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 112;
  if (v9 >= v11)
  {
    if (__dst != a2 || &a2[112 * v11] <= __dst)
    {
      memmove(__dst, a2, 112 * v11);
    }

    v12 = &v4[112 * v11];
    if (v10 < 112 || v6 <= v7)
    {
      v17 = v6;
      goto LABEL_35;
    }

    v30 = v4;
    while (1)
    {
      v18 = (v6 - 112);
      v19 = v12 - 112;
      v5 -= 112;
      while (1)
      {
        v12 = v19 + 112;
        v22 = v5 + 112;
        sub_1B498ADFC(v19, v29);
        v23 = v18;
        sub_1B498ADFC(v18, v28);
        v24 = v29[0];
        v25 = v28[0];
        sub_1B498AE58(v28);
        sub_1B498AE58(v29);
        if (v24 < v25)
        {
          break;
        }

        if (v22 != v12)
        {
          memmove(v5, v19, 0x70uLL);
        }

        v20 = v19 - 112;
        v5 -= 112;
        v21 = v19 > v30;
        v19 -= 112;
        v18 = v23;
        if (!v21)
        {
          v12 = v20 + 112;
          v17 = v6;
          v4 = v30;
          goto LABEL_35;
        }
      }

      v16 = v22 == v6;
      v17 = v23;
      if (!v16)
      {
        memmove(v5, v23, 0x70uLL);
      }

      v4 = v30;
      if (v12 > v30)
      {
        v6 = v17;
        if (v17 > v7)
        {
          continue;
        }
      }

      v12 = v19 + 112;
      goto LABEL_35;
    }
  }

  if (__dst != __src || &__src[112 * v9] <= __dst)
  {
    memmove(__dst, __src, 112 * v9);
  }

  v12 = &v4[112 * v9];
  if (v8 < 112 || v6 >= v5)
  {
    v17 = v7;
    goto LABEL_35;
  }

  do
  {
    sub_1B498ADFC(v6, v29);
    sub_1B498ADFC(v4, v28);
    v13 = v29[0];
    v14 = v28[0];
    sub_1B498AE58(v28);
    sub_1B498AE58(v29);
    if (v13 < v14)
    {
      v15 = v6;
      v16 = v7 == v6;
      v6 += 112;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v15, 0x70uLL);
      goto LABEL_13;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 112;
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_13:
    v7 += 112;
  }

  while (v4 < v12 && v6 < v5);
  v17 = v7;
LABEL_35:
  v26 = (v12 - v4) / 112;
  if (v17 != v4 || v17 >= &v4[112 * v26])
  {
    memmove(v17, v4, 112 * v26);
  }

  return 1;
}

uint64_t _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BF8, &qword_1B4D471C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4D25C30;
  v1 = sub_1B4AE5EE8();
  *(v0 + 32) = &type metadata for FastestPaceProperty;
  *(v0 + 40) = v1;
  v2 = sub_1B4AE5F3C();
  *(v0 + 48) = &type metadata for FastestByDistanceProperty;
  *(v0 + 56) = v2;
  v3 = sub_1B498ADA8();
  *(v0 + 64) = &type metadata for LongestDistanceProperty;
  *(v0 + 72) = v3;
  v4 = sub_1B4AE5F90();
  *(v0 + 80) = &type metadata for GreatestElevationProperty;
  *(v0 + 88) = v4;
  v5 = sub_1B4AE5FE4();
  *(v0 + 96) = &type metadata for MostCaloriesBurnedProperty;
  *(v0 + 104) = v5;
  v6 = sub_1B4AE6038();
  *(v0 + 112) = &type metadata for GreatestDurationProperty;
  *(v0 + 120) = v6;
  v7 = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
  v8 = sub_1B4AE6134(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty, &protocol conformance descriptor for WorkoutDistanceStatisticsProperty);
  *(v0 + 128) = v7;
  *(v0 + 136) = v8;
  v9 = type metadata accessor for PaceStatisticsProperty(0);
  v10 = sub_1B4AE6134(&qword_1EDC392B0, type metadata accessor for PaceStatisticsProperty, &protocol conformance descriptor for PaceStatisticsProperty);
  *(v0 + 144) = v9;
  *(v0 + 152) = v10;
  v11 = type metadata accessor for ElevationGainStatisticsProperty(0);
  v12 = sub_1B4AE6134(&qword_1EDC38270, type metadata accessor for ElevationGainStatisticsProperty, &protocol conformance descriptor for ElevationGainStatisticsProperty);
  *(v0 + 160) = v11;
  *(v0 + 168) = v12;
  v13 = type metadata accessor for AverageHeartRateStatisticsProperty(0);
  v14 = sub_1B4AE6134(&qword_1EDC37E90, type metadata accessor for AverageHeartRateStatisticsProperty, &protocol conformance descriptor for AverageHeartRateStatisticsProperty);
  *(v0 + 176) = v13;
  *(v0 + 184) = v14;
  v15 = type metadata accessor for DiveDepthStatisticsProperty(0);
  v16 = sub_1B4AE6134(&qword_1EDC38A68, type metadata accessor for DiveDepthStatisticsProperty, &protocol conformance descriptor for DiveDepthStatisticsProperty);
  *(v0 + 192) = v15;
  *(v0 + 200) = v16;
  v17 = type metadata accessor for WorkoutCaloriesStatisticsProperty(0);
  v18 = sub_1B4AE6134(&qword_1EDC380B8, type metadata accessor for WorkoutCaloriesStatisticsProperty, &protocol conformance descriptor for WorkoutCaloriesStatisticsProperty);
  *(v0 + 208) = v17;
  *(v0 + 216) = v18;
  v19 = type metadata accessor for WorkoutDurationStatisticsProperty(0);
  v20 = sub_1B4AE6134(&qword_1EDC37F58, type metadata accessor for WorkoutDurationStatisticsProperty, &protocol conformance descriptor for WorkoutDurationStatisticsProperty);
  *(v0 + 224) = v19;
  *(v0 + 232) = v20;
  v21 = type metadata accessor for WeatherTemperatureStatisticsProperty(0);
  v22 = sub_1B4AE6134(&qword_1EDC37C98, type metadata accessor for WeatherTemperatureStatisticsProperty, &protocol conformance descriptor for WeatherTemperatureStatisticsProperty);
  *(v0 + 240) = v21;
  *(v0 + 248) = v22;
  v23 = sub_1B498AF48();
  *(v0 + 256) = &type metadata for WorkoutTotalCountProperty;
  *(v0 + 264) = v23;
  v24 = sub_1B4AE608C();
  *(v0 + 272) = &type metadata for WorkoutCountByWeatherConditionProperty;
  *(v0 + 280) = v24;
  v25 = sub_1B4AE60E0();
  *(v0 + 288) = &type metadata for WorkoutCountByRoundedDistanceProperty;
  *(v0 + 296) = v25;
  v26 = type metadata accessor for WorkoutWeeklyCountStatisticsProperty(0);
  v27 = sub_1B4AE6134(&qword_1EDC37BE0, type metadata accessor for WorkoutWeeklyCountStatisticsProperty, &protocol conformance descriptor for WorkoutWeeklyCountStatisticsProperty);
  *(v0 + 304) = v26;
  *(v0 + 312) = v27;
  return v0;
}

uint64_t sub_1B4AE537C(uint64_t a1)
{
  if (a1)
  {
    v3 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = MEMORY[0x1E69E7CC0];
      v6 = 32;
      do
      {
        v11 = *(v3 + v6);
        (*(*(*(v3 + v6 + 8) + 8) + 56))(&v12);
        if (sub_1B4979398(v12, a1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B4BCF33C(0, *(v5 + 16) + 1, 1);
            v5 = v13;
          }

          v8 = *(v5 + 16);
          v7 = *(v5 + 24);
          if (v8 >= v7 >> 1)
          {
            sub_1B4BCF33C((v7 > 1), v8 + 1, 1);
            v5 = v13;
          }

          *(v5 + 16) = v8 + 1;
          *(v5 + 16 * v8 + 32) = v11;
        }

        v6 += 16;
        --v4;
      }

      while (v4);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v5;
  }

  else
  {

    return _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
  }
}

uint64_t sub_1B4AE54EC(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v41 = *a1;
  v40 = *a2;
  v5 = a3[1];
  v51 = *a3;
  v52 = v5;
  v53 = a3[2];
  v54 = *(a3 + 6);
  *&v45 = a4;

  sub_1B4AE42D0(&v45);
  if (v4)
  {
LABEL_31:

    __break(1u);
    return result;
  }

  v55 = 0;
  v6 = v45;
  v7 = *(v45 + 16);
  if (v7)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF35C(0, v7, 0);
    v8 = v50;
    v9 = v6 + 32;
    do
    {
      sub_1B498ADFC(v9, &v45);
      sub_1B497558C(v49 + 8, v44);
      sub_1B498AE58(&v45);
      v50 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B4BCF35C((v10 > 1), v11 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v11 + 1;
      sub_1B496F398(v44, v8 + 40 * v11 + 32);
      v9 += 112;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v12 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
  v13 = v12;
  v14 = MEMORY[0x1E69E7CC0];
  v39 = *(v12 + 16);
  if (v39)
  {
    v15 = 0;
    v38 = v12;
    while (v15 < *(v13 + 16))
    {
      v43 = v14;
      v42 = *(v13 + 16 * v15 + 32);
      v17 = *(&v42 + 1);
      v16 = v42;
      sub_1B4AE3C7C(v42, v8, v42, *(&v42 + 1));
      v18 = *(v17 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      sub_1B4D18A7C();

      v19 = sub_1B4D1880C();
      v20 = *(v19 - 8);
      MEMORY[0x1EEE9AC00](v19);
      v22 = &v38 - v21;
      v4 = v55;
      static SnapshotProperty.reduce(_:)(v16, v18, &v38 - v21);
      v55 = v4;
      if (v4)
      {

        return v16;
      }

      v23 = *(v16 - 8);
      if ((*(v23 + 48))(v22, 1, v16) == 1)
      {
        (*(v20 + 8))(v22, v19);
        v14 = v43;
        v13 = v38;
      }

      else
      {
        *(&v44[1] + 8) = v42;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
        (*(v23 + 32))(boxed_opaque_existential_1, v22, v16);
        sub_1B496F398(v44, &v45);
        sub_1B496F398(&v45, v44);
        v14 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1B4A1DE34(0, v14[2] + 1, 1, v14);
        }

        v13 = v38;
        v26 = v14[2];
        v25 = v14[3];
        if (v26 >= v25 >> 1)
        {
          v14 = sub_1B4A1DE34((v25 > 1), v26 + 1, 1, v14);
        }

        v14[2] = v26 + 1;
        sub_1B496F398(v44, &v14[5 * v26 + 4]);
      }

      if (v39 == ++v15)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_21:

  v27 = v14[2];
  if (v27)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, v27, 0);
    v16 = v50;
    v28 = (v14 + 4);
    do
    {
      sub_1B497558C(v28, v49 + 8);
      *&v45 = v41;
      *(&v45 + 1) = v40;
      v46 = v51;
      v47 = v52;
      v48 = v53;
      *&v49[0] = v54;
      sub_1B498B0D4(&v51, v44);
      v50 = v16;
      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B4BCECFC((v29 > 1), v30 + 1, 1);
        v16 = v50;
      }

      *(v16 + 16) = v30 + 1;
      v31 = (v16 + 112 * v30);
      v32 = v45;
      v33 = v47;
      v31[3] = v46;
      v31[4] = v33;
      v31[2] = v32;
      v34 = v48;
      v35 = v49[0];
      v36 = v49[2];
      v31[7] = v49[1];
      v31[8] = v36;
      v31[5] = v34;
      v31[6] = v35;
      v28 += 40;
      --v27;
    }

    while (v27);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

unint64_t sub_1B4AE5B58()
{
  result = qword_1EDC393F0;
  if (!qword_1EDC393F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC393F0);
  }

  return result;
}

unint64_t sub_1B4AE5BAC(uint64_t a1)
{
  *(a1 + 8) = sub_1B4AE5BDC();
  result = sub_1B4AE5C30();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4AE5BDC()
{
  result = qword_1EDC3CE20;
  if (!qword_1EDC3CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CE20);
  }

  return result;
}

unint64_t sub_1B4AE5C30()
{
  result = qword_1EDC3CE18;
  if (!qword_1EDC3CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CE18);
  }

  return result;
}

uint64_t sub_1B4AE5C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4AE5CCC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1B4AE5D1C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4AE5D94()
{
  result = qword_1EDC37900;
  if (!qword_1EDC37900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A9BE8, &unk_1B4D2B5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37900);
  }

  return result;
}

uint64_t sub_1B4AE5E54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B4AE5ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

unint64_t sub_1B4AE5EE8()
{
  result = qword_1EDC395B8;
  if (!qword_1EDC395B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395B8);
  }

  return result;
}

unint64_t sub_1B4AE5F3C()
{
  result = qword_1EDC38E78;
  if (!qword_1EDC38E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38E78);
  }

  return result;
}

unint64_t sub_1B4AE5F90()
{
  result = qword_1EDC38DA8;
  if (!qword_1EDC38DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38DA8);
  }

  return result;
}

unint64_t sub_1B4AE5FE4()
{
  result = qword_1EDC38BD8;
  if (!qword_1EDC38BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38BD8);
  }

  return result;
}

unint64_t sub_1B4AE6038()
{
  result = qword_1EDC38F48;
  if (!qword_1EDC38F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38F48);
  }

  return result;
}

unint64_t sub_1B4AE608C()
{
  result = qword_1EDC37A58;
  if (!qword_1EDC37A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A58);
  }

  return result;
}

unint64_t sub_1B4AE60E0()
{
  result = qword_1EDC37A98;
  if (!qword_1EDC37A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A98);
  }

  return result;
}

uint64_t sub_1B4AE6134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4AE617C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t StepsDailyAverageComparisonFact.TemplateString.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B4AE6264()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE62D8(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE632C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

uint64_t StepsDailyAverageComparisonFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for StepsDailyAverageComparisonFact(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1B2D0;
  sub_1B4AE6660(v0, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1B4AE66C4(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *(v5 + 32) = 0xD000000000000012;
  *(v5 + 40) = 0x80000001B4D61330;
  *(v5 + 48) = sub_1B4AE6728;
  *(v5 + 56) = v7;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v19 = *v1;
  v8 = sub_1B4D18D5C();
  v10 = v9;
  *(v5 + 80) = 0xD000000000000015;
  *(v5 + 88) = 0x80000001B4D61350;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v5 + 96) = sub_1B4993DFC;
  *(v5 + 104) = v11;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  v19 = v1[2];
  v12 = sub_1B4D18D5C();
  v14 = v13;
  *(v5 + 128) = 0xD000000000000013;
  *(v5 + 136) = 0x80000001B4D61370;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  *(v5 + 144) = sub_1B4994004;
  *(v5 + 152) = v15;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  sub_1B4AE6660(v1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_1B4AE66C4(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v6);
  *(v5 + 176) = 0xD000000000000013;
  *(v5 + 184) = 0x80000001B4D61390;
  *(v5 + 192) = sub_1B4AE68F8;
  *(v5 + 200) = v16;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  return v5;
}

uint64_t sub_1B4AE6660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepsDailyAverageComparisonFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AE66C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepsDailyAverageComparisonFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AE6728()
{
  v1 = type metadata accessor for StepsDailyAverageComparisonFact(0);
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  return sub_1B4D16340(v2);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for StepsDailyAverageComparisonFact(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v1 + 28);
  type metadata accessor for DateRangeDescriptor(0);
  if (swift_getEnumCaseMultiPayload() <= 0xF)
  {
    v7 = sub_1B4D1777C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  v8 = *(v1 + 32);
  if (swift_getEnumCaseMultiPayload() <= 0xF)
  {
    v9 = sub_1B4D1777C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4AE68F8()
{
  v1 = type metadata accessor for StepsDailyAverageComparisonFact(0);
  v2 = v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  return sub_1B4D16340(v2);
}

unint64_t sub_1B4AE6964()
{
  result = qword_1EB8A9C08;
  if (!qword_1EB8A9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C08);
  }

  return result;
}

unint64_t sub_1B4AE69BC()
{
  result = qword_1EB8A9C10;
  if (!qword_1EB8A9C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A9C18, &qword_1B4D2B668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C10);
  }

  return result;
}

unint64_t sub_1B4AE6A24()
{
  result = qword_1EB8A9C20;
  if (!qword_1EB8A9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C20);
  }

  return result;
}

unint64_t sub_1B4AE6A7C()
{
  result = qword_1EB8A9C28;
  if (!qword_1EB8A9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C28);
  }

  return result;
}

unint64_t sub_1B4AE6AD0(uint64_t a1)
{
  result = sub_1B4AE6AF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4AE6AF8()
{
  result = qword_1EB8A9C30;
  if (!qword_1EB8A9C30)
  {
    type metadata accessor for StepsDailyAverageComparisonFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C30);
  }

  return result;
}

uint64_t ActivitySummaryContext.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v28 = &v25 - v13;
  v14 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  sub_1B4974FBC(a1 + v14, v11, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  v15 = *(v4 + 48);
  v16 = v15(v11, 1, v3);
  sub_1B4975024(v11, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  if (v16 == 1)
  {
    sub_1B4AE7700(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    v17 = 1;
    v18 = v28;
LABEL_11:
    v24 = type metadata accessor for HKActivitySummaryRepresentable(0);
    (*(*(v24 - 8) + 56))(v18, v17, 1, v24);
    return sub_1B4AE7518(v18, v27);
  }

  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  if (v15(v8, 1, v3) == 1)
  {
    v19 = v26;
    sub_1B4D17BBC();
    v20 = *(v3 + 20);
    if (qword_1EB8A64F8 != -1)
    {
      swift_once();
    }

    *(v19 + v20) = qword_1EB8AC7F8;
    v21 = v15(v8, 1, v3);

    v18 = v28;
    if (v21 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A9C38, &qword_1B4D2B6E0);
    }
  }

  else
  {
    v19 = v26;
    sub_1B4AE7634(v8, v26, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
    v18 = v28;
  }

  v22 = v29;
  HKActivitySummaryRepresentable.init(_:)(v19, v18);
  result = sub_1B4AE7700(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  if (!v22)
  {
    v17 = 0;
    goto LABEL_11;
  }

  return result;
}

uint64_t ActivitySummaryContext.protobuf()(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4AE76B8(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4AE6FB0(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a2, v8, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

  v14 = sub_1B4AE7634(v8, v12, type metadata accessor for HKActivitySummaryRepresentable);
  MEMORY[0x1EEE9AC00](v14);
  *(&v17 - 2) = v12;
  sub_1B4AE76B8(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
  sub_1B4D17DAC();
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  v16 = v18;
  sub_1B4975024(v18 + v15, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  sub_1B4AE7634(v5, v16 + v15, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  (*(v17 + 56))(v16 + v15, 0, 1, v3);
  return sub_1B4AE7700(v12, type metadata accessor for HKActivitySummaryRepresentable);
}

uint64_t sub_1B4AE72D8(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4AE76B8(&qword_1EB8A9C50, type metadata accessor for ActivitySummaryContext, &protocol conformance descriptor for ActivitySummaryContext);
  (*(v8 + 32))(a1, v8);
  if (!v3)
  {
    sub_1B4AE76B8(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    v2 = sub_1B4D17D6C();
    sub_1B4AE7700(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  }

  return v2;
}

uint64_t sub_1B4AE7458(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4AE76B8(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4AE7518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AE7634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AE76B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4AE7700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

FitnessIntelligence::DarwinMessageCode_optional __swiftcall DarwinMessageCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DarwinMessageCode.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000026;
  if (v1 != 6)
  {
    v2 = 0xD00000000000002BLL;
  }

  v3 = 0xD000000000000019;
  if (v1 == 4)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000033;
  if (v1 != 2)
  {
    v4 = 0xD000000000000022;
  }

  v5 = 0xD000000000000027;
  if (!*v0)
  {
    v5 = 0xD000000000000030;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

const char *sub_1B4AE78DC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "VoiceAssetSettingsChanged";
  v4 = 0xD000000000000026;
  if (v2 != 6)
  {
    v4 = 0xD00000000000002BLL;
    v3 = "gistry.devicedidunpair";
  }

  v5 = "vailabilityChanged";
  v6 = 0xD000000000000019;
  if (v2 == 4)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v5 = "VoiceAssetCacheChanged";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "ailability.notification";
  v8 = 0xD000000000000033;
  if (v2 != 2)
  {
    v8 = 0xD000000000000022;
  }

  result = "com.apple.gms.availability.notification";
  if (v2 != 2)
  {
    v7 = "itialSyncCompletion";
  }

  v10 = 0xD000000000000027;
  if (*v1)
  {
    v11 = "rwinNotification";
  }

  else
  {
    v10 = 0xD000000000000030;
    v11 = "evious_date_range>.";
  }

  if (*v1 > 1u)
  {
    v10 = v8;
    v11 = v7;
  }

  if (*v1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v10 = v4;
    v12 = v3;
  }

  *a1 = v10;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

unint64_t sub_1B4AE79C8()
{
  result = qword_1EDC39730[0];
  if (!qword_1EDC39730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC39730);
  }

  return result;
}

unint64_t sub_1B4AE7A3C()
{
  result = qword_1EDC378F8;
  if (!qword_1EDC378F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A9C60, &qword_1B4D2B7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC378F8);
  }

  return result;
}

uint64_t WorkoutMilestoneEntry.workoutIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutMilestoneEntry(0) + 20);
  v4 = sub_1B4D177CC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WorkoutMilestoneEntry(uint64_t a1)
{
  result = qword_1EB8A9CA8;
  if (!qword_1EB8A9CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutMilestoneEntry.localizedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutMilestoneEntry(0) + 24);

  return sub_1B4AE7BD8(v3, a1);
}

uint64_t sub_1B4AE7BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedDate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static WorkoutMilestoneEntry.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutMilestoneEntry(0);
  if ((sub_1B4D177AC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return _s19FitnessIntelligence13LocalizedDateV2eeoiySbAC_ACtFZ_0((a1 + v5), (a2 + v5));
}

uint64_t WorkoutMilestoneEntry.hash(into:)(uint64_t a1)
{
  MEMORY[0x1B8C7D2C0](*v1);
  type metadata accessor for WorkoutMilestoneEntry(0);
  sub_1B4D177CC();
  sub_1B4AE8614(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B4D1808C();
  return LocalizedDate.hash(into:)(a1);
}

uint64_t WorkoutMilestoneEntry.hashValue.getter()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](*v0);
  type metadata accessor for WorkoutMilestoneEntry(0);
  sub_1B4D177CC();
  sub_1B4AE8614(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B4D1808C();
  LocalizedDate.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE7E40()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](*v0);
  sub_1B4D177CC();
  sub_1B4AE8614(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B4D1808C();
  LocalizedDate.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE7EFC(uint64_t a1)
{
  MEMORY[0x1B8C7D2C0](*v1);
  sub_1B4D177CC();
  sub_1B4AE8614(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B4D1808C();
  return LocalizedDate.hash(into:)(a1);
}

uint64_t sub_1B4AE7FA8(uint64_t a1)
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](*v1);
  sub_1B4D177CC();
  sub_1B4AE8614(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B4D1808C();
  LocalizedDate.hash(into:)(v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE809C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_1B4D177AC() & 1) == 0)
  {
    return 0;
  }

  return static LocalizedDate.== infix(_:_:)();
}

FitnessIntelligence::WorkoutMilestonePropertyValue __swiftcall WorkoutMilestonePropertyValue.init(currentCount:currentEntries:milestones:)(Swift::Int currentCount, Swift::OpaquePointer currentEntries, Swift::OpaquePointer milestones)
{
  v3->_rawValue = currentCount;
  v3[1]._rawValue = currentEntries._rawValue;
  v3[2]._rawValue = milestones._rawValue;
  result.milestones = milestones;
  result.currentEntries = currentEntries;
  result.currentCount = currentCount;
  return result;
}

BOOL static WorkoutMilestonePropertyValue.isMilestone(count:)(uint64_t a1)
{
  if (a1 > 249)
  {
    v5 = __ROR8__(0x1CAC083126E978D5 * a1, 1);
    v6 = 0x10624DD2F1A9FBFLL;
    return v5 < v6;
  }

  result = 1;
  if (a1 != 1 && a1 != 10)
  {
    v3 = __OFSUB__(a1, 25);
    v4 = a1 - 25;
    if (!v3)
    {
      v5 = 0x8F5C28F5C28F5C29 * v4 + 0x51EB851EB851EB8;
      v6 = 0xA3D70A3D70A3D71;
      return v5 < v6;
    }

    __break(1u);
  }

  return result;
}

void static WorkoutMilestonePropertyValue.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = a2[2];
    v3 = a1[2];
    if (sub_1B4A0A844(a1[1], a2[1]))
    {

      sub_1B4A23BDC(v3, v2);
    }
  }
}

void WorkoutMilestonePropertyValue.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  MEMORY[0x1B8C7D290](*v1);
  sub_1B49C2B0C(a1, v3);

  sub_1B4A277A8(a1, v4);
}

uint64_t WorkoutMilestonePropertyValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  sub_1B49C2B0C(v5, v2);
  sub_1B4A277A8(v5, v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE8310@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

BOOL sub_1B4AE831C(uint64_t a1)
{
  if (a1 > 249)
  {
    v5 = __ROR8__(0x1CAC083126E978D5 * a1, 1);
    v6 = 0x10624DD2F1A9FBFLL;
    return v5 < v6;
  }

  result = 1;
  if (a1 != 1 && a1 != 10)
  {
    v3 = __OFSUB__(a1, 25);
    v4 = a1 - 25;
    if (!v3)
    {
      v5 = 0x8F5C28F5C28F5C29 * v4 + 0x51EB851EB851EB8;
      v6 = 0xA3D70A3D70A3D71;
      return v5 < v6;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4AE83B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  sub_1B49C2B0C(v5, v2);
  sub_1B4A277A8(v5, v3);
  return sub_1B4D18EDC();
}

void sub_1B4AE8420(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  MEMORY[0x1B8C7D290](*v1);
  sub_1B49C2B0C(a1, v3);

  sub_1B4A277A8(a1, v4);
}

uint64_t sub_1B4AE847C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v2);
  sub_1B49C2B0C(v6, v3);
  sub_1B4A277A8(v6, v4);
  return sub_1B4D18EDC();
}

void sub_1B4AE84E4(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = a2[2];
    v3 = a1[2];
    if (sub_1B4A0A844(a1[1], a2[1]))
    {

      sub_1B4A23BDC(v3, v2);
    }
  }
}

uint64_t sub_1B4AE8548(uint64_t a1)
{
  *(a1 + 8) = sub_1B4AE8614(&qword_1EB8A9C68, type metadata accessor for WorkoutMilestoneEntry, &protocol conformance descriptor for WorkoutMilestoneEntry);
  result = sub_1B4AE8614(&qword_1EB8A9C70, type metadata accessor for WorkoutMilestoneEntry, &protocol conformance descriptor for WorkoutMilestoneEntry);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4AE8614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4AE865C(uint64_t a1)
{
  result = sub_1B4AE8684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4AE8684()
{
  result = qword_1EB8A9C88;
  if (!qword_1EB8A9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C88);
  }

  return result;
}

unint64_t sub_1B4AE86D8(uint64_t a1)
{
  *(a1 + 8) = sub_1B4AE8708();
  result = sub_1B4AE875C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4AE8708()
{
  result = qword_1EB8A9C90;
  if (!qword_1EB8A9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C90);
  }

  return result;
}

unint64_t sub_1B4AE875C()
{
  result = qword_1EB8A9C98;
  if (!qword_1EB8A9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C98);
  }

  return result;
}

unint64_t sub_1B4AE87B4()
{
  result = qword_1EB8A9CA0;
  if (!qword_1EB8A9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CA0);
  }

  return result;
}

uint64_t sub_1B4AE8830(uint64_t a1)
{
  result = sub_1B4D177CC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocalizedDate(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B4AE88C4(uint64_t a1, int a2)
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

uint64_t sub_1B4AE890C(uint64_t result, int a2, int a3)
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

uint64_t WorkoutDictionaryPropertyValue.init(dictionary:missed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double WorkoutDictionaryPropertyValue.dictionary.getter()
{
  sub_1B4959850();

  return result;
}

uint64_t static WorkoutDictionaryPropertyValue.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v7 = a2[1];
  return sub_1B4D1803C() & (v6 == v7);
}

uint64_t WorkoutDictionaryPropertyValue.hash(into:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + 8);
  sub_1B4D1802C();
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t WorkoutDictionaryPropertyValue.hashValue.getter(void *a1)
{
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  sub_1B4D18E8C();
  WorkoutDictionaryPropertyValue.hash(into:)(v5, a1);
  return sub_1B4D18EDC();
}

double sub_1B4AE8A74()
{
  sub_1B4959850();

  return result;
}

uint64_t sub_1B4AE8AAC(uint64_t a1, void *a2)
{
  sub_1B4D18E8C();
  WorkoutDictionaryPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE8B10(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4AE8B4C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4AE8B88(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4AE8C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B4AE8C88(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_1B4C95ED4(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9CF8, &qword_1B4D2BD88);
  result = swift_arrayDestroy();
  *a4 = v5;
  return result;
}

uint64_t SignificantDistanceDuringWorkoutFact.init(activityType:distanceReference:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

unint64_t sub_1B4AE8D10()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B4AE8D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2;
  if (v5 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D613B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B4AE8E30(uint64_t a1)
{
  v2 = sub_1B4AE9590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AE8E6C(uint64_t a1)
{
  v2 = sub_1B4AE9590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantDistanceDuringWorkoutFact.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9CB8, &unk_1B4D2BB90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AE9590();
  v9 = v8;
  sub_1B4D18EFC();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18D0C();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1B4AE95E4();
    sub_1B4D18D0C();
  }

  return (*(v5 + 8))(v7, v4);
}

void SignificantDistanceDuringWorkoutFact.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9CD0, &qword_1B4D2BBA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AE9590();
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v12[15] = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18C0C();
    v9 = v13;
    v12[13] = 1;
    sub_1B4AE9638();
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    v10 = v12[14];
    *a2 = v9;
    *(a2 + 8) = v10;
    v11 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t _s19FitnessIntelligence36SignificantDistanceDuringWorkoutFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 8);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15 || (v16 = v15, objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1B49DF540();
    if (sub_1B4D187AC())
    {
      goto LABEL_7;
    }

LABEL_9:
    v27 = 0;
    return v27 & 1;
  }

  v18 = v17;
  v30 = v11;
  v19 = v13;
  [v16 coordinate];
  v21 = v20;
  [v18 coordinate];
  if (v21 != v22)
  {

    goto LABEL_9;
  }

  [v16 coordinate];
  v24 = v23;
  [v18 coordinate];
  v26 = v25;

  if (v24 != v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v32 = v12;
  v31 = v14;
  DistanceReference.rawValue.getter();
  DistanceReference.rawValue.getter();
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v27 = sub_1B4D1816C();
  v28 = *(v5 + 8);
  v28(v7, v4);
  v28(v10, v4);
  return v27 & 1;
}

unint64_t sub_1B4AE9590()
{
  result = qword_1EB8A9CC0;
  if (!qword_1EB8A9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CC0);
  }

  return result;
}