void sub_1B4BF2D8C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  v11 = *a1;
  v12 = *(a1 + 16);
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 == 4)
      {
        v17 = [objc_opt_self() meters];
        *(a2 + 24) = v4;
        __swift_allocate_boxed_opaque_existential_1(a2);
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        sub_1B4D1741C();
        return;
      }

      goto LABEL_17;
    }

    v21 = [objc_opt_self() meters];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    (*(v5 + 16))(v7, v10, v4);
    DistanceReference.init(rawValue:)(v7, &v26);
    v22 = v26;
    if (v26 == 16)
    {
      (*(v5 + 8))(v10, v4);
LABEL_17:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    *(a2 + 24) = &type metadata for DistanceReference;
    *a2 = v22;
    (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (!*(a1 + 16))
    {
      v18 = *(a1 + 8);

      v19._countAndFlagsBits = v11;
      v19._object = v18;
      DayOfWeek.init(rawValue:)(v19);
      v20 = v25;
      if (v25 != 7)
      {
        *(a2 + 24) = &type metadata for DayOfWeek;
        *a2 = v20;
        return;
      }

      goto LABEL_17;
    }

    if (v12 == 1)
    {
      if (v11 >= 0x18)
      {
        if (qword_1EDC3CEC8 != -1)
        {
          swift_once();
        }

        v13 = sub_1B4D17F6C();
        __swift_project_value_buffer(v13, qword_1EDC3CED0);
        v14 = sub_1B4D17F5C();
        v15 = sub_1B4D1871C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134217984;
          *(v16 + 4) = v11;
          _os_log_impl(&dword_1B4953000, v14, v15, "Invalid hourOfDay: %lld", v16, 0xCu);
          MEMORY[0x1B8C7DDA0](v16, -1, -1);
        }

        goto LABEL_17;
      }

      *(a2 + 24) = &type metadata for HourOfDay;
    }

    else
    {
      type metadata accessor for _HKPrivateWeatherCondition(0);
      *(a2 + 24) = v23;
    }

    *a2 = v11;
  }
}

void *sub_1B4BF3114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A0, &qword_1B4D27A98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  result = sub_1B4BF42F4(a1, v20);
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v16 = swift_dynamicCast();
    v17 = *(v9 + 56);
    if (v16)
    {
      v17(v7, 0, 1, v8);
      sub_1B4BF5D94(v7, v14, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4BF5D94(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v18 = *v11;
      result = sub_1B4BF5E64(v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      *a2 = v18;
    }

    else
    {
      v17(v7, 1, 1, v8);
      sub_1B4975024(v7, &qword_1EB8A93A0, &qword_1B4D27A98);
      sub_1B4BF5D40();
      swift_allocError();
      *v19 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

void *sub_1B4BF3370@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  result = sub_1B4BF42F4(a1, v19);
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v16 = swift_dynamicCast();
    v17 = *(v9 + 56);
    if (v16)
    {
      v17(v7, 0, 1, v8);
      sub_1B4BF5D94(v7, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4BF5DFC(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4BE8E70(v11, a2);
      return sub_1B4BF5E64(v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    else
    {
      v17(v7, 1, 1, v8);
      sub_1B4975024(v7, &qword_1EB8A9398, &qword_1B4D27A88);
      sub_1B4BF5D40();
      swift_allocError();
      *v18 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B4BF35E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(a2);
  if (!v4)
  {
    v8 = result;

    *a1 = v8;
    a1[1] = a3;
  }

  return result;
}

uint64_t sub_1B4BF3634(uint64_t a1, char a2, uint64_t a3)
{
  v24 = a1;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v25 = &v27;
  v26 = a3;
  sub_1B4BF5CF8(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  result = sub_1B4D17DAC();
  if (!v3)
  {
    v22 = v7;
    v23 = 0;
    v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
    v16 = *(v15 + 20);
    v17 = v24;
    sub_1B4975024(v24 + v16, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4BF5D94(v13, v17 + v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    v18 = (*(v11 + 56))(v17 + v16, 0, 1, v10);
    MEMORY[0x1EEE9AC00](v18);
    *(&v21 - 2) = &v26;
    *(&v21 - 1) = &v27;
    sub_1B4BF5CF8(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    v19 = v23;
    result = sub_1B4D17DAC();
    if (!v19)
    {
      v20 = *(v15 + 24);
      sub_1B4975024(v17 + v20, &qword_1EB8A7E90, &unk_1B4D25C60);
      sub_1B4BF5D94(v9, v17 + v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      return (*(v22 + 56))(v17 + v20, 0, 1, v6);
    }
  }

  return result;
}

uint64_t sub_1B4BF3958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a3;
  v25 = a2;
  sub_1B4BF5CF8(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  result = sub_1B4D17DAC();
  if (!v3)
  {
    v22 = v7;
    v23 = 0;
    v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
    v16 = *(v15 + 20);
    v17 = v24;
    sub_1B4975024(v24 + v16, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4BF5D94(v13, v17 + v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    v18 = (*(v11 + 56))(v17 + v16, 0, 1, v10);
    MEMORY[0x1EEE9AC00](v18);
    *(&v21 - 2) = &v26;
    *(&v21 - 1) = a2;
    sub_1B4BF5CF8(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    v19 = v23;
    result = sub_1B4D17DAC();
    if (!v19)
    {
      v20 = *(v15 + 24);
      sub_1B4975024(v17 + v20, &qword_1EB8A7E90, &unk_1B4D25C60);
      sub_1B4BF5D94(v9, v17 + v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      return (*(v22 + 56))(v17 + v20, 0, 1, v6);
    }
  }

  return result;
}

uint64_t sub_1B4BF3C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v25 = &v27;
  v26 = a3;
  sub_1B4BF5CF8(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  result = sub_1B4D17DAC();
  if (!v3)
  {
    v22 = v7;
    v23 = 0;
    v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
    v16 = *(v15 + 20);
    v17 = v24;
    sub_1B4975024(v24 + v16, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4BF5D94(v13, v17 + v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    v18 = (*(v11 + 56))(v17 + v16, 0, 1, v10);
    MEMORY[0x1EEE9AC00](v18);
    *(&v21 - 2) = &v26;
    *(&v21 - 1) = &v27;
    sub_1B4BF5CF8(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    v19 = v23;
    result = sub_1B4D17DAC();
    if (!v19)
    {
      v20 = *(v15 + 24);
      sub_1B4975024(v17 + v20, &qword_1EB8A7E90, &unk_1B4D25C60);
      sub_1B4BF5D94(v9, v17 + v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      return (*(v22 + 56))(v17 + v20, 0, 1, v6);
    }
  }

  return result;
}

uint64_t sub_1B4BF3F9C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v17 = a2;
  DistanceReference.rawValue.getter();
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v11 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_1B4D1742C();
  v14 = v13;
  v12(v10, v4);
  result = sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  return result;
}

uint64_t sub_1B4BF4140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  (*(v5 + 16))(v17 - v10, a2, v4, v9);
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v12 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v11, v4);
  result = sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  return result;
}

uint64_t sub_1B4BF42F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  sub_1B4974FBC(a1, &v18 - v11, &qword_1EB8A7E80, &unk_1B4D25C50);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  result = (*(*(v13 - 8) + 48))(v12, 1, v13);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      sub_1B4BF5D94(v12, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      *(a2 + 24) = v4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v17 = v6;
    }

    else
    {
      v15 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
      sub_1B4BF5D94(v12, v9, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      *(a2 + 24) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v17 = v9;
    }

    return sub_1B4BF5D94(v17, boxed_opaque_existential_1, v15);
  }

  return result;
}

void sub_1B4BF4528(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC200, &unk_1B4D3B300);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v52 - v14);
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_22;
  }

  v54 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  v53 = v17;
  sub_1B4974FBC(a1 + v17, &v52 - v14, &qword_1EB8AC200, &unk_1B4D3B300);
  v55 = v8;
  v18 = *(v8 + 32);
  v66 = *v15;
  v19 = v66;
  v57 = v16;
  v61 = v7;
  v62 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v21 = sub_1B49E9C38(v19);
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v22;
  if (v20[3] < v26)
  {
    sub_1B4984574(v26, a2 & 1);
    v21 = sub_1B49E9C38(v19);
    if ((v27 & 1) != (v28 & 1))
    {
LABEL_5:
      sub_1B4D18E1C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v31 = v21;
  sub_1B4988954();
  v21 = v31;
  if (v27)
  {
LABEL_9:
    v29 = swift_allocError();
    swift_willThrow();
    v65 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v55 + 8))(v62, v61);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = *a3;
  *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
  *(v32[6] + 8 * v21) = v19;
  v33 = v32[7];
  v56 = *(v55 + 72);
  v34 = v61;
  v18((v33 + v56 * v21), v62, v61);
  v35 = v32[2];
  v25 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v25)
  {
    v32[2] = v36;
    v37 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v38 = v60 + v58 + v53;
    v39 = 1;
    while (v39 < *(v37 + 16))
    {
      sub_1B4974FBC(v38, v15, &qword_1EB8AC200, &unk_1B4D3B300);
      v66 = *v15;
      v40 = v66;
      v18(v62, v15 + v57, v34);
      v41 = *a3;
      v42 = sub_1B49E9C38(v40);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v25 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v25)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_1B4984574(v46, 1);
        v42 = sub_1B49E9C38(v40);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      *(v49[6] + 8 * v42) = v66;
      v34 = v61;
      v18((v49[7] + v56 * v42), v62, v61);
      v50 = v49[2];
      v25 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      ++v39;
      v49[2] = v51;
      v38 += v58;
      v37 = v60;
      if (v59 == v39)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

void sub_1B4BF4A78(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = sub_1B49EF0C0();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B4984C80(v15, v6 & 1);
    v10 = sub_1B49EF0C0();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for _HKPrivateWeatherCondition(0);
    v10 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1B4988E3C();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v8;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    type metadata accessor for _HKPrivateWeatherCondition(0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v7 = 1;
    while (v7 < a1[2])
    {
      v8 = *(v6 - 1);
      v24 = *v6;
      v25 = *a3;
      v26 = sub_1B49EF0C0();
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1B4984C80(v30, 1);
        v26 = sub_1B49EF0C0();
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + 8 * v26) = v8;
      *(v32[7] + 8 * v26) = v24;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1B4BF4DB8(void *a1)
{
  *a1 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B4D1742C();
  a1[1] = v3;
}

uint64_t sub_1B4BF4E0C(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v14 = *a2;
  sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v10, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(a1, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4BF5D94(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  return result;
}

uint64_t sub_1B4BF4FD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13[-v8];
  v10 = *a2;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v14 = v10;
  sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  result = sub_1B4D17DAC();
  if (!v4)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
    return sub_1B4BF0A84(v9, a1);
  }

  return result;
}

uint64_t sub_1B4BF5140(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  v7 = *a2;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v11 = v7;
  sub_1B4BF5CF8(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4D17DAC();
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  return sub_1B4BF0A84(v6, a1);
}

uint64_t sub_1B4BF52A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14[-v8];
  v10 = *a2;
  v11 = a2[1];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v15 = v10;
  v16 = v11;
  sub_1B4BF5CF8(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  result = sub_1B4D17DAC();
  if (!v4)
  {
    v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    return sub_1B4BF0A84(v9, a1);
  }

  return result;
}

uint64_t sub_1B4BF5418(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v14[1] = *a2;
  v11 = sub_1B49A69C0();
  result = (*(v11 + 32))(&type metadata for CountPropertyValue, v11);
  if (!v2)
  {
    sub_1B4BF5D94(v10, v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4975024(a1, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4BF5D94(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  return result;
}

uint64_t sub_1B4BF5624(uint64_t a1)
{
  v3 = **(v1 + 16);
  result = sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  return result;
}

unint64_t sub_1B4BF5CA4()
{
  result = qword_1EB8AC1E0;
  if (!qword_1EB8AC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1E0);
  }

  return result;
}

uint64_t sub_1B4BF5CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4BF5D40()
{
  result = qword_1EB8AC1E8;
  if (!qword_1EB8AC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1E8);
  }

  return result;
}

uint64_t sub_1B4BF5D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BF5DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BF5E64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id WorkoutVoiceLongestDistanceFact.activityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceLongestDistanceFact(0) + 28));

  return v1;
}

uint64_t type metadata accessor for WorkoutVoiceLongestDistanceFact(uint64_t a1)
{
  result = qword_1EB8AC220;
  if (!qword_1EB8AC220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceLongestDistanceFact.init(value:timescale:activityType:identifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a2;
  *a6 = 17;
  v12 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
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

uint64_t WorkoutVoiceLongestDistanceFact.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutVoiceLongestDistanceFact(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutVoiceLongestDistanceFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WorkoutVoiceLongestDistanceFact.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceLongestDistanceFact(0) + 32));

  return v1;
}

uint64_t sub_1B4BF62A0()
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

uint64_t sub_1B4BF633C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4BF723C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4BF6364(uint64_t a1)
{
  v2 = sub_1B4BF6F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BF63A0(uint64_t a1)
{
  v2 = sub_1B4BF6F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceLongestDistanceFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC208, &unk_1B4D3B418);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BF6F50();
  sub_1B4D18EFC();
  v20 = *v3;
  v19 = 0;
  sub_1B4B59AD0();
  sub_1B4D18D0C();
  if (!v2)
  {
    v12 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
    v9 = v12;
    v17 = v3[*(v12 + 24)];
    v16 = 2;
    sub_1B4B59B24();
    sub_1B4D18D0C();
    v13 = *&v3[*(v9 + 28)];
    v15 = 3;
    v10 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18D0C();

    v14 = 4;
    sub_1B4D18CBC();
  }

  return (*(v6 + 8))(v8, v5);
}

void WorkoutVoiceLongestDistanceFact.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC218, &qword_1B4D3B428);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B4BF6F50();
  v26 = v8;
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    v13 = v11;
    v15 = v24;
    v14 = v25;
    v35 = 0;
    sub_1B4B59B78();
    sub_1B4D18C0C();
    *v13 = v36;
    v34 = 1;
    sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
    sub_1B4D18C0C();
    (*(v14 + 32))(&v13[*(v9 + 20)], v6, v4);
    v32 = 2;
    sub_1B4B59BCC();
    v16 = v26;
    sub_1B4D18C0C();
    v13[*(v9 + 24)] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v22 = v9;
    v31 = 3;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18C0C();
    *&v13[*(v22 + 28)] = v29;
    v30 = 4;
    v17 = sub_1B4D18BBC();
    v19 = v18;
    (*(v15 + 8))(v16, v27);
    v20 = v23;
    v21 = &v13[*(v22 + 32)];
    *v21 = v17;
    v21[1] = v19;
    sub_1B4B94EA4(v13, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    sub_1B4BF6FA4(v13);
  }
}

uint64_t _s19FitnessIntelligence31WorkoutVoiceLongestDistanceFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38[-v9];
  v11 = *a1;
  v12 = *a2;
  if (v11 <= 0x11)
  {
    if (v11 == 16)
    {
      if (v12 != 16)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v11 == 17)
    {
      if (v12 != 17)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

LABEL_10:
    if ((v12 & 0xFC) == 0x10)
    {
      goto LABEL_29;
    }

    v38[15] = v11;
    v38[14] = v12;
    DistanceReference.rawValue.getter();
    DistanceReference.rawValue.getter();
    sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
    v13 = sub_1B4D1816C();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v10, v4);
    if ((v13 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (v11 != 18)
  {
    if (v11 == 19)
    {
      if (v12 != 19)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v12 != 18)
  {
    goto LABEL_29;
  }

LABEL_16:
  v15 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4975E34(a1[v15[6]], a2[v15[6]]) & 1) == 0)
  {
    goto LABEL_29;
  }

  v16 = v15[7];
  v17 = *&a1[v16];
  v18 = *&a2[v16];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19 || (v20 = v19, objc_opt_self(), (v21 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if (sub_1B4D187AC())
    {
      goto LABEL_24;
    }

LABEL_29:
    v36 = 0;
    return v36 & 1;
  }

  v22 = v21;
  v23 = v17;
  v24 = v18;
  [v20 coordinate];
  v26 = v25;
  [v22 coordinate];
  if (v26 != v27)
  {

    goto LABEL_29;
  }

  [v20 coordinate];
  v29 = v28;
  [v22 coordinate];
  v31 = v30;

  if (v29 != v31)
  {
    goto LABEL_29;
  }

LABEL_24:
  v32 = v15[8];
  v33 = *&a1[v32];
  v34 = *&a1[v32 + 8];
  v35 = &a2[v32];
  if (v33 == *v35 && v34 == *(v35 + 1))
  {
    v36 = 1;
  }

  else
  {
    v36 = sub_1B4D18DCC();
  }

  return v36 & 1;
}

unint64_t sub_1B4BF6F50()
{
  result = qword_1EB8AC210;
  if (!qword_1EB8AC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC210);
  }

  return result;
}

uint64_t sub_1B4BF6FA4(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4BF7028(uint64_t a1)
{
  sub_1B4BBAAF0(319, &qword_1EDC3CE78, &qword_1EDC3CB80, 0x1E696B058, MEMORY[0x1E6968070]);
  if (v1 <= 0x3F)
  {
    sub_1B4BBAAF0(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4BF7138()
{
  result = qword_1EB8AC230;
  if (!qword_1EB8AC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC230);
  }

  return result;
}

unint64_t sub_1B4BF7190()
{
  result = qword_1EB8AC238;
  if (!qword_1EB8AC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC238);
  }

  return result;
}

unint64_t sub_1B4BF71E8()
{
  result = qword_1EB8AC240;
  if (!qword_1EB8AC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC240);
  }

  return result;
}

uint64_t sub_1B4BF723C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
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

__n128 AudioSynthesisVoiceAsset.init(voice:userSelected:downloadStatus:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = a3[1].n128_u8[0];
  v7 = a3[1].n128_u8[1];
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = a2;
  result = *a3;
  *(a4 + 40) = *a3;
  *(a4 + 56) = v6;
  *(a4 + 57) = v7;
  return result;
}

FitnessIntelligence::AudioSynthesisVoiceAsset::DownloadProgress __swiftcall AudioSynthesisVoiceAsset.DownloadProgress.init(bytesWritten:bytesExpected:)(Swift::Int bytesWritten, Swift::Int bytesExpected)
{
  *v2 = bytesWritten;
  v2[1] = bytesExpected;
  result.bytesExpected = bytesExpected;
  result.bytesWritten = bytesWritten;
  return result;
}

double AudioSynthesisVoiceAsset.voice.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

__n128 AudioSynthesisVoiceAsset.downloadStatus.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 57);
  result = *(v1 + 40);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

uint64_t sub_1B4BF7508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_1B4BF7550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioSynthesisVoiceAsset.DownloadStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioSynthesisVoiceAsset.DownloadStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_1B4BF7604(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double WorkoutPropertyRecord.init(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v37 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v34 = *a1;
  v33 = v14;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v15 + 28), v9, &qword_1EB8A7CE8, &qword_1B4D201A0);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_1B4D17BBC();
    v17 = &v13[v10[5]];
    *v17 = 0;
    *(v17 + 1) = 0;
    v18 = &v13[v10[6]];
    *v18 = 0;
    *(v18 + 1) = 0;
    v19 = &v13[v10[7]];
    *v19 = 0;
    v19[8] = 1;
    v20 = &v13[v10[8]];
    *v20 = 0;
    v20[8] = 1;
    v21 = &v13[v10[9]];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = &v13[v10[10]];
    *v22 = 0;
    *(v22 + 1) = 0;
    if (v16(v9, 1, v10) != 1)
    {
      sub_1B4975024(v9, &qword_1EB8A7CE8, &qword_1B4D201A0);
    }
  }

  else
  {
    sub_1B4BF7C78(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  }

  v23 = v46;
  WorkoutPropertyDimensions.init(_:)(v13, v44);
  if (v23)
  {
    sub_1B4BF7C18(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
  }

  else
  {
    v40 = v44[0];
    v41 = v44[1];
    v42 = v44[2];
    v43 = v45;
    sub_1B4974FBC(a1 + *(v15 + 32), v5, &qword_1EB8A7CD8, &unk_1B4D20190);
    v25 = *(v36 + 48);
    v26 = v37;
    if (v25(v5, 1, v37) == 1)
    {
      v27 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
      v28 = v38;
      (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
      sub_1B4D17BBC();
      if (v25(v5, 1, v26) != 1)
      {
        sub_1B4975024(v5, &qword_1EB8A7CD8, &unk_1B4D20190);
      }
    }

    else
    {
      v28 = v38;
      sub_1B4BF7C78(v5, v38, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    }

    sub_1B4BEEFE8(v28, v39);
    sub_1B4BF7C18(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
    sub_1B4BF7C18(v28, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    v29 = v35;
    sub_1B496F398(v39, v35 + 72);
    v30 = v33;
    *v29 = v34;
    *(v29 + 8) = v30;
    v31 = v41;
    *(v29 + 16) = v40;
    *(v29 + 32) = v31;
    result = *&v42;
    *(v29 + 48) = v42;
    *(v29 + 64) = v43;
  }

  return result;
}

uint64_t WorkoutPropertyRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4BF80F8(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BF7C18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BF7C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BF7CE0(char *a1, uint64_t a2)
{
  v25 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v21 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  *a1 = *a2;
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  v23[0] = v11;
  v23[1] = v12;
  v23[2] = v13;
  v24 = *(a2 + 64);
  v22 = v23;
  sub_1B4BF80F8(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  sub_1B4D17DAC();
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  v15 = *(v14 + 28);
  sub_1B4975024(&a1[v15], &qword_1EB8A7CE8, &qword_1B4D201A0);
  sub_1B4BF7C78(v10, &a1[v15], type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  (*(v8 + 56))(&a1[v15], 0, 1, v7);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  __swift_project_boxed_opaque_existential_1((a2 + 72), v16);
  result = WorkoutProperty.protobuf()(v16, v17);
  if (!v2)
  {
    v19 = *(v14 + 32);
    sub_1B4975024(&a1[v19], &qword_1EB8A7CD8, &unk_1B4D20190);
    sub_1B4BF7C78(v6, &a1[v19], type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    return (*(v21 + 56))(&a1[v19], 0, 1, v25);
  }

  return result;
}

uint64_t sub_1B4BF8038()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4BF80F8(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BF80F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HeartRateZonesFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4BF81CC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t static HeartRateZonesFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49C016C;

  return sub_1B4BF8608(a1, a3);
}

uint64_t sub_1B4BF82FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49C0344;

  return sub_1B4BF8608(a1, a3);
}

uint64_t sub_1B4BF83C0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0.0;
  if (v6)
  {
    while (1)
    {
      v9 = v2;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v8 = v8 + *(*(result + 56) + ((v9 << 9) | (8 * v10)));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_9;
    }
  }

  if (*(result + 16))
  {
    result = sub_1B49EF0B0(4);
    if ((v11 & 1) != 0 && *(*(v1 + 56) + 8 * result) / v8 * 100.0 > 20.0)
    {
      return 5;
    }
  }

  v12 = 1 << *(v1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v1 + 64);
  if (v14)
  {
    v15 = 0;
    v16 = __clz(__rbit64(v14));
    v17 = (v14 - 1) & v14;
    v18 = (v12 + 63) >> 6;
LABEL_23:
    v22 = *(v1 + 48);
    v23 = *(v1 + 56);
    v24 = *(v22 + 8 * v16);
    v25 = *(v23 + 8 * v16);
    if (!v17)
    {
      goto LABEL_25;
    }

    do
    {
      v26 = v15;
LABEL_29:
      v27 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v28 = (v26 << 9) | (8 * v27);
      if (v25 < *(v23 + v28))
      {
        v24 = *(v22 + v28);
        v25 = *(v23 + v28);
      }
    }

    while (v17);
LABEL_25:
    while (1)
    {
      v26 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }

      if (v26 >= v18)
      {
        if (v8 <= 0.0)
        {
          return 0;
        }

        result = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_39;
        }

        return result;
      }

      v17 = *(v3 + 8 * v26);
      ++v15;
      if (v17)
      {
        v15 = v26;
        goto LABEL_29;
      }
    }
  }

  v19 = 0;
  v20 = 0;
  v18 = (v12 + 63) >> 6;
  while (v18 - 1 != v20)
  {
    v15 = v20 + 1;
    v21 = *(v1 + 72 + 8 * v20);
    v19 -= 64;
    ++v20;
    if (v21)
    {
      v17 = (v21 - 1) & v21;
      v16 = __clz(__rbit64(v21)) - v19;
      goto LABEL_23;
    }
  }

  return 0;
}

uint64_t sub_1B4BF8608(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v2[3] = swift_task_alloc();
  v3 = type metadata accessor for WorkoutState(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BF8700, 0, 0);
}

uint64_t sub_1B4BF8700()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_1B49B4670(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B49933E8(v0[3]);
LABEL_11:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v4 = v0[6];
  v5 = v0[4];
  sub_1B49B46E0(v0[3], v4);
  v6 = *(v4 + *(v5 + 96));
  v7 = v0[6];
  if (!v6)
  {
LABEL_8:
    sub_1B49AA7C0(v0[6]);
    goto LABEL_11;
  }

  v8 = sub_1B4CAC70C(v7);
  v9 = *(v8 + 2);
  v10 = 32;
  do
  {
    if (!v9)
    {
      v18 = v0[6];

      sub_1B49AA7C0(v18);

      goto LABEL_11;
    }

    v11 = *&v8[v10];
    v10 += 8;
    --v9;
  }

  while (v11 != 38);

  v12 = sub_1B4BF83C0(v6);
  v14 = v13;
  v16 = v15;

  v17 = v0[6];
  if (v16)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC278, &qword_1B4D3B818);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B4D1A800;
  *(v19 + 32) = v12;
  *(v19 + 40) = v14;
  sub_1B49AA7C0(v17);
LABEL_12:

  v20 = v0[1];

  return v20(v19);
}

unint64_t _s19FitnessIntelligence18HeartRateZonesFactV10makePrompt15promptFormatterSSAA0hJ0C_tF_0()
{
  v1 = *(v0 + 8);
  sub_1B4D1896C();

  v2 = sub_1B4D18D5C();
  MEMORY[0x1B8C7C620](v2);

  MEMORY[0x1B8C7C620](0x20726F6620, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74F0, &unk_1B4D35700);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E63B0];
  *(v3 + 16) = xmmword_1B4D1A800;
  v5 = MEMORY[0x1E69E6438];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = sub_1B4D1819C();
  MEMORY[0x1B8C7C620](v6);

  MEMORY[0x1B8C7C620](0xD000000000000010, 0x80000001B4D62ED0);
  return 0xD000000000000019;
}

unint64_t sub_1B4BF8A00()
{
  result = qword_1EB8AC248;
  if (!qword_1EB8AC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC248);
  }

  return result;
}

unint64_t sub_1B4BF8A80()
{
  result = qword_1EB8AC250;
  if (!qword_1EB8AC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC250);
  }

  return result;
}

unint64_t sub_1B4BF8AD4()
{
  result = qword_1EB8AC258;
  if (!qword_1EB8AC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC258);
  }

  return result;
}

unint64_t sub_1B4BF8B2C()
{
  result = qword_1EB8AC260;
  if (!qword_1EB8AC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC260);
  }

  return result;
}

uint64_t sub_1B4BF8BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BF8BE8()
{
  result = qword_1EB8AC268;
  if (!qword_1EB8AC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC268);
  }

  return result;
}

unint64_t sub_1B4BF8C3C()
{
  result = qword_1EB8AC270;
  if (!qword_1EB8AC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC270);
  }

  return result;
}

uint64_t sub_1B4BF8CD8(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v5, a2);
  v10 = objc_opt_self();
  v11 = [v10 *a3];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  v12 = [v10 seconds];
  sub_1B4D1745C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B4BF8E6C(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = [objc_opt_self() *a3];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  return sub_1B4D1741C();
}

uint64_t sub_1B4BF8F14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  __swift_allocate_value_buffer(v0, qword_1EB8F3B88);
  __swift_project_value_buffer(v0, qword_1EB8F3B88);
  v1 = [objc_opt_self() kilojoules];
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  return sub_1B4D1741C();
}

uint64_t sub_1B4BF8FC0@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D173FC();
  sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = sub_1B4D180FC();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) == 0)
  {
    sub_1B4D173FC();
    v10 = sub_1B4D180FC();
    v9(v7, v4);
    if ((v10 & 1) == 0)
    {
      sub_1B4D173FC();
      sub_1B4D180FC();
      v9(v7, v4);
    }
  }

  sub_1B4D173FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
  *(a3 + *(result + 28)) = 0;
  return result;
}

uint64_t sub_1B4BF91E0@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D173FC();
  sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = sub_1B4D180FC();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) == 0)
  {
    sub_1B4D173FC();
    sub_1B4D180FC();
    v9(v7, v4);
  }

  sub_1B4D173FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
  *(a3 + *(result + 28)) = 0;
  return result;
}

uint64_t sub_1B4BF93C4@<X0>(uint64_t a2@<X8>)
{
  v14 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = objc_opt_self();
  v7 = [v6 minutes];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = sub_1B4D180FC();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if ((v8 & 1) == 0)
  {
    v10 = [v6 minutes];
    sub_1B4D1741C();
    sub_1B4D180FC();
    v9(v5, v2);
  }

  if (qword_1EB8A6458 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EB8F3B40);
  v11 = v14;
  sub_1B4D173FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
  *(v11 + *(result + 28)) = 0;
  return result;
}

void *sub_1B4BF9640(uint64_t a1, int a2)
{
  LODWORD(v154) = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v134 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v134 - v10;
  v11 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v12 = objc_opt_self();
  v13 = [v12 kilometers];
  v153 = v11;
  LOBYTE(v11) = sub_1B4D187AC();

  if (v11 & 1) != 0 || (v14 = [v12 meters], v15 = sub_1B4D187AC(), v14, (v15))
  {
    if (qword_1EB8A6460 != -1)
    {
      swift_once();
    }

    v16 = &selRef_kilometers;
    v17 = qword_1EB8F3B58;
  }

  else
  {
    if (qword_1EB8A6468 != -1)
    {
      swift_once();
    }

    v16 = &selRef_miles;
    v17 = qword_1EB8F3B70;
  }

  v18 = v155;
  v19 = __swift_project_value_buffer(v2, v17);
  (*(v3 + 16))(v18, v19, v2);
  v20 = [v12 *v16];
  sub_1B4D1745C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC280, &qword_1B4D3B840);
  v143 = v8;
  v137 = v3;
  v149 = v2;
  if (v154)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1CBF0;
    *(inited + 32) = 37;
    v138 = inited + 32;
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC288, &qword_1B4D3B848);
    v22 = swift_initStackObject();
    v154 = xmmword_1B4D1A800;
    *(v22 + 16) = xmmword_1B4D1A800;
    *(v22 + 32) = 3;
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC290, &unk_1B4D3B850);
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180) - 8);
    v153 = *(v23 + 72);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v150 = *(v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v154;
    sub_1B4BF8FC0(v25 + v24);
    *(v22 + 40) = v25;
    v26 = sub_1B4C954D8(v22);
    swift_setDeallocating();
    sub_1B4975024(v22 + 32, &qword_1EB8AC298, &qword_1B4D3B860);
    *(inited + 40) = v26;
    *(inited + 48) = 52;
    v27 = swift_initStackObject();
    *(v27 + 16) = v154;
    *(v27 + 32) = 3;
    v28 = swift_allocObject();
    *(v28 + 16) = v154;
    sub_1B4BF8FC0(v28 + v24);
    *(v27 + 40) = v28;
    v29 = sub_1B4C954D8(v27);
    swift_setDeallocating();
    sub_1B4975024(v27 + 32, &qword_1EB8AC298, &qword_1B4D3B860);
    *(inited + 56) = v29;
    *(inited + 64) = 13;
    v30 = swift_initStackObject();
    *(v30 + 16) = v154;
    *(v30 + 32) = 3;
    v31 = swift_allocObject();
    *(v31 + 16) = v154;
    sub_1B4BF91E0(v31 + v24);
    *(v30 + 40) = v31;
    v32 = sub_1B4C954D8(v30);
    swift_setDeallocating();
    sub_1B4975024(v30 + 32, &qword_1EB8AC298, &qword_1B4D3B860);
    *(inited + 72) = v32;
    *(inited + 80) = 71;
    v33 = swift_initStackObject();
    *(v33 + 16) = v154;
    *(v33 + 32) = 3;
    v34 = swift_allocObject();
    *(v34 + 16) = v154;
    sub_1B4BF8FC0(v34 + v24);
    *(v33 + 40) = v34;
    v35 = sub_1B4C954D8(v33);
    swift_setDeallocating();
    sub_1B4975024(v33 + 32, &qword_1EB8AC298, &qword_1B4D3B860);
    *(inited + 88) = v35;
    *(inited + 96) = 70;
    v36 = v155;
    v37 = swift_initStackObject();
    *(v37 + 16) = v154;
    *(v37 + 32) = 3;
    v38 = inited;
    v39 = swift_allocObject();
    *(v39 + 16) = v154;
    v40 = v39 + v24;
    v41 = v143;
    sub_1B4BF8FC0(v40);
    *(v37 + 40) = v39;
    v42 = sub_1B4C954D8(v37);
    swift_setDeallocating();
    sub_1B4975024(v37 + 32, &qword_1EB8AC298, &qword_1B4D3B860);
    v38[13] = v42;
    v43 = v149;
    v44 = v41;
  }

  else
  {
    v45 = swift_initStackObject();
    v142 = v45;
    *(v45 + 16) = xmmword_1B4D1CBF0;
    *(v45 + 32) = 37;
    v138 = v45 + 32;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC288, &qword_1B4D3B848);
    v46 = swift_initStackObject();
    v140 = xmmword_1B4D1B2D0;
    *(v46 + 16) = xmmword_1B4D1B2D0;
    *(v46 + 32) = 1;
    v136 = v46 + 32;
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC290, &unk_1B4D3B850);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
    v48 = *(v47 - 8);
    v151 = *(v48 + 72);
    v49 = v47 - 8;
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v146 = *(v48 + 80);
    v147 = v47 - 8;
    v51 = swift_allocObject();
    v154 = xmmword_1B4D1A800;
    *(v51 + 16) = xmmword_1B4D1A800;
    sub_1B4D173FC();
    v148 = *(v3 + 32);
    v150 = v3 + 32;
    v148(v51 + v50, v5, v2);
    *(v51 + v50 + *(v49 + 36)) = 0;
    *(v46 + 40) = v51;
    *(v46 + 48) = 2;
    v52 = swift_allocObject();
    *(v52 + 16) = v154;
    sub_1B4D173FC();
    v148(v52 + v50, v5, v2);
    *(v52 + v50 + *(v147 + 36)) = 0;
    *(v46 + 56) = v52;
    *(v46 + 64) = 3;
    v53 = swift_allocObject();
    *(v53 + 16) = v154;
    sub_1B4D173FC();
    v54 = v148;
    v148(v53 + v50, v5, v2);
    v55 = v147;
    *(v53 + v50 + *(v147 + 36)) = 0;
    *(v46 + 72) = v53;
    *(v46 + 80) = 4;
    v56 = swift_allocObject();
    *(v56 + 16) = v154;
    v145 = v5;
    sub_1B4D173FC();
    v57 = v5;
    v58 = v149;
    v54(v56 + v50, v57, v149);
    *(v56 + v50 + *(v55 + 36)) = 0;
    *(v46 + 88) = v56;
    v59 = sub_1B4C954D8(v46);
    swift_setDeallocating();
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC298, &qword_1B4D3B860);
    swift_arrayDestroy();
    v60 = v142;
    v142[5] = v59;
    v60[6] = 52;
    v61 = swift_initStackObject();
    *(v61 + 16) = v140;
    *(v61 + 32) = 1;
    v136 = v61 + 32;
    v62 = v50;
    v144 = v50;
    v63 = swift_allocObject();
    *(v63 + 16) = v154;
    v64 = v58;
    v65 = v145;
    sub_1B4D173FC();
    v66 = v148;
    v148(v63 + v62, v65, v64);
    *(v63 + v62 + *(v55 + 36)) = 0;
    *(v61 + 40) = v63;
    *(v61 + 48) = 2;
    v67 = v144;
    v68 = swift_allocObject();
    *(v68 + 16) = v154;
    sub_1B4D173FC();
    v66(v68 + v67, v65, v149);
    *(v68 + v67 + *(v55 + 36)) = 0;
    *(v61 + 56) = v68;
    *(v61 + 64) = 3;
    v69 = swift_allocObject();
    *(v69 + 16) = v154;
    v70 = v69 + v67;
    v71 = v145;
    sub_1B4D173FC();
    v72 = v71;
    v73 = v149;
    v66(v70, v72, v149);
    v74 = v147;
    *(v70 + *(v147 + 36)) = 0;
    *(v61 + 72) = v69;
    *(v61 + 80) = 4;
    v75 = v144;
    v76 = swift_allocObject();
    *(v76 + 16) = v154;
    v77 = v76 + v75;
    v78 = v145;
    sub_1B4D173FC();
    v79 = v78;
    v148(v77, v78, v73);
    *(v77 + *(v74 + 36)) = 0;
    *(v61 + 88) = v76;
    v80 = sub_1B4C954D8(v61);
    swift_setDeallocating();
    swift_arrayDestroy();
    v81 = v142;
    v142[7] = v80;
    v81[8] = 24;
    v82 = swift_initStackObject();
    *(v82 + 16) = v140;
    *(v82 + 32) = 1;
    v136 = v82 + 32;
    v83 = v144;
    v84 = swift_allocObject();
    *(v84 + 16) = v154;
    v135 = v84 + v83;
    sub_1B4D173FC();
    v85 = v148;
    v148(v84 + v83, v79, v73);
    *(v135 + *(v147 + 36)) = 0;
    *(v82 + 40) = v84;
    *(v82 + 48) = 2;
    v86 = swift_allocObject();
    *(v86 + 16) = v154;
    v87 = v145;
    sub_1B4D173FC();
    v85(v86 + v83, v87, v73);
    v88 = v85;
    v89 = v147;
    *(v86 + v83 + *(v147 + 36)) = 0;
    *(v82 + 56) = v86;
    *(v82 + 64) = 3;
    v90 = swift_allocObject();
    *(v90 + 16) = v154;
    v91 = v90 + v83;
    v92 = v145;
    sub_1B4D173FC();
    v93 = v92;
    v94 = v149;
    v88(v91, v93, v149);
    *(v91 + *(v89 + 36)) = 0;
    *(v82 + 72) = v90;
    *(v82 + 80) = 4;
    v95 = v144;
    v96 = swift_allocObject();
    *(v96 + 16) = v154;
    v97 = v96 + v95;
    v98 = v145;
    sub_1B4D173FC();
    v99 = v94;
    v88(v97, v98, v94);
    *(v97 + *(v89 + 36)) = 0;
    *(v82 + 88) = v96;
    v100 = sub_1B4C954D8(v82);
    swift_setDeallocating();
    swift_arrayDestroy();
    v101 = v142;
    v142[9] = v100;
    v101[10] = 13;
    v102 = swift_initStackObject();
    *(v102 + 16) = v140;
    *(v102 + 32) = 1;
    v136 = v102 + 32;
    v103 = v144;
    v104 = swift_allocObject();
    *(v104 + 16) = v154;
    v105 = v104 + v103;
    v106 = v103;
    v107 = v145;
    sub_1B4D173FC();
    v108 = v99;
    v109 = v148;
    v148(v105, v107, v108);
    *(v105 + *(v147 + 36)) = 0;
    *(v102 + 40) = v104;
    *(v102 + 48) = 2;
    v110 = swift_allocObject();
    *(v110 + 16) = v154;
    sub_1B4D173FC();
    v109(v110 + v106, v107, v149);
    v111 = v109;
    v112 = v147;
    *(v110 + v106 + *(v147 + 36)) = 0;
    *(v102 + 56) = v110;
    *(v102 + 64) = 3;
    v113 = swift_allocObject();
    *(v113 + 16) = v154;
    sub_1B4D173FC();
    v114 = v149;
    v111(v113 + v106, v107, v149);
    *(v113 + v106 + *(v112 + 36)) = 0;
    *(v102 + 72) = v113;
    *(v102 + 80) = 4;
    v115 = v144;
    v116 = swift_allocObject();
    *(v116 + 16) = v154;
    v117 = v115;
    sub_1B4D173FC();
    v148(v116 + v115, v107, v114);
    *(v116 + v115 + *(v112 + 36)) = 0;
    *(v102 + 88) = v116;
    v118 = sub_1B4C954D8(v102);
    swift_setDeallocating();
    swift_arrayDestroy();
    v119 = v142;
    v142[11] = v118;
    v119[12] = 46;
    v120 = swift_initStackObject();
    *(v120 + 16) = v140;
    *(v120 + 32) = 1;
    v141 = v120 + 32;
    v121 = swift_allocObject();
    *(v121 + 16) = v154;
    sub_1B4D173FC();
    v148(v121 + v115, v107, v149);
    *(v121 + v115 + *(v147 + 36)) = 0;
    *(v120 + 40) = v121;
    *(v120 + 48) = 2;
    v122 = swift_allocObject();
    *(v122 + 16) = v154;
    sub_1B4D173FC();
    v123 = v107;
    v124 = v107;
    v125 = v148;
    v43 = v149;
    v148(v122 + v115, v123, v149);
    v126 = v147;
    *(v122 + v115 + *(v147 + 36)) = 0;
    *(v120 + 56) = v122;
    *(v120 + 64) = 3;
    v127 = swift_allocObject();
    *(v127 + 16) = v154;
    sub_1B4D173FC();
    v125(v127 + v115, v124, v43);
    *(v127 + v115 + *(v126 + 36)) = 0;
    *(v120 + 72) = v127;
    *(v120 + 80) = 4;
    v36 = v155;
    v128 = swift_allocObject();
    *(v128 + 16) = v154;
    v129 = v128 + v117;
    v38 = v142;
    sub_1B4D173FC();
    v148(v129, v124, v43);
    *(v129 + *(v126 + 36)) = 0;
    *(v120 + 88) = v128;
    v130 = sub_1B4C954D8(v120);
    swift_setDeallocating();
    swift_arrayDestroy();
    v38[13] = v130;
    v44 = v143;
  }

  v131 = sub_1B4C95500(v38);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2A0, &unk_1B4D3B868);
  swift_arrayDestroy();
  v132 = *(v137 + 8);
  v132(v44, v43);
  v132(v36, v43);
  return v131;
}

unint64_t sub_1B4BFA890(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - v7;
  v9 = [objc_opt_self() minutes];
  v39 = v2;
  sub_1B4D1745C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2C8, &unk_1B4D3B8A0);
  if (a1)
  {
    inited = swift_initStackObject();
    v38 = xmmword_1B4D1A800;
    *(inited + 16) = xmmword_1B4D1A800;
    *(inited + 32) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2D0, &unk_1B4D47220);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0) - 8);
    v12 = v3;
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v38;
    sub_1B4BF93C4(v14 + v13);
    *(inited + 40) = v14;
    v15 = sub_1B4C9553C(inited);
    swift_setDeallocating();
    sub_1B4975024(inited + 32, qword_1EB8AC2D8, &qword_1B4D3B8B8);
  }

  else
  {
    v34 = v8;
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_1B4D1B2D0;
    *(v16 + 32) = 1;
    v33 = v16 + 32;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2D0, &unk_1B4D47220);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
    v19 = *(*(v18 - 8) + 80);
    v20 = (v19 + 32) & ~v19;
    *&v38 = *(*(v18 - 8) + 72);
    v36 = v19;
    v21 = v17;
    v22 = swift_allocObject();
    v37 = xmmword_1B4D1A800;
    *(v22 + 16) = xmmword_1B4D1A800;
    v23 = v22 + v20;
    if (qword_1EB8A6450 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v39, qword_1EB8F3B28);
    v31[2] = sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D173FC();
    v32 = v3;
    v31[0] = *(v3 + 32);
    (v31[0])(v23, v5, v39);
    *(v23 + *(v18 + 28)) = 0;
    *(v16 + 40) = v22;
    *(v16 + 48) = 2;
    v35 = v21;
    v25 = swift_allocObject();
    *(v25 + 16) = v37;
    v31[1] = v24;
    sub_1B4D173FC();
    v26 = v31[0];
    (v31[0])(v25 + v20, v5, v39);
    *(v25 + v20 + *(v18 + 28)) = 0;
    *(v16 + 56) = v25;
    *(v16 + 64) = 3;
    v27 = swift_allocObject();
    *(v27 + 16) = v37;
    sub_1B4D173FC();
    v26(v27 + v20, v5, v39);
    *(v27 + v20 + *(v18 + 28)) = 0;
    *(v16 + 72) = v27;
    *(v16 + 80) = 4;
    v28 = swift_allocObject();
    *(v28 + 16) = v37;
    v29 = v28 + v20;
    v12 = v32;
    sub_1B4D173FC();
    v26(v29, v5, v39);
    *(v29 + *(v18 + 28)) = 0;
    *(v16 + 88) = v28;
    v15 = sub_1B4C9553C(v16);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8AC2D8, &qword_1B4D3B8B8);
    swift_arrayDestroy();
    v8 = v34;
  }

  (*(v12 + 8))(v8, v39);
  return v15;
}

unint64_t sub_1B4BFAE5C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v37 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDC36DF8;
  v8 = sub_1B4D187AC();

  v39 = v1;
  if (v8 & 1) != 0 || (v9 = [objc_opt_self() kilocalories], v10 = sub_1B4D187AC(), v9, (v10))
  {
    v11 = v7;
    sub_1B4D1741C();
  }

  else
  {
    if (qword_1EB8A6470 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_1EB8F3B88);
    (*(v37 + 16))(v5, v12, v1);
  }

  v33 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2A8, &qword_1B4D3B878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1B2D0;
  *(inited + 32) = 1;
  v31 = inited + 32;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2B0, &qword_1B4D3B880);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2B8, &qword_1B4D3B888) - 8);
  v15 = *(*v14 + 80);
  v16 = (v15 + 32) & ~v15;
  v34 = *(*v14 + 72);
  v35 = v15;
  v17 = swift_allocObject();
  v38 = xmmword_1B4D1A800;
  *(v17 + 16) = xmmword_1B4D1A800;
  v18 = v32;
  sub_1B4D173FC();
  v36 = *(v37 + 32);
  v36(v17 + v16, v18, v39);
  *(v17 + v16 + v14[9]) = 0;
  *(inited + 40) = v17;
  *(inited + 48) = 2;
  v19 = swift_allocObject();
  *(v19 + 16) = v38;
  v29 = v5;
  sub_1B4D173FC();
  v36(v19 + v16, v18, v39);
  *(v19 + v16 + v14[9]) = 0;
  *(inited + 56) = v19;
  *(inited + 64) = 3;
  v20 = swift_allocObject();
  *(v20 + 16) = v38;
  sub_1B4D173FC();
  v21 = v39;
  v22 = v36;
  v36(v20 + v16, v18, v39);
  *(v20 + v16 + v14[9]) = 0;
  *(inited + 72) = v20;
  *(inited + 80) = 4;
  v23 = swift_allocObject();
  *(v23 + 16) = v38;
  v24 = v23 + v16;
  v25 = v29;
  sub_1B4D173FC();
  v22(v24, v18, v21);
  *(v24 + v14[9]) = 0;
  *(inited + 88) = v23;
  v26 = sub_1B4C95514(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2C0, &unk_1B4D3B890);
  swift_arrayDestroy();
  (*(v37 + 8))(v25, v21);
  return v26;
}

void *sub_1B4BFB398(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v92 - v6;
  v7 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v8 = objc_opt_self();
  v9 = [v8 kilometers];
  v109 = v7;
  v10 = sub_1B4D187AC();

  v106 = v1;
  if (v10 & 1) != 0 || (v11 = [v8 meters], v12 = sub_1B4D187AC(), v11, (v12))
  {
    v13 = v2;
    v14 = [v8 meters];
    sub_1B4D1741C();
  }

  else
  {
    if (qword_1EB8A6468 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v1, qword_1EB8F3B70);
    v13 = v2;
    (*(v2 + 16))(v105, v15, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC280, &qword_1B4D3B840);
  inited = swift_initStackObject();
  v97 = inited;
  v98 = xmmword_1B4D1B2D0;
  *(inited + 16) = xmmword_1B4D1B2D0;
  *(inited + 32) = 37;
  v94 = inited + 32;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC288, &qword_1B4D3B848);
  v17 = swift_initStackObject();
  *(v17 + 16) = v98;
  *(v17 + 32) = 1;
  v92 = v17 + 32;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC290, &unk_1B4D3B850);
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180) - 8);
  v19 = *v18;
  v104 = *(*v18 + 72);
  v100 = v18;
  v20 = *(v19 + 80);
  v21 = (v20 + 32) & ~v20;
  v107 = v21;
  v108 = v20;
  v22 = swift_allocObject();
  v110 = xmmword_1B4D1A800;
  *(v22 + 16) = xmmword_1B4D1A800;
  sub_1B4D173FC();
  v93 = v13;
  v101 = *(v13 + 32);
  v101(v22 + v21, v4, v106);
  v102 = v13 + 32;
  *(v22 + v21 + v18[9]) = 0;
  *(v17 + 40) = v22;
  *(v17 + 48) = 2;
  v23 = v107;
  v24 = swift_allocObject();
  *(v24 + 16) = v110;
  sub_1B4D173FC();
  v25 = v101;
  v101(v24 + v23, v4, v106);
  *(v24 + v23 + v100[9]) = 0;
  *(v17 + 56) = v24;
  *(v17 + 64) = 3;
  v26 = v107;
  v27 = swift_allocObject();
  *(v27 + 16) = v110;
  sub_1B4D173FC();
  v28 = v106;
  v25(v27 + v26, v4, v106);
  v29 = v25;
  v30 = v100;
  *(v27 + v26 + v100[9]) = 0;
  *(v17 + 72) = v27;
  *(v17 + 80) = 4;
  v31 = v107;
  v32 = swift_allocObject();
  *(v32 + 16) = v110;
  sub_1B4D173FC();
  v29(v32 + v31, v4, v28);
  *(v32 + v31 + v30[9]) = 0;
  *(v17 + 88) = v32;
  v33 = sub_1B4C954D8(v17);
  swift_setDeallocating();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC298, &qword_1B4D3B860);
  swift_arrayDestroy();
  v34 = v97;
  v97[5] = v33;
  v34[6] = 52;
  v35 = swift_initStackObject();
  *(v35 + 16) = v98;
  *(v35 + 32) = 1;
  v92 = v35 + 32;
  v36 = v107;
  v37 = swift_allocObject();
  *(v37 + 16) = v110;
  v99 = v4;
  sub_1B4D173FC();
  v38 = v106;
  v101(v37 + v36, v4, v106);
  *(v37 + v36 + v100[9]) = 0;
  *(v35 + 40) = v37;
  *(v35 + 48) = 2;
  v39 = v107;
  v40 = swift_allocObject();
  *(v40 + 16) = v110;
  v41 = v99;
  sub_1B4D173FC();
  v101(v40 + v39, v41, v38);
  v42 = v100;
  *(v40 + v39 + v100[9]) = 0;
  *(v35 + 56) = v40;
  *(v35 + 64) = 3;
  v43 = v107;
  v44 = swift_allocObject();
  *(v44 + 16) = v110;
  v45 = v44 + v43;
  v46 = v99;
  sub_1B4D173FC();
  v47 = v46;
  v48 = v106;
  v49 = v101;
  v101(v45, v47, v106);
  *(v45 + v42[9]) = 0;
  *(v35 + 72) = v44;
  *(v35 + 80) = 4;
  v50 = v107;
  v51 = swift_allocObject();
  *(v51 + 16) = v110;
  v52 = v51 + v50;
  v53 = v99;
  sub_1B4D173FC();
  v49(v52, v53, v48);
  *(v52 + v42[9]) = 0;
  *(v35 + 88) = v51;
  v54 = sub_1B4C954D8(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  v55 = v97;
  v97[7] = v54;
  v55[8] = 24;
  v56 = swift_initStackObject();
  *(v56 + 16) = v98;
  *(v56 + 32) = 1;
  v92 = v56 + 32;
  v57 = v107;
  v58 = swift_allocObject();
  *(v58 + 16) = v110;
  sub_1B4D173FC();
  v59 = v48;
  v101(v58 + v57, v53, v48);
  v60 = v100;
  *(v58 + v57 + v100[9]) = 0;
  *(v56 + 40) = v58;
  *(v56 + 48) = 2;
  v61 = v107;
  v62 = swift_allocObject();
  *(v62 + 16) = v110;
  sub_1B4D173FC();
  v63 = v101;
  v101(v62 + v61, v53, v59);
  *(v62 + v61 + v60[9]) = 0;
  *(v56 + 56) = v62;
  *(v56 + 64) = 3;
  v64 = swift_allocObject();
  *(v64 + 16) = v110;
  v65 = v64 + v61;
  v66 = v99;
  sub_1B4D173FC();
  v63(v65, v66, v106);
  *(v65 + v60[9]) = 0;
  *(v56 + 72) = v64;
  *(v56 + 80) = 4;
  v67 = v107;
  v68 = swift_allocObject();
  *(v68 + 16) = v110;
  v69 = v68 + v67;
  v70 = v99;
  sub_1B4D173FC();
  v63(v69, v70, v106);
  *(v69 + v60[9]) = 0;
  *(v56 + 88) = v68;
  v71 = sub_1B4C954D8(v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  v72 = v97;
  v97[9] = v71;
  v72[10] = 13;
  v73 = swift_initStackObject();
  *(v73 + 16) = v98;
  *(v73 + 32) = 1;
  *&v98 = v73 + 32;
  v74 = v107;
  v75 = swift_allocObject();
  *(v75 + 16) = v110;
  v76 = v99;
  sub_1B4D173FC();
  v101(v75 + v74, v76, v106);
  *(v75 + v74 + v100[9]) = 0;
  *(v73 + 40) = v75;
  *(v73 + 48) = 2;
  v77 = swift_allocObject();
  *(v77 + 16) = v110;
  v78 = v76;
  sub_1B4D173FC();
  v79 = v76;
  v80 = v106;
  v81 = v101;
  v101(v77 + v74, v79, v106);
  v82 = v100;
  *(v77 + v74 + v100[9]) = 0;
  *(v73 + 56) = v77;
  *(v73 + 64) = 3;
  v83 = swift_allocObject();
  *(v83 + 16) = v110;
  sub_1B4D173FC();
  v81(v83 + v74, v78, v80);
  *(v83 + v74 + v82[9]) = 0;
  *(v73 + 72) = v83;
  *(v73 + 80) = 4;
  v84 = swift_allocObject();
  *(v84 + 16) = v110;
  v85 = v84 + v74;
  v86 = v105;
  sub_1B4D173FC();
  v87 = v106;
  v81(v85, v78, v106);
  *(v85 + v82[9]) = 0;
  *(v73 + 88) = v84;
  v88 = sub_1B4C954D8(v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  v89 = v97;
  v97[11] = v88;
  v90 = sub_1B4C95500(v89);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2A0, &unk_1B4D3B868);
  swift_arrayDestroy();
  (*(v93 + 8))(v86, v87);
  return v90;
}

uint64_t sub_1B4BFBFD8(uint64_t a1)
{
  result = sub_1B4D1746C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4BFC0A4()
{
  result = qword_1EB8AC360;
  if (!qword_1EB8AC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC360);
  }

  return result;
}

unint64_t sub_1B4BFC0FC()
{
  result = qword_1EB8AC368;
  if (!qword_1EB8AC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC368);
  }

  return result;
}

double WorkoutSnapshotContainer.month.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;

  return result;
}

double WorkoutSnapshotContainer.week.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;

  return result;
}

double WorkoutSnapshotContainer.day.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;

  return result;
}

__n128 WorkoutSnapshotContainer.init(cacheIndex:month:week:day:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a4[1].n128_u64[0];
  *a5 = *a1;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v6;
  result = *a4;
  *(a5 + 56) = *a4;
  *(a5 + 72) = v7;
  return result;
}

double sub_1B4BFC1EC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;

  return result;
}

double sub_1B4BFC200@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;

  return result;
}

double sub_1B4BFC214@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;

  return result;
}

__n128 sub_1B4BFC228@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a4[1].n128_u64[0];
  *a5 = *a1;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v6;
  result = *a4;
  *(a5 + 56) = *a4;
  *(a5 + 72) = v7;
  return result;
}

uint64_t static FactGenerating.resolve<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4D1738C();
}

unint64_t static FactGenerating.queries(workoutVoiceWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(255);
  swift_getTupleTypeMetadata2();
  v5 = sub_1B4D1843C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1B49BD4DC(v5, AssociatedTypeWitness, Descriptor, *(AssociatedConformanceWitness + 8));

  return v7;
}

uint64_t FactGenerating.makeFact(promptFormatter:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = (*(a2 + 64))();
  v9 = v8;
  (*(a2 + 40))(&v13, a1, a2);
  v10 = v13;
  result = sub_1B4BFC4B8(a1, a2);
  if (v3)
  {
  }

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = result;
  *(a3 + 32) = v12;
  return result;
}

uint64_t sub_1B4BFC4B8(uint64_t a1, uint64_t a2)
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  v2 = sub_1B4D173BC();

  return v2;
}

double static FactGenerating.makeRandomFact(promptFormatter:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t static FactGenerating.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[13] = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4BFC588, 0, 0);
}

uint64_t sub_1B4BFC588()
{
  v15 = v0;
  v1 = v0[13];
  v11 = v0[11];
  v13 = &type metadata for FitnessContext;
  v14 = &protocol witness table for FitnessContext;
  *&v12 = v1;
  v0[14] = swift_getAssociatedTypeWitness();
  v0[15] = swift_getAssociatedConformanceWitness();
  FactContext.init(context:)(&v12, (v0 + 2));
  v2 = *(v11 + 56);

  v10 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1B4BFC730;
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  return (v10)(v0 + 2, v7, v8, v5, v6, v4);
}

uint64_t sub_1B4BFC730(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1B4BFC8F0;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_1B4BFC858;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4BFC858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FactContext(0, v4[14], v4[15], a4);
  (*(*(v5 - 8) + 8))(v4 + 2, v5);
  v6 = v4[18];
  v7 = v4[1];

  return v7(v6);
}

uint64_t sub_1B4BFC8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = v4;
  v5 = type metadata accessor for FactContext(0, v4[14], v4[15], a4);
  (*(*(v5 - 8) + 8))(v4 + 2, v5);
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v6 = v4[17];
  v7 = sub_1B4D17F6C();
  __swift_project_value_buffer(v7, qword_1EDC3CED0);
  v8 = v6;
  v9 = sub_1B4D17F5C();
  v10 = sub_1B4D1871C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v4[17];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v12 = 136315394;
    v15 = sub_1B4D1900C();
    v17 = sub_1B49558AC(v15, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_1B4953000, v9, v10, "Error analyzing fact %s: %@", v12, 0x16u);
    sub_1B49E5EC0(v13);
    MEMORY[0x1B8C7DDA0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B8C7DDA0](v14, -1, -1);
    MEMORY[0x1B8C7DDA0](v12, -1, -1);
  }

  v20 = v4[17];
  v21 = sub_1B4D1843C();

  v22 = v4[1];

  return v22(v21);
}

uint64_t static FactGenerating.queries(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4BFD3A0(a1, v18);
  sub_1B49A24C4(v18, v17);
  v16 = (*(a3 + 48))(v17, a2, a3);
  v14 = a2;
  v15 = a3;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = sub_1B4BFD3D8;
  v12[5] = &v13;
  swift_getAssociatedTypeWitness();
  type metadata accessor for FitnessContextQueryDescriptor(255);
  swift_getAssociatedConformanceWitness();
  v5 = sub_1B4D1801C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC370, &unk_1B4D3BAC0);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1B498D2F0(sub_1B4BFD3E0, v12, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  if (*(v9 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B0, &qword_1B4D1ABC8);
    v10 = sub_1B4D18AEC();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
  }

  v16 = v10;
  sub_1B4BFCEA8(v9, 1, &v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v16;
}

uint64_t sub_1B4BFCD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  countAndFlagsBits = FitnessContextQueryIdentifier.makeQueryKey()()._countAndFlagsBits;
  sub_1B49EEFF0(a3, a1);
  return countAndFlagsBits;
}

uint64_t sub_1B4BFCDE0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t)@<X1>, char *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for FitnessContextQueryDescriptor(255);
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC370, &unk_1B4D3BAC0);
  result = a2(&a5[*(v9 + 48)], a1, a1 + v8);
  *a5 = result;
  *(a5 + 1) = v11;
  return result;
}

void sub_1B4BFCEA8(uint64_t a1, char a2, void *a3)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v8 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC370, &unk_1B4D3BAC0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v55 - v14);
  v61 = *(a1 + 16);
  if (!v61)
  {
    goto LABEL_23;
  }

  v57 = v3;
  v58 = v8;
  v16 = a2;
  v17 = *(v12 + 48);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v60 = *(v13 + 72);
  v62 = a1;
  v56 = v18;
  sub_1B4BFD598(a1 + v18, &v55 - v14);
  v19 = v15[1];
  v65 = *v15;
  v20 = v65;
  v66 = v19;
  v59 = v17;
  sub_1B4A22C1C(v15 + v17, v10);
  v21 = *a3;
  v23 = sub_1B49E9EC4(v20, v19);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v22;
  if (v21[3] >= v26)
  {
    if (v16)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1B498A7C4();
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1B4987E00(v26, v16 & 1);
  v28 = sub_1B49E9EC4(v20, v19);
  if ((v27 & 1) == (v29 & 1))
  {
    v23 = v28;
    if ((v27 & 1) == 0)
    {
LABEL_13:
      v32 = *a3;
      *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v33 = (v32[6] + 16 * v23);
      *v33 = v20;
      v33[1] = v19;
      v34 = v32[7];
      v58 = *(v58 + 72);
      sub_1B4A22C1C(v10, v34 + v58 * v23);
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (!v36)
      {
        v32[2] = v37;
        v38 = v62;
        if (v61 != 1)
        {
          v39 = v62 + v60 + v56;
          v40 = 1;
          while (v40 < *(v38 + 16))
          {
            sub_1B4BFD598(v39, v15);
            v41 = v15[1];
            v65 = *v15;
            v42 = v65;
            v66 = v41;
            sub_1B4A22C1C(v15 + v59, v10);
            v43 = *a3;
            v44 = sub_1B49E9EC4(v42, v41);
            v46 = v43[2];
            v47 = (v45 & 1) == 0;
            v36 = __OFADD__(v46, v47);
            v48 = v46 + v47;
            if (v36)
            {
              goto LABEL_24;
            }

            v49 = v45;
            if (v43[3] < v48)
            {
              sub_1B4987E00(v48, 1);
              v44 = sub_1B49E9EC4(v42, v41);
              if ((v49 & 1) != (v50 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v49)
            {
              goto LABEL_10;
            }

            v51 = *a3;
            *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v52 = (v51[6] + 16 * v44);
            *v52 = v42;
            v52[1] = v41;
            sub_1B4A22C1C(v10, v51[7] + v58 * v44);
            v53 = v51[2];
            v36 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v36)
            {
              goto LABEL_25;
            }

            ++v40;
            v51[2] = v54;
            v39 += v60;
            v38 = v62;
            if (v61 == v40)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v30 = swift_allocError();
    swift_willThrow();

    v67 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1B49EF054(v10);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_1B4D18E1C();
  __break(1u);
LABEL_28:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

uint64_t dispatch thunk of static FactGenerating.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B49D9398;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B4BFD598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC370, &unk_1B4D3BAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double FitnessPlusSnapshotContainer.month.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;

  return result;
}

double FitnessPlusSnapshotContainer.week.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;

  return result;
}

double FitnessPlusSnapshotContainer.day.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;

  return result;
}

__n128 FitnessPlusSnapshotContainer.init(cacheIndex:month:week:day:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a4[1].n128_u64[0];
  *a5 = *a1;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v6;
  result = *a4;
  *(a5 + 56) = *a4;
  *(a5 + 72) = v7;
  return result;
}

unint64_t sub_1B4BFD69C()
{
  result = qword_1EDC377C8;
  if (!qword_1EDC377C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377C8);
  }

  return result;
}

uint64_t RingClosureStreakFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t RingClosureStreakFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000035;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000050;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000048;
  }
}

uint64_t sub_1B4BFD7C0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000035;
  v3 = *a1;
  v4 = "k, which includes today.";
  if (v3 == 1)
  {
    v5 = 0xD000000000000050;
  }

  else
  {
    v5 = 0xD000000000000035;
  }

  if (v3 == 1)
  {
    v6 = "k, which includes today.";
  }

  else
  {
    v6 = "t include today.";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000048;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "kout_name> workout of the week.";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000050;
  }

  else
  {
    v4 = "t include today.";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000048;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "kout_name> workout of the week.";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4BFD898()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BFD934(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BFD9BC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4BFDA60(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000035;
  v3 = "k, which includes today.";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000050;
  }

  else
  {
    v3 = "t include today.";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000048;
    v4 = "kout_name> workout of the week.";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t RingClosureStreakFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for RingClosureStreakFact(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4D1AA70;
  v7 = sub_1B4B0793C(*(v1 + *(v3 + 32)));
  v9 = v8;
  *(v6 + 32) = 0x6D616E5F676E6972;
  *(v6 + 40) = 0xE900000000000065;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v6 + 48) = sub_1B4993DFC;
  *(v6 + 56) = v10;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  sub_1B4BFDD18(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1B4BFDD7C(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v6 + 80) = 0x656D69745F6C6C61;
  *(v6 + 88) = 0xEF6B61657274735FLL;
  *(v6 + 96) = sub_1B4BFDDE0;
  *(v6 + 104) = v12;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  return v6;
}

uint64_t RingClosureStreakFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  result = type metadata accessor for RingClosureStreakFact(0);
  if (v3 >= 3)
  {
    v5 = (*(v1 + *(result + 28)) & 1) == 0;
  }

  else if (*(v1 + *(result + 32)))
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1B4BFDD18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingClosureStreakFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BFDD7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingClosureStreakFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4BFDE60()
{
  result = qword_1EB8AC378;
  if (!qword_1EB8AC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC378);
  }

  return result;
}

unint64_t sub_1B4BFDEB8()
{
  result = qword_1EB8AC380;
  if (!qword_1EB8AC380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC388, &qword_1B4D3BC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC380);
  }

  return result;
}

unint64_t sub_1B4BFDF20()
{
  result = qword_1EB8AC390;
  if (!qword_1EB8AC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC390);
  }

  return result;
}

unint64_t sub_1B4BFDF78()
{
  result = qword_1EB8AC398;
  if (!qword_1EB8AC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC398);
  }

  return result;
}

unint64_t sub_1B4BFDFCC(uint64_t a1)
{
  result = sub_1B4BFDFF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BFDFF4()
{
  result = qword_1EB8AC3A0;
  if (!qword_1EB8AC3A0)
  {
    type metadata accessor for RingClosureStreakFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3A0);
  }

  return result;
}

uint64_t PerfectWeekRingStatusFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t PerfectWeekRingStatusFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000046;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000042;
  }

  v2 = 0xD00000000000009ALL;
  if (!*v0)
  {
    v2 = 0xD000000000000058;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B4BFE144()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BFE1FC(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BFE2A0(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4BFE360(unint64_t *a1@<X8>)
{
  v2 = "formatted_days> this week.";
  v3 = 0xD000000000000046;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000042;
  }

  else
  {
    v2 = ", including today.";
  }

  v4 = 0xD00000000000009ALL;
  if (*v1)
  {
    v5 = "me> every day this week.";
  }

  else
  {
    v4 = 0xD000000000000058;
    v5 = "y <speed_delta_from_baseline>.";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t PerfectWeekRingStatusFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for PerfectWeekRingStatusFact(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4D1BE00;
  v7 = sub_1B4B0793C(*(v1 + *(v3 + 32)));
  v9 = v8;
  *(v6 + 32) = 0x6D616E5F676E6972;
  *(v6 + 40) = 0xE900000000000065;
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v9;
  *(v6 + 48) = sub_1B4993DFC;
  *(v6 + 56) = result;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  if (__OFSUB__(7, *v1))
  {
    __break(1u);
  }

  else
  {
    v17[1] = (7 - *v1) & ~((7 - *v1) >> 63);
    v11 = sub_1B4D18D5C();
    v13 = v12;
    *(v6 + 80) = 0xD00000000000001BLL;
    *(v6 + 88) = 0x80000001B4D62F40;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v6 + 96) = sub_1B4994004;
    *(v6 + 104) = v14;
    *(v6 + 112) = 0;
    *(v6 + 120) = 0;
    sub_1B4BFE6B0(v1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v16 = swift_allocObject();
    sub_1B4BFE714(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    strcpy((v6 + 128), "formatted_days");
    *(v6 + 143) = -18;
    *(v6 + 144) = sub_1B4BFE778;
    *(v6 + 152) = v16;
    *(v6 + 160) = 0;
    *(v6 + 168) = 0;
    return v6;
  }

  return result;
}

void PerfectWeekRingStatusFact.selectTemplate(formatter:)(char *a1@<X8>)
{
  if (*v1 > 4)
  {
    v3 = *v1 < 7uLL;
  }

  else if (*(v1 + *(type metadata accessor for PerfectWeekRingStatusFact(0) + 28)))
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  *a1 = v3;
}

uint64_t sub_1B4BFE6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerfectWeekRingStatusFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BFE714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerfectWeekRingStatusFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BFE778()
{
  v1 = type metadata accessor for PerfectWeekRingStatusFact(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = __OFSUB__(7, v4);
  v6 = 7 - v4;
  if (v5)
  {
    __break(1u);
  }

  else if (v6 == 1)
  {
    return 7954788;
  }

  else
  {
    return 1937334628;
  }

  return result;
}

unint64_t sub_1B4BFE800()
{
  result = qword_1EB8AC3A8;
  if (!qword_1EB8AC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3A8);
  }

  return result;
}

unint64_t sub_1B4BFE858()
{
  result = qword_1EB8AC3B0;
  if (!qword_1EB8AC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC3B8, &qword_1B4D3BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3B0);
  }

  return result;
}

unint64_t sub_1B4BFE8C0()
{
  result = qword_1EB8AC3C0;
  if (!qword_1EB8AC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3C0);
  }

  return result;
}

unint64_t sub_1B4BFE918()
{
  result = qword_1EB8AC3C8;
  if (!qword_1EB8AC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3C8);
  }

  return result;
}

unint64_t sub_1B4BFE96C(uint64_t a1)
{
  result = sub_1B4BFE994();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BFE994()
{
  result = qword_1EB8AC3D0;
  if (!qword_1EB8AC3D0)
  {
    type metadata accessor for PerfectWeekRingStatusFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3D0);
  }

  return result;
}

uint64_t WorkoutVoiceMoment.init(type:workoutActivityType:isIndoor:facts:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B4D177CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = *a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  sub_1B4D177BC();
  v14 = sub_1B4D1779C();
  v16 = v15;
  result = (*(v11 + 8))(v13, v10);
  *(a5 + 32) = v14;
  *(a5 + 40) = v16;
  return result;
}

uint64_t WorkoutVoiceMoment.momentIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1B4BFEB5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B4BFEBA4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

double RingsSnapshotContainer.month.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;

  return result;
}

double RingsSnapshotContainer.week.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;

  return result;
}

double RingsSnapshotContainer.day.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;

  return result;
}

__n128 RingsSnapshotContainer.init(cacheIndex:month:week:day:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a4[1].n128_u64[0];
  *a5 = *a1;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v6;
  result = *a4;
  *(a5 + 56) = *a4;
  *(a5 + 72) = v7;
  return result;
}

uint64_t sub_1B4BFECDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4BFED68(uint64_t a1)
{
  v2 = sub_1B4BFEF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BFEDA4(uint64_t a1)
{
  v2 = sub_1B4BFEF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FitnessPlusTrainerIdentifiers.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC3D8, &unk_1B4D3BED0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BFEF78();

  sub_1B4D18EFC();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  sub_1B4A05CEC(&qword_1EB8A7B40, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1B4D18D0C();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B4BFEF78()
{
  result = qword_1EB8AC3E0;
  if (!qword_1EB8AC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3E0);
  }

  return result;
}

uint64_t FitnessPlusTrainerIdentifiers.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  result = MEMORY[0x1B8C7D290](*(*v1 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_1B4D1820C();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t FitnessPlusTrainerIdentifiers.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1B4D1820C();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_1B4D18EDC();
}

uint64_t FitnessPlusTrainerIdentifiers.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC3E8, &qword_1B4D3BEE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BFEF78();
  sub_1B4D18EEC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
    sub_1B4A05CEC(&qword_1EB8A7B58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B4BFF2AC(uint64_t a1)
{
  v2 = *v1;
  result = MEMORY[0x1B8C7D290](*(*v1 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_1B4D1820C();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1B4BFF328(uint64_t a1)
{
  v2 = *v1;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1B4D1820C();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return sub_1B4D18EDC();
}

unint64_t sub_1B4BFF3B4()
{
  result = qword_1EB8AC3F0;
  if (!qword_1EB8AC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3F0);
  }

  return result;
}

unint64_t sub_1B4BFF438()
{
  result = qword_1EB8AC3F8;
  if (!qword_1EB8AC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3F8);
  }

  return result;
}

unint64_t sub_1B4BFF490()
{
  result = qword_1EB8AC400;
  if (!qword_1EB8AC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC400);
  }

  return result;
}

unint64_t sub_1B4BFF4E8()
{
  result = qword_1EB8AC408;
  if (!qword_1EB8AC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC408);
  }

  return result;
}

uint64_t AnnounceCancellationResult.init(_:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B4BFF578(a1);
  *a2 = v3;
  return result;
}

uint64_t sub_1B4BFF578(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnnounceCancellationResult.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  sub_1B4BFF82C(&qword_1EB8A8A40, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BFF674(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v7 = sub_1B4BFF940();
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4BFF82C(&qword_1EB8A8A40, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationResult);
    v4 = sub_1B4D17D6C();
    sub_1B4BFF578(v6);
  }

  return v4;
}

uint64_t sub_1B4BFF790@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B25FB0(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4BFF82C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BFF870()
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  sub_1B4BFF82C(&qword_1EB8A8A40, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BFF904@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B4BFF578(a1);
  *a2 = v3;
  return result;
}

unint64_t sub_1B4BFF940()
{
  result = qword_1EB8AC410;
  if (!qword_1EB8AC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC410);
  }

  return result;
}

void *ActivityAchievementAward.value.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityAchievementAward(0) + 32));
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for ActivityAchievementAward(uint64_t a1)
{
  result = qword_1EB8AC458;
  if (!qword_1EB8AC458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ActivityAchievementAward.goal.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityAchievementAward(0) + 36));
  v2 = v1;
  return v1;
}

uint64_t ActivityAchievementAward.init(templateUniqueName:earnedDateComponents:section:earnedInstanceCount:value:goal:externalIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v16 = *a4;
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for ActivityAchievementAward(0);
  v18 = v17[5];
  v19 = sub_1B4D175FC();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  a9[v17[6]] = v16;
  *&a9[v17[7]] = a5;
  *&a9[v17[8]] = a6;
  *&a9[v17[9]] = a7;
  v21 = &a9[v17[10]];
  *v21 = a8;
  *(v21 + 1) = a10;
  return result;
}

FitnessIntelligence::ActivityAchievementSection_optional __swiftcall ActivityAchievementSection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityAchievementSection.rawValue.getter()
{
  if (*v0)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 0x74756F6B726F77;
  }
}

uint64_t sub_1B4BFFBD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726568746FLL;
  }

  else
  {
    v3 = 0x74756F6B726F77;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726568746FLL;
  }

  else
  {
    v5 = 0x74756F6B726F77;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B4D18DCC();
  }

  return v8 & 1;
}

uint64_t sub_1B4BFFC78()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BFFCF8(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BFFD64(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BFFDE0@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B4BFFE40(uint64_t *a1@<X8>)
{
  v2 = 0x74756F6B726F77;
  if (*v1)
  {
    v2 = 0x726568746FLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ActivityAchievementAward.templateUniqueName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityAchievementAward.earnedDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityAchievementAward(0) + 20);
  v4 = sub_1B4D175FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityAchievementAward.section.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityAchievementAward(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ActivityAchievementAward.externalIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityAchievementAward(0) + 40));

  return v1;
}

unint64_t sub_1B4C00074()
{
  v1 = *v0;
  v2 = 0x6E6F6974636573;
  v3 = 0x47656C6261646F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x56656C6261646F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1B4C00168@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4C013A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4C00190(uint64_t a1)
{
  v2 = sub_1B4C00E88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C001CC(uint64_t a1)
{
  v2 = sub_1B4C00E88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityAchievementAward.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC418, &unk_1B4D3C150);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C00E88();
  sub_1B4D18EFC();
  LOBYTE(v14) = 0;
  sub_1B4D18CBC();
  if (!v2)
  {
    v9 = type metadata accessor for ActivityAchievementAward(0);
    LOBYTE(v14) = 1;
    sub_1B4D175FC();
    sub_1B4C00F30(&qword_1EB8AC428, MEMORY[0x1E6968280]);
    sub_1B4D18D0C();
    LOBYTE(v14) = *(v3 + v9[6]);
    v15 = 2;
    sub_1B4C00EDC();
    sub_1B4D18D0C();
    LOBYTE(v14) = 3;
    sub_1B4D18CFC();
    v14 = *(v3 + v9[8]);
    v15 = 4;
    v10 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB08, &qword_1B4D37B28);
    sub_1B4C00FC8(&qword_1EB8ABB10, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18CAC();

    v14 = *(v3 + v9[9]);
    v15 = 5;
    v11 = v14;
    sub_1B4D18CAC();

    LOBYTE(v14) = 6;
    sub_1B4D18C6C();
  }

  return (*(v6 + 8))(v8, v5);
}

void ActivityAchievementAward.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1B4D175FC();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC438, &qword_1B4D3C160);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ActivityAchievementAward(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B4C00E88();
  v27 = v9;
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    v22 = v4;
    LOBYTE(v29) = 0;
    *v12 = sub_1B4D18BBC();
    v12[1] = v14;
    LOBYTE(v29) = 1;
    sub_1B4C00F30(&qword_1EB8AC440, MEMORY[0x1E6968298]);
    v15 = v22;
    sub_1B4D18C0C();
    (*(v24 + 32))(v12 + v10[5], v6, v15);
    v30 = 2;
    sub_1B4C00F74();
    sub_1B4D18C0C();
    *(v12 + v10[6]) = v29;
    LOBYTE(v29) = 3;
    v16 = sub_1B4D18BFC();
    v17 = v25;
    *(v12 + v10[7]) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB08, &qword_1B4D37B28);
    v30 = 4;
    sub_1B4C00FC8(&qword_1EB8ABB50, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18BAC();
    *(v12 + v10[8]) = v29;
    v30 = 5;
    sub_1B4D18BAC();
    *(v12 + v10[9]) = v29;
    LOBYTE(v29) = 6;
    v18 = sub_1B4D18B6C();
    v20 = v19;
    (*(v17 + 8))(v27, v26);
    v21 = (v12 + v10[10]);
    *v21 = v18;
    v21[1] = v20;
    sub_1B4C01018(v12, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    sub_1B4C0107C(v12);
  }
}

BOOL _s19FitnessIntelligence24ActivityAchievementAwardV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ActivityAchievementAward(0);
  if ((MEMORY[0x1B8C7B950](a1 + v5[5], a2 + v5[5]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[6];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    v9 = 0x726568746FLL;
  }

  else
  {
    v9 = 0x74756F6B726F77;
  }

  if (v7)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v8)
  {
    v11 = 0x726568746FLL;
  }

  else
  {
    v11 = 0x74756F6B726F77;
  }

  if (v8)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
  }

  else
  {
    v14 = sub_1B4D18DCC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v15 = v5[8];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18 && (v19 = v18, objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
    {
      v21 = v20;
      v22 = v16;
      v23 = v17;
      v24 = v22;
      v25 = v23;
      [v19 coordinate];
      v27 = v26;
      [v21 coordinate];
      if (v27 != v28)
      {
        goto LABEL_53;
      }

      [v19 coordinate];
      v30 = v29;
      [v21 coordinate];
      v32 = v31;

      if (v30 != v32)
      {
        return 0;
      }
    }

    else
    {
      sub_1B49DF540();
      v33 = v16;
      v34 = v17;
      v35 = sub_1B4D187AC();

      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v36 = v5[9];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v40 = v39;
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        v42 = v41;
        v43 = v37;
        v44 = v38;
        v24 = v43;
        v25 = v44;
        [v40 coordinate];
        v46 = v45;
        [v42 coordinate];
        if (v46 == v47)
        {
          [v40 coordinate];
          v49 = v48;
          [v42 coordinate];
          v51 = v50;

          if (v49 != v51)
          {
            return 0;
          }

          goto LABEL_47;
        }

LABEL_53:

        return 0;
      }
    }

    sub_1B49DF540();
    v52 = v37;
    v53 = v38;
    v54 = sub_1B4D187AC();

    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

LABEL_47:
  v55 = v5[10];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  if (!v57)
  {
    return !v59;
  }

  return v59 && (*v56 == *v58 && v57 == v59 || (sub_1B4D18DCC() & 1) != 0);
}

unint64_t sub_1B4C00E88()
{
  result = qword_1EB8AC420;
  if (!qword_1EB8AC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC420);
  }

  return result;
}

unint64_t sub_1B4C00EDC()
{
  result = qword_1EB8AC430;
  if (!qword_1EB8AC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC430);
  }

  return result;
}

uint64_t sub_1B4C00F30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D175FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4C00F74()
{
  result = qword_1EB8AC448;
  if (!qword_1EB8AC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC448);
  }

  return result;
}

uint64_t sub_1B4C00FC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ABB08, &qword_1B4D37B28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C01018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityAchievementAward(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C0107C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityAchievementAward(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4C010DC()
{
  result = qword_1EB8AC450;
  if (!qword_1EB8AC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC450);
  }

  return result;
}

void sub_1B4C01168(uint64_t a1)
{
  sub_1B4D175FC();
  if (v1 <= 0x3F)
  {
    sub_1B4C0122C(319);
    if (v2 <= 0x3F)
    {
      sub_1B4ABA5F0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4C0122C(uint64_t a1)
{
  if (!qword_1EB8AC468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ABB08, &qword_1B4D37B28);
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB8AC468);
    }
  }
}

unint64_t sub_1B4C012A4()
{
  result = qword_1EB8AC470;
  if (!qword_1EB8AC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC470);
  }

  return result;
}

unint64_t sub_1B4C012FC()
{
  result = qword_1EB8AC478;
  if (!qword_1EB8AC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC478);
  }

  return result;
}

unint64_t sub_1B4C01354()
{
  result = qword_1EB8AC480;
  if (!qword_1EB8AC480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC480);
  }

  return result;
}

uint64_t sub_1B4C013A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001B4D62F60 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D62F80 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D62FA0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x56656C6261646F63 && a2 == 0xEC00000065756C61 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x47656C6261646F63 && a2 == 0xEB000000006C616FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B4D62FC0 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1B4C01604()
{
  result = qword_1EB8AC488;
  if (!qword_1EB8AC488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC488);
  }

  return result;
}

void sub_1B4C016C8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v7 = objc_allocWithZone(type metadata accessor for UnitPace());
  v8 = sub_1B4D1817C();
  v9 = [v7 initWithSymbol:v8 converter:v6];

  *a5 = v9;
}

id sub_1B4C01794(uint64_t a1)
{
  result = [type metadata accessor for UnitPace() baseUnit];
  qword_1EDC36E88 = result;
  return result;
}

id sub_1B4C017EC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_1B4C01900()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v2 = objc_allocWithZone(v0);
  v3 = sub_1B4D1817C();
  v4 = [v2 initWithSymbol:v3 converter:v1];

  return v4;
}

id UnitPace.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UnitPace();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *static CountPropertyValue.add(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
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

uint64_t CountPropertyValue.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

void *sub_1B4C01AD4@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
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

unint64_t sub_1B4C01AF0(uint64_t a1)
{
  result = sub_1B49A85A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C01B18(uint64_t a1)
{
  *(a1 + 8) = sub_1B49A69C0();
  result = sub_1B4C01B48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C01B48()
{
  result = qword_1EDC396A0[0];
  if (!qword_1EDC396A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC396A0);
  }

  return result;
}

unint64_t sub_1B4C01BA0()
{
  result = qword_1EDC39698;
  if (!qword_1EDC39698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39698);
  }

  return result;
}

unint64_t sub_1B4C01C18()
{
  result = qword_1EB8AC4A0;
  if (!qword_1EB8AC4A0)
  {
    type metadata accessor for RingClosureStreakFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC4A0);
  }

  return result;
}

unint64_t sub_1B4C01C74()
{
  result = qword_1EB8AC4A8;
  if (!qword_1EB8AC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC4A8);
  }

  return result;
}

void sub_1B4C01CC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v88 = a1;
  v79 = a5;
  v5 = MEMORY[0x1E69E7CC0];
  v87 = *(a4 + 16);
  if (v87)
  {
    v6 = 0;
    v83 = a3;
    v84 = a2;
    v81 = (a3 + 32);
    v82 = (a2 + 32);
    v85 = 0x80000001B4D48800;
    v86 = (a4 + 32);
    do
    {
      v126 = v5;
      sub_1B4B6F2FC(v86 + 64 * v6, &v117);
      if (v88)
      {
        v7 = BYTE1(v118);
        v8 = BYTE2(v118);
        if (v118 != 12 && *(v88 + 16) && !sub_1B4978C4C(v118, v88))
        {
          goto LABEL_3;
        }

        if (v7 != 7)
        {
          v9 = *(v84 + 16);
          if (v9)
          {
            v10 = v82;
            do
            {
              if (!v9)
              {
                goto LABEL_3;
              }

              v12 = *v10;
              if (v12 <= 2)
              {
                v15 = 0x616473656E646577;
                if (v12 == 1)
                {
                  v15 = 0x79616473657574;
                }

                v16 = 0xE900000000000079;
                if (v12 == 1)
                {
                  v16 = 0xE700000000000000;
                }

                if (*v10)
                {
                  v13 = v15;
                }

                else
                {
                  v13 = 0x7961646E6F6DLL;
                }

                if (*v10)
                {
                  v14 = v16;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
LABEL_38:
                  v17 = 0x7961646E7573;
                  if (v7 == 5)
                  {
                    v17 = 0x7961647275746173;
                    v18 = 0xE800000000000000;
                  }

                  else
                  {
                    v18 = 0xE600000000000000;
                  }

                  v19 = 0x7961647372756874;
                  if (v7 == 3)
                  {
                    v20 = 0xE800000000000000;
                  }

                  else
                  {
                    v19 = 0x796164697266;
                    v20 = 0xE600000000000000;
                  }

                  if (v7 <= 4)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = v17;
                  }

                  if (v7 <= 4)
                  {
                    v22 = v20;
                  }

                  else
                  {
                    v22 = v18;
                  }

                  if (v13 != v21)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_63;
                }
              }

              else if (*v10 > 4u)
              {
                if (v12 == 5)
                {
                  v14 = 0xE800000000000000;
                  v13 = 0x7961647275746173;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v13 = 0x7961646E7573;
                  v14 = 0xE600000000000000;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }
              }

              else
              {
                if (v12 == 3)
                {
                  v13 = 0x7961647372756874;
                }

                else
                {
                  v13 = 0x796164697266;
                }

                if (v12 == 3)
                {
                  v14 = 0xE800000000000000;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
                  goto LABEL_38;
                }
              }

              if (v7)
              {
                if (v7 == 1)
                {
                  v23 = 0x79616473657574;
                }

                else
                {
                  v23 = 0x616473656E646577;
                }

                if (v7 == 1)
                {
                  v22 = 0xE700000000000000;
                }

                else
                {
                  v22 = 0xE900000000000079;
                }

                if (v13 != v23)
                {
                  goto LABEL_12;
                }
              }

              else
              {
                v22 = 0xE600000000000000;
                if (v13 != 0x7961646E6F6DLL)
                {
                  goto LABEL_12;
                }
              }

LABEL_63:
              if (v14 == v22)
              {

                break;
              }

LABEL_12:
              v11 = sub_1B4D18DCC();

              ++v10;
              --v9;
            }

            while ((v11 & 1) == 0);
          }
        }

        if (v8 != 2)
        {
          v24 = *(v83 + 16);
          if (v24)
          {
            v25 = v81;
            while (1)
            {
              v27 = *v25++;
              v26 = v27;
              if (v27 != 2 && ((v26 ^ v8) & 1) == 0)
              {
                break;
              }

              if (!--v24)
              {
                goto LABEL_3;
              }
            }
          }
        }
      }

      v28 = v120;
      __swift_project_boxed_opaque_existential_1(&v118 + 1, v120);
      sub_1B4B70700(v28, *(*(&v28 + 1) + 8));
      LOBYTE(v90) = v108;
      if (RingsPropertyKind.rawValue.getter() == 0xD000000000000013 && v85 == v29)
      {

LABEL_75:
        v108 = v117;
        v109 = v118;
        v110 = v119;
        v111 = v120;
        v5 = v126;
        *&v99 = v126;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B4BCEB88(0, *(v5 + 16) + 1, 1);
          v5 = v99;
        }

        v32 = *(v5 + 16);
        v31 = *(v5 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1B4BCEB88((v31 > 1), v32 + 1, 1);
          v5 = v99;
        }

        *(v5 + 16) = v32 + 1;
        v33 = (v5 + (v32 << 6));
        v34 = v108;
        v35 = v109;
        v36 = v111;
        v33[4] = v110;
        v33[5] = v36;
        v33[2] = v34;
        v33[3] = v35;
        goto LABEL_4;
      }

      v30 = sub_1B4D18DCC();

      if (v30)
      {
        goto LABEL_75;
      }

LABEL_3:
      sub_1B4B6F358(&v117);
      v5 = v126;
LABEL_4:
      v6 = (v6 + 1);
    }

    while (v6 != v87);
  }

  *&v117 = v5;

  sub_1B4CB8494(&v117);
  v37 = v80;
  if (v80)
  {

    __break(1u);
  }

  else
  {

    v38 = v117;
    v39 = *(v117 + 16);
    if (v39)
    {
      v85 = 0;
      *&v99 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v39, 0);
      v40 = v99;
      v84 = v38;
      v41 = v38 + 32;
      do
      {
        v126 = v39;
        v88 = v41;
        sub_1B4B6F2FC(v41, &v117);
        v42 = v120;
        v43 = __swift_project_boxed_opaque_existential_1(&v118 + 1, v120);
        v44 = *(*(&v42 + 1) + 8);
        v86 = *(v44 + 64);
        v87 = v43;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v109 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v110 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v108);
        v86(v42, v44);
        v48 = sub_1B4B6F358(&v117);
        *&v99 = v40;
        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          v48 = sub_1B4BCF0BC((v49 > 1), v50 + 1, 1);
        }

        v51 = MEMORY[0x1EEE9AC00](v48);
        v53 = &v78 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v54 + 16))(v53, boxed_opaque_existential_1, AssociatedTypeWitness, v51);
        sub_1B4CB7620(v50, v53, &v99, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v108);
        v40 = v99;
        v41 = v88 + 64;
        v39 = v126 - 1;
      }

      while (v126 != 1);

      v37 = v85;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v55 = sub_1B49E709C(v40);

    if (v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

    sub_1B4CEE3C8(v56, &v117);
    if (v37)
    {
    }

    else
    {

      v114 = v123;
      v115 = v124;
      v116 = v125;
      v110 = v119;
      v111 = v120;
      v112 = v121;
      v113 = v122;
      v108 = v117;
      v109 = v118;
      if (sub_1B496F52C(&v108) == 1)
      {
        v96 = v123;
        v97 = v124;
        v98 = v125;
        v92 = v119;
        v93 = v120;
        v94 = v121;
        v95 = v122;
        v90 = v117;
        v91 = v118;
        sub_1B4975024(&v90, &qword_1EB8AC4E0, &qword_1B4D3C6B0);
        sub_1B496F544(&v99);
        v57 = v106;
        v58 = v79;
        *(v79 + 96) = v105;
        *(v58 + 112) = v57;
        *(v58 + 128) = v107;
        v59 = v102;
        *(v58 + 32) = v101;
        *(v58 + 48) = v59;
        v60 = v104;
        *(v58 + 64) = v103;
        *(v58 + 80) = v60;
        v61 = v100;
        *v58 = v99;
        *(v58 + 16) = v61;
      }

      else
      {
        v62 = v123;
        v96 = v123;
        v97 = v124;
        v63 = v119;
        v64 = v119;
        v92 = v119;
        v93 = v120;
        v65 = v121;
        v66 = v121;
        v94 = v121;
        v95 = v122;
        v67 = v117;
        v68 = v117;
        v90 = v117;
        v91 = v118;
        v69 = v124;
        v70 = v124;
        v71 = v79;
        *(v79 + 96) = v123;
        *(v71 + 112) = v69;
        v72 = v120;
        v73 = v120;
        *(v71 + 32) = v63;
        *(v71 + 48) = v72;
        v74 = v122;
        v75 = v122;
        *(v71 + 64) = v65;
        *(v71 + 80) = v74;
        v76 = v118;
        v77 = v118;
        *v71 = v67;
        *(v71 + 16) = v76;
        v105 = v62;
        v106 = v70;
        v101 = v64;
        v102 = v73;
        v103 = v66;
        v104 = v75;
        v98 = v125;
        *(v71 + 128) = v125;
        v107 = v125;
        v99 = v68;
        v100 = v77;
        sub_1B4BA6D90(&v90, &v89);
        sub_1B4C05280(&v99);
        nullsub_1();
      }
    }
  }
}

void sub_1B4C025D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v86 = a1;
  v78 = a5;
  v5 = MEMORY[0x1E69E7CC0];
  v85 = *(a4 + 16);
  if (v85)
  {
    v6 = 0;
    v83 = a2;
    v84 = (a4 + 32);
    v81 = (a2 + 32);
    v82 = a3;
    v80 = (a3 + 32);
    do
    {
      v124 = v5;
      sub_1B4B6F2FC(v84 + 64 * v6, &v115);
      if (v86)
      {
        v7 = BYTE1(v116);
        v8 = BYTE2(v116);
        if (v116 != 12 && *(v86 + 16) && !sub_1B4978C4C(v116, v86))
        {
          goto LABEL_3;
        }

        if (v7 != 7)
        {
          v9 = *(v83 + 16);
          if (v9)
          {
            v10 = v81;
            do
            {
              if (!v9)
              {
                goto LABEL_3;
              }

              v12 = *v10;
              if (v12 <= 2)
              {
                v15 = 0x616473656E646577;
                if (v12 == 1)
                {
                  v15 = 0x79616473657574;
                }

                v16 = 0xE900000000000079;
                if (v12 == 1)
                {
                  v16 = 0xE700000000000000;
                }

                if (*v10)
                {
                  v13 = v15;
                }

                else
                {
                  v13 = 0x7961646E6F6DLL;
                }

                if (*v10)
                {
                  v14 = v16;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
LABEL_38:
                  v17 = 0x7961646E7573;
                  if (v7 == 5)
                  {
                    v17 = 0x7961647275746173;
                    v18 = 0xE800000000000000;
                  }

                  else
                  {
                    v18 = 0xE600000000000000;
                  }

                  v19 = 0x7961647372756874;
                  if (v7 == 3)
                  {
                    v20 = 0xE800000000000000;
                  }

                  else
                  {
                    v19 = 0x796164697266;
                    v20 = 0xE600000000000000;
                  }

                  if (v7 <= 4)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = v17;
                  }

                  if (v7 <= 4)
                  {
                    v22 = v20;
                  }

                  else
                  {
                    v22 = v18;
                  }

                  if (v13 != v21)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_63;
                }
              }

              else if (*v10 > 4u)
              {
                if (v12 == 5)
                {
                  v14 = 0xE800000000000000;
                  v13 = 0x7961647275746173;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v13 = 0x7961646E7573;
                  v14 = 0xE600000000000000;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }
              }

              else
              {
                if (v12 == 3)
                {
                  v13 = 0x7961647372756874;
                }

                else
                {
                  v13 = 0x796164697266;
                }

                if (v12 == 3)
                {
                  v14 = 0xE800000000000000;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
                  goto LABEL_38;
                }
              }

              if (v7)
              {
                if (v7 == 1)
                {
                  v23 = 0x79616473657574;
                }

                else
                {
                  v23 = 0x616473656E646577;
                }

                if (v7 == 1)
                {
                  v22 = 0xE700000000000000;
                }

                else
                {
                  v22 = 0xE900000000000079;
                }

                if (v13 != v23)
                {
                  goto LABEL_12;
                }
              }

              else
              {
                v22 = 0xE600000000000000;
                if (v13 != 0x7961646E6F6DLL)
                {
                  goto LABEL_12;
                }
              }

LABEL_63:
              if (v14 == v22)
              {

                break;
              }

LABEL_12:
              v11 = sub_1B4D18DCC();

              ++v10;
              --v9;
            }

            while ((v11 & 1) == 0);
          }
        }

        if (v8 != 2)
        {
          v24 = *(v82 + 16);
          if (v24)
          {
            v25 = v80;
            while (1)
            {
              v27 = *v25++;
              v26 = v27;
              if (v27 != 2 && ((v26 ^ v8) & 1) == 0)
              {
                break;
              }

              if (!--v24)
              {
                goto LABEL_3;
              }
            }
          }
        }
      }

      v28 = v118;
      __swift_project_boxed_opaque_existential_1(&v116 + 1, v118);
      sub_1B4B70700(v28, *(*(&v28 + 1) + 8));
      LOBYTE(v88) = v106;
      if (RingsPropertyKind.rawValue.getter() == 0x6572745365766F6DLL && v29 == 0xEA00000000006B61)
      {

LABEL_75:
        v106 = v115;
        v107 = v116;
        v108 = v117;
        v109 = v118;
        v5 = v124;
        *&v97 = v124;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B4BCEB88(0, *(v5 + 16) + 1, 1);
          v5 = v97;
        }

        v32 = *(v5 + 16);
        v31 = *(v5 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1B4BCEB88((v31 > 1), v32 + 1, 1);
          v5 = v97;
        }

        *(v5 + 16) = v32 + 1;
        v33 = (v5 + (v32 << 6));
        v34 = v106;
        v35 = v107;
        v36 = v109;
        v33[4] = v108;
        v33[5] = v36;
        v33[2] = v34;
        v33[3] = v35;
        goto LABEL_4;
      }

      v30 = sub_1B4D18DCC();

      if (v30)
      {
        goto LABEL_75;
      }

LABEL_3:
      sub_1B4B6F358(&v115);
      v5 = v124;
LABEL_4:
      v6 = (v6 + 1);
    }

    while (v6 != v85);
  }

  *&v115 = v5;

  sub_1B4CB8494(&v115);
  v37 = v79;
  if (v79)
  {

    __break(1u);
  }

  else
  {

    v38 = v115;
    v39 = *(v115 + 16);
    if (v39)
    {
      v83 = 0;
      *&v97 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v39, 0);
      v40 = v97;
      v82 = v38;
      v41 = v38 + 32;
      do
      {
        v124 = v39;
        v86 = v41;
        sub_1B4B6F2FC(v41, &v115);
        v42 = v118;
        v43 = __swift_project_boxed_opaque_existential_1(&v116 + 1, v118);
        v44 = *(*(&v42 + 1) + 8);
        v84 = *(v44 + 64);
        v85 = v43;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v107 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v108 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v84(v42, v44);
        v48 = sub_1B4B6F358(&v115);
        *&v97 = v40;
        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          v48 = sub_1B4BCF0BC((v49 > 1), v50 + 1, 1);
        }

        v51 = MEMORY[0x1EEE9AC00](v48);
        v53 = &v78 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v54 + 16))(v53, boxed_opaque_existential_1, AssociatedTypeWitness, v51);
        sub_1B4CB7620(v50, v53, &v97, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v106);
        v40 = v97;
        v41 = v86 + 64;
        v39 = v124 - 1;
      }

      while (v124 != 1);

      v37 = v83;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v55 = sub_1B49E709C(v40);

    if (v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

    sub_1B4CED654(v56, &v115);
    if (v37)
    {
    }

    else
    {

      v112 = v121;
      v113 = v122;
      v114 = v123;
      v108 = v117;
      v109 = v118;
      v110 = v119;
      v111 = v120;
      v106 = v115;
      v107 = v116;
      if (sub_1B496F52C(&v106) == 1)
      {
        v94 = v121;
        v95 = v122;
        v96 = v123;
        v90 = v117;
        v91 = v118;
        v92 = v119;
        v93 = v120;
        v88 = v115;
        v89 = v116;
        sub_1B4975024(&v88, &qword_1EB8AC4D8, &qword_1B4D3C6A8);
        sub_1B496F544(&v97);
        v57 = v104;
        v58 = v78;
        *(v78 + 96) = v103;
        *(v58 + 112) = v57;
        *(v58 + 128) = v105;
        v59 = v100;
        *(v58 + 32) = v99;
        *(v58 + 48) = v59;
        v60 = v102;
        *(v58 + 64) = v101;
        *(v58 + 80) = v60;
        v61 = v98;
        *v58 = v97;
        *(v58 + 16) = v61;
      }

      else
      {
        v62 = v121;
        v94 = v121;
        v95 = v122;
        v63 = v117;
        v64 = v117;
        v90 = v117;
        v91 = v118;
        v65 = v119;
        v66 = v119;
        v92 = v119;
        v93 = v120;
        v67 = v115;
        v68 = v115;
        v88 = v115;
        v89 = v116;
        v69 = v122;
        v70 = v122;
        v71 = v78;
        *(v78 + 96) = v121;
        *(v71 + 112) = v69;
        v72 = v118;
        v73 = v118;
        *(v71 + 32) = v63;
        *(v71 + 48) = v72;
        v74 = v120;
        v75 = v120;
        *(v71 + 64) = v65;
        *(v71 + 80) = v74;
        v76 = v116;
        v77 = v116;
        *v71 = v67;
        *(v71 + 16) = v76;
        v103 = v62;
        v104 = v70;
        v99 = v64;
        v100 = v73;
        v101 = v66;
        v102 = v75;
        v96 = v123;
        *(v71 + 128) = v123;
        v105 = v123;
        v97 = v68;
        v98 = v77;
        sub_1B4BA6D90(&v88, &v87);
        sub_1B4C0522C(&v97);
        nullsub_1();
      }
    }
  }
}

void sub_1B4C02EE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v86 = a1;
  v78 = a5;
  v5 = MEMORY[0x1E69E7CC0];
  v85 = *(a4 + 16);
  if (v85)
  {
    v6 = 0;
    v83 = a2;
    v84 = (a4 + 32);
    v81 = (a2 + 32);
    v82 = a3;
    v80 = (a3 + 32);
    do
    {
      v124 = v5;
      sub_1B4B6F2FC(v84 + 64 * v6, &v115);
      if (v86)
      {
        v7 = BYTE1(v116);
        v8 = BYTE2(v116);
        if (v116 != 12 && *(v86 + 16) && !sub_1B4978C4C(v116, v86))
        {
          goto LABEL_3;
        }

        if (v7 != 7)
        {
          v9 = *(v83 + 16);
          if (v9)
          {
            v10 = v81;
            do
            {
              if (!v9)
              {
                goto LABEL_3;
              }

              v12 = *v10;
              if (v12 <= 2)
              {
                v15 = 0x616473656E646577;
                if (v12 == 1)
                {
                  v15 = 0x79616473657574;
                }

                v16 = 0xE900000000000079;
                if (v12 == 1)
                {
                  v16 = 0xE700000000000000;
                }

                if (*v10)
                {
                  v13 = v15;
                }

                else
                {
                  v13 = 0x7961646E6F6DLL;
                }

                if (*v10)
                {
                  v14 = v16;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
LABEL_38:
                  v17 = 0x7961646E7573;
                  if (v7 == 5)
                  {
                    v17 = 0x7961647275746173;
                    v18 = 0xE800000000000000;
                  }

                  else
                  {
                    v18 = 0xE600000000000000;
                  }

                  v19 = 0x7961647372756874;
                  if (v7 == 3)
                  {
                    v20 = 0xE800000000000000;
                  }

                  else
                  {
                    v19 = 0x796164697266;
                    v20 = 0xE600000000000000;
                  }

                  if (v7 <= 4)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = v17;
                  }

                  if (v7 <= 4)
                  {
                    v22 = v20;
                  }

                  else
                  {
                    v22 = v18;
                  }

                  if (v13 != v21)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_63;
                }
              }

              else if (*v10 > 4u)
              {
                if (v12 == 5)
                {
                  v14 = 0xE800000000000000;
                  v13 = 0x7961647275746173;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v13 = 0x7961646E7573;
                  v14 = 0xE600000000000000;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }
              }

              else
              {
                if (v12 == 3)
                {
                  v13 = 0x7961647372756874;
                }

                else
                {
                  v13 = 0x796164697266;
                }

                if (v12 == 3)
                {
                  v14 = 0xE800000000000000;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
                  goto LABEL_38;
                }
              }

              if (v7)
              {
                if (v7 == 1)
                {
                  v23 = 0x79616473657574;
                }

                else
                {
                  v23 = 0x616473656E646577;
                }

                if (v7 == 1)
                {
                  v22 = 0xE700000000000000;
                }

                else
                {
                  v22 = 0xE900000000000079;
                }

                if (v13 != v23)
                {
                  goto LABEL_12;
                }
              }

              else
              {
                v22 = 0xE600000000000000;
                if (v13 != 0x7961646E6F6DLL)
                {
                  goto LABEL_12;
                }
              }

LABEL_63:
              if (v14 == v22)
              {

                break;
              }

LABEL_12:
              v11 = sub_1B4D18DCC();

              ++v10;
              --v9;
            }

            while ((v11 & 1) == 0);
          }
        }

        if (v8 != 2)
        {
          v24 = *(v82 + 16);
          if (v24)
          {
            v25 = v80;
            while (1)
            {
              v27 = *v25++;
              v26 = v27;
              if (v27 != 2 && ((v26 ^ v8) & 1) == 0)
              {
                break;
              }

              if (!--v24)
              {
                goto LABEL_3;
              }
            }
          }
        }
      }

      v28 = v118;
      __swift_project_boxed_opaque_existential_1(&v116 + 1, v118);
      sub_1B4B70700(v28, *(*(&v28 + 1) + 8));
      LOBYTE(v88) = v106;
      if (RingsPropertyKind.rawValue.getter() == 0x6573696372657865 && v29 == 0xEE006B6165727453)
      {

LABEL_75:
        v106 = v115;
        v107 = v116;
        v108 = v117;
        v109 = v118;
        v5 = v124;
        *&v97 = v124;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B4BCEB88(0, *(v5 + 16) + 1, 1);
          v5 = v97;
        }

        v32 = *(v5 + 16);
        v31 = *(v5 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1B4BCEB88((v31 > 1), v32 + 1, 1);
          v5 = v97;
        }

        *(v5 + 16) = v32 + 1;
        v33 = (v5 + (v32 << 6));
        v34 = v106;
        v35 = v107;
        v36 = v109;
        v33[4] = v108;
        v33[5] = v36;
        v33[2] = v34;
        v33[3] = v35;
        goto LABEL_4;
      }

      v30 = sub_1B4D18DCC();

      if (v30)
      {
        goto LABEL_75;
      }

LABEL_3:
      sub_1B4B6F358(&v115);
      v5 = v124;
LABEL_4:
      v6 = (v6 + 1);
    }

    while (v6 != v85);
  }

  *&v115 = v5;

  sub_1B4CB8494(&v115);
  v37 = v79;
  if (v79)
  {

    __break(1u);
  }

  else
  {

    v38 = v115;
    v39 = *(v115 + 16);
    if (v39)
    {
      v83 = 0;
      *&v97 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v39, 0);
      v40 = v97;
      v82 = v38;
      v41 = v38 + 32;
      do
      {
        v124 = v39;
        v86 = v41;
        sub_1B4B6F2FC(v41, &v115);
        v42 = v118;
        v43 = __swift_project_boxed_opaque_existential_1(&v116 + 1, v118);
        v44 = *(*(&v42 + 1) + 8);
        v84 = *(v44 + 64);
        v85 = v43;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v107 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v108 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v84(v42, v44);
        v48 = sub_1B4B6F358(&v115);
        *&v97 = v40;
        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          v48 = sub_1B4BCF0BC((v49 > 1), v50 + 1, 1);
        }

        v51 = MEMORY[0x1EEE9AC00](v48);
        v53 = &v78 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v54 + 16))(v53, boxed_opaque_existential_1, AssociatedTypeWitness, v51);
        sub_1B4CB7620(v50, v53, &v97, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v106);
        v40 = v97;
        v41 = v86 + 64;
        v39 = v124 - 1;
      }

      while (v124 != 1);

      v37 = v83;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v55 = sub_1B49E709C(v40);

    if (v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

    sub_1B4CEF13C(v56, &v115);
    if (v37)
    {
    }

    else
    {

      v112 = v121;
      v113 = v122;
      v114 = v123;
      v108 = v117;
      v109 = v118;
      v110 = v119;
      v111 = v120;
      v106 = v115;
      v107 = v116;
      if (sub_1B496F52C(&v106) == 1)
      {
        v94 = v121;
        v95 = v122;
        v96 = v123;
        v90 = v117;
        v91 = v118;
        v92 = v119;
        v93 = v120;
        v88 = v115;
        v89 = v116;
        sub_1B4975024(&v88, &qword_1EB8AC4F8, &qword_1B4D3C6C8);
        sub_1B496F544(&v97);
        v57 = v104;
        v58 = v78;
        *(v78 + 96) = v103;
        *(v58 + 112) = v57;
        *(v58 + 128) = v105;
        v59 = v100;
        *(v58 + 32) = v99;
        *(v58 + 48) = v59;
        v60 = v102;
        *(v58 + 64) = v101;
        *(v58 + 80) = v60;
        v61 = v98;
        *v58 = v97;
        *(v58 + 16) = v61;
      }

      else
      {
        v62 = v121;
        v94 = v121;
        v95 = v122;
        v63 = v117;
        v64 = v117;
        v90 = v117;
        v91 = v118;
        v65 = v119;
        v66 = v119;
        v92 = v119;
        v93 = v120;
        v67 = v115;
        v68 = v115;
        v88 = v115;
        v89 = v116;
        v69 = v122;
        v70 = v122;
        v71 = v78;
        *(v78 + 96) = v121;
        *(v71 + 112) = v69;
        v72 = v118;
        v73 = v118;
        *(v71 + 32) = v63;
        *(v71 + 48) = v72;
        v74 = v120;
        v75 = v120;
        *(v71 + 64) = v65;
        *(v71 + 80) = v74;
        v76 = v116;
        v77 = v116;
        *v71 = v67;
        *(v71 + 16) = v76;
        v103 = v62;
        v104 = v70;
        v99 = v64;
        v100 = v73;
        v101 = v66;
        v102 = v75;
        v96 = v123;
        *(v71 + 128) = v123;
        v105 = v123;
        v97 = v68;
        v98 = v77;
        sub_1B4BA6D90(&v88, &v87);
        sub_1B4C056C4(&v97);
        nullsub_1();
      }
    }
  }
}

uint64_t sub_1B4C03800(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "s <ring_percentage>.";
  }

  else
  {
    v2 = "workoutWeekContext";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "s <ring_percentage>.";
  }

  else
  {
    v4 = "workoutWeekContext";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

uint64_t sub_1B4C038A4()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C0391C(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C03980(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C039F4@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B4C03A54(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "s <ring_percentage>.";
  }

  else
  {
    v2 = "workoutWeekContext";
  }

  *a1 = 0xD000000000000016;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1B4C03A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49AA274;

  return sub_1B4C03C80(a1, a3);
}

unint64_t sub_1B4C03B50(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C03B80();
  result = sub_1B4C03BD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C03B80()
{
  result = qword_1EB8AC4B0;
  if (!qword_1EB8AC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC4B0);
  }

  return result;
}

unint64_t sub_1B4C03BD4()
{
  result = qword_1EB8AC4B8;
  if (!qword_1EB8AC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC4B8);
  }

  return result;
}

unint64_t sub_1B4C03C2C()
{
  result = qword_1EB8AC4C0;
  if (!qword_1EB8AC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC4C0);
  }

  return result;
}

uint64_t sub_1B4C03C80(uint64_t a1, uint64_t a2)
{
  v2[76] = a2;
  v2[75] = a1;
  v3 = type metadata accessor for RingClosureStreakFact(0);
  v2[77] = v3;
  v2[78] = *(v3 - 8);
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040);
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v4 = type metadata accessor for RingProgressType(0);
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v5 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v2[89] = v5;
  v2[90] = *(v5 - 8);
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050);
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C03F10, 0, 0);
}

uint64_t sub_1B4C03F10()
{
  v153 = v0;
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 600);
  v4 = type metadata accessor for ActivitySummaryContext(0);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  *(v0 + 584) = &type metadata for RingClosureStreakFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4C8, &unk_1B4D3C690);
  *&v142 = sub_1B4D181CC();
  *(&v142 + 1) = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);

  v8 = v0;
  (*(v6 + 8))(v142, *(&v142 + 1), v4, v4, v5, v6);

  sub_1B4974FBC(v1, v2, &qword_1EB8AA5C8, &qword_1B4D39050);
  v9 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  v10 = *(v0 + 768);
  v11 = *(v0 + 752);
  v12 = *(v0 + 720);
  v13 = *(v0 + 712);
  if (v9 == 1)
  {
    sub_1B4975024(*(v0 + 768), &qword_1EB8AA5C8, &qword_1B4D39050);
    (*(v12 + 56))(v11, 1, 1, v13);
  }

  else
  {
    sub_1B4974FBC(*(v0 + 768), *(v0 + 752), &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4C05664(v10, type metadata accessor for ActivitySummaryContext);
    v14 = *(v12 + 48);
    if (v14(v11, 1, v13) != 1)
    {
      v21 = *(v0 + 760);
      v22 = *(v0 + 720);
      v23 = *(v0 + 712);
      sub_1B4C051C4(*(v0 + 752), v21, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v22 + 56))(v21, 0, 1, v23);
      goto LABEL_7;
    }
  }

  v15 = *(v0 + 760);
  v16 = *(v0 + 752);
  v17 = *(v0 + 720);
  v18 = *(v0 + 712);
  v19 = *(v0 + 608);
  v20 = type metadata accessor for WorkoutState(0);
  sub_1B4974FBC(v19 + *(v20 + 128), v15, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v14 = *(v17 + 48);
  if (v14(v16, 1, v18) != 1)
  {
    sub_1B4975024(*(v0 + 752), &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_7:
  v25 = v3[3];
  v24 = v3[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 600), v25);
  *(v0 + 592) = &type metadata for RingClosureStreakFactGenerator.QueryIdentifier;
  *&v142 = sub_1B4D181CC();
  *(&v142 + 1) = v26;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4E440);

  (*(v24 + 8))(v142, *(&v142 + 1), &type metadata for RingsProperties, &type metadata for RingsProperties, v25, v24);

  v27 = *(v0 + 576);
  if (v27)
  {
    v28 = *(v0 + 744);
    v29 = *(v0 + 712);
    sub_1B4974FBC(*(v0 + 760), v28, &qword_1EB8A6C98, &unk_1B4D2F3F0);
    v30 = v14(v28, 1, v29);
    v31 = *(v0 + 744);
    if (v30 == 1)
    {

      v32 = &qword_1EB8A6C98;
      v33 = &unk_1B4D2F3F0;
LABEL_10:
      sub_1B4975024(v31, v32, v33);
      goto LABEL_13;
    }

    v34 = *(v0 + 736);
    sub_1B4C051C4(*(v0 + 744), v34, type metadata accessor for HKActivitySummaryRepresentable);
    if ((*(v34 + 25) & 1) != 0 || (sub_1B4C01CC8(0, 0, 0, v27, &v133), v31 = v0 + 152, v43 = v139, v44 = v140, v45 = v140, *(v0 + 248) = v139, *(v0 + 264) = v44, v46 = v135, v47 = v136, v48 = v136, *(v0 + 184) = v135, *(v0 + 200) = v47, v49 = v138, v50 = v138, v51 = v137, *(v0 + 216) = v137, *(v0 + 232) = v49, v52 = v134, v53 = v134, v54 = v133, *(v0 + 152) = v133, *(v0 + 168) = v52, *(v0 + 112) = v43, *(v0 + 128) = v45, *(v0 + 48) = v46, *(v0 + 64) = v48, *(v0 + 80) = v51, *(v0 + 96) = v50, v55 = v141, *(v0 + 280) = v141, *(v0 + 144) = v55, *(v0 + 16) = v54, *(v0 + 32) = v53, sub_1B496F52C(v0 + 16) == 1))
    {
      sub_1B4C05664(*(v0 + 736), type metadata accessor for HKActivitySummaryRepresentable);

      goto LABEL_13;
    }

    sub_1B4C025D0(0, 0, 0, v27, &v142);

    v56 = v147;
    v58 = v148;
    v57 = v149;
    *(v0 + 520) = v148;
    *(v0 + 536) = v57;
    v59 = v143;
    v61 = v144;
    v60 = v145;
    *(v0 + 456) = v144;
    *(v0 + 472) = v60;
    v62 = v145;
    v64 = v146;
    v63 = v147;
    *(v0 + 488) = v146;
    *(v0 + 504) = v63;
    v65 = v143;
    v66 = v142;
    *(v0 + 424) = v142;
    *(v0 + 440) = v65;
    v67 = v149;
    *(v0 + 384) = v58;
    *(v0 + 400) = v67;
    *(v0 + 320) = v61;
    *(v0 + 336) = v62;
    *(v0 + 352) = v64;
    *(v0 + 368) = v56;
    v68 = v150;
    *(v0 + 552) = v150;
    *(v0 + 416) = v68;
    *(v0 + 288) = v66;
    *(v0 + 304) = v59;
    v69 = sub_1B496F52C(v0 + 288);
    v70 = *(v0 + 736);
    if (v69 == 1)
    {
      sub_1B4C05664(v70, type metadata accessor for HKActivitySummaryRepresentable);
      v32 = &qword_1EB8A79B8;
      v33 = &qword_1B4D1F320;
      goto LABEL_10;
    }

    v71 = *(v0 + 728);
    v72 = *(v0 + 672);
    v73 = v8[83];
    v74 = v8[82];
    sub_1B4C055FC(v70, v8[91], type metadata accessor for HKActivitySummaryRepresentable);
    LOBYTE(v152[0]) = 3;
    sub_1B4B05EF8(v71, v152, v74);
    v75 = *(v72 + 48);
    v76 = v75(v74, 1, v73);
    v77 = v8[92];
    if (v76 == 1)
    {
      v78 = v8[82];
      sub_1B4C05664(v8[92], type metadata accessor for HKActivitySummaryRepresentable);
      sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
      sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
      sub_1B4975024(v78, &qword_1EB8AA5C0, &unk_1B4D39040);
      goto LABEL_13;
    }

    v79 = v8[91];
    v80 = v8[83];
    v81 = v8[81];
    sub_1B4C051C4(v8[82], v8[88], type metadata accessor for RingProgressType);
    sub_1B4C055FC(v77, v79, type metadata accessor for HKActivitySummaryRepresentable);
    LOBYTE(v152[0]) = 0;
    sub_1B4B05EF8(v79, v152, v81);
    v82 = v75(v81, 1, v80);
    v83 = v8[92];
    if (v82 == 1)
    {
      v84 = v8[88];
      v85 = v8[81];
      sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
      sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
      sub_1B4C05664(v84, type metadata accessor for RingProgressType);
      sub_1B4C05664(v83, type metadata accessor for HKActivitySummaryRepresentable);
      sub_1B4975024(v85, &qword_1EB8AA5C0, &unk_1B4D39040);
      goto LABEL_13;
    }

    v86 = v8[89];
    sub_1B4C051C4(v8[81], v8[87], type metadata accessor for RingProgressType);
    v87 = *(v83 + *(v86 + 76));
    v152[0] = *v83;
    CacheIndex.add(days:)(-2, &v151);
    sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
    v88 = 0;
    v89 = v8[8];
    if (v8[10] == v151 && v89 == 2)
    {
      v88 = v8[9] == 0;
    }

    v152[0] = *v8[92];
    CacheIndex.add(days:)(-2, &v151);
    sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
    v132 = 0;
    v130 = v88;
    v128 = v8[42];
    if (v8[44] == v151 && v8[42] == 2)
    {
      v132 = v8[43] == 0;
    }

    sub_1B4C055FC(v8[88], v8[86], type metadata accessor for RingProgressType);
    v90 = sub_1B4A612D4();
    if (v91 & 1) != 0 || (v92 = *&v90, v93 = sub_1B4A61B14(), (v94))
    {
      v95 = 0;
    }

    else
    {
      v120 = *&v93;
      v121 = COERCE_DOUBLE(sub_1B4A61EE8());
      v95 = 0;
      if ((v122 & 1) == 0 && v92 >= 1.0 && v120 >= 1.0)
      {
        v95 = v121 >= 1.0;
      }
    }

    v126 = v8;
    v96 = v8[87];
    v97 = v8[86];
    v98 = v8[85];
    v99 = v8[80];
    v100 = v8[79];
    v101 = v8[77];
    *v99 = v89;
    sub_1B4C051C4(v97, v99 + v101[5], type metadata accessor for RingProgressType);
    v102 = v87 & 1;
    *(v99 + v101[6]) = v102;
    *(v99 + v101[7]) = v95;
    *(v99 + v101[8]) = v130;
    sub_1B4C055FC(v96, v98, type metadata accessor for RingProgressType);
    v103 = COERCE_DOUBLE(sub_1B4A612D4()) >= 1.0;
    v105 = v103 & ~v104;
    *v100 = v128;
    sub_1B4C051C4(v98, v100 + v101[5], type metadata accessor for RingProgressType);
    *(v100 + v101[6]) = v102;
    *(v100 + v101[7]) = v105;
    *(v100 + v101[8]) = v132;
    v129 = v126[97];
    v127 = v126[95];
    v106 = v126[92];
    v107 = v126[88];
    v108 = v126[87];
    v109 = v126[80];
    v110 = v126[79];
    if (v128 < 3)
    {
      if (!v130)
      {
        if (!v132)
        {
          sub_1B4C05664(v126[79], type metadata accessor for RingClosureStreakFact);
          sub_1B4C05664(v109, type metadata accessor for RingClosureStreakFact);
          sub_1B4C05664(v108, type metadata accessor for RingProgressType);
          sub_1B4C05664(v107, type metadata accessor for RingProgressType);
          sub_1B4C05664(v106, type metadata accessor for HKActivitySummaryRepresentable);
          sub_1B4975024(v127, &qword_1EB8A6C98, &unk_1B4D2F3F0);
          sub_1B4975024(v129, &qword_1EB8AA5C8, &qword_1B4D39050);
          v131 = MEMORY[0x1E69E7CC0];
          v8 = v126;
          goto LABEL_18;
        }

        v123 = v126[78];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4D0, &qword_1B4D3C6A0);
        v124 = (*(v123 + 80) + 32) & ~*(v123 + 80);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_1B4D1A800;
        v131 = v125;
        sub_1B4C055FC(v110, v125 + v124, type metadata accessor for RingClosureStreakFact);
        sub_1B4C05664(v110, type metadata accessor for RingClosureStreakFact);
        v119 = v109;
        v8 = v126;
LABEL_45:
        sub_1B4C05664(v119, type metadata accessor for RingClosureStreakFact);
        sub_1B4C05664(v108, type metadata accessor for RingProgressType);
        sub_1B4C05664(v107, type metadata accessor for RingProgressType);
        sub_1B4C05664(v106, type metadata accessor for HKActivitySummaryRepresentable);
        sub_1B4975024(v127, &qword_1EB8A6C98, &unk_1B4D2F3F0);
        sub_1B4975024(v129, &qword_1EB8AA5C8, &qword_1B4D39050);
        goto LABEL_18;
      }

      v116 = v126[78];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4D0, &qword_1B4D3C6A0);
      v117 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1B4D1A800;
      v131 = v118;
      v115 = v118 + v117;
      v114 = v109;
    }

    else
    {
      v111 = v126[78];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4D0, &qword_1B4D3C6A0);
      v112 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_1B4D1A800;
      if (v89 >= v128)
      {
        v114 = v109;
      }

      else
      {
        v114 = v110;
      }

      v131 = v113;
      v115 = v113 + v112;
    }

    sub_1B4C055FC(v114, v115, type metadata accessor for RingClosureStreakFact);
    sub_1B4C05664(v110, type metadata accessor for RingClosureStreakFact);
    v119 = v109;
    v8 = v126;
    goto LABEL_45;
  }

LABEL_13:
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v35 = sub_1B4D17F6C();
  __swift_project_value_buffer(v35, qword_1EDC36F00);
  v36 = sub_1B4D17F5C();
  v37 = sub_1B4D1873C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v142 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_1B49558AC(0xD00000000000001ELL, 0x80000001B4D3C560, &v142);
    _os_log_impl(&dword_1B4953000, v36, v37, "%s No ring closure streak found.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1B8C7DDA0](v39, -1, -1);
    MEMORY[0x1B8C7DDA0](v38, -1, -1);
  }

  v40 = v8[97];
  sub_1B4975024(v8[95], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  sub_1B4975024(v40, &qword_1EB8AA5C8, &qword_1B4D39050);
  v131 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v41 = v8[1];

  return v41(v131);
}

uint64_t sub_1B4C051C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4C052D4(uint64_t a1, unsigned __int8 *a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = *(type metadata accessor for WorkoutState(0) + 36);
  v9 = sub_1B4D1777C();
  v10 = *(*(v9 - 8) + 16);
  v24 = v8;
  v25 = a1;
  v10(v6, a1 + v8, v9);
  type metadata accessor for DateRangeDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for RingsPropertiesQuery(0);
  v12 = &v6[v11[5]];
  v13 = MEMORY[0x1E69E7CC0];
  *v12 = MEMORY[0x1E69E7CC0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v13;
  *&v6[v11[6]] = v13;
  *&v6[v11[7]] = &unk_1F2CB9768;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4E8, &qword_1B4D3C6B8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4F0, &qword_1B4D3C6C0);
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v17 = swift_allocObject();
  if (v7)
  {
    *(v17 + 16) = xmmword_1B4D1A800;
    v18 = *(v14 + 48);
    *(v17 + v16) = 0;
    sub_1B4C055FC(v6, v17 + v16 + v18, type metadata accessor for FitnessContextQueryDescriptor);
    v19 = sub_1B4C96E60(v17);
    swift_setDeallocating();
    sub_1B4975024(v17 + v16, &qword_1EB8AC4F0, &qword_1B4D3C6C0);
  }

  else
  {
    *(v17 + 16) = xmmword_1B4D1AA70;
    v20 = *(v14 + 48);
    *(v17 + v16) = 0;
    sub_1B4C055FC(v6, v17 + v16 + v20, type metadata accessor for FitnessContextQueryDescriptor);
    v21 = (v17 + v16 + v15);
    v22 = *(v14 + 48);
    *v21 = 1;
    v10(&v21[v22], v25 + v24, v9);
    swift_storeEnumTagMultiPayload();
    v19 = sub_1B4C96E60(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  sub_1B4C05664(v6, type metadata accessor for FitnessContextQueryDescriptor);
  return v19;
}

uint64_t sub_1B4C055FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C05664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SnapshotQueryBatch.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42 - v18;
  sub_1B4C05F58(a1, &v42 - v18);
  v20 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v43 = a4;
    v44 = a1;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v27 = sub_1B4C0793C(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
        v42 = &v42;
        v46 = *v16;
        MEMORY[0x1EEE9AC00](v27);
        *(&v42 - 2) = a2;
        *(&v42 - 1) = a3;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC520, &qword_1B4D3C6F0);
        swift_getAssociatedTypeWitness();
        sub_1B4BA09B4(qword_1EB8AC528, &qword_1EB8AC520, &qword_1B4D3C6F0);
        v28 = v45;
        v29 = sub_1B4D182BC();
        if (v28)
        {
          sub_1B4C078DC(v44, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);

          v23 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch;
          v24 = v16;
          return sub_1B4C078DC(v24, v23);
        }

        v36 = v29;

        v46 = v36;
        sub_1B4D184BC();
        swift_getAssociatedConformanceWitness();
        swift_getWitnessTable();
        v37 = sub_1B4D1862C();
        sub_1B4C078DC(v44, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);
        v38 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch;
        v39 = v16;
      }

      else
      {
        v33 = sub_1B4C0793C(v19, v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
        v42 = &v42;
        v46 = *v10;
        MEMORY[0x1EEE9AC00](v33);
        *(&v42 - 2) = a2;
        *(&v42 - 1) = a3;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC500, &qword_1B4D3C6E0);
        swift_getAssociatedTypeWitness();
        sub_1B4BA09B4(&qword_1EB8AC508, &qword_1EB8AC500, &qword_1B4D3C6E0);
        v34 = v45;
        v35 = sub_1B4D182BC();
        if (v34)
        {
          sub_1B4C078DC(v44, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);

          v23 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch;
          v24 = v10;
          return sub_1B4C078DC(v24, v23);
        }

        v41 = v35;

        v46 = v41;
        sub_1B4D184BC();
        swift_getAssociatedConformanceWitness();
        swift_getWitnessTable();
        v37 = sub_1B4D1862C();
        sub_1B4C078DC(v44, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);
        v38 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch;
        v39 = v10;
      }
    }

    else
    {
      v30 = sub_1B4C0793C(v19, v13, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      v42 = &v42;
      v46 = *v13;
      MEMORY[0x1EEE9AC00](v30);
      *(&v42 - 2) = a2;
      *(&v42 - 1) = a3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC510, &qword_1B4D3C6E8);
      swift_getAssociatedTypeWitness();
      sub_1B4BA09B4(&qword_1EB8AC518, &qword_1EB8AC510, &qword_1B4D3C6E8);
      v31 = v45;
      v32 = sub_1B4D182BC();
      if (v31)
      {
        sub_1B4C078DC(v44, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);

        v23 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch;
        v24 = v13;
        return sub_1B4C078DC(v24, v23);
      }

      v40 = v32;

      v46 = v40;
      sub_1B4D184BC();
      swift_getAssociatedConformanceWitness();
      swift_getWitnessTable();
      v37 = sub_1B4D1862C();
      sub_1B4C078DC(v44, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);
      v38 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch;
      v39 = v13;
    }

    result = sub_1B4C078DC(v39, v38);
    *v43 = v37;
    return result;
  }

  _s7FailureOMa_15(0, a2, a3, v21);
  swift_getWitnessTable();
  swift_allocError();
  *v22 = 0;
  v22[1] = 0;
  swift_willThrow();
  v23 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch;
  v24 = a1;
  return sub_1B4C078DC(v24, v23);
}

uint64_t sub_1B4C05F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C05FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void, double)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(char *)@<X6>, uint64_t a8@<X8>)
{
  v22[1] = a2;
  v14 = a4(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v22 - v16;
  v18 = a5(0, v15);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B4C079A4(a1, v17, a6);
  result = a7(v17);
  if (!v8)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = swift_dynamicCast();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a8, v21 ^ 1u, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t SnapshotQueryBatch.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch(0);
  sub_1B4C07894(&qword_1EB8AAB30, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C06374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v33 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1B4D1861C();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5B0, &qword_1B4D3C7C0);
  if (swift_dynamicCast())
  {

    v15 = v37;
    MEMORY[0x1EEE9AC00](v14);
    *(&v32 - 2) = v15;
    sub_1B4C07894(&qword_1EB8AAB60, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    v16 = v36;
    sub_1B4D17DAC();

    if (!v16)
    {
      v17 = v35;
      sub_1B4C077F4(v35);
      sub_1B4C0793C(v13, v17, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
      v18 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    }
  }

  else
  {

    v38 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5B8, &qword_1B4D3C7C8);
    if (swift_dynamicCast())
    {

      v20 = v37;
      MEMORY[0x1EEE9AC00](v19);
      *(&v32 - 2) = v20;
      sub_1B4C07894(&qword_1EB8AAB48, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      v21 = v36;
      sub_1B4D17DAC();

      if (!v21)
      {
        v17 = v35;
        sub_1B4C077F4(v35);
        sub_1B4C0793C(v10, v17, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
        v18 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
        goto LABEL_12;
      }
    }

    else
    {

      v38 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5C0, &unk_1B4D3C7D0);
      v22 = swift_dynamicCast();
      if (!v22)
      {

        v38 = a3;
        swift_getMetatypeMetadata();
        v26 = sub_1B4D181AC();
        v28 = v27;
        _s7FailureOMa_15(0, a3, a4, v29);
        swift_getWitnessTable();
        swift_allocError();
        *v30 = v26;
        v30[1] = v28;
        return swift_willThrow();
      }

      v23 = v37;
      MEMORY[0x1EEE9AC00](v22);
      *(&v32 - 2) = v23;
      sub_1B4C07894(&qword_1EB8AAB78, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
      v24 = v34;
      v25 = v36;
      sub_1B4D17DAC();
      if (!v25)
      {

        v17 = v35;
        sub_1B4C077F4(v35);
        sub_1B4C0793C(v24, v17, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
        v18 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
        goto LABEL_12;
      }
    }
  }
}

void sub_1B4C06988(uint64_t *a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v28 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v28 - v8;
  v9 = type metadata accessor for RingsPropertiesQuery(0);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v35 = a2;

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    while (1)
    {
      v36 = v18;
LABEL_9:
      v20 = sub_1B4C079A4(*(v35 + 48) + *(v33 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v11, type metadata accessor for RingsPropertiesQuery);
      MEMORY[0x1EEE9AC00](v20);
      *(&v28 - 2) = v11;
      sub_1B4C07894(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      v21 = v34;
      v22 = v38;
      sub_1B4D17DAC();
      v38 = v22;
      if (v22)
      {
        break;
      }

      sub_1B4C078DC(v11, type metadata accessor for RingsPropertiesQuery);
      v23 = v21;
      v24 = v30;
      sub_1B4C0793C(v23, v30, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      sub_1B4C0793C(v24, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      v18 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1B4A1EA10(0, v18[2] + 1, 1, v18);
      }

      v26 = v18[2];
      v25 = v18[3];
      if (v26 >= v25 >> 1)
      {
        v18 = sub_1B4A1EA10((v25 > 1), v26 + 1, 1, v18);
      }

      v15 &= v15 - 1;
      v18[2] = v26 + 1;
      sub_1B4C0793C(v37, v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    sub_1B4C078DC(v11, type metadata accessor for RingsPropertiesQuery);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v27 = v29;

        *v27 = v18;
        return;
      }

      v15 = *(v12 + 8 * v19);
      ++v17;
      if (v15)
      {
        v36 = v18;
        v17 = v19;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_1B4C06DB4(uint64_t *a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v28 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v28 - v8;
  v9 = type metadata accessor for WorkoutPropertiesQuery(0);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v35 = a2;

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    while (1)
    {
      v36 = v18;
LABEL_9:
      v20 = sub_1B4C079A4(*(v35 + 48) + *(v33 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v11, type metadata accessor for WorkoutPropertiesQuery);
      MEMORY[0x1EEE9AC00](v20);
      *(&v28 - 2) = v11;
      sub_1B4C07894(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v21 = v34;
      v22 = v38;
      sub_1B4D17DAC();
      v38 = v22;
      if (v22)
      {
        break;
      }

      sub_1B4C078DC(v11, type metadata accessor for WorkoutPropertiesQuery);
      v23 = v21;
      v24 = v30;
      sub_1B4C0793C(v23, v30, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      sub_1B4C0793C(v24, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v18 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1B4A1EA38(0, v18[2] + 1, 1, v18);
      }

      v26 = v18[2];
      v25 = v18[3];
      if (v26 >= v25 >> 1)
      {
        v18 = sub_1B4A1EA38((v25 > 1), v26 + 1, 1, v18);
      }

      v15 &= v15 - 1;
      v18[2] = v26 + 1;
      sub_1B4C0793C(v37, v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    sub_1B4C078DC(v11, type metadata accessor for WorkoutPropertiesQuery);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v27 = v29;

        *v27 = v18;
        return;
      }

      v15 = *(v12 + 8 * v19);
      ++v17;
      if (v15)
      {
        v36 = v18;
        v17 = v19;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_1B4C071E0(uint64_t *a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v28 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v28 - v8;
  v9 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v35 = a2;

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    while (1)
    {
      v36 = v18;
LABEL_9:
      v20 = sub_1B4C079A4(*(v35 + 48) + *(v33 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v11, type metadata accessor for FitnessPlusPropertiesQuery);
      MEMORY[0x1EEE9AC00](v20);
      *(&v28 - 2) = v11;
      sub_1B4C07894(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      v21 = v34;
      v22 = v38;
      sub_1B4D17DAC();
      v38 = v22;
      if (v22)
      {
        break;
      }

      sub_1B4C078DC(v11, type metadata accessor for FitnessPlusPropertiesQuery);
      v23 = v21;
      v24 = v30;
      sub_1B4C0793C(v23, v30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      sub_1B4C0793C(v24, v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      v18 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1B4A1EA60(0, v18[2] + 1, 1, v18);
      }

      v26 = v18[2];
      v25 = v18[3];
      if (v26 >= v25 >> 1)
      {
        v18 = sub_1B4A1EA60((v25 > 1), v26 + 1, 1, v18);
      }

      v15 &= v15 - 1;
      v18[2] = v26 + 1;
      sub_1B4C0793C(v37, v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    sub_1B4C078DC(v11, type metadata accessor for FitnessPlusPropertiesQuery);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v27 = v29;

        *v27 = v18;
        return;
      }

      v15 = *(v12 + 8 * v19);
      ++v17;
      if (v15)
      {
        v36 = v18;
        v17 = v19;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B4C0779C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B4C077F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C07894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4C078DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C0793C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C079A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ActivitySharingFriend.init(uuid:displayName:fullName:timeZone:workouts:relationshipStartDate:hasCompletedCompetition:isCompetitionActive:activitySummaries:activeCompetitionUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v21 = sub_1B4D177CC();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ActivitySharingFriend(0);
  v23 = (a9 + v22[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + v22[6]);
  *v24 = a4;
  v24[1] = a5;
  sub_1B498B270(a6, a9 + v22[7], &qword_1EB8A6C20, &unk_1B4D1FBF0);
  *(a9 + v22[8]) = a7;
  v25 = v22[9];
  v26 = sub_1B4D1777C();
  (*(*(v26 - 8) + 32))(a9 + v25, a8, v26);
  *(a9 + v22[10]) = a10;
  *(a9 + v22[11]) = a11;
  *(a9 + v22[12]) = a12;
  return sub_1B498B270(a13, a9 + v22[13], &qword_1EB8A6A30, &unk_1B4D1FC00);
}

uint64_t type metadata accessor for ActivitySharingFriend(uint64_t a1)
{
  result = qword_1EB8AC640;
  if (!qword_1EB8AC640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4C07BE0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    if (a1 != 8)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000015;
    if (a1 != 5)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1684632949;
    v2 = 0x656D614E6C6C7566;
    v3 = 0x656E6F5A656D6974;
    if (a1 != 3)
    {
      v3 = 0x7374756F6B726F77;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4E79616C70736964;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B4C07D34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4C09AB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4C07D5C(uint64_t a1)
{
  v2 = sub_1B4C093B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C07D98(uint64_t a1)
{
  v2 = sub_1B4C093B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySharingFriend.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5C8, &qword_1B4D3C7E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C093B4();
  sub_1B4D18EFC();
  LOBYTE(v13) = 0;
  sub_1B4D177CC();
  sub_1B4C09DE4(&qword_1EB8A7770, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B4D18D0C();
  if (!v2)
  {
    v9 = type metadata accessor for ActivitySharingFriend(0);
    LOBYTE(v13) = 1;
    sub_1B4D18C6C();
    LOBYTE(v13) = 2;
    sub_1B4D18C6C();
    v11 = v9[7];
    LOBYTE(v13) = 3;
    sub_1B4D179BC();
    sub_1B4C09DE4(&qword_1EB8AC5D8, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1B4D18CAC();
    v13 = *(v3 + v9[8]);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5E0, &qword_1B4D3C7E8);
    sub_1B4C09408(&qword_1EB8AC5E8, &qword_1EB8AC5F0, &protocol conformance descriptor for ActivitySharingFriendWorkout, MEMORY[0x1E69E6300]);
    sub_1B4D18D0C();
    v11 = v9[9];
    LOBYTE(v13) = 5;
    sub_1B4D1777C();
    sub_1B4C09DE4(&qword_1EDC37820, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B4D18D0C();
    LOBYTE(v13) = 6;
    sub_1B4D18CCC();
    LOBYTE(v13) = 7;
    sub_1B4D18CCC();
    v13 = *(v3 + v9[12]);
    v12 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5F8, &qword_1B4D3C7F0);
    sub_1B4C094A4(&qword_1EB8AC600, &qword_1EB8AC608, &protocol conformance descriptor for HKActivitySummaryRepresentable, MEMORY[0x1E69E6300]);
    sub_1B4D18D0C();
    LOBYTE(v13) = 9;
    sub_1B4D18CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActivitySharingFriend.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v33 - v4;
  v5 = sub_1B4D1777C();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_1B4D177CC();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC610, &qword_1B4D3C7F8);
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for ActivitySharingFriend(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C093B4();
  v46 = v14;
  v18 = v47;
  sub_1B4D18EEC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v9;
  v36 = v17;
  v47 = a1;
  LOBYTE(v49) = 0;
  v20 = sub_1B4C09DE4(&qword_1EB8A7780, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v21 = v43;
  sub_1B4D18C0C();
  v35 = v20;
  v22 = v36;
  (*(v42 + 32))(v36, v21, v10);
  LOBYTE(v49) = 1;
  v23 = sub_1B4D18B6C();
  v43 = v10;
  v24 = &v22[v15[5]];
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v49) = 2;
  v26 = sub_1B4D18B6C();
  v27 = &v22[v15[6]];
  *v27 = v26;
  v27[1] = v28;
  sub_1B4D179BC();
  LOBYTE(v49) = 3;
  sub_1B4C09DE4(&qword_1EB8AC618, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
  sub_1B4D18BAC();
  sub_1B498B270(v19, &v22[v15[7]], &qword_1EB8A6C20, &unk_1B4D1FBF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5E0, &qword_1B4D3C7E8);
  v48 = 4;
  sub_1B4C09408(&qword_1EB8AC620, &qword_1EB8AC628, &protocol conformance descriptor for ActivitySharingFriendWorkout, MEMORY[0x1E69E6330]);
  sub_1B4D18C0C();
  v34 = v15;
  *&v22[v15[8]] = v49;
  LOBYTE(v49) = 5;
  sub_1B4C09DE4(&qword_1EB8A6FB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v29 = v39;
  v30 = v41;
  sub_1B4D18C0C();
  (*(v40 + 32))(&v22[v34[9]], v29, v30);
  LOBYTE(v49) = 6;
  v22[v34[10]] = sub_1B4D18BCC() & 1;
  LOBYTE(v49) = 7;
  v22[v15[11]] = sub_1B4D18BCC() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5F8, &qword_1B4D3C7F0);
  v48 = 8;
  sub_1B4C094A4(&qword_1EB8AC630, &qword_1EB8AC638, &protocol conformance descriptor for HKActivitySummaryRepresentable, MEMORY[0x1E69E6330]);
  sub_1B4D18C0C();
  *&v22[v15[12]] = v49;
  LOBYTE(v49) = 9;
  sub_1B4D18BAC();
  (*(v44 + 8))(v46, v45);
  v31 = v36;
  sub_1B498B270(v38, &v36[v15[13]], &qword_1EB8A6A30, &unk_1B4D1FC00);
  sub_1B4C09540(v31, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  return sub_1B4C095A4(v31);
}

BOOL _s19FitnessIntelligence21ActivitySharingFriendV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4D177CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC680, &unk_1B4D3C9B0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v10;
  v11 = sub_1B4D179BC();
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7078, &qword_1B4D1CCB8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  if ((sub_1B4D177AC() & 1) == 0)
  {
    return 0;
  }

  v55 = v5;
  v20 = type metadata accessor for ActivitySharingFriend(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = v20[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v53 = v4;
  v31 = v20[7];
  v32 = *(v17 + 48);
  sub_1B4974FBC(a1 + v31, v19, &qword_1EB8A6C20, &unk_1B4D1FBF0);
  v54 = v32;
  sub_1B4974FBC(a2 + v31, &v19[v32], &qword_1EB8A6C20, &unk_1B4D1FBF0);
  v33 = *(v59 + 48);
  if (v33(v19, 1, v11) != 1)
  {
    sub_1B4974FBC(v19, v16, &qword_1EB8A6C20, &unk_1B4D1FBF0);
    if (v33(&v19[v54], 1, v11) != 1)
    {
      v37 = v59;
      (*(v59 + 32))(v13, &v19[v54], v11);
      sub_1B4C09DE4(&qword_1EB8A7080, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
      LODWORD(v54) = sub_1B4D1816C();
      v38 = *(v37 + 8);
      v38(v13, v11);
      v38(v16, v11);
      sub_1B4975024(v19, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      if ((v54 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    (*(v59 + 8))(v16, v11);
LABEL_21:
    v34 = &qword_1EB8A7078;
    v35 = &qword_1B4D1CCB8;
    v36 = v19;
LABEL_22:
    sub_1B4975024(v36, v34, v35);
    return 0;
  }

  if (v33(&v19[v54], 1, v11) != 1)
  {
    goto LABEL_21;
  }

  sub_1B4975024(v19, &qword_1EB8A6C20, &unk_1B4D1FBF0);
LABEL_24:
  if ((sub_1B4A0BB80(*(a1 + v20[8]), *(a2 + v20[8])) & 1) == 0 || (sub_1B4D1774C() & 1) == 0 || *(a1 + v20[10]) != *(a2 + v20[10]) || *(a1 + v20[11]) != *(a2 + v20[11]) || (sub_1B4A0BE84(*(a1 + v20[12]), *(a2 + v20[12])) & 1) == 0)
  {
    return 0;
  }

  v39 = v20[13];
  v40 = *(v9 + 48);
  v41 = a1 + v39;
  v42 = v58;
  sub_1B4974FBC(v41, v58, &qword_1EB8A6A30, &unk_1B4D1FC00);
  sub_1B4974FBC(a2 + v39, v42 + v40, &qword_1EB8A6A30, &unk_1B4D1FC00);
  v43 = v55;
  v44 = *(v55 + 48);
  v45 = v53;
  if (v44(v42, 1, v53) == 1)
  {
    if (v44(v42 + v40, 1, v45) == 1)
    {
      sub_1B4975024(v42, &qword_1EB8A6A30, &unk_1B4D1FC00);
      return 1;
    }

    goto LABEL_34;
  }

  v46 = v57;
  sub_1B4974FBC(v42, v57, &qword_1EB8A6A30, &unk_1B4D1FC00);
  if (v44(v42 + v40, 1, v45) == 1)
  {
    (*(v43 + 8))(v46, v45);
LABEL_34:
    v34 = &qword_1EB8AC680;
    v35 = &unk_1B4D3C9B0;
    v36 = v42;
    goto LABEL_22;
  }

  v47 = v42 + v40;
  v48 = v56;
  (*(v43 + 32))(v56, v47, v45);
  sub_1B4C09DE4(&qword_1EB8AC688, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v49 = sub_1B4D1816C();
  v50 = *(v43 + 8);
  v50(v48, v45);
  v50(v46, v45);
  sub_1B4975024(v42, &qword_1EB8A6A30, &unk_1B4D1FC00);
  return (v49 & 1) != 0;
}

unint64_t sub_1B4C093B4()
{
  result = qword_1EB8AC5D0;
  if (!qword_1EB8AC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC5D0);
  }

  return result;
}

uint64_t sub_1B4C09408(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC5E0, &qword_1B4D3C7E8);
    sub_1B4C09DE4(a2, type metadata accessor for ActivitySharingFriendWorkout, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C094A4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC5F8, &qword_1B4D3C7F0);
    sub_1B4C09DE4(a2, type metadata accessor for HKActivitySummaryRepresentable, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C09540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C095A4(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingFriend(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4C09628(uint64_t a1)
{
  sub_1B4D177CC();
  if (v1 <= 0x3F)
  {
    sub_1B4ABA5F0();
    if (v2 <= 0x3F)
    {
      sub_1B4C097F4(319, &qword_1EDC3CB10, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4C097F4(319, &qword_1EB8AC650, type metadata accessor for ActivitySharingFriendWorkout, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1B4D1777C();
          if (v5 <= 0x3F)
          {
            sub_1B4C097F4(319, &qword_1EB8AC658, type metadata accessor for HKActivitySummaryRepresentable, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              sub_1B4C097F4(319, &qword_1EB8AC660, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
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

void sub_1B4C097F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ActivitySharingFriend.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivitySharingFriend.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4C099AC()
{
  result = qword_1EB8AC668;
  if (!qword_1EB8AC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC668);
  }

  return result;
}

unint64_t sub_1B4C09A04()
{
  result = qword_1EB8AC670;
  if (!qword_1EB8AC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC670);
  }

  return result;
}

unint64_t sub_1B4C09A5C()
{
  result = qword_1EB8AC678;
  if (!qword_1EB8AC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC678);
  }

  return result;
}

uint64_t sub_1B4C09AB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374756F6B726F77 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D63070 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4D63090 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D630B0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D630D0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D630F0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1B4C09DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4C09E70()
{
  v1 = *v0;
  sub_1B498FC0C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1B4C09EB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B4C09EBC()
{
  result = os_variant_has_internal_content();
  byte_1EB8AC690 = result;
  return result;
}

uint64_t sub_1B4C09F08()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_1B4D1818C();
  v4 = v3;

  if (v2 == 0x6C74636966 && v4 == 0xE500000000000000)
  {

    v6 = 1;
  }

  else
  {
    v6 = sub_1B4D18DCC();
  }

  byte_1EB8AC691 = v6 & 1;
  return result;
}

uint64_t sub_1B4C0A000(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

void sub_1B4C0A048()
{
  v0 = sub_1B4D1817C();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    v2 = sub_1B4D1818C();
    v4 = v3;

    qword_1EB8AC698 = v2;
    unk_1EB8AC6A0 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Process.buildVersion.getter()
{
  if (qword_1EB8A6498 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB8AC698;

  return v0;
}

uint64_t sub_1B4C0A13C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v27 = *(a1 + 16);
  sub_1B4BCF43C(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = sub_1B4D188DC();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_32;
    }

    v11 = *(*(a1 + 48) + result);
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v13 = 0xD000000000000018;
        v12 = 0x80000001B4D48E90;
      }

      else if (v11 == 4)
      {
        v13 = 0x5364696C61766E69;
        v12 = 0xEC00000065746174;
      }

      else
      {
        v12 = 0xE500000000000000;
        v13 = 0x726568746FLL;
      }
    }

    else if (*(*(a1 + 48) + result))
    {
      if (v11 == 1)
      {
        v12 = 0xE800000000000000;
        v13 = 0x7964616552746F6ELL;
      }

      else
      {
        v13 = 0xD000000000000011;
        v12 = 0x80000001B4D48E70;
      }
    }

    else
    {
      v12 = 0xEA00000000006465;
      v13 = 0x6C62616E45746F6ELL;
    }

    v14 = *(a1 + 36);
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_1B4BCF43C((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v14 = v25;
      result = v26;
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_33;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_34;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_35;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1B497CD6C(result, v14, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1B497CD6C(result, v14, 0);
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t DeviceInferenceAvailability.ComponentAvailability.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    if (*a1)
    {
      v4 = *(a1 + 16);
      v5 = *(v4 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (v5)
      {
        v13 = MEMORY[0x1E69E7CC0];
        sub_1B4BCEFDC(0, v5, 0);
        v6 = v13;
        v7 = v4 + 40;
        do
        {

          v8 = sub_1B4D18B1C();

          if (v8 >= 6)
          {
            LOBYTE(v8) = 5;
          }

          v10 = *(v13 + 16);
          v9 = *(v13 + 24);
          if (v10 >= v9 >> 1)
          {
            sub_1B4BCEFDC((v9 > 1), v10 + 1, 1);
          }

          *(v13 + 16) = v10 + 1;
          *(v13 + v10 + 32) = v8;
          v7 += 16;
          --v5;
        }

        while (v5);
      }

      v12 = sub_1B4A02E44(v6);
    }

    else
    {
      v12 = 0;
    }

    result = sub_1B4C0B5AC(a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
    *a2 = v12;
  }

  else
  {
    sub_1B4C0A5E4();
    swift_allocError();
    swift_willThrow();
    return sub_1B4C0B5AC(a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return result;
}

unint64_t sub_1B4C0A5E4()
{
  result = qword_1EB8AC6A8;
  if (!qword_1EB8AC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6A8);
  }

  return result;
}

uint64_t DeviceInferenceAvailability.ComponentAvailability.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4C0B7B0(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C0A6E0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *result = 1;
    *(result + 8) = 1;
    v2 = result;
    v3 = sub_1B4C0A13C(a2);

    *(v2 + 16) = v3;
  }

  else
  {
    *result = 0;
    *(result + 8) = 1;
  }

  return result;
}

uint64_t *sub_1B4C0A74C(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v7 = sub_1B4C0B8B4();
  v8 = &v11;
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4C0B7B0(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
    v8 = sub_1B4D17D6C();
    sub_1B4C0B5AC(v6, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return v8;
}

uint64_t sub_1B4C0A890@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B261D4(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4C0A8C4()
{
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4C0B7B0(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17DAC();
}

uint64_t DeviceInferenceAvailability.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v40 = (&v38 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4C0B4D4(a1 + v43[5], v12);
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13) == 1)
  {
    *v23 = 0;
    v23[8] = 1;
    *(v23 + 2) = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v24(v12, 1, v13) != 1)
    {
      sub_1B4C0B544(v12);
    }
  }

  else
  {
    sub_1B4C0B60C(v12, v23);
  }

  v25 = v44;
  DeviceInferenceAvailability.ComponentAvailability.init(_:)(v23, &v48);
  if (v25)
  {
    return sub_1B4C0B5AC(a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
  }

  v44 = v48;
  sub_1B4C0B4D4(a1 + v43[6], v9);
  if (v24(v9, 1, v13) == 1)
  {
    *v20 = 0;
    v20[8] = 1;
    *(v20 + 2) = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v24(v9, 1, v13) != 1)
    {
      sub_1B4C0B544(v9);
    }
  }

  else
  {
    sub_1B4C0B60C(v9, v20);
  }

  DeviceInferenceAvailability.ComponentAvailability.init(_:)(v20, &v47);
  v27 = v47;
  v28 = v41;
  sub_1B4C0B4D4(a1 + v43[7], v41);
  if (v24(v28, 1, v13) == 1)
  {
    v29 = v40;
    *v40 = 0;
    *(v29 + 8) = 1;
    v29[2] = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    v30 = v24(v28, 1, v13);
    v31 = v42;
    if (v30 != 1)
    {
      sub_1B4C0B544(v28);
    }
  }

  else
  {
    v29 = v40;
    sub_1B4C0B60C(v28, v40);
    v31 = v42;
  }

  DeviceInferenceAvailability.ComponentAvailability.init(_:)(v29, &v46);
  v32 = v46;
  sub_1B4C0B4D4(a1 + v43[8], v31);
  v33 = v31;
  if (v24(v31, 1, v13) == 1)
  {
    v34 = v39;
    *v39 = 0;
    *(v34 + 8) = 1;
    v35 = v34;
    v34[2] = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v24(v33, 1, v13) != 1)
    {
      sub_1B4C0B544(v33);
    }
  }

  else
  {
    v35 = v39;
    sub_1B4C0B60C(v33, v39);
  }

  DeviceInferenceAvailability.ComponentAvailability.init(_:)(v35, &v45);
  result = sub_1B4C0B5AC(a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
  v36 = v45;
  v37 = v38;
  *v38 = v44;
  v37[1] = v27;
  v37[2] = v32;
  v37[3] = v36;
  return result;
}