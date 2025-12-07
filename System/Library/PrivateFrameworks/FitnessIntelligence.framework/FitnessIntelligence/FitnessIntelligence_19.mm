uint64_t sub_1B4B4051C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE50, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B405BC(uint64_t a1)
{
  v2 = sub_1B4B54918(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B40628(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B406C4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AA870);
  __swift_project_value_buffer(v0, qword_1EB8AA870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutPropertiesQueryBatch";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ringsPropertiesQueryBatch";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "fitnessPlusPropertiesQueryBatch";
  *(v11 + 8) = 31;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4B40950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEC0, &qword_1B4D324E8);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
      v30 = v45;
    }

    else
    {
      sub_1B4975024(v25, &qword_1EB8AAEC0, &qword_1B4D324E8);
      v32 = v40;
      sub_1B4B2C598(v16, v40, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      sub_1B4B2C598(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1B4B54918(&qword_1EB8AAB48, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8AAEC0, &qword_1B4D324E8);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8AAEC0, &qword_1B4D324E8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8AAEC0, &qword_1B4D324E8);
    return sub_1B4975024(v33, &qword_1EB8AAEC0, &qword_1B4D324E8);
  }

  else
  {
    v36 = v41;
    sub_1B4B2C598(v33, v41, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8AAEC0, &qword_1B4D324E8);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    sub_1B4B2C598(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4B40F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEC8, &qword_1B4D324F0);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v25, &qword_1EB8AAEC8, &qword_1B4D324F0);
      v32 = v41;
      sub_1B4B2C598(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
      sub_1B4B2C598(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4B54918(&qword_1EB8AAB60, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8AAEC8, &qword_1B4D324F0);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8AAEC8, &qword_1B4D324F0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8AAEC8, &qword_1B4D324F0);
    return sub_1B4975024(v33, &qword_1EB8AAEC8, &qword_1B4D324F0);
  }

  else
  {
    v36 = v40;
    sub_1B4B2C598(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8AAEC8, &qword_1B4D324F0);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    sub_1B4B2C598(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4B414BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAED0, &qword_1B4D324F8);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v25, &qword_1EB8AAED0, &qword_1B4D324F8);
      v32 = v41;
      sub_1B4B2C598(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
      sub_1B4B2C598(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4B54918(&qword_1EB8AAB78, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8AAED0, &qword_1B4D324F8);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8AAED0, &qword_1B4D324F8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8AAED0, &qword_1B4D324F8);
    return sub_1B4975024(v33, &qword_1EB8AAED0, &qword_1B4D324F8);
  }

  else
  {
    v36 = v40;
    sub_1B4B2C598(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8AAED0, &qword_1B4D324F8);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    sub_1B4B2C598(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryBatch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1B4974FBC(v3, &v14 - v9, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B41E5C(v3, a1, a2, a3);
    }

    else
    {
      sub_1B4B42094(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_1B4B41C28(v3, a1, a2, a3);
  }

  result = sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B41C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
    sub_1B4B54918(&qword_1EB8AAB48, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  __break(1u);
  return result;
}

uint64_t sub_1B4B41E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    sub_1B4B54918(&qword_1EB8AAB60, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  __break(1u);
  return result;
}

uint64_t sub_1B4B42094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
    sub_1B4B54918(&qword_1EB8AAB78, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  __break(1u);
  return result;
}

uint64_t sub_1B4B4237C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE48, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B4241C(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8AAB30, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B42488(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8AAB30, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B42508()
{
  result = MEMORY[0x1B8C7C620](0xD00000000000001CLL, 0x80000001B4D62040);
  qword_1EB8AA888 = 0xD00000000000002DLL;
  qword_1EB8AA890 = 0x80000001B4D61B50;
  return result;
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0), sub_1B4B54918(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B427BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE40, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B4285C(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8AAB48, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B428C8(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8AAB48, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B4295C()
{
  result = MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D62020);
  qword_1EB8AA8B0 = 0xD00000000000002DLL;
  *algn_1EB8AA8B8 = 0x80000001B4D61B50;
  return result;
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0), sub_1B4B54918(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B42C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE38, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B42CB0(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8AAB60, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B42D1C(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8AAB60, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B42DB0()
{
  result = MEMORY[0x1B8C7C620](0xD000000000000020, 0x80000001B4D61FF0);
  qword_1EB8AA8D8 = 0xD00000000000002DLL;
  qword_1EB8AA8E0 = 0x80000001B4D61B50;
  return result;
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0), sub_1B4B54918(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B43068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE30, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B43108(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8AAB78, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B43174(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8AAB78, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B43224()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AA900);
  __swift_project_value_buffer(v0, qword_1EB8AA900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "processingDuration";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "waitingDuration";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "isSnapshotQuery";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_QueryMetrics.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1B4D17C5C();
    }

    else if (result == 2 || result == 1)
    {
      sub_1B4D17CFC();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_QueryMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E2C(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_1B4D17E2C(), !v4))
    {
      if (*(v3 + 16) != 1 || (result = sub_1B4D17DCC(), !v4))
      {
        type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4B43614@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B43688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE28, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B43728(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B43794(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B43830()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AA918);
  __swift_project_value_buffer(v0, qword_1EB8AA918);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "metrics";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4B43ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  sub_1B4B54918(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B43B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  sub_1B4B54918(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B43C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  sub_1B4B54918(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B43D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 20), v7, &qword_1EB8A6668, &qword_1B4D1A658);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6668, &qword_1B4D1A658);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4B54918(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
}

uint64_t sub_1B4B43F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6660, &unk_1B4D2FDB0);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4B54918(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
}

uint64_t sub_1B4B44164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v9 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A6670, &unk_1B4D2FDA0);
  if ((*(v9 + 48))(v7, 1, Metrics) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4B54918(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
}

uint64_t sub_1B4B44440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B444E0(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8A6740, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B4454C(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8A6740, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B445E8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AA930);
  __swift_project_value_buffer(v0, qword_1EB8AA930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "metrics";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4B44874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4B54918(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B44928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  sub_1B4B54918(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B449DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  sub_1B4B54918(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B44AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 20), v7, &qword_1EB8A6680, &unk_1B4D2FD90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6680, &unk_1B4D2FD90);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4B54918(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
}

uint64_t sub_1B4B44D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A6678, &qword_1B4D3CE20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6678, &qword_1B4D3CE20);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4B54918(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
}

uint64_t sub_1B4B44F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v9 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A6670, &unk_1B4D2FDA0);
  if ((*(v9 + 48))(v7, 1, Metrics) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4B54918(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
}

uint64_t sub_1B4B451AC@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_1B4D17BBC();
  v8 = a1[5];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = a1[6];
  v11 = a3(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = a1[7];
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v14 = *(*(Metrics - 8) + 56);

  return v14(a4 + v12, 1, 1, Metrics);
}

uint64_t sub_1B4B45318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE18, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B453B8(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8A6748, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B45424(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8A6748, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B454C0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AA948);
  __swift_project_value_buffer(v0, qword_1EB8AA948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "metrics";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4B4574C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v7 || (v16 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a6(a1, v11, a2, a3);
        break;
      case 2:
        a5(a1, v11, a2, a3);
        break;
      case 1:
        a4(a1, v11, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1B4B4582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  sub_1B4B54918(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B458E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  sub_1B4B54918(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B45994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  sub_1B4B54918(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B45A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    a5(v6, a1, a2, a3);
    a6(v6, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B45B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 20), v7, &qword_1EB8A6658, &qword_1B4D1A650);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6658, &qword_1B4D1A650);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  sub_1B4B54918(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
}

uint64_t sub_1B4B45D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A6650, &unk_1B4D2FDC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6650, &unk_1B4D2FDC0);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  sub_1B4B54918(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
}

uint64_t sub_1B4B45F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v9 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A6670, &unk_1B4D2FDA0);
  if ((*(v9 + 48))(v7, 1, Metrics) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4B54918(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
}

uint64_t sub_1B4B46258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B462F8(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8A6738, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B46364(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8A6738, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B46400()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AA960);
  __swift_project_value_buffer(v0, qword_1EB8AA960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutPropertiesQueryResult";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ringsPropertiesQueryResult";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "fitnessPlusPropertiesQueryResult";
  *(v11 + 8) = 32;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4B4668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEA0, &qword_1B4D324C8);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A6688, &qword_1B4D1A660);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6688, &qword_1B4D1A660);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      v30 = v45;
    }

    else
    {
      sub_1B4975024(v25, &qword_1EB8AAEA0, &qword_1B4D324C8);
      v32 = v40;
      sub_1B4B2C598(v16, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      sub_1B4B2C598(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1B4B54918(&qword_1EB8A6740, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8AAEA0, &qword_1B4D324C8);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8AAEA0, &qword_1B4D324C8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8AAEA0, &qword_1B4D324C8);
    return sub_1B4975024(v33, &qword_1EB8AAEA0, &qword_1B4D324C8);
  }

  else
  {
    v36 = v41;
    sub_1B4B2C598(v33, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8AAEA0, &qword_1B4D324C8);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A6688, &qword_1B4D1A660);
    sub_1B4B2C598(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4B46C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEA8, &qword_1B4D324D0);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A6688, &qword_1B4D1A660);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6688, &qword_1B4D1A660);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v25, &qword_1EB8AAEA8, &qword_1B4D324D0);
      v32 = v41;
      sub_1B4B2C598(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      sub_1B4B2C598(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4B54918(&qword_1EB8A6748, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8AAEA8, &qword_1B4D324D0);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8AAEA8, &qword_1B4D324D0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8AAEA8, &qword_1B4D324D0);
    return sub_1B4975024(v33, &qword_1EB8AAEA8, &qword_1B4D324D0);
  }

  else
  {
    v36 = v40;
    sub_1B4B2C598(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8AAEA8, &qword_1B4D324D0);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A6688, &qword_1B4D1A660);
    sub_1B4B2C598(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4B471F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEB0, &qword_1B4D324D8);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8A6688, &qword_1B4D1A660);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6688, &qword_1B4D1A660);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v25, &qword_1EB8AAEB0, &qword_1B4D324D8);
      v32 = v41;
      sub_1B4B2C598(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      sub_1B4B2C598(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4B54918(&qword_1EB8A6738, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8AAEB0, &qword_1B4D324D8);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8AAEB0, &qword_1B4D324D8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8AAEB0, &qword_1B4D324D8);
    return sub_1B4975024(v33, &qword_1EB8AAEB0, &qword_1B4D324D8);
  }

  else
  {
    v36 = v40;
    sub_1B4B2C598(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8AAEB0, &qword_1B4D324D8);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A6688, &qword_1B4D1A660);
    sub_1B4B2C598(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1B4974FBC(v3, &v14 - v9, &qword_1EB8A6688, &qword_1B4D1A660);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B47B98(v3, a1, a2, a3);
    }

    else
    {
      sub_1B4B47DD0(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_1B4B47964(v3, a1, a2, a3);
  }

  result = sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B47964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6688, &qword_1B4D1A660);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6688, &qword_1B4D1A660);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    sub_1B4B54918(&qword_1EB8A6740, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  __break(1u);
  return result;
}

uint64_t sub_1B4B47B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6688, &qword_1B4D1A660);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6688, &qword_1B4D1A660);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
    sub_1B4B54918(&qword_1EB8A6748, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  __break(1u);
  return result;
}

uint64_t sub_1B4B47DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A6688, &qword_1B4D1A660);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6688, &qword_1B4D1A660);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    sub_1B4B54918(&qword_1EB8A6738, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  __break(1u);
  return result;
}

uint64_t sub_1B4B4806C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B4812C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE08, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B481CC(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8A6690, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B48238(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8A6690, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResult);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B482D4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AA978);
  __swift_project_value_buffer(v0, qword_1EB8AA978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutPropertiesQueryResults";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ringsPropertiesQueryResults";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "fitnessPlusPropertiesQueryResults";
  *(v11 + 8) = 33;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4B48560(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v7 || (v16 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a6(v11, a1, a2, a3);
        break;
      case 2:
        a5(v11, a1, a2, a3);
        break;
      case 1:
        a4(v11, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1B4B48640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAE88, &qword_1B4D324A8);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
      v30 = v45;
    }

    else
    {
      sub_1B4975024(v25, &qword_1EB8AAE88, &qword_1B4D324A8);
      v32 = v40;
      sub_1B4B2C598(v16, v40, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
      sub_1B4B2C598(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1B4B54918(&qword_1EB8AABF0, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8AAE88, &qword_1B4D324A8);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8AAE88, &qword_1B4D324A8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8AAE88, &qword_1B4D324A8);
    return sub_1B4975024(v33, &qword_1EB8AAE88, &qword_1B4D324A8);
  }

  else
  {
    v36 = v41;
    sub_1B4B2C598(v33, v41, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8AAE88, &qword_1B4D324A8);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4B2C598(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4B48BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAE90, &qword_1B4D324B0);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v25, &qword_1EB8AAE90, &qword_1B4D324B0);
      v32 = v41;
      sub_1B4B2C598(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
      sub_1B4B2C598(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4B54918(&qword_1EB8AAC08, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8AAE90, &qword_1B4D324B0);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8AAE90, &qword_1B4D324B0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8AAE90, &qword_1B4D324B0);
    return sub_1B4975024(v33, &qword_1EB8AAE90, &qword_1B4D324B0);
  }

  else
  {
    v36 = v40;
    sub_1B4B2C598(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8AAE90, &qword_1B4D324B0);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4B2C598(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4B491AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAE98, &unk_1B4D324B8);
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
  sub_1B4974FBC(a1, v12, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v25, &qword_1EB8AAE98, &unk_1B4D324B8);
      v32 = v41;
      sub_1B4B2C598(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
      sub_1B4B2C598(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4B54918(&qword_1EB8AAC20, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8AAE98, &unk_1B4D324B8);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8AAE98, &unk_1B4D324B8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8AAE98, &unk_1B4D324B8);
    return sub_1B4975024(v33, &qword_1EB8AAE98, &unk_1B4D324B8);
  }

  else
  {
    v36 = v40;
    sub_1B4B2C598(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8AAE98, &unk_1B4D324B8);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4B2C598(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1B4974FBC(v3, &v14 - v9, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B49B4C(v3, a1, a2, a3);
    }

    else
    {
      sub_1B4B49D84(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_1B4B49918(v3, a1, a2, a3);
  }

  result = sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B49918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    sub_1B4B54918(&qword_1EB8AABF0, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  __break(1u);
  return result;
}

uint64_t sub_1B4B49B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    sub_1B4B54918(&qword_1EB8AAC08, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  __break(1u);
  return result;
}

uint64_t sub_1B4B49D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
    sub_1B4B54918(&qword_1EB8AAC20, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  __break(1u);
  return result;
}

uint64_t sub_1B4B4A06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE00, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B4A10C(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8AABD8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B4A178(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8AABD8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B4A1F8()
{
  result = MEMORY[0x1B8C7C620](0xD00000000000001ELL, 0x80000001B4D61ED0);
  qword_1EB8AA990 = 0xD00000000000002FLL;
  *algn_1EB8AA998 = 0x80000001B4D61CA0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0), sub_1B4B54918(&qword_1EB8A6690, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResult), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B4A438(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AADF8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B4A4D8(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8AABF0, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B4A544(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8AABF0, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B4A5C0()
{
  result = MEMORY[0x1B8C7C620](0xD00000000000001CLL, 0x80000001B4D61EB0);
  qword_1EB8AA9B8 = 0xD00000000000002FLL;
  qword_1EB8AA9C0 = 0x80000001B4D61CA0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0), sub_1B4B54918(&qword_1EB8A6690, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResult), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B4A85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AADF0, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B4A8FC(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8AAC08, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B4A968(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8AAC08, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B4A9E4()
{
  result = MEMORY[0x1B8C7C620](0xD000000000000022, 0x80000001B4D61E80);
  qword_1EB8AA9E0 = 0xD00000000000002FLL;
  *algn_1EB8AA9E8 = 0x80000001B4D61CA0;
  return result;
}

uint64_t sub_1B4B4AA98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B4D1A800;
  v9 = v8 + v7 + v6[14];
  *(v8 + v7) = 1;
  *v9 = a3;
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_1B4D17E7C();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  return sub_1B4D17E8C();
}

uint64_t sub_1B4B4AC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1B4B54918(a5, a6, a7);
      sub_1B4D17D3C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0), sub_1B4B54918(&qword_1EB8A6690, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResult), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B4AE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AADE8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B4AF10(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8AAC20, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B4AF7C(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8AAC20, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B4AFF8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4B4B0C0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AAA08);
  __swift_project_value_buffer(v0, qword_1EB8AAA08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B4D2FD80;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "startCacheIndex";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "endCacheIndex";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "propertyKind";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "propertyValueData";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "workoutDimensions";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "ringsDimensions";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "fitnessPlusDimensions";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "snapshotEngineVersion";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_DatabasePropertyRecord.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_1B4B4C134(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
          sub_1B4D17CBC();
        }
      }

      else if (result == 5)
      {
        sub_1B4B4B5A4(v5, a1, a2, a3);
      }

      else
      {
        sub_1B4B4BB6C(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_1B4D17D1C();
      }

      else
      {
        sub_1B4D17C8C();
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1B4D17CCC();
    }
  }

  return result;
}

uint64_t sub_1B4B4B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 32);
  v44 = a1;
  v42 = v29;
  sub_1B4974FBC(a1 + v29, v12, &qword_1EB8A7D98, &qword_1B4D20278);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7D98, &qword_1B4D20278);
    v31 = v13;
    v32 = v50;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      v32 = v50;
    }

    else
    {
      sub_1B4975024(v25, &qword_1EB8A7CE8, &qword_1B4D201A0);
      v33 = v16;
      v34 = v45;
      sub_1B4B2C598(v33, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4B2C598(v34, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v32 = v50;
      v28(v25, 0, 1, v50);
    }
  }

  v35 = v48;
  sub_1B4B54918(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  v36 = v49;
  sub_1B4D17D4C();
  if (v36)
  {
    return sub_1B4975024(v25, &qword_1EB8A7CE8, &qword_1B4D201A0);
  }

  sub_1B4974FBC(v25, v35, &qword_1EB8A7CE8, &qword_1B4D201A0);
  if ((*(v47 + 48))(v35, 1, v32) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A7CE8, &qword_1B4D201A0);
    return sub_1B4975024(v35, &qword_1EB8A7CE8, &qword_1B4D201A0);
  }

  else
  {
    v38 = v46;
    sub_1B4B2C598(v35, v46, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    if (v30 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A7CE8, &qword_1B4D201A0);
    v39 = v44;
    v40 = v42;
    sub_1B4975024(v44 + v42, &qword_1EB8A7D98, &qword_1B4D20278);
    sub_1B4B2C598(v38, v39 + v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t sub_1B4B4BB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 32);
  v44 = a1;
  v42 = v29;
  sub_1B4974FBC(a1 + v29, v12, &qword_1EB8A7D98, &qword_1B4D20278);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7D98, &qword_1B4D20278);
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v25, &qword_1EB8A8F90, &unk_1B4D32490);
      v32 = v16;
      v33 = v46;
      sub_1B4B2C598(v32, v46, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
      sub_1B4B2C598(v33, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  sub_1B4B54918(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  v36 = v49;
  sub_1B4D17D4C();
  if (v36)
  {
    return sub_1B4975024(v25, &qword_1EB8A8F90, &unk_1B4D32490);
  }

  sub_1B4974FBC(v25, v35, &qword_1EB8A8F90, &unk_1B4D32490);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A8F90, &unk_1B4D32490);
    return sub_1B4975024(v35, &qword_1EB8A8F90, &unk_1B4D32490);
  }

  else
  {
    v38 = v45;
    sub_1B4B2C598(v35, v45, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    if (v30 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A8F90, &unk_1B4D32490);
    v39 = v44;
    v40 = v42;
    sub_1B4975024(v44 + v42, &qword_1EB8A7D98, &qword_1B4D20278);
    sub_1B4B2C598(v38, v39 + v40, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t sub_1B4B4C134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 32);
  v44 = a1;
  v42 = v29;
  sub_1B4974FBC(a1 + v29, v12, &qword_1EB8A7D98, &qword_1B4D20278);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7D98, &qword_1B4D20278);
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v25, &qword_1EB8A7DC8, &qword_1B4D202B8);
      v32 = v16;
      v33 = v46;
      sub_1B4B2C598(v32, v46, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4B2C598(v33, v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  sub_1B4B54918(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  v36 = v49;
  sub_1B4D17D4C();
  if (v36)
  {
    return sub_1B4975024(v25, &qword_1EB8A7DC8, &qword_1B4D202B8);
  }

  sub_1B4974FBC(v25, v35, &qword_1EB8A7DC8, &qword_1B4D202B8);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A7DC8, &qword_1B4D202B8);
    return sub_1B4975024(v35, &qword_1EB8A7DC8, &qword_1B4D202B8);
  }

  else
  {
    v38 = v45;
    sub_1B4B2C598(v35, v45, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    if (v30 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A7DC8, &qword_1B4D202B8);
    v39 = v44;
    v40 = v42;
    sub_1B4975024(v44 + v42, &qword_1EB8A7D98, &qword_1B4D20278);
    sub_1B4B2C598(v38, v39 + v40, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t Apple_Fitness_Intelligence_DatabasePropertyRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  if (*v3)
  {
    result = sub_1B4D17E0C();
    if (v4)
    {
      return result;
    }

    if (!v3[1])
    {
      goto LABEL_7;
    }
  }

  else if (!v3[1])
  {
    goto LABEL_7;
  }

  result = sub_1B4D17E0C();
  if (v4)
  {
    return result;
  }

LABEL_7:
  v13 = v3[3];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_1B4D17E3C(), !v4))
  {
    v15 = v3[4];
    v16 = v3[5];
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_20;
      }

      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
    }

    else
    {
      if (!v17)
      {
        if ((v16 & 0xFF000000000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_19:
        result = sub_1B4D17DEC();
        if (v4)
        {
          return result;
        }

        goto LABEL_20;
      }

      v18 = v15;
      v19 = v15 >> 32;
    }

    if (v18 != v19)
    {
      goto LABEL_19;
    }

LABEL_20:
    v20 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
    sub_1B4974FBC(v5 + *(v20 + 32), v11, &qword_1EB8A7D98, &qword_1B4D20278);
    v21 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
    if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
    {
      goto LABEL_27;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B4B4CBF0(v5, a1, a2, a3);
      }

      else
      {
        sub_1B4B4CE34(v5, a1, a2, a3);
      }
    }

    else
    {
      sub_1B4B4C9B0(v5, a1, a2, a3);
    }

    result = sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    if (!v4)
    {
LABEL_27:
      result = sub_1B4B4D078(v5, a1, a2, a3);
      if (!v4)
      {
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4B4C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  sub_1B4974FBC(a1 + *(v11 + 32), v7, &qword_1EB8A7D98, &qword_1B4D20278);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7D98, &qword_1B4D20278);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    sub_1B4B54918(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  __break(1u);
  return result;
}

uint64_t sub_1B4B4CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  sub_1B4974FBC(a1 + *(v11 + 32), v7, &qword_1EB8A7D98, &qword_1B4D20278);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7D98, &qword_1B4D20278);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    sub_1B4B54918(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  __break(1u);
  return result;
}

uint64_t sub_1B4B4CE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  sub_1B4974FBC(a1 + *(v11 + 32), v7, &qword_1EB8A7D98, &qword_1B4D20278);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7D98, &qword_1B4D20278);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    sub_1B4B54918(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  __break(1u);
  return result;
}

uint64_t sub_1B4B4D078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_1B4D17E0C();
  }

  return result;
}

uint64_t sub_1B4B4D13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = xmmword_1B4D223D0;
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  result = sub_1B4D17BBC();
  v7 = a2 + *(a1 + 40);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_1B4B4D230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AADE0, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DatabasePropertyRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B4D2D0(uint64_t a1)
{
  v2 = sub_1B4B54918(qword_1EDC3B9B8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DatabasePropertyRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B4D33C(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(qword_1EDC3B9B8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DatabasePropertyRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B4D3D8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AAA20);
  __swift_project_value_buffer(v0, qword_1EB8AAA20);
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

uint64_t Apple_Fitness_Intelligence_DatabasePropertyBatch.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
        sub_1B4B54918(qword_1EDC3B9B8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
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

uint64_t Apple_Fitness_Intelligence_DatabasePropertyBatch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0), sub_1B4B54918(qword_1EDC3B9B8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DatabasePropertyRecord), result = sub_1B4D17E5C(), !v4))
      {
        type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4B4D8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AADD8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_DatabasePropertyBatch);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B4D978(uint64_t a1)
{
  v2 = sub_1B4B54918(qword_1EDC3BDB8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_DatabasePropertyBatch);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B4D9E4(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(qword_1EDC3BDB8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_DatabasePropertyBatch);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B4DA80()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AAA38);
  __swift_project_value_buffer(v0, qword_1EB8AAA38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
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
  *v12 = "snapshotPropertiesType";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "snapshotChecksum";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "databaseChecksum";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_SanityTaskMismatch.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        sub_1B4D17CCC();
      }
    }

    else if (result == 3)
    {
      sub_1B4D17D1C();
    }

    else if (result == 4 || result == 5)
    {
      goto LABEL_2;
    }
  }
}

uint64_t Apple_Fitness_Intelligence_SanityTaskMismatch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (!*v4 || (result = sub_1B4D17E0C(), !v5))
  {
    if (!v4[1] || (result = sub_1B4D17E0C(), !v5))
    {
      v7 = v4[3];
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v4[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = sub_1B4D17E3C(), !v5))
      {
        if (!v4[4] || (result = sub_1B4D17E0C(), !v5))
        {
          if (!v4[5] || (result = sub_1B4D17E0C(), !v5))
          {
            type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
            return sub_1B4D17BAC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4B4DF5C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4B54918(a2, a3, a4);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B4DFE4@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B4E060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AADD0, type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SanityTaskMismatch);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B4E100(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EB8AA720, type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SanityTaskMismatch);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B4E16C(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EB8AA720, type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SanityTaskMismatch);

  return sub_1B4D17D9C();
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV06OneOf_deF4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v4 != 1 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 2:
      if (v4 != 2 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 3:
      if (v4 != 3 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 4:
      if (v4 != 4 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 5:
      if (v4 != 5 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 6:
      if (v4 != 6 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 7:
      if (v4 != 7 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 8:
      if (v4 != 8 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 9:
      if (v4 != 9 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 0xA:
      if (v4 != 10 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 0xB:
      if (v4 != 11 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 0xC:
      if (v4 != 12 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 0xD:
      if (v4 != 13 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 0xE:
      if (v4 != 14 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    case 0xF:
      if (v4 != 15 || v2 != v3)
      {
        goto LABEL_50;
      }

      result = 1;
      break;
    default:
      if (*(a2 + 8) || v2 != v3)
      {
LABEL_50:
        result = 0;
      }

      else
      {
        result = 1;
      }

      break;
  }

  return result;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A25PlusPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v60 = *(Metrics - 8);
  v61 = Metrics;
  MEMORY[0x1EEE9AC00](Metrics);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v55 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEF0, &qword_1B4D32518);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v55 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = (&v55 - v11);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEF8, &qword_1B4D32520);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v55 - v12;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v55 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF00, &qword_1B4D32528);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v65 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  v24 = *(v65 + 20);
  v25 = *(v21 + 56);
  v69 = a1;
  sub_1B4974FBC(a1 + v24, v23, &qword_1EB8A6658, &qword_1B4D1A650);
  sub_1B4974FBC(v70 + v24, &v23[v25], &qword_1EB8A6658, &qword_1B4D1A650);
  v26 = *(v14 + 48);
  if (v26(v23, 1, v13) == 1)
  {
    if (v26(&v23[v25], 1, v13) == 1)
    {
      sub_1B4975024(v23, &qword_1EB8A6658, &qword_1B4D1A650);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_1EB8AAF00;
    v28 = &qword_1B4D32528;
LABEL_23:
    v49 = v23;
LABEL_24:
    sub_1B4975024(v49, v27, v28);
    goto LABEL_25;
  }

  sub_1B4974FBC(v23, v19, &qword_1EB8A6658, &qword_1B4D1A650);
  if (v26(&v23[v25], 1, v13) == 1)
  {
    sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v23[v25], v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_b1_A19PlusPropertiesQueryV2eeoiySbAC_ACtFZ_0(v19, v16);
  sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  sub_1B4975024(v23, &qword_1EB8A6658, &qword_1B4D1A650);
  if ((V2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
LABEL_25:
    v44 = 0;
    return v44 & 1;
  }

LABEL_8:
  v30 = v65;
  v31 = *(v65 + 24);
  v32 = *(v64 + 48);
  v23 = v68;
  v33 = v69;
  sub_1B4974FBC(v69 + v31, v68, &qword_1EB8A6650, &unk_1B4D2FDC0);
  v34 = v70;
  sub_1B4974FBC(v70 + v31, &v23[v32], &qword_1EB8A6650, &unk_1B4D2FDC0);
  v35 = v67;
  v36 = *(v66 + 48);
  if (v36(v23, 1, v67) == 1)
  {
    if (v36(&v23[v32], 1, v35) == 1)
    {
      sub_1B4975024(v23, &qword_1EB8A6650, &unk_1B4D2FDC0);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v45 = v63;
  sub_1B4974FBC(v23, v63, &qword_1EB8A6650, &unk_1B4D2FDC0);
  if (v36(&v23[v32], 1, v35) == 1)
  {
    sub_1B4B327BC(v45, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
LABEL_16:
    v27 = &qword_1EB8AAEF8;
    v28 = &qword_1B4D32520;
    goto LABEL_23;
  }

  v46 = &v23[v32];
  v47 = v58;
  sub_1B4B2C598(v46, v58, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  if (*v45 != *v47 || v45[1] != v47[1] || (sub_1B4A0E980(v45[2], v47[2]) & 1) == 0)
  {
    sub_1B4B327BC(v47, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    sub_1B4B327BC(v45, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    v27 = &qword_1EB8A6650;
    v28 = &unk_1B4D2FDC0;
    goto LABEL_23;
  }

  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v48 = sub_1B4D1816C();
  sub_1B4B327BC(v47, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  sub_1B4B327BC(v45, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  sub_1B4975024(v23, &qword_1EB8A6650, &unk_1B4D2FDC0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  v37 = *(v30 + 28);
  v38 = *(v59 + 48);
  v39 = v62;
  sub_1B4974FBC(v33 + v37, v62, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v40 = v34 + v37;
  v41 = v39;
  sub_1B4974FBC(v40, v39 + v38, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v42 = v61;
  v43 = *(v60 + 48);
  if (v43(v39, 1, v61) != 1)
  {
    v51 = v57;
    sub_1B4974FBC(v41, v57, &qword_1EB8A6670, &unk_1B4D2FDA0);
    if (v43(v41 + v38, 1, v42) != 1)
    {
      v52 = v41 + v38;
      v53 = v56;
      sub_1B4B2C598(v52, v56, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      if (*v51 == *v53 && *(v51 + 8) == *(v53 + 8) && *(v51 + 16) == *(v53 + 16))
      {
        sub_1B4D17BCC();
        sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v54 = sub_1B4D1816C();
        sub_1B4B327BC(v53, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        if (v54)
        {
          sub_1B4B327BC(v51, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
          goto LABEL_13;
        }
      }

      else
      {
        sub_1B4B327BC(v53, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      }

      sub_1B4B327BC(v51, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v27 = &qword_1EB8A6670;
      v28 = &unk_1B4D2FDA0;
      v49 = v41;
      goto LABEL_24;
    }

    sub_1B4B327BC(v51, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    goto LABEL_29;
  }

  if (v43(v39 + v38, 1, v42) != 1)
  {
LABEL_29:
    v27 = &qword_1EB8AAEF0;
    v28 = &qword_1B4D32518;
    v49 = v41;
    goto LABEL_24;
  }

LABEL_13:
  sub_1B4975024(v41, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v44 = sub_1B4D1816C();
  return v44 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B27_RingsPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v60 = *(Metrics - 8);
  v61 = Metrics;
  MEMORY[0x1EEE9AC00](Metrics);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v55 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEF0, &qword_1B4D32518);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v55 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = (&v55 - v11);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF08, &unk_1B4D32530);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v55 - v12;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v55 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF10, &unk_1B4D3F9A0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v65 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  v24 = *(v65 + 20);
  v25 = *(v21 + 56);
  v69 = a1;
  sub_1B4974FBC(a1 + v24, v23, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4974FBC(v70 + v24, &v23[v25], &qword_1EB8A6680, &unk_1B4D2FD90);
  v26 = *(v14 + 48);
  if (v26(v23, 1, v13) == 1)
  {
    if (v26(&v23[v25], 1, v13) == 1)
    {
      sub_1B4975024(v23, &qword_1EB8A6680, &unk_1B4D2FD90);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_1EB8AAF10;
    v28 = &unk_1B4D3F9A0;
LABEL_23:
    v49 = v23;
LABEL_24:
    sub_1B4975024(v49, v27, v28);
    goto LABEL_25;
  }

  sub_1B4974FBC(v23, v19, &qword_1EB8A6680, &unk_1B4D2FD90);
  if (v26(&v23[v25], 1, v13) == 1)
  {
    sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v23[v25], v16, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B21_RingsPropertiesQueryV2eeoiySbAC_ACtFZ_0(v19, v16);
  sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4975024(v23, &qword_1EB8A6680, &unk_1B4D2FD90);
  if ((V2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
LABEL_25:
    v44 = 0;
    return v44 & 1;
  }

LABEL_8:
  v30 = v65;
  v31 = *(v65 + 24);
  v32 = *(v64 + 48);
  v23 = v68;
  v33 = v69;
  sub_1B4974FBC(v69 + v31, v68, &qword_1EB8A6678, &qword_1B4D3CE20);
  v34 = v70;
  sub_1B4974FBC(v70 + v31, &v23[v32], &qword_1EB8A6678, &qword_1B4D3CE20);
  v35 = v67;
  v36 = *(v66 + 48);
  if (v36(v23, 1, v67) == 1)
  {
    if (v36(&v23[v32], 1, v35) == 1)
    {
      sub_1B4975024(v23, &qword_1EB8A6678, &qword_1B4D3CE20);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v45 = v63;
  sub_1B4974FBC(v23, v63, &qword_1EB8A6678, &qword_1B4D3CE20);
  if (v36(&v23[v32], 1, v35) == 1)
  {
    sub_1B4B327BC(v45, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
LABEL_16:
    v27 = &qword_1EB8AAF08;
    v28 = &unk_1B4D32530;
    goto LABEL_23;
  }

  v46 = &v23[v32];
  v47 = v58;
  sub_1B4B2C598(v46, v58, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  if (*v45 != *v47 || v45[1] != v47[1] || (sub_1B4A1A2C8(v45[2], v47[2]) & 1) == 0)
  {
    sub_1B4B327BC(v47, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    sub_1B4B327BC(v45, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    v27 = &qword_1EB8A6678;
    v28 = &qword_1B4D3CE20;
    goto LABEL_23;
  }

  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v48 = sub_1B4D1816C();
  sub_1B4B327BC(v47, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4B327BC(v45, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4975024(v23, &qword_1EB8A6678, &qword_1B4D3CE20);
  if ((v48 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  v37 = *(v30 + 28);
  v38 = *(v59 + 48);
  v39 = v62;
  sub_1B4974FBC(v33 + v37, v62, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v40 = v34 + v37;
  v41 = v39;
  sub_1B4974FBC(v40, v39 + v38, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v42 = v61;
  v43 = *(v60 + 48);
  if (v43(v39, 1, v61) != 1)
  {
    v51 = v57;
    sub_1B4974FBC(v41, v57, &qword_1EB8A6670, &unk_1B4D2FDA0);
    if (v43(v41 + v38, 1, v42) != 1)
    {
      v52 = v41 + v38;
      v53 = v56;
      sub_1B4B2C598(v52, v56, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      if (*v51 == *v53 && *(v51 + 8) == *(v53 + 8) && *(v51 + 16) == *(v53 + 16))
      {
        sub_1B4D17BCC();
        sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v54 = sub_1B4D1816C();
        sub_1B4B327BC(v53, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        if (v54)
        {
          sub_1B4B327BC(v51, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
          goto LABEL_13;
        }
      }

      else
      {
        sub_1B4B327BC(v53, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      }

      sub_1B4B327BC(v51, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v27 = &qword_1EB8A6670;
      v28 = &unk_1B4D2FDA0;
      v49 = v41;
      goto LABEL_24;
    }

    sub_1B4B327BC(v51, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    goto LABEL_29;
  }

  if (v43(v39 + v38, 1, v42) != 1)
  {
LABEL_29:
    v27 = &qword_1EB8AAEF0;
    v28 = &qword_1B4D32518;
    v49 = v41;
    goto LABEL_24;
  }

LABEL_13:
  sub_1B4975024(v41, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v44 = sub_1B4D1816C();
  return v44 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B25_PropertyRecordCheckpointV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v2 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_DatabasePropertyRecordV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DA0, &unk_1B4D20280);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_12;
  }

  v15 = v12;
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!sub_1B4BDD628(a1[4], a1[5], a2[4], a2[5]))
  {
    goto LABEL_12;
  }

  v28 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  v16 = *(v28 + 32);
  v17 = *(v15 + 48);
  sub_1B4974FBC(a1 + v16, v14, &qword_1EB8A7D98, &qword_1B4D20278);
  v29 = v17;
  sub_1B4974FBC(a2 + v16, &v14[v17], &qword_1EB8A7D98, &qword_1B4D20278);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_1B4974FBC(v14, v10, &qword_1EB8A7D98, &qword_1B4D20278);
    v19 = v29;
    if (v18(&v14[v29], 1, v4) != 1)
    {
      sub_1B4B2C598(&v14[v19], v7, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      v22 = _s19FitnessIntelligence06Apple_a1_B23_DatabasePropertyRecordV19OneOf_DimensionTypeO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      sub_1B4975024(v14, &qword_1EB8A7D98, &qword_1B4D20278);
      if ((v22 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
LABEL_11:
    sub_1B4975024(v14, &qword_1EB8A7DA0, &unk_1B4D20280);
    goto LABEL_12;
  }

  if (v18(&v14[v29], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1B4975024(v14, &qword_1EB8A7D98, &qword_1B4D20278);
LABEL_15:
  v23 = *(v28 + 40);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (v27)
    {
LABEL_21:
      sub_1B4D17BCC();
      sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_12:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_DatabasePropertyRecordV19OneOf_DimensionTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEE0, &qword_1B4D32508);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v33 - v21;
  v24 = *(v23 + 56);
  sub_1B4B3281C(a1, &v33 - v21, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  sub_1B4B3281C(v34, &v22[v24], type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3281C(v22, v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B4B2C598(&v22[v24], v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
        v26 = static Apple_Fitness_Intelligence_RingsPropertyDimensions.== infix(_:_:)();
        v27 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions;
        sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
        v28 = v16;
LABEL_13:
        sub_1B4B327BC(v28, v27);
        sub_1B4B327BC(v22, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
        return v26 & 1;
      }

      v29 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions;
      v30 = v16;
    }

    else
    {
      sub_1B4B3281C(v22, v13, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        sub_1B4B2C598(&v22[v24], v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
        v26 = _s19FitnessIntelligence06Apple_a1_b1_A22PlusPropertyDimensionsV2eeoiySbAC_ACtFZ_0(v13, v31);
        v27 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions;
        sub_1B4B327BC(v31, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
        v28 = v13;
        goto LABEL_13;
      }

      v29 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions;
      v30 = v13;
    }
  }

  else
  {
    sub_1B4B3281C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(&v22[v24], v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v26 = static Apple_Fitness_Intelligence_WorkoutPropertyDimensions.== infix(_:_:)(v19, v10);
      v27 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions;
      sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions;
    v30 = v19;
  }

  sub_1B4B327BC(v30, v29);
  sub_1B4975024(v22, &qword_1EB8AAEE0, &qword_1B4D32508);
  v26 = 0;
  return v26 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B22_DatabasePropertyBatchV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1B4A14B88(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch(0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B21_SnapshotQueryResultsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAE80, &qword_1B4D324A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B4974FBC(a1, &v20 - v12, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  sub_1B4974FBC(a2, &v13[v15], &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8AAA58, &unk_1B4D2FDF0);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults(0);
      sub_1B4D17BCC();
      sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8AAE80, &qword_1B4D324A0);
    goto LABEL_7;
  }

  sub_1B4B2C598(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  ResultsV06OneOf_eF0O2eeoiySbAE_AEtFZ_0 = _s19FitnessIntelligence06Apple_a1_B21_SnapshotQueryResultsV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  sub_1B4975024(v13, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  if (ResultsV06OneOf_eF0O2eeoiySbAE_AEtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B21_SnapshotQueryResultsV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v37 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v35 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v35 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEE8, &qword_1B4D32510);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  v21 = *(v20 + 56);
  sub_1B4B3281C(a1, &v35 - v18, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  sub_1B4B3281C(v40, &v19[v21], type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3281C(v19, v13, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v38;
        sub_1B4B2C598(&v19[v21], v38, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
        if (sub_1B4A15444(*v13, *v23))
        {
          sub_1B4D17BCC();
          sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v24 = sub_1B4D1816C();
          sub_1B4B327BC(v23, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
          if (v24)
          {
            v25 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults;
            v26 = v13;
LABEL_19:
            sub_1B4B327BC(v26, v25);
            sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
            return 1;
          }
        }

        else
        {
          sub_1B4B327BC(v23, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
        }

        v34 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults;
        v33 = v13;
        goto LABEL_25;
      }

      v27 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults;
      v28 = v13;
    }

    else
    {
      sub_1B4B3281C(v19, v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v29 = v39;
        sub_1B4B2C598(&v19[v21], v39, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
        if (sub_1B4A15444(*v10, *v29))
        {
          sub_1B4D17BCC();
          sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          if (sub_1B4D1816C())
          {
            sub_1B4B327BC(v29, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
            v26 = v10;
            v25 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults;
            goto LABEL_19;
          }
        }

        sub_1B4B327BC(v29, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
        v33 = v10;
        v34 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults;
        goto LABEL_25;
      }

      v27 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults;
      v28 = v10;
    }
  }

  else
  {
    sub_1B4B3281C(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
    if (!swift_getEnumCaseMultiPayload())
    {
      v30 = v7;
      sub_1B4B2C598(&v19[v21], v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
      if (sub_1B4A15444(*v16, *v7))
      {
        sub_1B4D17BCC();
        sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v31 = sub_1B4D1816C();
        sub_1B4B327BC(v30, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
        if (v31)
        {
          v25 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults;
          v26 = v16;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
      }

      v34 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults;
      v33 = v16;
LABEL_25:
      sub_1B4B327BC(v33, v34);
      sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
      return 0;
    }

    v27 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults;
    v28 = v16;
  }

  sub_1B4B327BC(v28, v27);
  sub_1B4975024(v19, &qword_1EB8AAEE8, &qword_1B4D32510);
  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_SnapshotQueryResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DA8, &unk_1B4D20290);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B4974FBC(a1, &v20 - v12, &qword_1EB8A6688, &qword_1B4D1A660);
  sub_1B4974FBC(a2, &v13[v15], &qword_1EB8A6688, &qword_1B4D1A660);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A6688, &qword_1B4D1A660);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);
      sub_1B4D17BCC();
      sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A6688, &qword_1B4D1A660);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8A7DA8, &unk_1B4D20290);
    goto LABEL_7;
  }

  sub_1B4B2C598(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  ResultV06OneOf_eF0O2eeoiySbAE_AEtFZ_0 = _s19FitnessIntelligence06Apple_a1_B20_SnapshotQueryResultV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  sub_1B4975024(v13, &qword_1EB8A6688, &qword_1B4D1A660);
  if (ResultV06OneOf_eF0O2eeoiySbAE_AEtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B29_WorkoutPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v60 = *(Metrics - 8);
  v61 = Metrics;
  MEMORY[0x1EEE9AC00](Metrics);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v55 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEF0, &qword_1B4D32518);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v55 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = (&v55 - v11);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF18, &qword_1B4D32540);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v55 - v12;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v55 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF20, &qword_1B4D32548);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v65 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  v24 = *(v65 + 20);
  v25 = *(v21 + 56);
  v69 = a1;
  sub_1B4974FBC(a1 + v24, v23, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4974FBC(v70 + v24, &v23[v25], &qword_1EB8A6668, &qword_1B4D1A658);
  v26 = *(v14 + 48);
  if (v26(v23, 1, v13) == 1)
  {
    if (v26(&v23[v25], 1, v13) == 1)
    {
      sub_1B4975024(v23, &qword_1EB8A6668, &qword_1B4D1A658);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_1EB8AAF20;
    v28 = &qword_1B4D32548;
LABEL_23:
    v49 = v23;
LABEL_24:
    sub_1B4975024(v49, v27, v28);
    goto LABEL_25;
  }

  sub_1B4974FBC(v23, v19, &qword_1EB8A6668, &qword_1B4D1A658);
  if (v26(&v23[v25], 1, v13) == 1)
  {
    sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v23[v25], v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B23_WorkoutPropertiesQueryV2eeoiySbAC_ACtFZ_0(v19, v16);
  sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4975024(v23, &qword_1EB8A6668, &qword_1B4D1A658);
  if ((V2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
LABEL_25:
    v44 = 0;
    return v44 & 1;
  }

LABEL_8:
  v30 = v65;
  v31 = *(v65 + 24);
  v32 = *(v64 + 48);
  v23 = v68;
  v33 = v69;
  sub_1B4974FBC(v69 + v31, v68, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v34 = v70;
  sub_1B4974FBC(v70 + v31, &v23[v32], &qword_1EB8A6660, &unk_1B4D2FDB0);
  v35 = v67;
  v36 = *(v66 + 48);
  if (v36(v23, 1, v67) == 1)
  {
    if (v36(&v23[v32], 1, v35) == 1)
    {
      sub_1B4975024(v23, &qword_1EB8A6660, &unk_1B4D2FDB0);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v45 = v63;
  sub_1B4974FBC(v23, v63, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if (v36(&v23[v32], 1, v35) == 1)
  {
    sub_1B4B327BC(v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
LABEL_16:
    v27 = &qword_1EB8AAF18;
    v28 = &qword_1B4D32540;
    goto LABEL_23;
  }

  v46 = &v23[v32];
  v47 = v58;
  sub_1B4B2C598(v46, v58, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  if (*v45 != *v47 || v45[1] != v47[1] || (sub_1B4A185B4(v45[2], v47[2]) & 1) == 0)
  {
    sub_1B4B327BC(v47, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    sub_1B4B327BC(v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    v27 = &qword_1EB8A6660;
    v28 = &unk_1B4D2FDB0;
    goto LABEL_23;
  }

  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v48 = sub_1B4D1816C();
  sub_1B4B327BC(v47, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4B327BC(v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4975024(v23, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  v37 = *(v30 + 28);
  v38 = *(v59 + 48);
  v39 = v62;
  sub_1B4974FBC(v33 + v37, v62, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v40 = v34 + v37;
  v41 = v39;
  sub_1B4974FBC(v40, v39 + v38, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v42 = v61;
  v43 = *(v60 + 48);
  if (v43(v39, 1, v61) != 1)
  {
    v51 = v57;
    sub_1B4974FBC(v41, v57, &qword_1EB8A6670, &unk_1B4D2FDA0);
    if (v43(v41 + v38, 1, v42) != 1)
    {
      v52 = v41 + v38;
      v53 = v56;
      sub_1B4B2C598(v52, v56, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      if (*v51 == *v53 && *(v51 + 8) == *(v53 + 8) && *(v51 + 16) == *(v53 + 16))
      {
        sub_1B4D17BCC();
        sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v54 = sub_1B4D1816C();
        sub_1B4B327BC(v53, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        if (v54)
        {
          sub_1B4B327BC(v51, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
          goto LABEL_13;
        }
      }

      else
      {
        sub_1B4B327BC(v53, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      }

      sub_1B4B327BC(v51, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v27 = &qword_1EB8A6670;
      v28 = &unk_1B4D2FDA0;
      v49 = v41;
      goto LABEL_24;
    }

    sub_1B4B327BC(v51, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    goto LABEL_29;
  }

  if (v43(v39 + v38, 1, v42) != 1)
  {
LABEL_29:
    v27 = &qword_1EB8AAEF0;
    v28 = &qword_1B4D32518;
    v49 = v41;
    goto LABEL_24;
  }

LABEL_13:
  sub_1B4975024(v41, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v44 = sub_1B4D1816C();
  return v44 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_SnapshotQueryResultV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF28, &qword_1B4D32550);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v33 - v21;
  v24 = *(v23 + 56);
  sub_1B4B3281C(a1, &v33 - v21, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  sub_1B4B3281C(v34, &v22[v24], type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3281C(v22, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B4B2C598(&v22[v24], v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        ResultV2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B27_RingsPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(v16, v7);
        v27 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult;
        sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        v28 = v16;
LABEL_13:
        sub_1B4B327BC(v28, v27);
        sub_1B4B327BC(v22, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
        return ResultV2eeoiySbAC_ACtFZ_0 & 1;
      }

      v29 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult;
      v30 = v16;
    }

    else
    {
      sub_1B4B3281C(v22, v13, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        sub_1B4B2C598(&v22[v24], v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
        ResultV2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_b1_A25PlusPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(v13, v31);
        v27 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult;
        sub_1B4B327BC(v31, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
        v28 = v13;
        goto LABEL_13;
      }

      v29 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult;
      v30 = v13;
    }
  }

  else
  {
    sub_1B4B3281C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(&v22[v24], v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      ResultV2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B29_WorkoutPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(v19, v10);
      v27 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult;
      sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult;
    v30 = v19;
  }

  sub_1B4B327BC(v30, v29);
  sub_1B4975024(v22, &qword_1EB8AAF28, &qword_1B4D32550);
  ResultV2eeoiySbAC_ACtFZ_0 = 0;
  return ResultV2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B19_SnapshotQueryBatchV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEB8, &qword_1B4D324E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1B4974FBC(a1, &v20 - v12, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  sub_1B4974FBC(a2, &v13[v15], &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8AAA50, &unk_1B4D2FDE0);
LABEL_9:
      type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch(0);
      sub_1B4D17BCC();
      sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1B4D1816C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
LABEL_6:
    sub_1B4975024(v13, &qword_1EB8AAEB8, &qword_1B4D324E0);
    goto LABEL_7;
  }

  sub_1B4B2C598(&v13[v15], v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  BatchV06OneOf_eF0O2eeoiySbAE_AEtFZ_0 = _s19FitnessIntelligence06Apple_a1_B19_SnapshotQueryBatchV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  sub_1B4975024(v13, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  if (BatchV06OneOf_eF0O2eeoiySbAE_AEtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A19PlusPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v48 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE0, &qword_1B4D202D0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v39 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE8, &qword_1B4D202D8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v19 = *(v43 + 28);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_1B4974FBC(a1 + v19, v18, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v21 = v48;
  sub_1B4974FBC(v48 + v19, &v18[v20], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_1B4975024(v18, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      goto LABEL_8;
    }

LABEL_6:
    v23 = &qword_1EB8A7DE8;
    v24 = &qword_1B4D202D8;
    v25 = v18;
LABEL_14:
    sub_1B4975024(v25, v23, v24);
    goto LABEL_15;
  }

  sub_1B4974FBC(v18, v14, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_1B4B327BC(v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v18[v20], v11, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v26 = _s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4B327BC(v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4975024(v18, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if ((v26 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v27 = *(v43 + 32);
  v28 = *(v42 + 48);
  v30 = v46;
  v29 = v47;
  sub_1B4974FBC(v47 + v27, v46, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  sub_1B4974FBC(v21 + v27, v30 + v28, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    sub_1B4974FBC(v30, v41, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    if (v32(v30 + v28, 1, v31) != 1)
    {
      v36 = v30 + v28;
      v37 = v40;
      sub_1B4B2C598(v36, v40, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
      v38 = _s19FitnessIntelligence06Apple_a1_b1_A29PlusPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v33, v37);
      sub_1B4B327BC(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
      sub_1B4B327BC(v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
      sub_1B4975024(v30, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_1B4B327BC(v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    goto LABEL_13;
  }

  if (v32(v30 + v28, 1, v31) != 1)
  {
LABEL_13:
    v23 = &qword_1EB8A7DE0;
    v24 = &qword_1B4D202D0;
    v25 = v30;
    goto LABEL_14;
  }

  sub_1B4975024(v30, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
LABEL_18:
  if (sub_1B4A0C158(*v29, *v21) & 1) != 0 && (sub_1B4A0C158(v29[1], v21[1]))
  {
    sub_1B4D17BCC();
    sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v34 = sub_1B4D1816C();
    return v34 & 1;
  }

LABEL_15:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B19_SnapshotQueryBatchV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v37 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v35 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v35 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF30, &qword_1B4D32558);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  v21 = *(v20 + 56);
  sub_1B4B3281C(a1, &v35 - v18, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  sub_1B4B3281C(v40, &v19[v21], type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3281C(v19, v13, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v38;
        sub_1B4B2C598(&v19[v21], v38, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
        if (sub_1B4A18560(*v13, *v23))
        {
          sub_1B4D17BCC();
          sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v24 = sub_1B4D1816C();
          sub_1B4B327BC(v23, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
          if (v24)
          {
            v25 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch;
            v26 = v13;
LABEL_19:
            sub_1B4B327BC(v26, v25);
            sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
            return 1;
          }
        }

        else
        {
          sub_1B4B327BC(v23, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
        }

        v34 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch;
        v33 = v13;
        goto LABEL_25;
      }

      v27 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch;
      v28 = v13;
    }

    else
    {
      sub_1B4B3281C(v19, v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v29 = v39;
        sub_1B4B2C598(&v19[v21], v39, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
        if (sub_1B4A16B30(*v10, *v29))
        {
          sub_1B4D17BCC();
          sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          if (sub_1B4D1816C())
          {
            sub_1B4B327BC(v29, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
            v26 = v10;
            v25 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch;
            goto LABEL_19;
          }
        }

        sub_1B4B327BC(v29, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
        v33 = v10;
        v34 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch;
        goto LABEL_25;
      }

      v27 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch;
      v28 = v10;
    }
  }

  else
  {
    sub_1B4B3281C(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
    if (!swift_getEnumCaseMultiPayload())
    {
      v30 = v7;
      sub_1B4B2C598(&v19[v21], v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      if (sub_1B4A177EC(*v16, *v7))
      {
        sub_1B4D17BCC();
        sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v31 = sub_1B4D1816C();
        sub_1B4B327BC(v30, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
        if (v31)
        {
          v25 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch;
          v26 = v16;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      }

      v34 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch;
      v33 = v16;
LABEL_25:
      sub_1B4B327BC(v33, v34);
      sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
      return 0;
    }

    v27 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch;
    v28 = v16;
  }

  sub_1B4B327BC(v28, v27);
  sub_1B4975024(v19, &qword_1EB8AAF30, &qword_1B4D32558);
  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B21_RingsPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v46 = a2;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v38 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE0, &qword_1B4D1FE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = (&v37 - v5);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF38, &unk_1B4D32560);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v37 - v6;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE8, &qword_1B4D202D8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  v42 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v18 = *(v42 + 28);
  v19 = *(v15 + 56);
  v45 = a1;
  sub_1B4974FBC(a1 + v18, v17, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4974FBC(v46 + v18, &v17[v19], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
      sub_1B4975024(v17, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      goto LABEL_8;
    }

LABEL_6:
    v21 = &qword_1EB8A7DE8;
    v22 = &qword_1B4D202D8;
    v23 = v17;
LABEL_24:
    sub_1B4975024(v23, v21, v22);
    goto LABEL_25;
  }

  sub_1B4974FBC(v17, v13, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if (v20(&v17[v19], 1, v7) == 1)
  {
    sub_1B4B327BC(v13, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v17[v19], v10, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v24 = _s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV2eeoiySbAC_ACtFZ_0(v13, v10);
  sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4B327BC(v13, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4975024(v17, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if ((v24 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v25 = *(v42 + 32);
  v26 = *(v40 + 48);
  v28 = v44;
  v27 = v45;
  sub_1B4974FBC(v45 + v25, v44, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  v29 = v46;
  sub_1B4974FBC(v46 + v25, v28 + v26, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  v30 = *(v41 + 48);
  v31 = v43;
  if (v30(v28, 1, v43) != 1)
  {
    v33 = v39;
    sub_1B4974FBC(v28, v39, &qword_1EB8A7BE0, &qword_1B4D1FE90);
    if (v30(v28 + v26, 1, v31) == 1)
    {
      sub_1B4B327BC(v33, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
      goto LABEL_16;
    }

    v34 = v38;
    sub_1B4B2C598(v28 + v26, v38, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    if ((sub_1B4A0C158(*v33, *v34) & 1) == 0 || (sub_1B4A0C158(v33[1], v34[1]) & 1) == 0 || (sub_1B4A15970(v33[2], v34[2]) & 1) == 0)
    {
      sub_1B4B327BC(v34, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
      sub_1B4B327BC(v33, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
      v21 = &qword_1EB8A7BE0;
      v22 = &qword_1B4D1FE90;
      goto LABEL_23;
    }

    sub_1B4D17BCC();
    sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v35 = sub_1B4D1816C();
    sub_1B4B327BC(v34, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    sub_1B4B327BC(v33, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    sub_1B4975024(v28, &qword_1EB8A7BE0, &qword_1B4D1FE90);
    if (v35)
    {
      goto LABEL_11;
    }

LABEL_25:
    v32 = 0;
    return v32 & 1;
  }

  if (v30(v28 + v26, 1, v31) != 1)
  {
LABEL_16:
    v21 = &qword_1EB8AAF38;
    v22 = &unk_1B4D32560;
LABEL_23:
    v23 = v28;
    goto LABEL_24;
  }

  sub_1B4975024(v28, &qword_1EB8A7BE0, &qword_1B4D1FE90);
LABEL_11:
  if ((sub_1B4A0C158(*v27, *v29) & 1) == 0 || (sub_1B4A0C158(v27[1], v29[1]) & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v32 = sub_1B4D1816C();
  return v32 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B19_SanityTaskMismatchV2eeoiySbAC_ACtFZ_0(void *a1, void *a2, double a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v4 = a1;
    v5 = a2;
    v6 = sub_1B4D18DCC();
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B13_QueryMetricsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B10_QueryPlanV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAED8, &qword_1B4D32500);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  if ((sub_1B4A1A80C(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  v15 = a1;
  v16 = a2;
  v23[0] = Plan;
  v23[1] = v15;
  v17 = *(Plan + 20);
  v18 = *(v11 + 48);
  sub_1B4974FBC(v15 + v17, v13, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  sub_1B4974FBC(v16 + v17, &v13[v18], &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A81E0, &unk_1B4D2FDD0);
LABEL_11:
      sub_1B4D17BCC();
      sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
LABEL_7:
    sub_1B4975024(v13, &qword_1EB8AAED8, &qword_1B4D32500);
    goto LABEL_8;
  }

  sub_1B4B2C598(&v13[v18], v7, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  PlanV06OneOf_D4TypeO2eeoiySbAE_AEtFZ_0 = _s19FitnessIntelligence06Apple_a1_B10_QueryPlanV06OneOf_D4TypeO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  sub_1B4975024(v13, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  if (PlanV06OneOf_D4TypeO2eeoiySbAE_AEtFZ_0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v9 = *a1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  if (v3 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }
  }

  else
  {
    v7 = v2;
    v8 = v3;
    if (v5 == 255 || (_s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV06OneOf_deF4TypeO2eeoiySbAE_AEtFZ_0(&v7, &v11) & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_WorkoutPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v48 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF0, &qword_1B4D202E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF8, &qword_1B4D202E8);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v39 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE8, &qword_1B4D202D8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v19 = *(v43 + 28);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_1B4974FBC(a1 + v19, v18, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v21 = v48;
  sub_1B4974FBC(v48 + v19, &v18[v20], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_1B4975024(v18, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      goto LABEL_8;
    }

LABEL_6:
    v23 = &qword_1EB8A7DE8;
    v24 = &qword_1B4D202D8;
    v25 = v18;
LABEL_14:
    sub_1B4975024(v25, v23, v24);
    goto LABEL_15;
  }

  sub_1B4974FBC(v18, v14, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_1B4B327BC(v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v18[v20], v11, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v26 = _s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4B327BC(v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4975024(v18, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if ((v26 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v27 = *(v43 + 32);
  v28 = *(v42 + 48);
  v30 = v46;
  v29 = v47;
  sub_1B4974FBC(v47 + v27, v46, &qword_1EB8A7DF0, &qword_1B4D202E0);
  sub_1B4974FBC(v21 + v27, v30 + v28, &qword_1EB8A7DF0, &qword_1B4D202E0);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    sub_1B4974FBC(v30, v41, &qword_1EB8A7DF0, &qword_1B4D202E0);
    if (v32(v30 + v28, 1, v31) != 1)
    {
      v36 = v30 + v28;
      v37 = v40;
      sub_1B4B2C598(v36, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      v38 = _s19FitnessIntelligence06Apple_a1_B33_WorkoutPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v33, v37);
      sub_1B4B327BC(v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      sub_1B4B327BC(v33, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      sub_1B4975024(v30, &qword_1EB8A7DF0, &qword_1B4D202E0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_1B4B327BC(v33, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    goto LABEL_13;
  }

  if (v32(v30 + v28, 1, v31) != 1)
  {
LABEL_13:
    v23 = &qword_1EB8A7DF8;
    v24 = &qword_1B4D202E8;
    v25 = v30;
    goto LABEL_14;
  }

  sub_1B4975024(v30, &qword_1EB8A7DF0, &qword_1B4D202E0);
LABEL_18:
  if (sub_1B4A0C158(*v29, *v21) & 1) != 0 && (sub_1B4A0C158(v29[1], v21[1]))
  {
    sub_1B4D17BCC();
    sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v34 = sub_1B4D1816C();
    return v34 & 1;
  }

LABEL_15:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B10_QueryPlanV06OneOf_D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v33 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v33 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF40, &unk_1B4D32570);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v33 - v21;
  v24 = *(v23 + 56);
  sub_1B4B3281C(a1, &v33 - v21, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  sub_1B4B3281C(v34, &v22[v24], type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3281C(v22, v16, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B4B2C598(&v22[v24], v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B21_RingsPropertiesQueryV2eeoiySbAC_ACtFZ_0(v16, v7);
        v27 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery;
        sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v28 = v16;
LABEL_13:
        sub_1B4B327BC(v28, v27);
        sub_1B4B327BC(v22, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
        return V2eeoiySbAC_ACtFZ_0 & 1;
      }

      v29 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery;
      v30 = v16;
    }

    else
    {
      sub_1B4B3281C(v22, v13, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        sub_1B4B2C598(&v22[v24], v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_b1_A19PlusPropertiesQueryV2eeoiySbAC_ACtFZ_0(v13, v31);
        v27 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery;
        sub_1B4B327BC(v31, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        v28 = v13;
        goto LABEL_13;
      }

      v29 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery;
      v30 = v13;
    }
  }

  else
  {
    sub_1B4B3281C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(&v22[v24], v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B23_WorkoutPropertiesQueryV2eeoiySbAC_ACtFZ_0(v19, v10);
      v27 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery;
      sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery;
    v30 = v19;
  }

  sub_1B4B327BC(v30, v29);
  sub_1B4975024(v22, &qword_1EB8AAF40, &unk_1B4D32570);
  V2eeoiySbAC_ACtFZ_0 = 0;
  return V2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t sub_1B4B54918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B4B56284(uint64_t a1)
{
  sub_1B4B56380(319, &qword_1EDC37960, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4B56380(319, qword_1EDC3CAD0, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType, MEMORY[0x1E69E6720]);
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

void sub_1B4B56380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for Apple_Fitness_Intelligence_DateRangeDescriptor.OneOf_DateRangeDescriptorType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 9))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0xF)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Apple_Fitness_Intelligence_DateRangeDescriptor.OneOf_DateRangeDescriptorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 8) = 0;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_155Tm(char *a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  v12 = sub_1B4D17BCC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a3[6];
LABEL_9:
    v17 = *(v14 + 48);

    return v17(&a1[v15], a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_9;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[8]];

  return v19(v20, a2, v18);
}

char *__swift_store_extra_inhabitant_index_156Tm(char *result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v12 = sub_1B4D17BCC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a4[6];
LABEL_7:
    v17 = *(v14 + 56);

    return v17(&v7[v15], a2, a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v19 = *(*(v18 - 8) + 56);
  v20 = &v7[a4[8]];

  return v19(v20, a2, a2, v18);
}

void sub_1B4B56934(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B4B57768(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v7 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v8 <= 0x3F)
    {
      sub_1B4B56380(319, qword_1EDC3C220, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor, MEMORY[0x1E69E6720]);
      if (v9 <= 0x3F)
      {
        sub_1B4B56380(319, a4, a5, MEMORY[0x1E69E6720]);
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B4B56B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4B56D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1B4D17BCC();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_236Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = sub_1B4D17BCC();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v16 = v14;
    v17 = *(v15 + 48);
    v18 = a1;
LABEL_8:

    return v17(v18, a2, v16);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v16 = v19;
    v20 = *(v19 - 8);
    v21 = a3[5];
LABEL_7:
    v17 = *(v20 + 48);
    v18 = a1 + v21;
    goto LABEL_8;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v16 = v22;
    v20 = *(v22 - 8);
    v21 = a3[6];
    goto LABEL_7;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v25 = *(*(v24 - 8) + 48);
  v26 = a1 + a3[7];

  return v25(v26, a2, v24);
}

uint64_t __swift_store_extra_inhabitant_index_237Tm(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = sub_1B4D17BCC();
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a3)
  {
    v18 = v16;
    v19 = *(v17 + 56);
    v20 = a1;
LABEL_8:

    return v19(v20, a2, a2, v18);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v18 = v21;
    v22 = *(v21 - 8);
    v23 = a4[5];
LABEL_7:
    v19 = *(v22 + 56);
    v20 = a1 + v23;
    goto LABEL_8;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v18 = v24;
    v22 = *(v24 - 8);
    v23 = a4[6];
    goto LABEL_7;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v27 = *(*(v26 - 8) + 56);
  v28 = a1 + a4[7];

  return v27(v28, a2, a2, v26);
}

void sub_1B4B57284(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1B4D17BCC();
  if (v11 <= 0x3F)
  {
    sub_1B4B56380(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v12 <= 0x3F)
    {
      sub_1B4B56380(319, a6, a7, MEMORY[0x1E69E6720]);
      if (v13 <= 0x3F)
      {
        sub_1B4B56380(319, &qword_1EB8AACF0, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, MEMORY[0x1E69E6720]);
        if (v14 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B4B57570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
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

void sub_1B4B57654(uint64_t a1)
{
  sub_1B4B56380(319, qword_1EDC3BA30, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      sub_1B4B57768(319, &qword_1EDC37890, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4B57768(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B4B57820(uint64_t a1)
{
  sub_1B4B56380(319, &qword_1EDC37968, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4B5790C(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4B57AB8()
{
  result = qword_1EB8AAF48;
  if (!qword_1EB8AAF48)
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF48);
  }

  return result;
}

unint64_t sub_1B4B57B14()
{
  result = qword_1EB8AAF50;
  if (!qword_1EB8AAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF50);
  }

  return result;
}

uint64_t sub_1B4B57B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B57C0C, 0, 0);
}

uint64_t sub_1B4B57C0C()
{
  v1 = v0[6];
  sub_1B4B58794(v0[4], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B49BF4D4;
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  return sub_1B4B933AC(v7, v6, v4, v5);
}

unint64_t sub_1B4B57D1C(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor(0);
  v99 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v94 = v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v95 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v80 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v80 - v13;
  MEMORY[0x1EEE9AC00](v15);
  Descriptor = v80 - v16;
  v98 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v98);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B4D1777C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v100 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WorkoutState(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B58794(a1, v24, type metadata accessor for WorkoutState);
  v25 = sub_1B4CAC70C(v24);
  v26 = *(v25 + 2);
  v27 = 32;
  while (v26)
  {
    v28 = *&v25[v27];
    v27 += 8;
    --v26;
    if (v28 == 1)
    {
      v92 = v11;
      v88 = v4;

      v29 = *(v22 + 36);
      v87 = v20;
      v83 = v14;
      v30 = *(v20 + 16);
      v96 = v2;
      v31 = v100;
      v30(v100, &v24[v29], v19);
      v30(v18, v31, v19);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1B4D1A800;
      v33 = *&v24[*(v22 + 24)];
      sub_1B49BFEC0(v24, type metadata accessor for WorkoutState);
      v34 = [v33 effectiveTypeIdentifier];

      *(v32 + 32) = v34;
      v35 = v98;
      v36 = MEMORY[0x1E69E7CC0];
      v37 = &v18[*(v98 + 20)];
      *v37 = MEMORY[0x1E69E7CC0];
      *(v37 + 1) = v36;
      *(v37 + 2) = v36;
      *(v37 + 3) = v32;
      *(v37 + 4) = v36;
      *(v37 + 5) = v36;
      *&v18[*(v35 + 24)] = &unk_1F2CB9718;
      *&v18[*(v35 + 28)] = &unk_1F2CB9740;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF58, &qword_1B4D325E8);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF60, &qword_1B4D325F0);
      v38 = (*(*(v91 - 8) + 80) + 32) & ~*(*(v91 - 8) + 80);
      v81 = *(*(v91 - 8) + 72);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1B4D1AA70;
      v85 = v20 + 16;
      v86 = v39;
      v90 = v39 + v38;
      *(v39 + v38) = 2;
      v40 = v96;
      v41 = Descriptor;
      v93 = v19;
      v84 = v30;
      v30(Descriptor, v31, v19);
      v42 = v83;
      swift_storeEnumTagMultiPayload();
      v43 = v99;
      v44 = *(v99 + 56);
      v80[1] = v99 + 56;
      v80[0] = v44;
      v44(v41, 0, 1, v40);
      sub_1B49BFDE8(v41, v42);
      v45 = *(v43 + 48);
      v46 = v45(v42, 1, v40);
      v89 = v18;
      v99 = v43 + 48;
      v82 = v45;
      if (v46 == 1)
      {
        v47 = v94;
        sub_1B4B58794(v18, v94, type metadata accessor for DateRangeDescriptor);
        if (v45(v42, 1, v40) != 1)
        {
          sub_1B4975024(v42, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v47 = v94;
        sub_1B4993450(v42, v94);
      }

      v54 = v90;
      v55 = v90 + *(v91 + 48);
      v56 = *v37;
      v57 = *(v37 + 1);
      v58 = *(v37 + 2);
      v59 = *(v37 + 3);
      v60 = *(v37 + 4);
      v61 = *(v37 + 5);
      sub_1B4B58794(v47, v55, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v47, type metadata accessor for DateRangeDescriptor);
      v62 = v98;
      v63 = (v55 + *(v98 + 20));
      *v63 = v56;
      v63[1] = v57;
      v63[2] = v58;
      v63[3] = v59;
      v63[4] = v60;
      v63[5] = v61;
      *(v55 + *(v62 + 24)) = &unk_1F2CB9718;
      *(v55 + *(v62 + 28)) = &unk_1F2CB9740;
      sub_1B4975024(Descriptor, &qword_1EB8A67A8, &qword_1B4D1E060);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      swift_storeEnumTagMultiPayload();
      v64 = v54 + v81;
      *(v54 + v81) = 3;
      v65 = v92;
      v84(v92, v100, v93);
      v66 = v96;
      swift_storeEnumTagMultiPayload();
      (v80[0])(v65, 0, 1, v66);
      v67 = v95;
      sub_1B49BFDE8(v65, v95);
      v68 = v82;
      if (v82(v67, 1, v66) == 1)
      {
        v69 = v88;
        sub_1B4B58794(v89, v88, type metadata accessor for DateRangeDescriptor);
        if (v68(v67, 1, v66) != 1)
        {
          sub_1B4975024(v67, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v69 = v88;
        sub_1B4993450(v67, v88);
      }

      v70 = v64 + *(v91 + 48);
      v71 = *v37;
      v72 = *(v37 + 1);
      v73 = *(v37 + 2);
      v74 = *(v37 + 3);
      v75 = *(v37 + 4);
      v76 = *(v37 + 5);
      sub_1B4B58794(v69, v70, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v69, type metadata accessor for DateRangeDescriptor);
      v77 = v98;
      v78 = (v70 + *(v98 + 20));
      *v78 = v71;
      v78[1] = v72;
      v78[2] = v73;
      v78[3] = v74;
      v78[4] = v75;
      v78[5] = v76;
      *(v70 + *(v77 + 24)) = &unk_1F2CB9718;
      *(v70 + *(v77 + 28)) = &unk_1F2CB9740;
      sub_1B4975024(v92, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v79 = sub_1B4C95FE8(v86);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v89, type metadata accessor for WorkoutPropertiesQuery);
      (*(v87 + 8))(v100, v93);
      return v79;
    }
  }

  sub_1B49BFEC0(v24, type metadata accessor for WorkoutState);
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v48 = sub_1B4D17F6C();
  __swift_project_value_buffer(v48, qword_1EDC36F00);
  v49 = sub_1B4D17F5C();
  v50 = sub_1B4D1873C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v101 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1B49558AC(0xD000000000000028, 0x80000001B4D62220, &v101);
    _os_log_impl(&dword_1B4953000, v49, v50, "%s does not support this workout state", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x1B8C7DDA0](v52, -1, -1);
    MEMORY[0x1B8C7DDA0](v51, -1, -1);
  }

  return sub_1B4C95FE8(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1B4B58794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t HeartRateZonesFact.TemplateString.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B4B5887C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B588F0(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B58944@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

uint64_t HeartRateZonesFact.placeholders()()
{
  v1 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B4D1AA70;
  v3 = sub_1B4D18D5C();
  v5 = v4;
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x80000001B4D62250;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v2 + 48) = sub_1B4993DFC;
  *(v2 + 56) = v6;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74F0, &unk_1B4D35700);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E63B0];
  *(v7 + 16) = xmmword_1B4D1A800;
  v9 = MEMORY[0x1E69E6438];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v1;
  v10 = sub_1B4D1819C();
  v12 = v11;
  *(v2 + 80) = 0x61746E6563726570;
  *(v2 + 88) = 0xEA00000000006567;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v2 + 96) = sub_1B4994004;
  *(v2 + 104) = v13;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  return v2;
}

unint64_t sub_1B4B58B64()
{
  result = qword_1EB8AAF68;
  if (!qword_1EB8AAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF68);
  }

  return result;
}

unint64_t sub_1B4B58BBC()
{
  result = qword_1EB8AAF70;
  if (!qword_1EB8AAF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AAF78, &qword_1B4D32698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF70);
  }

  return result;
}

unint64_t sub_1B4B58C24()
{
  result = qword_1EB8AAF80;
  if (!qword_1EB8AAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF80);
  }

  return result;
}

unint64_t sub_1B4B58C7C()
{
  result = qword_1EB8AAF88;
  if (!qword_1EB8AAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF88);
  }

  return result;
}

unint64_t sub_1B4B58CD0(uint64_t a1)
{
  result = sub_1B4B58CF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B58CF8()
{
  result = qword_1EB8AAF90;
  if (!qword_1EB8AAF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF90);
  }

  return result;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WorkoutVoiceGreatestElevationGainFact(uint64_t a1)
{
  result = qword_1EB8AAFE0;
  if (!qword_1EB8AAFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0) + 32));

  return v1;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.init(value:timescale:workoutActivityType:identifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a2;
  *a6 = 18;
  v12 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  v13 = v12[5];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  result = (*(*(v14 - 8) + 32))(&a6[v13], a1, v14);
  a6[v12[6]] = v11;
  *&a6[v12[7]] = a3;
  v16 = &a6[v12[8]];
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t sub_1B4B58FA0()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6C616373656D6974;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x696669746E656469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B4B5903C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B59EFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B59064(uint64_t a1)
{
  v2 = sub_1B4B59A7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B590A0(uint64_t a1)
{
  v2 = sub_1B4B59A7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceGreatestElevationGainFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF98, &qword_1B4D32718);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B59A7C();
  sub_1B4D18EFC();
  v17 = *v3;
  v16 = 0;
  sub_1B4B59AD0();
  sub_1B4D18D0C();
  if (!v2)
  {
    v9 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4B5A0C0(&qword_1EB8A6EE8, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
    v14 = v3[*(v9 + 24)];
    v13 = 2;
    sub_1B4B59B24();
    sub_1B4D18D0C();
    v12 = *&v3[*(v9 + 28)];
    v11[15] = 3;
    type metadata accessor for HKWorkoutActivityType(0);
    sub_1B4B59C20(&qword_1EB8AAFB8, &protocol conformance descriptor for HKWorkoutActivityType);
    sub_1B4D18D0C();
    v11[14] = 4;
    sub_1B4D18CBC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WorkoutVoiceGreatestElevationGainFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAFC0, &qword_1B4D32720);
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v20 - v7;
  v9 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B4B59A7C();
  v24 = v8;
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  v14 = v22;
  v13 = v23;
  v33 = 0;
  sub_1B4B59B78();
  sub_1B4D18C0C();
  *v11 = v34;
  v32 = 1;
  sub_1B4B5A0C0(&qword_1EB8A6F28, MEMORY[0x1E6968098]);
  sub_1B4D18C0C();
  (*(v13 + 32))(&v11[v9[5]], v6, v4);
  v30 = 2;
  sub_1B4B59BCC();
  sub_1B4D18C0C();
  v11[v9[6]] = v31;
  type metadata accessor for HKWorkoutActivityType(0);
  v29 = 3;
  sub_1B4B59C20(&qword_1EB8AAFD8, &protocol conformance descriptor for HKWorkoutActivityType);
  sub_1B4D18C0C();
  *&v11[v9[7]] = v27;
  v28 = 4;
  v15 = sub_1B4D18BBC();
  v17 = v16;
  (*(v14 + 8))(v24, v25);
  v18 = &v11[v9[8]];
  *v18 = v15;
  v18[1] = v17;
  sub_1B4AFA798(v11, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return sub_1B4B59C64(v11);
}

uint64_t _s19FitnessIntelligence37WorkoutVoiceGreatestElevationGainFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  v11 = *a1;
  v12 = *a2;
  if (v11 > 0x11)
  {
    if (v11 == 18)
    {
      if (v12 == 18)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v11 != 19)
      {
        goto LABEL_10;
      }

      if (v12 == 19)
      {
        goto LABEL_16;
      }
    }

LABEL_22:
    v20 = 0;
    return v20 & 1;
  }

  if (v11 == 16)
  {
    if (v12 == 16)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v11 != 17)
  {
LABEL_10:
    if ((v12 & 0xFC) == 0x10)
    {
      goto LABEL_22;
    }

    v22[15] = v11;
    v22[14] = v12;
    DistanceReference.rawValue.getter();
    DistanceReference.rawValue.getter();
    sub_1B4B5A0C0(&qword_1EDC3CB38, MEMORY[0x1E6968090]);
    v13 = sub_1B4D1816C();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v10, v4);
    if ((v13 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v12 != 17)
  {
    goto LABEL_22;
  }

LABEL_16:
  v15 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  sub_1B4B5A0C0(&qword_1EDC3CB38, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4975E34(a1[v15[6]], a2[v15[6]]) & 1) == 0 || *&a1[v15[7]] != *&a2[v15[7]])
  {
    goto LABEL_22;
  }

  v16 = v15[8];
  v17 = *&a1[v16];
  v18 = *&a1[v16 + 8];
  v19 = &a2[v16];
  if (v17 == *v19 && v18 == *(v19 + 1))
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1B4D18DCC();
  }

  return v20 & 1;
}

unint64_t sub_1B4B59A7C()
{
  result = qword_1EB8AAFA0;
  if (!qword_1EB8AAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFA0);
  }

  return result;
}

unint64_t sub_1B4B59AD0()
{
  result = qword_1EB8AAFA8;
  if (!qword_1EB8AAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFA8);
  }

  return result;
}

unint64_t sub_1B4B59B24()
{
  result = qword_1EB8AAFB0;
  if (!qword_1EB8AAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFB0);
  }

  return result;
}

unint64_t sub_1B4B59B78()
{
  result = qword_1EB8AAFC8;
  if (!qword_1EB8AAFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFC8);
  }

  return result;
}

unint64_t sub_1B4B59BCC()
{
  result = qword_1EB8AAFD0;
  if (!qword_1EB8AAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFD0);
  }

  return result;
}

uint64_t sub_1B4B59C20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKWorkoutActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B59C64(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4B59CE8(uint64_t a1)
{
  sub_1B4B59D8C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKWorkoutActivityType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4B59D8C(uint64_t a1)
{
  if (!qword_1EDC3CE78)
  {
    sub_1B499221C();
    v1 = sub_1B4D1746C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC3CE78);
    }
  }
}

unint64_t sub_1B4B59DF8()
{
  result = qword_1EB8AAFF0;
  if (!qword_1EB8AAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFF0);
  }

  return result;
}

unint64_t sub_1B4B59E50()
{
  result = qword_1EB8AAFF8;
  if (!qword_1EB8AAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFF8);
  }

  return result;
}

unint64_t sub_1B4B59EA8()
{
  result = qword_1EB8AB000;
  if (!qword_1EB8AB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB000);
  }

  return result;
}

uint64_t sub_1B4B59EFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616373656D6974 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D62270 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B4B5A0C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B5A114(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v57[-v5];
  v67 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  *&v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57[-v15];
  sub_1B4D173AC();
  swift_allocObject();
  v17 = sub_1B4D1739C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB018, &unk_1B4D463D0);
  sub_1B4B5B4E0(&qword_1EDC36E48, sub_1B49DDFEC, MEMORY[0x1E69E6330]);
  v18 = v73;
  sub_1B4D1738C();
  v73 = v18;
  if (v18)
  {
    sub_1B49DDD2C(a1, a2);

    return v17;
  }

  v65 = v11;
  v66 = v10;
  v72 = v16;
  v64 = v7;

  v19 = v75;
  v20 = *(v75 + 16);
  if (!v20)
  {

    sub_1B49DDD2C(a1, a2);
    return MEMORY[0x1E69E7CC0];
  }

  v71 = v13;
  v59 = a1;
  v60 = a2;
  v79 = MEMORY[0x1E69E7CC0];
  result = sub_1B4BCF61C(0, v20, 0);
  if (!*(v19 + 16))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v22 = 0;
  v23 = (v70 + 48);
  v17 = v79;
  v62 = v20 - 1;
  v61 = (v70 + 48);
  v63 = v19;
  while (1)
  {
    *&v70 = v17;
    v78 = *(v19 + 16 * v22 + 32);
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v24 = *(&v78 + 1);
    v25 = v78;
    sub_1B498FC0C(v78, *(&v78 + 1));
    sub_1B498FC0C(v25, v24);
    sub_1B498FC0C(v25, v24);
    sub_1B498FC0C(v25, v24);
    sub_1B4D17BDC();
    sub_1B4B5B488();
    v27 = v72;
    v26 = v73;
    v28 = v65;
    v17 = v65;
    sub_1B4D17D7C();
    v73 = v26;
    if (v26)
    {

      sub_1B49DDD2C(v59, v60);
      sub_1B49DDD2C(v25, v24);
      sub_1B49DDD2C(v25, v24);
      sub_1B49DDD2C(v25, v24);

      return v17;
    }

    v29 = v71;
    sub_1B4B5B558(v27, v71);
    v30 = &v29[*(v28 + 28)];
    v31 = v68;
    sub_1B4B5B5BC(v30, v68);
    v32 = *v23;
    v33 = v67;
    if ((*v23)(v31, 1, v67) == 1)
    {
      v34 = v64;
      sub_1B4D17BBC();
      v35 = (v34 + *(v33 + 20));
      *v35 = 0;
      v35[1] = 0;
      v36 = (v34 + *(v33 + 24));
      *v36 = 0;
      v36[1] = 0;
      if (v32(v31, 1, v33) != 1)
      {
        sub_1B4975024(v31, &qword_1EB8A6938, &qword_1B4D1ACF8);
      }
    }

    else
    {
      v34 = v64;
      sub_1B4B5B68C(v31, v64);
    }

    v37 = (v34 + *(v33 + 20));
    v38 = v37[1];
    if (!v38)
    {
      v53 = 0;
LABEL_23:

      sub_1B498C3D8();
      v17 = swift_allocError();
      *v54 = v53;
      swift_willThrow();
      sub_1B49DDD2C(v59, v60);
      sub_1B49DDD2C(v25, v24);
      sub_1B49DDD2C(v25, v24);
      sub_1B49DDD2C(v25, v24);
      sub_1B4B5B62C(v71, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      sub_1B4B5B62C(v72, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      v55 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice;
      v56 = v34;
LABEL_25:
      sub_1B4B5B62C(v56, v55);

      return v17;
    }

    v69 = v22;
    v39 = (v34 + *(v33 + 24));
    v40 = v39[1];
    if (!v40)
    {
      v53 = 1;
      goto LABEL_23;
    }

    v41 = *v37;
    v42 = *v39;

    sub_1B4B5B62C(v34, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v43 = v71;
    v44 = *v71;
    v45 = v73;
    sub_1B4B81578(v71, &v75);
    if (v45)
    {
      v17 = v45;

      sub_1B49DDD2C(v59, v60);
      sub_1B49DDD2C(v25, v24);
      sub_1B49DDD2C(v25, v24);
      sub_1B49DDD2C(v25, v24);
      sub_1B4B5B62C(v43, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      v56 = v72;
      v55 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset;
      goto LABEL_25;
    }

    v73 = 0;
    sub_1B49DDD2C(v25, v24);
    sub_1B49DDD2C(v25, v24);
    sub_1B49DDD2C(v25, v24);
    sub_1B4B5B62C(v43, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
    result = sub_1B4B5B62C(v72, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
    v46 = v75;
    v47 = v76;
    v48 = BYTE1(v76);
    v74 = BYTE1(v76);
    v17 = v70;
    v79 = v70;
    v50 = *(v70 + 16);
    v49 = *(v70 + 24);
    if (v50 >= v49 >> 1)
    {
      v70 = v75;
      v58 = v76;
      result = sub_1B4BCF61C((v49 > 1), v50 + 1, 1);
      v47 = v58;
      v46 = v70;
      v17 = v79;
    }

    *(v17 + 16) = v50 + 1;
    v51 = v17 + (v50 << 6);
    *(v51 + 32) = v41;
    *(v51 + 40) = v38;
    *(v51 + 48) = v42;
    *(v51 + 56) = v40;
    *(v51 + 64) = v44;
    v52 = *(&v78 + 3);
    *(v51 + 65) = v78;
    *(v51 + 68) = v52;
    *(v51 + 72) = v46;
    *(v51 + 88) = v47;
    *(v51 + 89) = v48;
    if (v62 == v69)
    {
      break;
    }

    v19 = v63;
    v22 = v69 + 1;
    v23 = v61;
    if ((v69 + 1) >= *(v63 + 16))
    {
      goto LABEL_28;
    }
  }

  sub_1B49DDD2C(v59, v60);
  return v17;
}

void static VoiceAssetCache.writeCachedAssets(_:)(uint64_t a1)
{
  v2 = sub_1B4B5ABA0(a1);
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1B4D1817C();
    v8 = [v6 initWithSuiteName_];

    if (v8)
    {
      v9 = sub_1B4D176AC();
      v10 = sub_1B4D1817C();
      [v8 setValue:v9 forKey:v10];

      v11 = sub_1B4D1817C();
      CFPreferencesAppSynchronize(v11);

      v12 = [objc_allocWithZone(NPSManagerBridge) init];
      v13 = sub_1B4D1817C();
      sub_1B49B554C(&unk_1F2CBB138);
      sub_1B497CBA8(&unk_1F2CBB158);
      v14 = sub_1B4D185FC();

      [v12 synchronizeUserDefaultsDomain:v13 keys:v14];

      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v15 = sub_1B4D17F6C();
      __swift_project_value_buffer(v15, qword_1EDC3CED0);
      v16 = sub_1B4D17F5C();
      v17 = sub_1B4D1873C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1B4953000, v16, v17, "Wrote assets to cache", v18, 2u);
        MEMORY[0x1B8C7DDA0](v18, -1, -1);
      }

      sub_1B49DDD2C(v4, v5);
    }

    else
    {
      sub_1B4B5B2B8();
      swift_allocError();
      swift_willThrow();
      sub_1B49DDD2C(v4, v5);
    }
  }
}

_OWORD *sub_1B4B5ABA0(uint64_t a1)
{
  v25 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF63C(0, v5, 0);
    v26 = v33;
    v24 = sub_1B4B5B384();
    v22 = *(v24 + 32);
    v23 = v24 + 32;
    v6 = (a1 + 32);
    for (i = v5 - 1; ; --i)
    {
      v8 = v6[1];
      v31[0] = *v6;
      v31[1] = v8;
      v10 = *v6;
      v9 = v6[1];
      v32[0] = v6[2];
      *(v32 + 10) = *(v6 + 42);
      v28 = v10;
      v29 = v9;
      v30[0] = v6[2];
      *(v30 + 10) = *(v6 + 42);
      sub_1B4B5B3D8(v31, v27);
      v22(&type metadata for AudioSynthesisVoiceAsset, v24);
      if (v1)
      {
        break;
      }

      sub_1B4B5B488();
      v11 = sub_1B4D17D6C();
      v13 = v12;
      sub_1B4B5B434(v31);
      v14 = v4;
      sub_1B4B5B62C(v4, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      v15 = v26;
      v33 = v26;
      v17 = *(v26 + 16);
      v16 = *(v26 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B4BCF63C((v16 > 1), v17 + 1, 1);
        v15 = v33;
      }

      *(v15 + 16) = v17 + 1;
      v26 = v15;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = v11;
      *(v18 + 40) = v13;
      if (!i)
      {
        goto LABEL_9;
      }

      v6 += 4;
      v4 = v14;
    }

    sub_1B4B5B434(v31);
    goto LABEL_13;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_9:
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  *&v31[0] = v26;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB018, &unk_1B4D463D0);
  sub_1B4B5B4E0(&qword_1EDC36E50, sub_1B49DDCD8, MEMORY[0x1E69E6300]);
  v19 = sub_1B4D173BC();
  if (v1)
  {

LABEL_13:

    return v6;
  }

  v6 = v19;

  return v6;
}

uint64_t _s19FitnessIntelligence15VoiceAssetCacheV16readCachedAssetsSayAA014AudioSynthesiscD0VGyFZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1B4D1817C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1B4D1817C();
    v4 = [v2 dataForKey_];

    if (v4)
    {
      v5 = sub_1B4D176BC();
      v7 = v6;

      sub_1B498FC0C(v5, v7);
      v16 = sub_1B4B5A114(v5, v7);
      sub_1B49DDD2C(v5, v7);

      return v16;
    }

    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v12 = sub_1B4D17F6C();
    __swift_project_value_buffer(v12, qword_1EDC3CED0);
    v13 = sub_1B4D17F5C();
    v14 = sub_1B4D1873C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B4953000, v13, v14, "No assets found in defaults", v15, 2u);
      MEMORY[0x1B8C7DDA0](v15, -1, -1);
    }
  }

  else
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B4D17F6C();
    __swift_project_value_buffer(v8, qword_1EDC3CED0);
    v9 = sub_1B4D17F5C();
    v10 = sub_1B4D1871C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B4953000, v9, v10, "Voice asset cache defaults unavailable", v11, 2u);
      MEMORY[0x1B8C7DDA0](v11, -1, -1);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1B4B5B2B8()
{
  result = qword_1EB8AB008;
  if (!qword_1EB8AB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB008);
  }

  return result;
}

unint64_t sub_1B4B5B330()
{
  result = qword_1EB8AB010;
  if (!qword_1EB8AB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB010);
  }

  return result;
}

unint64_t sub_1B4B5B384()
{
  result = qword_1EDC36FF8[0];
  if (!qword_1EDC36FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC36FF8);
  }

  return result;
}

unint64_t sub_1B4B5B488()
{
  result = qword_1EDC3B640[0];
  if (!qword_1EDC3B640[0])
  {
    type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC3B640);
  }

  return result;
}

uint64_t sub_1B4B5B4E0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AB018, &unk_1B4D463D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B5B558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B5B5BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B5B62C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B5B68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *WorkoutPropertyDimensions.init(monthOfYear:dayOfWeek:hourOfDay:activityType:locationType:sourceIdentifier:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a6;
  *a9 = *result;
  *(a9 + 1) = v9;
  *(a9 + 8) = v10;
  *(a9 + 16) = v11;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 33) = v12;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

Swift::Bool __swiftcall WorkoutPropertyDimensions.matches(_:)(FitnessIntelligence::WorkoutPropertyDimensionsFilters_optional *a1)
{
  rawValue = a1->value.monthOfYear._rawValue;
  if (!a1->value.monthOfYear._rawValue)
  {
    return 1;
  }

  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 1);
  v7 = v1[16];
  v8 = *(v1 + 3);
  v9 = v1[32];
  v10 = v1[33];
  v11 = *(v1 + 5);
  v12 = *(v1 + 6);
  v13 = a1->value.sourceIdentifier._rawValue;
  v14 = a1->value.hourOfDay._rawValue;
  v15 = a1->value.activityType._rawValue;
  v54 = a1->value.locationType._rawValue;
  v55 = v15;
  v59 = v14;
  v16 = a1->value.dayOfWeek._rawValue;
  if (v4 != 12)
  {
    if (rawValue[2])
    {
      v4 = sub_1B4978C4C(v4, rawValue);
      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v56 = v8;
  v57 = v7;
  v58 = v9;
  v51 = v11;
  v52 = v12;
  v53 = v13;
  if (v5 != 7)
  {
    v17 = *(v16 + 2);
    if (v17)
    {
      v18 = v16 + 32;
      do
      {
        if (!v17)
        {
          return 0;
        }

        v22 = *v18;
        if (v22 <= 2)
        {
          v26 = 0xE900000000000079;
          v27 = 0x616473656E646577;
          if (v22 == 1)
          {
            v27 = 0x79616473657574;
            v26 = 0xE700000000000000;
          }

          if (*v18)
          {
            v23 = v27;
          }

          else
          {
            v23 = 0x7961646E6F6DLL;
          }

          if (*v18)
          {
            v24 = v26;
          }

          else
          {
            v24 = 0xE600000000000000;
          }

          if (v5 > 2)
          {
LABEL_40:
            v28 = 0x7961646E7573;
            if (v5 == 5)
            {
              v28 = 0x7961647275746173;
              v29 = 0xE800000000000000;
            }

            else
            {
              v29 = 0xE600000000000000;
            }

            v30 = 0x7961647372756874;
            if (v5 == 3)
            {
              v31 = 0xE800000000000000;
            }

            else
            {
              v30 = 0x796164697266;
              v31 = 0xE600000000000000;
            }

            if (v5 <= 4)
            {
              v32 = v30;
            }

            else
            {
              v32 = v28;
            }

            if (v5 <= 4)
            {
              v20 = v31;
            }

            else
            {
              v20 = v29;
            }

            if (v23 != v32)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }
        }

        else if (*v18 > 4u)
        {
          if (v22 == 5)
          {
            v24 = 0xE800000000000000;
            v23 = 0x7961647275746173;
            if (v5 > 2)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v23 = 0x7961646E7573;
            v24 = 0xE600000000000000;
            if (v5 > 2)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          if (v22 == 3)
          {
            v23 = 0x7961647372756874;
          }

          else
          {
            v23 = 0x796164697266;
          }

          if (v22 == 3)
          {
            v24 = 0xE800000000000000;
          }

          else
          {
            v24 = 0xE600000000000000;
          }

          if (v5 > 2)
          {
            goto LABEL_40;
          }
        }

        if (v5)
        {
          if (v5 == 1)
          {
            v25 = 0x79616473657574;
          }

          else
          {
            v25 = 0x616473656E646577;
          }

          if (v5 == 1)
          {
            v20 = 0xE700000000000000;
          }

          else
          {
            v20 = 0xE900000000000079;
          }

          if (v23 != v25)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v20 = 0xE600000000000000;
          if (v23 != 0x7961646E6F6DLL)
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        if (v24 == v20)
        {

          break;
        }

LABEL_11:
        v21 = sub_1B4D18DCC();

        ++v18;
        --v17;
      }

      while ((v21 & 1) == 0);
    }
  }

  if ((v57 & 1) == 0)
  {
    v33 = v59[2];
    if (v33)
    {
      v34 = v59 + 4;
      while (v33)
      {
        v35 = *v34++;
        --v33;
        if (v35 == v6)
        {
          goto LABEL_65;
        }
      }

      return 0;
    }
  }

LABEL_65:
  if ((v58 & 1) == 0)
  {
    v36 = v55[2];
    if (v36)
    {
      v37 = v55 + 4;
      while (v36)
      {
        v38 = *v37++;
        --v36;
        if (v38 == v56)
        {
          goto LABEL_70;
        }
      }

      return 0;
    }
  }

LABEL_70:
  if (v10 != 5)
  {
    v39 = *(v54 + 2);
    if (v39)
    {
      v40 = v54 + 32;
      do
      {
        if (!v39)
        {
          return 0;
        }

        v43 = *v40;
        if (v43 <= 1)
        {
          if (*v40)
          {
            v44 = 0x726F6F646E69;
          }

          else
          {
            v44 = 0x6E776F6E6B6E75;
          }

          if (*v40)
          {
            v45 = 0xE600000000000000;
          }

          else
          {
            v45 = 0xE700000000000000;
          }

          if (v10 > 1)
          {
LABEL_86:
            if (v10 == 3)
            {
              v46 = 0x657461576E65706FLL;
            }

            else
            {
              v46 = 0x676E696D6D697773;
            }

            v47 = 0xEC0000006C6F6F50;
            if (v10 == 3)
            {
              v47 = 0xE900000000000072;
            }

            if (v10 == 2)
            {
              v48 = 0x726F6F6474756FLL;
            }

            else
            {
              v48 = v46;
            }

            if (v10 == 2)
            {
              v41 = 0xE700000000000000;
            }

            else
            {
              v41 = v47;
            }

            if (v44 != v48)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          }
        }

        else if (v43 == 2)
        {
          v45 = 0xE700000000000000;
          v44 = 0x726F6F6474756FLL;
          if (v10 > 1)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v43 == 3)
          {
            v44 = 0x657461576E65706FLL;
          }

          else
          {
            v44 = 0x676E696D6D697773;
          }

          if (v43 == 3)
          {
            v45 = 0xE900000000000072;
          }

          else
          {
            v45 = 0xEC0000006C6F6F50;
          }

          if (v10 > 1)
          {
            goto LABEL_86;
          }
        }

        if (v10)
        {
          v41 = 0xE600000000000000;
          if (v44 != 0x726F6F646E69)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v41 = 0xE700000000000000;
          if (v44 != 0x6E776F6E6B6E75)
          {
            goto LABEL_75;
          }
        }

LABEL_74:
        if (v45 == v41)
        {

          break;
        }

LABEL_75:
        v42 = sub_1B4D18DCC();

        ++v40;
        --v39;
      }

      while ((v42 & 1) == 0);
    }
  }

  if (!v52)
  {
    return 1;
  }

  if (!v53[2])
  {
    return 1;
  }

  v60[0] = v51;
  v60[1] = v52;
  MEMORY[0x1EEE9AC00](v4);
  v50[2] = v60;
  return (sub_1B49B1748(sub_1B4B5CED0, v50, v49) & 1) != 0;
}

void *static WorkoutPropertyDimensions.dimensions(from:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4D1794C();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4D1777C();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(v11 + 80);
  v12(v10, v11);
  result = DayOfWeek.init(from:)(v9, &v34);
  if (v34 == 7 || (v28 = v34, v12(v10, v11), result = MonthOfYear.init(from:)(v9, &v33), v33 == 12))
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 1;
  }

  else
  {
    v27 = v33;
    v12(v10, v11);
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v14 = sub_1B4D1796C();
    __swift_project_value_buffer(v14, qword_1EDC3CE48);
    v15 = v31;
    (*(v31 + 104))(v6, *MEMORY[0x1E6969A58], v4);
    v16 = sub_1B4D1795C();
    (*(v15 + 8))(v6, v4);
    (*(v29 + 8))(v9, v30);
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    v19 = (*(v18 + 56))(v17, v18);
    v20 = [v19 effectiveTypeIdentifier];

    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    (*(v22 + 40))(&v32, v21, v22);
    v23 = v32;
    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    result = (*(v25 + 48))(v24, v25);
    *a2 = v27 | (v28 << 8);
    *(a2 + 8) = v16;
    *(a2 + 16) = 0;
    *(a2 + 24) = v20;
    *(a2 + 32) = v23 << 8;
    *(a2 + 40) = result;
    *(a2 + 48) = v26;
  }

  return result;
}

void WorkoutPropertyDimensions.mask(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  v42 = *v2;
  v43 = v3;
  v44 = v2[2];
  v45 = *(v2 + 6);
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = (a1 + 32);
    v6 = v4;
    v7 = (a1 + 32);
    while (1)
    {
      if (!v6)
      {
        v11 = 12;
        goto LABEL_13;
      }

      v9 = *v7;
      if (v9 <= 2 && v9 != 1 && v9 != 2)
      {
        break;
      }

      v8 = sub_1B4D18DCC();

      ++v7;
      --v6;
      if (v8)
      {
        goto LABEL_12;
      }
    }

LABEL_12:
    v11 = v42;
LABEL_13:
    v39 = v11;
    v12 = v4;
    v13 = v5;
    while (1)
    {
      if (!v12)
      {
        v15 = 7;
        goto LABEL_23;
      }

      if (*v13 <= 2u && *v13 && *v13 != 2)
      {
        break;
      }

      v14 = sub_1B4D18DCC();

      ++v13;
      --v12;
      if (v14)
      {
        goto LABEL_22;
      }
    }

LABEL_22:
    v15 = BYTE1(v42);
LABEL_23:
    v38 = v15;
    v16 = v4;
    v17 = v5;
    while (1)
    {
      if (!v16)
      {
        v37 = 0;
        v19 = 1;
        goto LABEL_31;
      }

      if (*v17 == 2)
      {
        break;
      }

      v18 = sub_1B4D18DCC();

      ++v17;
      --v16;
      if (v18)
      {
        goto LABEL_30;
      }
    }

LABEL_30:
    v37 = *(&v42 + 1);
    v19 = v43;
LABEL_31:
    v36 = v19;
    v20 = v4;
    v21 = v5;
    while (1)
    {
      if (!v20)
      {
        v35 = 0;
        v24 = 1;
        goto LABEL_42;
      }

      v23 = *v21;
      if (v23 > 2 && v23 != 4 && v23 != 5)
      {
        break;
      }

      v22 = sub_1B4D18DCC();

      ++v21;
      --v20;
      if (v22)
      {
        goto LABEL_41;
      }
    }

LABEL_41:
    v35 = *(&v43 + 1);
    v24 = v44;
LABEL_42:
    v34 = v24;
    v25 = v4;
    v26 = v5;
    while (1)
    {
      if (!v25)
      {
        v29 = 5;
        goto LABEL_52;
      }

      v28 = *v26;
      if (v28 >= 4 && v28 != 5)
      {
        break;
      }

      v27 = sub_1B4D18DCC();

      ++v26;
      --v25;
      if (v27)
      {
        goto LABEL_50;
      }
    }

LABEL_50:
    v29 = BYTE1(v44);
    while (1)
    {
LABEL_52:
      if (!v4)
      {
        v32 = 0;
        v33 = 0;
        goto LABEL_58;
      }

      v31 = *v5;
      if (v31 > 4)
      {
        break;
      }

      v30 = sub_1B4D18DCC();

      ++v5;
      --v4;
      if (v30)
      {
        goto LABEL_57;
      }
    }

LABEL_57:
    v32 = *(&v44 + 1);

LABEL_58:
    *a2 = v39;
    *(a2 + 1) = v38;
    *(a2 + 8) = v37;
    *(a2 + 16) = v36;
    *(a2 + 24) = v35;
    *(a2 + 32) = v34;
    *(a2 + 33) = v29;
    *(a2 + 40) = v32;
    *(a2 + 48) = v33;
  }

  else
  {
    v10 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v10;
    *(a2 + 32) = v2[2];
    *(a2 + 48) = *(v2 + 6);
    sub_1B498B0D4(&v42, v41);
  }
}

FitnessIntelligence::WorkoutPropertyDimensionsField_optional __swiftcall WorkoutPropertyDimensionsField.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WorkoutPropertyDimensionsField.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x59664F68746E6F6DLL;
  v3 = 0x7974697669746361;
  v4 = 0x6E6F697461636F6CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656557664F796164;
  if (v1 != 1)
  {
    v5 = 0x6144664F72756F68;
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

uint64_t sub_1B4B5C7E4(uint64_t a1)
{
  sub_1B4D1820C();
}

void sub_1B4B5C908(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726165;
  v4 = 0x59664F68746E6F6DLL;
  v5 = 0x7974697669746361;
  v6 = 0xEC00000065707954;
  v7 = 0x6E6F697461636F6CLL;
  v8 = 0xEC00000065707954;
  if (v2 != 4)
  {
    v7 = 0xD000000000000010;
    v8 = 0x80000001B4D48D10;
  }

  if (v2 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x656557664F796164;
  v10 = 0xE90000000000006BLL;
  if (v2 != 1)
  {
    v9 = 0x6144664F72756F68;
    v10 = 0xE900000000000079;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

void WorkoutPropertyDimensions.hourOfDay.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t WorkoutPropertyDimensions.sourceIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t WorkoutPropertyDimensions.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = *(v1 + 48);
  if (*v1 == 12)
  {
    sub_1B4D18EAC();
    if (v2 != 7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B4D18EAC();
    MonthOfYear.rawValue.getter();
    sub_1B4D1820C();

    if (v2 != 7)
    {
LABEL_3:
      sub_1B4D18EAC();
      sub_1B4D1820C();

      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1B4D18EAC();
  if ((v4 & 1) == 0)
  {
LABEL_4:
    sub_1B4D18EAC();
    MEMORY[0x1B8C7D2C0](v3);
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1B4D18EAC();
    if (v7 != 5)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  sub_1B4D18EAC();
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1B4D18EAC();
  MEMORY[0x1B8C7D290](v5);
  if (v7 != 5)
  {
LABEL_6:
    sub_1B4D18EAC();
    sub_1B4D1820C();

    if (!v8)
    {
      return sub_1B4D18EAC();
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_1B4D18EAC();
  if (!v8)
  {
    return sub_1B4D18EAC();
  }

LABEL_12:
  sub_1B4D18EAC();

  return sub_1B4D1820C();
}

uint64_t WorkoutPropertyDimensions.hashValue.getter()
{
  sub_1B4D18E8C();
  WorkoutPropertyDimensions.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5CDF4()
{
  sub_1B4D18E8C();
  WorkoutPropertyDimensions.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5CE38(uint64_t a1)
{
  sub_1B4D18E8C();
  WorkoutPropertyDimensions.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5CE78(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B4D18DCC() & 1;
  }
}

uint64_t sub_1B4B5CED0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B4D18DCC() & 1;
  }
}

BOOL _s19FitnessIntelligence25WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 1);
  v13 = a2[16];
  v14 = *(a2 + 3);
  v15 = a2[32];
  v16 = a2[33];
  v17 = *(a2 + 5);
  v18 = *(a2 + 6);
  if (*a1 == 12)
  {
    if (v10 != 12)
    {
      return 0;
    }

LABEL_3:
    if (v2 == 7)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v10 == 12)
  {
    return 0;
  }

  v38 = *(a2 + 3);
  v39 = *(a1 + 8);
  v46 = a2[32];
  v40 = a2[33];
  v41 = *(a1 + 33);
  v42 = *(a2 + 5);
  v43 = *(a1 + 48);
  v48 = *(a2 + 6);
  v19 = MonthOfYear.rawValue.getter();
  v21 = v20;
  if (v19 != MonthOfYear.rawValue.getter() || v21 != v22)
  {
    v31 = sub_1B4D18DCC();

    v9 = v43;
    v18 = v48;
    v17 = v42;
    v16 = v40;
    v7 = v41;
    v14 = v38;
    v3 = v39;
    v15 = v46;
    if ((v31 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v9 = v43;
  v18 = v48;
  v17 = v42;
  v16 = v40;
  v7 = v41;
  v14 = v38;
  v3 = v39;
  v15 = v46;
  if (v2 == 7)
  {
LABEL_4:
    if (v11 != 7)
    {
      return 0;
    }

    goto LABEL_12;
  }

LABEL_10:
  if (v11 == 7)
  {
    return 0;
  }

  v23 = v2;
  v24 = v11;
  v49 = v18;
  v25 = v17;
  v26 = v7;
  v45 = v6;
  v44 = v5;
  v27 = v16;
  v28 = v3;
  v47 = v15;
  v29 = v14;
  v30 = sub_1B49767B8(v23, v24);
  v14 = v29;
  v15 = v47;
  v3 = v28;
  v16 = v27;
  v5 = v44;
  v6 = v45;
  v7 = v26;
  v17 = v25;
  v18 = v49;
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (v4)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v12)
    {
      v32 = v13;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v14)
    {
      v33 = v15;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  if (v7 == 5)
  {
    if (v16 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == 5)
    {
      return 0;
    }

    v34 = v18;
    v35 = v17;
    v36 = sub_1B4976C84(v7, v16);
    v17 = v35;
    v18 = v34;
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  if (v9)
  {
    return v18 && (v8 == v17 && v9 == v18 || (sub_1B4D18DCC() & 1) != 0);
  }

  return !v18;
}

unint64_t sub_1B4B5D1AC()
{
  result = qword_1EB8AB020;
  if (!qword_1EB8AB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB020);
  }

  return result;
}

unint64_t sub_1B4B5D200(void *a1)
{
  a1[1] = sub_1B4B5D238();
  a1[2] = sub_1B4B5D1AC();
  result = sub_1B4B5D28C();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4B5D238()
{
  result = qword_1EB8AB028;
  if (!qword_1EB8AB028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB028);
  }

  return result;
}

unint64_t sub_1B4B5D28C()
{
  result = qword_1EB8AB030;
  if (!qword_1EB8AB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB030);
  }

  return result;
}

unint64_t sub_1B4B5D2E4()
{
  result = qword_1EB8AB038;
  if (!qword_1EB8AB038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AB040, &qword_1B4D32AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB038);
  }

  return result;
}

unint64_t sub_1B4B5D34C()
{
  result = qword_1EB8AB048[0];
  if (!qword_1EB8AB048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB8AB048);
  }

  return result;
}

unint64_t sub_1B4B5D3A4()
{
  result = qword_1EDC36F58;
  if (!qword_1EDC36F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36F58);
  }

  return result;
}

unint64_t sub_1B4B5D3F8(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B5D428();
  result = sub_1B4B5D47C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B5D428()
{
  result = qword_1EDC38CE0;
  if (!qword_1EDC38CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CE0);
  }

  return result;
}

unint64_t sub_1B4B5D47C()
{
  result = qword_1EDC38CF8[0];
  if (!qword_1EDC38CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38CF8);
  }

  return result;
}

unint64_t sub_1B4B5D4D4()
{
  result = qword_1EDC38CF0;
  if (!qword_1EDC38CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CF0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B4B5D554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1B4B5D5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t MaxPropertyValue.value.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1B4D1746C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t MaxPropertyValue.identifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t MaxPropertyValue.init(value:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = [swift_getObjCClassFromMetadata() baseUnit];
  v11 = sub_1B4D1746C();
  sub_1B4D1745C();

  (*(*(v11 - 8) + 8))(a1, v11);
  result = type metadata accessor for MaxPropertyValue(0, a4, v12, v13);
  v15 = (a5 + *(result + 28));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t static MaxPropertyValue.add(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B4D1746C();
  swift_getWitnessTable();
  v8 = sub_1B4D1810C();
  v11 = type metadata accessor for MaxPropertyValue(0, a3, v9, v10);
  if (v8)
  {
    v12 = a1;
  }

  else
  {
    v12 = a2;
  }

  return (*(*(v11 - 8) + 16))(a4, v12, v11);
}

uint64_t static MaxPropertyValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4D1746C();
  swift_getWitnessTable();
  if ((sub_1B4D1816C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for MaxPropertyValue(0, a3, v6, v7) + 28);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_1B4D18DCC();
}

uint64_t MaxPropertyValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1B4D1746C();
  swift_getWitnessTable();
  sub_1B4D1808C();

  return sub_1B4D1820C();
}

uint64_t MaxPropertyValue.hashValue.getter(uint64_t a1)
{
  sub_1B4D18E8C();
  MaxPropertyValue.hash(into:)(v3, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5DA40(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  MaxPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5DA84(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B5DAC0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B5DB44(uint64_t a1)
{
  result = sub_1B4D1746C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WorkoutAwardsFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  v6 = 15;
  if (v4 < 0xF)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutAwardsFact.TemplateString.rawValue.getter()
{
  result = 0xD00000000000008BLL;
  switch(*v0)
  {
    case 1:
    case 0xB:
      result = 0xD000000000000055;
      break;
    case 2:
      result = 0xD00000000000006FLL;
      break;
    case 3:
      result = 0xD0000000000000A0;
      break;
    case 4:
      result = 0xD000000000000063;
      break;
    case 5:
      result = 0xD000000000000084;
      break;
    case 6:
      result = 0xD000000000000040;
      break;
    case 7:
      result = 0xD000000000000038;
      break;
    case 8:
      result = 0xD000000000000066;
      break;
    case 9:
      result = 0xD000000000000058;
      break;
    case 0xA:
    case 0xC:
      result = 0xD000000000000075;
      break;
    case 0xD:
      result = 0xD00000000000005ALL;
      break;
    case 0xE:
      result = 0xD00000000000006CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4B5DDC4()
{
  v0 = WorkoutAwardsFact.TemplateString.rawValue.getter();
  v2 = v1;
  if (v0 == WorkoutAwardsFact.TemplateString.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

uint64_t sub_1B4B5DE60()
{
  sub_1B4D18E8C();
  WorkoutAwardsFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5DEC8(uint64_t a1)
{
  WorkoutAwardsFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4B5DF2C(uint64_t a1)
{
  sub_1B4D18E8C();
  WorkoutAwardsFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4B5DF9C@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutAwardsFact.TemplateString.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t WorkoutAwardsFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutAwardsFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D32CF0;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for WorkoutAwardsFact);
  v26 = 0xD000000000000015;
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = 0x80000001B4D622C0;
  *(v4 + 48) = sub_1B4B5E8FC;
  *(v4 + 56) = v6;
  *(v4 + 64) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v7 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5, type metadata accessor for WorkoutAwardsFact);
  strcpy((v4 + 80), "energy_units");
  *(v4 + 93) = 0;
  *(v4 + 94) = -5120;
  *(v4 + 96) = sub_1B4B5E914;
  *(v4 + 104) = v7;
  *(v4 + 112) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v8 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5, type metadata accessor for WorkoutAwardsFact);
  strcpy((v4 + 128), "activity_type");
  *(v4 + 142) = -4864;
  *(v4 + 144) = sub_1B4B5EB38;
  *(v4 + 152) = v8;
  *(v4 + 160) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v9 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 176) = 0xD000000000000017;
  *(v4 + 184) = 0x80000001B4D622E0;
  *(v4 + 192) = sub_1B4B5EDB8;
  *(v4 + 200) = v9;
  *(v4 + 208) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v10 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 224) = 0xD000000000000011;
  *(v4 + 232) = 0x80000001B4D62300;
  *(v4 + 240) = sub_1B4B5EED4;
  *(v4 + 248) = v10;
  *(v4 + 256) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v11 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v5, type metadata accessor for WorkoutAwardsFact);
  v25 = 0xD000000000000018;
  *(v4 + 272) = 0xD000000000000018;
  *(v4 + 280) = 0x80000001B4D62320;
  *(v4 + 288) = sub_1B4B5F044;
  *(v4 + 296) = v11;
  *(v4 + 304) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v12 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 320) = 0xD000000000000012;
  *(v4 + 328) = 0x80000001B4D62340;
  *(v4 + 336) = sub_1B4B5F334;
  *(v4 + 344) = v12;
  *(v4 + 352) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v13 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 368) = 0xD000000000000012;
  *(v4 + 376) = 0x80000001B4D62360;
  *(v4 + 384) = sub_1B4B5F53C;
  *(v4 + 392) = v13;
  *(v4 + 400) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v14 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 416) = v25;
  *(v4 + 424) = 0x80000001B4D62380;
  *(v4 + 432) = sub_1B4B5F7AC;
  *(v4 + 440) = v14;
  *(v4 + 448) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v15 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v5, type metadata accessor for WorkoutAwardsFact);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B4B5F96C;
  *(v16 + 24) = v15;
  strcpy((v4 + 464), "formatted_week");
  *(v4 + 479) = -18;
  *(v4 + 480) = sub_1B4AF87E4;
  *(v4 + 488) = v16;
  *(v4 + 496) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v17 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 512) = 0x7079745F676E6972;
  *(v4 + 520) = 0xE900000000000065;
  *(v4 + 528) = sub_1B4B5FCA4;
  *(v4 + 536) = v17;
  *(v4 + 544) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v18 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 560) = 0xD000000000000013;
  *(v4 + 568) = 0x80000001B4D623A0;
  *(v4 + 576) = sub_1B4B5FCBC;
  *(v4 + 584) = v18;
  *(v4 + 592) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v19 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 608) = 0xD000000000000014;
  *(v4 + 616) = 0x80000001B4D623C0;
  *(v4 + 624) = sub_1B4B5FD38;
  *(v4 + 632) = v19;
  *(v4 + 640) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v20 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 656) = 0xD00000000000001DLL;
  *(v4 + 664) = 0x80000001B4D623E0;
  *(v4 + 672) = sub_1B4B603D8;
  *(v4 + 680) = v20;
  *(v4 + 688) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v21 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 704) = v26;
  *(v4 + 712) = 0x80000001B4D62400;
  *(v4 + 720) = sub_1B4B606B4;
  *(v4 + 728) = v21;
  *(v4 + 736) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v22 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 752) = 0xD000000000000019;
  *(v4 + 760) = 0x80000001B4D62420;
  *(v4 + 768) = sub_1B4B607D0;
  *(v4 + 776) = v22;
  *(v4 + 784) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v23 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 800) = 0xD00000000000001ALL;
  *(v4 + 808) = 0x80000001B4D62440;
  *(v4 + 816) = sub_1B4B60C90;
  *(v4 + 824) = v23;
  *(v4 + 832) = 0u;
  return v4;
}

id sub_1B4B5E940(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v6 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v8 = *v5;
      v9 = &qword_1EB8A8E88;
      v10 = &unk_1B4D25A30;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v8 = *v5;
      goto LABEL_13;
    }

LABEL_8:
    sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v8 = *v5;
      v9 = &qword_1EB8A8E90;
      v10 = &unk_1B4D2C9E0;
LABEL_11:
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v9, v10) + 48);
      v13 = &qword_1EB8A6830;
      v14 = &unk_1B4D1AB40;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v8 = *v5;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA8, &unk_1B4D25A50) + 48);
  v13 = &qword_1EB8A6868;
  v14 = &unk_1B4D1AB80;
LABEL_12:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  (*(*(v15 - 8) + 8))(v5 + v12, v15);
LABEL_13:
  [v8 effectiveTypeIdentifier];

  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v17 = result;
    v11 = sub_1B4D1818C();

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4B5EB50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v13 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v15 = &qword_1EB8A8E98;
    v16 = &unk_1B4D25A40;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
      return 0;
    }

    v15 = &qword_1EB8A8EA8;
    v16 = &unk_1B4D25A50;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  (*(v7 + 32))(v12, v5 + *(v17 + 48), v6);
  FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v18);
  v20 = v19;
  sub_1B4D1745C();
  v21 = sub_1B4D12160();
  v22 = sub_1B4D12A28(v9);

  v23 = *(v7 + 8);
  v23(v9, v6);
  v23(v12, v6);
  return v22;
}

uint64_t sub_1B4B5EDD0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v6 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8[1] = *v5;
    return sub_1B4D18D5C();
  }

  else
  {
    sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5EEEC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v6 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v5;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0) + 48);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
    return qword_1B4D32E50[v7];
  }

  else
  {
    sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5F05C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v10 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0);
    (*(v7 + 32))(v9, &v5[*(v11 + 48)], v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v13 = sub_1B4BCA7BC(v12);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v14 = sub_1B4D15F5C(v9, v13);

    (*(v7 + 8))(v9, v6);
    return v14;
  }

  else
  {
    sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5F34C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v10 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v11 = *v5;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E90, &unk_1B4D2C9E0);
    (*(v7 + 32))(v9, v5 + *(v12 + 48), v6);
    v13 = sub_1B4D133E8(v9, v11, 0, 1);

    (*(v7 + 8))(v9, v6);
    return v13;
  }

  else
  {
    sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5F554(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v13 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E88, &unk_1B4D25A30);
    (*(v7 + 32))(v12, v5 + *(v14 + 48), v6);
    FIUnitManager.userMeasurementUnitForElevation()(v15);
    v17 = v16;
    sub_1B4D1745C();
    v18 = sub_1B4D12160();
    sub_1B499221C();
    v19 = sub_1B4D1878C();

    v20 = *(v7 + 8);
    v20(v9, v6);
    v20(v12, v6);
    return v19;
  }

  else
  {
    sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5F7C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4D1794C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4D1796C();
  __swift_project_value_buffer(v6, qword_1EDC3CE48);
  type metadata accessor for WorkoutAwardsFact(0);
  (*(v3 + 104))(v5, *MEMORY[0x1E6969A10], v2);
  v7 = sub_1B4D1792C();
  (*(v3 + 8))(v5, v2);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  if (v7)
  {
    v8 = 1936287828;
  }

  else
  {
    v8 = 1953718604;
  }

  MEMORY[0x1B8C7C620](v8, 0xE400000000000000);

  MEMORY[0x1B8C7C620](0x6B65657720, 0xE500000000000000);
  return v10[0];
}

uint64_t sub_1B4B5F984(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v12 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1B4B61320(v5, v11, type metadata accessor for WorkoutAwardsFact.RingValue);
    sub_1B4B61C64(v11, v8, type metadata accessor for WorkoutAwardsFact.RingValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1B4AF3D58(v11, type metadata accessor for WorkoutAwardsFact.RingValue);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        (*(*(v17 - 8) + 8))(v8, v17);
        return 0x6573696372657845;
      }

      else
      {
        sub_1B4AF3D58(v11, type metadata accessor for WorkoutAwardsFact.RingValue);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
        (*(*(v19 - 8) + 8))(v8, v19);
        return 0x646E617453;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v14 = &qword_1EB8A6850;
        v15 = &unk_1B4D1BC10;
      }

      else
      {
        v14 = &qword_1EB8A6868;
        v15 = &unk_1B4D1AB80;
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      (*(*(v18 - 8) + 8))(v8, v18);
      sub_1B4AF3D58(v11, type metadata accessor for WorkoutAwardsFact.RingValue);
      return 1702260557;
    }
  }

  else
  {
    sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5FD9C(uint64_t a1)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v38 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  v20 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(v1 + *(v20 + 24), v13, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() - 7 > 1)
  {
    v28 = type metadata accessor for WorkoutAwardsFact.AwardType;
    v29 = v13;
  }

  else
  {
    sub_1B4B61320(v13, v19, type metadata accessor for WorkoutAwardsFact.RingValue);
    sub_1B4B61320(v19, v16, type metadata accessor for WorkoutAwardsFact.RingValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      v23 = v39;
      v22 = v40;
      (*(v39 + 32))(v10, v16, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
      sub_1B4D18F8C();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1B4D1B2D0;
      sub_1B4D18F4C();
      sub_1B4D18F5C();
      sub_1B4D18F6C();
      sub_1B4D18F7C();
      v25 = sub_1B4BCA7BC(v24);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v26 = sub_1B4D15F5C(v10, v25);

      (*(v23 + 8))(v10, v22);
      return v26;
    }

    if (!EnumCaseMultiPayload)
    {
      v30 = v38;
      (*(v38 + 32))(v7, v16, v2);
      FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v31);
      v33 = v32;
      sub_1B4D1745C();
      v34 = sub_1B4D12160();
      v35 = sub_1B4D12A28(v4);

      v36 = *(v30 + 8);
      v36(v4, v2);
      v36(v7, v2);
      return v35;
    }

    v28 = type metadata accessor for WorkoutAwardsFact.RingValue;
    v29 = v16;
  }

  sub_1B4AF3D58(v29, v28);
  return 0;
}

uint64_t sub_1B4B60288(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v6 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v7 = sub_1B4D125A4();
    v8 = sub_1B4D1863C();
    v9 = [v7 stringFromNumber_];

    if (v9)
    {
      v10 = sub_1B4D1818C();

      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

unint64_t sub_1B4B603F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v6 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 13 || EnumCaseMultiPayload == 10)
  {
    v8 = *v5;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
      return 0;
    }

    v8 = *v5;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E98, &unk_1B4D25A40) + 48);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    (*(*(v10 - 8) + 8))(&v5[v9], v10);
  }

  result = 1701998403;
  switch(v8)
  {
    case 1:
      return result;
    case 2:
      result = 0x676E696C637943;
      break;
    case 3:
      result = 0x65636E6144;
      break;
    case 4:
    case 5:
      result = 0x206F7420656D6954;
      break;
    case 6:
      result = 1414089032;
      break;
    case 7:
      result = 0x69786F626B63694BLL;
      break;
    case 8:
      result = 0x697461746964654DLL;
      break;
    case 9:
      result = 0x736574616C6950;
      break;
    case 10:
      result = 0x676E69776F52;
      break;
    case 11:
      result = 0x6874676E65727453;
      break;
    case 12:
      result = 0x6C696D6461657254;
      break;
    case 13:
      result = 1634168665;
      break;
    case 14:
      result = 0x726568744FLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1B4B606CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v6 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 11)
  {
    v8[1] = *v5;
    return sub_1B4D18D5C();
  }

  else
  {
    sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B607E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v6 + 24), v5, type metadata accessor for WorkoutAwardsFact.AwardType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 12 || EnumCaseMultiPayload == 13)
  {
    v8 = sub_1B4D125A4();
    v9 = sub_1B4D1863C();
    v10 = [v8 stringFromNumber_];

    if (v10)
    {
      v11 = sub_1B4D1818C();

      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B4AF3D58(v5, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for WorkoutAwardsFact(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1B4D1777C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + *(v1 + 20), v5);
  v7 = (v0 + v3 + *(v1 + 24));
  type metadata accessor for WorkoutAwardsFact.AwardType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_31;
        }

        v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0) + 48);
        v10 = &qword_1EB8A6850;
        v11 = &unk_1B4D1BC10;
        goto LABEL_21;
      }

      v17 = &qword_1EB8A8EA8;
      v18 = &unk_1B4D25A50;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v17 = &qword_1EB8A8E98;
      v18 = &unk_1B4D25A40;
LABEL_20:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v17, v18) + 48);
      v10 = &qword_1EB8A6868;
      v11 = &unk_1B4D1AB80;
      goto LABEL_21;
    }

    v12 = &qword_1EB8A8E90;
    v13 = &unk_1B4D2C9E0;
LABEL_18:
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) + 48);
    v10 = &qword_1EB8A6830;
    v11 = &unk_1B4D1AB40;
LABEL_21:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    (*(*(v19 - 8) + 8))(v7 + v9, v19);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {

      goto LABEL_31;
    }

    v12 = &qword_1EB8A8E88;
    v13 = &unk_1B4D25A30;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 7)
  {
    type metadata accessor for WorkoutAwardsFact.RingValue(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }

LABEL_26:
    if (v14 != 2)
    {
      if (v14 != 3)
      {
        goto LABEL_31;
      }

      v15 = &qword_1EB8A6870;
      v16 = &unk_1B4D1C2C0;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 8)
  {
    goto LABEL_31;
  }

  type metadata accessor for WorkoutAwardsFact.RingValue(0);
  v14 = swift_getEnumCaseMultiPayload();
  if (v14 > 1)
  {
    goto LABEL_26;
  }

  if (!v14)
  {
LABEL_15:
    v15 = &qword_1EB8A6868;
    v16 = &unk_1B4D1AB80;
LABEL_30:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    (*(*(v20 - 8) + 8))(v7, v20);
    goto LABEL_31;
  }

LABEL_24:
  if (v14 == 1)
  {
LABEL_29:
    v15 = &qword_1EB8A6850;
    v16 = &unk_1B4D1BC10;
    goto LABEL_30;
  }

LABEL_31:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}