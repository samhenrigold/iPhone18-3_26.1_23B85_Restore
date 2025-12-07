uint64_t sub_1B49C016C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1B49C0284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49C0344;

  return sub_1B49C0448(a1, a3);
}

uint64_t sub_1B49C0344(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1B49C0448(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1B4D1777C();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for WorkoutState(0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B49C05A8, 0, 0);
}

uint64_t sub_1B49C05A8()
{
  v22 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1B49B4670(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4975024(v0[7], &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_5:
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  sub_1B49B46E0(v0[7], v0[10]);
  sub_1B4D1770C();
  v8 = *(v7 + 16);
  v8(v5, v4, v6);
  DayOfWeek.init(from:)(v5, &v21);
  v9 = v21;
  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  if (v21 == 7)
  {
    (*(v13 + 8))(v0[6], v0[3]);
    sub_1B49C1314(v10, type metadata accessor for WorkoutState);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72A0, &unk_1B4D46B00);
  v20 = v10;
  v15 = (type metadata accessor for CurrentDayFact(0) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B4D1A800;
  v17 = v14 + v16;
  v8(v17, v11, v12);
  *(v17 + v15[7]) = v9;
  (*(v13 + 8))(v11, v12);
  sub_1B49C1314(v20, type metadata accessor for WorkoutState);
LABEL_7:

  v18 = v0[1];

  return v18(v14);
}

uint64_t _s19FitnessIntelligence14CurrentDayFactV10makePrompt15promptFormatterSSAA0gI0C_tF_0()
{
  v1 = type metadata accessor for CurrentDayFact(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  v10 = sub_1B4D1777C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - v21;
  v69 = 0;
  v70 = 0xE000000000000000;
  (*(v11 + 16))(&v58 - v21, v0, v10, v20);
  DayOfWeek.init(from:)(v22, &v67);
  v23 = v67;
  if (v67 == 7)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v29 = sub_1B4D17F6C();
    __swift_project_value_buffer(v29, qword_1EDC36F00);
    sub_1B49C1268(v0, v3);
    v30 = sub_1B4D17F5C();
    v31 = sub_1B4D186FC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v67 = v33;
      *v32 = 136315138;
      sub_1B49C12CC(&qword_1EB8A6B58, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v34 = sub_1B4D18D5C();
      v36 = v35;
      sub_1B49C1314(v3, type metadata accessor for CurrentDayFact);
      v37 = sub_1B49558AC(v34, v36, &v67);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1B4953000, v30, v31, "Failed to create day fact. Today: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1B8C7DDA0](v33, -1, -1);
      MEMORY[0x1B8C7DDA0](v32, -1, -1);
    }

    else
    {

      sub_1B49C1314(v3, type metadata accessor for CurrentDayFact);
    }

    return 0;
  }

  else
  {
    Date.endOfWeek()(v9);
    v59 = v13;
    v24 = v11;
    v62 = *(v11 + 56);
    v60 = v11 + 56;
    v62(v9, 0, 1, v10);
    v25 = v10;
    v26 = *(v24 + 32);
    v61 = v18;
    v27 = v18;
    v28 = v26;
    v26(v27, v9, v10);
    v63 = v0;
    Date.middleOfWeek()(v6);
    v58 = v24;
    v39 = v61;
    v62(v6, 0, 1, v10);
    v28(v64, v6, v10);
    v40 = 0xE600000000000000;
    v41 = 0xE800000000000000;
    v67 = 0x7369207961646F54;
    v68 = 0xE900000000000020;
    v42 = 0x7961647275746173;
    if (v23 != 5)
    {
      v42 = 0x7961646E7573;
      v41 = 0xE600000000000000;
    }

    v43 = 0xE800000000000000;
    v44 = 0x7961647372756874;
    if (v23 != 3)
    {
      v44 = 0x796164697266;
      v43 = 0xE600000000000000;
    }

    if (v23 <= 4)
    {
      v42 = v44;
      v41 = v43;
    }

    v45 = 0xE700000000000000;
    v46 = 0x79616473657574;
    if (v23 != 1)
    {
      v46 = 0x616473656E646577;
      v45 = 0xE900000000000079;
    }

    if (v23)
    {
      v40 = v45;
    }

    else
    {
      v46 = 0x7961646E6F6DLL;
    }

    if (v23 > 2)
    {
      v47 = v41;
    }

    else
    {
      v42 = v46;
      v47 = v40;
    }

    v65 = v42;
    v66 = v47;
    sub_1B4955758();
    v48 = sub_1B4D1885C();
    v50 = v49;

    MEMORY[0x1B8C7C620](v48, v50);

    MEMORY[0x1B8C7C620](46, 0xE100000000000000);
    MEMORY[0x1B8C7C620](v67, v68);

    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v51 = sub_1B4D1796C();
    __swift_project_value_buffer(v51, qword_1EDC3CE48);
    v52 = sub_1B4D178AC();
    v53 = " It is a weekday.";
    if (v52)
    {
      v53 = " It is a weekend.";
    }

    MEMORY[0x1B8C7C620](0xD000000000000011, (v53 - 32) | 0x8000000000000000);
    if (sub_1B4D1785C())
    {
      MEMORY[0x1B8C7C620](0xD000000000000021, 0x80000001B4D4F300);
    }

    if (sub_1B4D1785C())
    {
      MEMORY[0x1B8C7C620](0xD000000000000030, 0x80000001B4D4F2C0);
    }

    v54 = sub_1B4D178CC();
    v55 = sub_1B4D1771C();
    v56 = [v54 hk:v55 startOfFitnessWeekBeforeDate:?];

    sub_1B4D1775C();
    if (sub_1B4D1785C())
    {
      MEMORY[0x1B8C7C620](0xD000000000000031, 0x80000001B4D4F280);
    }

    v57 = *(v58 + 8);
    v57(v59, v25);
    v57(v64, v25);
    v57(v39, v25);
    return v69;
  }
}

unint64_t sub_1B49C1050()
{
  result = qword_1EB8A7270;
  if (!qword_1EB8A7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7270);
  }

  return result;
}

unint64_t sub_1B49C10A4(uint64_t a1)
{
  *(a1 + 8) = sub_1B49C10D4();
  result = sub_1B49C1128();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B49C10D4()
{
  result = qword_1EB8A7278;
  if (!qword_1EB8A7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7278);
  }

  return result;
}

unint64_t sub_1B49C1128()
{
  result = qword_1EB8A7280;
  if (!qword_1EB8A7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7280);
  }

  return result;
}

unint64_t sub_1B49C1180()
{
  result = qword_1EB8A7288;
  if (!qword_1EB8A7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7288);
  }

  return result;
}

uint64_t sub_1B49C11D4(uint64_t a1)
{
  *(a1 + 8) = sub_1B49C12CC(&qword_1EB8A7290, type metadata accessor for CurrentDayFact, &protocol conformance descriptor for CurrentDayFact);
  result = sub_1B49C12CC(&qword_1EB8A7298, type metadata accessor for CurrentDayFact, &protocol conformance descriptor for CurrentDayFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B49C1268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentDayFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49C12CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B49C1314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49C1374(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v53 - v5;
  v61 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v10 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v53 - v13;
  v14 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v53 - v17;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7300, &unk_1B4D1D7A0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v53 - v28;
  v31 = *(v30 + 56);
  v63 = v1;
  sub_1B49C685C(v1, &v53 - v28, type metadata accessor for FitnessContextQueryDescriptor);
  v64 = a1;
  sub_1B49C685C(a1, &v29[v31], type metadata accessor for FitnessContextQueryDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 9:
      v41 = v60;
      v40 = v61;
      v42 = v62;
      sub_1B49C685C(v29, v20, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v33 = type metadata accessor for LocationCoordinate;
        v34 = v20;
        goto LABEL_12;
      }

      v43 = v9;
      sub_1B49C6600(v20, v9, type metadata accessor for LocationCoordinate);
      sub_1B49C6600(&v29[v31], v41, type metadata accessor for LocationCoordinate);
      v44 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&v9[*(v40 + 20)] longitude:*&v9[*(v40 + 24)]];
      v45 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v41 + *(v40 + 20)) longitude:*(v41 + *(v40 + 24))];
      [v44 distanceFromLocation_];
      v46 = [objc_opt_self() meters];
      sub_1B499221C();
      sub_1B4D1741C();

      v47 = v58;
      sub_1B4D1742C();
      v49 = v48;
      (*(v59 + 8))(v42, v47);
      sub_1B49C690C(v41, type metadata accessor for LocationCoordinate);
      sub_1B49C690C(v43, type metadata accessor for LocationCoordinate);
      DescriptorO2eeoiySbAC_ACtFZ_0 = v49 < 500.0;
LABEL_16:
      sub_1B49C690C(v29, type metadata accessor for FitnessContextQueryDescriptor);
      return DescriptorO2eeoiySbAC_ACtFZ_0 & 1;
    case 1:
      sub_1B49C685C(v29, v23, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v33 = type metadata accessor for RingsPropertiesQuery;
        v34 = v23;
        goto LABEL_12;
      }

      v35 = v56;
      sub_1B49C6600(v23, v56, type metadata accessor for RingsPropertiesQuery);
      v36 = v57;
      sub_1B49C6600(&v29[v31], v57, type metadata accessor for RingsPropertiesQuery);
      DescriptorO2eeoiySbAC_ACtFZ_0 = sub_1B49CB224(v36);
      sub_1B49C690C(v36, type metadata accessor for RingsPropertiesQuery);
      v38 = v35;
      v39 = type metadata accessor for RingsPropertiesQuery;
      goto LABEL_15;
    case 0:
      sub_1B49C685C(v29, v26, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload())
      {
        v33 = type metadata accessor for WorkoutPropertiesQuery;
        v34 = v26;
LABEL_12:
        sub_1B49C690C(v34, v33);
        break;
      }

      v50 = v54;
      sub_1B49C6600(v26, v54, type metadata accessor for WorkoutPropertiesQuery);
      v51 = v55;
      sub_1B49C6600(&v29[v31], v55, type metadata accessor for WorkoutPropertiesQuery);
      DescriptorO2eeoiySbAC_ACtFZ_0 = sub_1B49CAFFC(v51);
      sub_1B49C690C(v51, type metadata accessor for WorkoutPropertiesQuery);
      v38 = v50;
      v39 = type metadata accessor for WorkoutPropertiesQuery;
LABEL_15:
      sub_1B49C690C(v38, v39);
      goto LABEL_16;
  }

  DescriptorO2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v63, v64);
  sub_1B4975024(v29, &qword_1EB8A7300, &unk_1B4D1D7A0);
  return DescriptorO2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t FitnessContextQueryDescriptor.analyticsKey.getter()
{
  v1 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49C685C(v0, v9, type metadata accessor for FitnessContextQueryDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v20 = sub_1B4D1777C();
        (*(*(v20 - 8) + 8))(v9, v20);
        return 0xD000000000000013;
      }

      v14 = sub_1B4D174EC();
      (*(*(v14 - 8) + 8))(v9, v14);
      v15 = 0x736472617761;
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          sub_1B49C690C(v9, type metadata accessor for LocationCoordinate);
          return 0x6E6F697461636F6CLL;
        }

        v12 = 0xD000000000000016;
        goto LABEL_15;
      }

      v17 = sub_1B4D1777C();
      (*(*(v17 - 8) + 8))(v9, v17);
      v15 = 0x736C61746976;
    }

    return v15 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v11 = sub_1B4D1777C();
        (*(*(v11 - 8) + 8))(v9, v11);
        return 0xD000000000000012;
      }

      else
      {
        v18 = sub_1B4D1777C();
        (*(*(v18 - 8) + 8))(v9, v18);
        return 0xD000000000000014;
      }
    }

    v12 = 0xD000000000000016;
LABEL_15:
    v16 = sub_1B4D1777C();
    (*(*(v16 - 8) + 8))(v9, v16);
    return v12;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1B49C6600(v9, v3, type metadata accessor for RingsPropertiesQuery);
    v22 = 0x5F73676E6972;
    v23 = 0xE600000000000000;
    v19 = DateRangeDescriptor.analyticsKey.getter();
    MEMORY[0x1B8C7C620](v19);

    v12 = v22;
    sub_1B49C690C(v3, type metadata accessor for RingsPropertiesQuery);
  }

  else
  {
    sub_1B49C6600(v9, v6, type metadata accessor for WorkoutPropertiesQuery);
    v22 = 0x7374756F6B726F77;
    v23 = 0xE90000000000005FLL;
    v13 = DateRangeDescriptor.analyticsKey.getter();
    MEMORY[0x1B8C7C620](v13);

    v12 = v22;
    sub_1B49C690C(v6, type metadata accessor for WorkoutPropertiesQuery);
  }

  return v12;
}

uint64_t type metadata accessor for FitnessContextQueryDescriptor(uint64_t a1)
{
  result = qword_1EDC377B0;
  if (!qword_1EDC377B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FitnessContextQueryDescriptor.hash(into:)(uint64_t a1)
{
  v41 = a1;
  v2 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4D174EC();
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4D1777C();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49C685C(v1, v18, type metadata accessor for FitnessContextQueryDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = v38;
        v20 = v39;
        v22 = v40;
        (*(v39 + 32))(v38, v18, v40);
        v23 = 2;
      }

      else
      {
        v21 = v38;
        v20 = v39;
        v22 = v40;
        if (EnumCaseMultiPayload == 3)
        {
          (*(v39 + 32))(v38, v18, v40);
          v23 = 3;
        }

        else
        {
          (*(v39 + 32))(v38, v18, v40);
          v23 = 4;
        }
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1B49C6600(v18, v12, type metadata accessor for RingsPropertiesQuery);
      v32 = v41;
      MEMORY[0x1B8C7D290](1);
      DateRangeDescriptor.hash(into:)(v32);
      v33 = &v12[v10[5]];
      v34 = v33[1];
      v35 = v33[2];
      sub_1B49C28E8(v32, *v33);
      sub_1B49C27B8(v32, v34);
      sub_1B49C2A9C(v32, v35);
      sub_1B49C4F70(v32, *&v12[v10[6]]);
      sub_1B49C4BA0(v32, *&v12[v10[7]]);
      v27 = type metadata accessor for RingsPropertiesQuery;
      v28 = v12;
    }

    else
    {
      sub_1B49C6600(v18, v15, type metadata accessor for WorkoutPropertiesQuery);
      v24 = v41;
      MEMORY[0x1B8C7D290](0);
      DateRangeDescriptor.hash(into:)(v24);
      v25 = &v15[v13[5]];
      v26 = *(v25 + 1);
      v42 = *v25;
      v43 = v26;
      v44 = *(v25 + 2);
      WorkoutPropertyDimensionsFilters.hash(into:)(v24);
      sub_1B49C4A60(v24, *&v15[v13[6]]);
      sub_1B49C4754(v24, *&v15[v13[7]]);
      v27 = type metadata accessor for WorkoutPropertiesQuery;
      v28 = v15;
    }

    return sub_1B49C690C(v28, v27);
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v29 = v37;
      (*(v37 + 32))(v7, v18, v5);
      MEMORY[0x1B8C7D290](5);
      sub_1B49C68C4(&qword_1EB8A72B0, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
      sub_1B4D1808C();
      return (*(v29 + 8))(v7, v5);
    }

    v21 = v38;
    v20 = v39;
    v22 = v40;
    (*(v39 + 32))(v38, v18, v40);
    v23 = 6;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v21 = v38;
    v20 = v39;
    v22 = v40;
    (*(v39 + 32))(v38, v18, v40);
    v23 = 7;
  }

  else
  {
    if (EnumCaseMultiPayload != 8)
    {
      sub_1B49C6600(v18, v4, type metadata accessor for LocationCoordinate);
      v31 = v41;
      MEMORY[0x1B8C7D290](9);
      LocationCoordinate.hash(into:)(v31);
      v27 = type metadata accessor for LocationCoordinate;
      v28 = v4;
      return sub_1B49C690C(v28, v27);
    }

    v21 = v38;
    v20 = v39;
    v22 = v40;
    (*(v39 + 32))(v38, v18, v40);
    v23 = 8;
  }

LABEL_21:
  MEMORY[0x1B8C7D290](v23);
  sub_1B49C68C4(&qword_1EB8A72A8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B4D1808C();
  return (*(v20 + 8))(v21, v22);
}

uint64_t FitnessContextQueryDescriptor.hashValue.getter()
{
  sub_1B4D18E8C();
  FitnessContextQueryDescriptor.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49C2624()
{
  sub_1B4D18E8C();
  FitnessContextQueryDescriptor.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49C2668(uint64_t a1)
{
  sub_1B4D18E8C();
  FitnessContextQueryDescriptor.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49C26A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C27B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C28E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C2A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      if (v6 != 2)
      {
        sub_1B4D18EAC();
      }

      result = sub_1B4D18EAC();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C2B0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B4D179BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for WorkoutMilestoneEntry(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v14, v11);
  if (v14)
  {
    v16 = *(v9 + 24);
    v27 = *(v9 + 20);
    v17 = v4;
    v18 = (v13 + v16);
    v19 = *(type metadata accessor for LocalizedDate(0) + 36);
    v20 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = *(v10 + 72);
    v26 = v19;
    v22 = (v17 + 8);
    v23 = (v17 + 32);
    do
    {
      sub_1B49C685C(v20, v13, type metadata accessor for WorkoutMilestoneEntry);
      MEMORY[0x1B8C7D2C0](*v13);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v18);
      MEMORY[0x1B8C7D290](v18[1]);
      MEMORY[0x1B8C7D290](v18[2]);
      MEMORY[0x1B8C7D290](v18[3]);
      MEMORY[0x1B8C7D290](v18[4]);
      sub_1B4974FBC(v18 + v26, v8, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      if ((*(v17 + 48))(v8, 1, v3) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v21 = v24;
        (*v23)(v24, v8, v3);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
        sub_1B4D1808C();
        (*v22)(v21, v3);
      }

      result = sub_1B49C690C(v13, type metadata accessor for WorkoutMilestoneEntry);
      v20 += v25;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1B49C2EB4(uint64_t a1, uint64_t a2)
{
  v29 = sub_1B4D179BC();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C8, &unk_1B4D1D780);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - v10);
  v12 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v12, v9);
  if (v12)
  {
    v14 = (v11 + *(v7 + 28));
    v15 = type metadata accessor for LocalizedDate(0);
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v15 + 36);
    v27 = *(v7 + 32);
    v28 = v17;
    v23 = (v3 + 8);
    v24 = (v3 + 32);
    v26 = *(v8 + 72);
    v22 = v11;
    do
    {
      sub_1B4974FBC(v16, v11, &qword_1EB8A72C8, &unk_1B4D1D780);
      MEMORY[0x1B8C7D2C0](*v11);
      MEMORY[0x1B8C7D290](*v14);
      MEMORY[0x1B8C7D290](v14[1]);
      MEMORY[0x1B8C7D290](v14[2]);
      MEMORY[0x1B8C7D290](v14[3]);
      MEMORY[0x1B8C7D290](v14[4]);
      v18 = v30;
      sub_1B4974FBC(v14 + v28, v30, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v19 = v29;
      if ((*(v3 + 48))(v18, 1, v29) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v20 = v25;
        (*v24)(v25, v30, v19);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
        sub_1B4D1808C();
        v11 = v22;
        (*v23)(v20, v19);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      sub_1B49B0578(&qword_1EB8A72D0, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968080]);
      sub_1B4D1808C();
      result = sub_1B4975024(v11, &qword_1EB8A72C8, &unk_1B4D1D780);
      v16 += v26;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1B49C3278(uint64_t a1, uint64_t a2)
{
  v29 = sub_1B4D179BC();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C0, &unk_1B4D1D770);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - v10);
  v12 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v12, v9);
  if (v12)
  {
    v14 = (v11 + *(v7 + 28));
    v15 = type metadata accessor for LocalizedDate(0);
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v15 + 36);
    v27 = *(v7 + 32);
    v28 = v17;
    v23 = (v3 + 8);
    v24 = (v3 + 32);
    v26 = *(v8 + 72);
    v22 = v11;
    do
    {
      sub_1B4974FBC(v16, v11, &qword_1EB8A72C0, &unk_1B4D1D770);
      MEMORY[0x1B8C7D2C0](*v11);
      MEMORY[0x1B8C7D290](*v14);
      MEMORY[0x1B8C7D290](v14[1]);
      MEMORY[0x1B8C7D290](v14[2]);
      MEMORY[0x1B8C7D290](v14[3]);
      MEMORY[0x1B8C7D290](v14[4]);
      v18 = v30;
      sub_1B4974FBC(v14 + v28, v30, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v19 = v29;
      if ((*(v3 + 48))(v18, 1, v29) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v20 = v25;
        (*v24)(v25, v30, v19);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
        sub_1B4D1808C();
        v11 = v22;
        (*v23)(v20, v19);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
      sub_1B4D1808C();
      result = sub_1B4975024(v11, &qword_1EB8A72C0, &unk_1B4D1D770);
      v16 += v26;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1B49C363C(uint64_t a1, uint64_t a2)
{
  v29 = sub_1B4D179BC();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v12, v9);
  if (v12)
  {
    v14 = &v11[*(v7 + 28)];
    v15 = type metadata accessor for LocalizedDate(0);
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v15 + 36);
    v27 = *(v7 + 32);
    v28 = v17;
    v23 = (v3 + 8);
    v24 = (v3 + 32);
    v26 = *(v8 + 72);
    v22 = v11;
    do
    {
      sub_1B4974FBC(v16, v11, &qword_1EB8A6CF0, &unk_1B4D1BC70);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v14);
      MEMORY[0x1B8C7D290](*(v14 + 1));
      MEMORY[0x1B8C7D290](*(v14 + 2));
      MEMORY[0x1B8C7D290](*(v14 + 3));
      MEMORY[0x1B8C7D290](*(v14 + 4));
      v18 = v30;
      sub_1B4974FBC(&v14[v28], v30, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v19 = v29;
      if ((*(v3 + 48))(v18, 1, v29) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v20 = v25;
        (*v24)(v25, v30, v19);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
        sub_1B4D1808C();
        v11 = v22;
        (*v23)(v20, v19);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
      sub_1B4D1808C();
      result = sub_1B4975024(v11, &qword_1EB8A6CF0, &unk_1B4D1BC70);
      v16 += v26;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1B49C3A4C(uint64_t a1, uint64_t a2)
{
  v29 = sub_1B4D179BC();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v12, v9);
  if (v12)
  {
    v14 = &v11[*(v7 + 28)];
    v15 = type metadata accessor for LocalizedDate(0);
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v15 + 36);
    v27 = *(v7 + 32);
    v28 = v17;
    v23 = (v3 + 8);
    v24 = (v3 + 32);
    v26 = *(v8 + 72);
    v22 = v11;
    do
    {
      sub_1B4974FBC(v16, v11, &qword_1EB8A6818, &unk_1B4D1AB30);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v14);
      MEMORY[0x1B8C7D290](*(v14 + 1));
      MEMORY[0x1B8C7D290](*(v14 + 2));
      MEMORY[0x1B8C7D290](*(v14 + 3));
      MEMORY[0x1B8C7D290](*(v14 + 4));
      v18 = v30;
      sub_1B4974FBC(&v14[v28], v30, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v19 = v29;
      if ((*(v3 + 48))(v18, 1, v29) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v20 = v25;
        (*v24)(v25, v30, v19);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
        sub_1B4D1808C();
        v11 = v22;
        (*v23)(v20, v19);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
      sub_1B4D1808C();
      result = sub_1B4975024(v11, &qword_1EB8A6818, &unk_1B4D1AB30);
      v16 += v26;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1B49C3E5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B4D179BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v13, v10);
  if (v13)
  {
    v15 = a2;
    v16 = &v12[*(v8 + 36)];
    v35 = *(type metadata accessor for LocalizedDate(0) + 36);
    v17 = &v12[*(v8 + 40)];
    v18 = type metadata accessor for DistanceSampleIntervalRecord(0);
    v19 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v20 = v18[7];
    v33 = v18[6];
    v34 = (v4 + 48);
    v31 = v18[8];
    v32 = v20;
    v30 = *(v9 + 72);
    v27 = (v4 + 8);
    v28 = (v4 + 32);
    v36 = v3;
    do
    {
      sub_1B4974FBC(v19, v12, &qword_1EB8A6CE8, &qword_1B4D44B80);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v16);
      MEMORY[0x1B8C7D290](*(v16 + 1));
      MEMORY[0x1B8C7D290](*(v16 + 2));
      MEMORY[0x1B8C7D290](*(v16 + 3));
      MEMORY[0x1B8C7D290](*(v16 + 4));
      v24 = v37;
      sub_1B4974FBC(&v16[v35], v37, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      if ((*v34)(v24, 1, v3) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v25 = v29;
        (*v28)(v29, v24, v3);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
        sub_1B4D1808C();
        (*v27)(v25, v3);
      }

      v21 = *v17;
      if (*v17 == 0.0)
      {
        v21 = 0.0;
      }

      MEMORY[0x1B8C7D2C0](*&v21);
      v22 = v17[1];
      if (v22 == 0.0)
      {
        v22 = 0.0;
      }

      MEMORY[0x1B8C7D2C0](*&v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      v23 = MEMORY[0x1E6968080];
      sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
      sub_1B4D1808C();
      sub_1B4D1808C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, v23);
      sub_1B4D1808C();
      result = sub_1B4975024(v12, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v19 += v30;
      --v13;
      v3 = v36;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1B49C4344(uint64_t a1, uint64_t a2)
{
  v29 = sub_1B4D179BC();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72E0, &unk_1B4D1D790);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v12, v9);
  if (v12)
  {
    v14 = &v11[*(v7 + 28)];
    v15 = type metadata accessor for LocalizedDate(0);
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v15 + 36);
    v27 = *(v7 + 32);
    v28 = v17;
    v23 = (v3 + 8);
    v24 = (v3 + 32);
    v26 = *(v8 + 72);
    v22 = v11;
    do
    {
      sub_1B4974FBC(v16, v11, &qword_1EB8A72E0, &unk_1B4D1D790);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v14);
      MEMORY[0x1B8C7D290](*(v14 + 1));
      MEMORY[0x1B8C7D290](*(v14 + 2));
      MEMORY[0x1B8C7D290](*(v14 + 3));
      MEMORY[0x1B8C7D290](*(v14 + 4));
      v18 = v30;
      sub_1B4974FBC(&v14[v28], v30, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v19 = v29;
      if ((*(v3 + 48))(v18, 1, v29) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v20 = v25;
        (*v24)(v25, v30, v19);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
        sub_1B4D1808C();
        v11 = v22;
        (*v23)(v20, v19);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968080]);
      sub_1B4D1808C();
      result = sub_1B4975024(v11, &qword_1EB8A72E0, &unk_1B4D1D790);
      v16 += v26;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1B49C4754(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C4A60(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C4BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C4F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C5044(uint64_t a1, uint64_t a2)
{
  v29 = sub_1B4D179BC();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v12, v9);
  if (v12)
  {
    v14 = &v11[*(v7 + 28)];
    v15 = type metadata accessor for LocalizedDate(0);
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v15 + 36);
    v27 = *(v7 + 32);
    v28 = v17;
    v23 = (v3 + 8);
    v24 = (v3 + 32);
    v26 = *(v8 + 72);
    v22 = v11;
    do
    {
      sub_1B4974FBC(v16, v11, &qword_1EB8A6CF8, &unk_1B4D1BC80);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v14);
      MEMORY[0x1B8C7D290](*(v14 + 1));
      MEMORY[0x1B8C7D290](*(v14 + 2));
      MEMORY[0x1B8C7D290](*(v14 + 3));
      MEMORY[0x1B8C7D290](*(v14 + 4));
      v18 = v30;
      sub_1B4974FBC(&v14[v28], v30, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v19 = v29;
      if ((*(v3 + 48))(v18, 1, v29) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v20 = v25;
        (*v24)(v25, v30, v19);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
        sub_1B4D1808C();
        v11 = v22;
        (*v23)(v20, v19);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
      sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968080]);
      sub_1B4D1808C();
      result = sub_1B4975024(v11, &qword_1EB8A6CF8, &unk_1B4D1BC80);
      v16 += v26;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1B49C5454(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x1B8C7D290](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {

        v9 = v7 + 40;
        do
        {

          sub_1B4D1820C();

          v9 += 16;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1B49C551C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C571C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C585C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v91 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4D174EC();
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4D1777C();
  v7 = *(v6 - 8);
  v100 = v6;
  v101 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v82 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v82 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v82 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v82 - v18;
  v19 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v83 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v82 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v99 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v97 = &v82 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v96 = &v82 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v95 = &v82 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v82 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v82 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v82 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v82 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v82 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7300, &unk_1B4D1D7A0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v50 = &v82 - v49;
  v52 = *(v51 + 56);
  sub_1B49C685C(a1, &v82 - v49, type metadata accessor for FitnessContextQueryDescriptor);
  sub_1B49C685C(v102, &v50[v52], type metadata accessor for FitnessContextQueryDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1B49C685C(v50, v38, type metadata accessor for FitnessContextQueryDescriptor);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v54 = v101;
            v55 = *(v101 + 32);
            v56 = &v50[v52];
            v57 = v85;
            goto LABEL_34;
          }

          goto LABEL_37;
        }

        sub_1B49C685C(v50, v35, type metadata accessor for FitnessContextQueryDescriptor);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v70 = v101;
          v71 = v86;
          v72 = v100;
          (*(v101 + 32))(v86, &v50[v52], v100);
          V2eeoiySbAC_ACtFZ_0 = sub_1B4D1774C();
          v73 = *(v70 + 8);
          v73(v71, v72);
          v73(v35, v72);
          goto LABEL_36;
        }

        (*(v101 + 8))(v35, v100);
LABEL_45:
        sub_1B4975024(v50, &qword_1EB8A7300, &unk_1B4D1D7A0);
LABEL_46:
        V2eeoiySbAC_ACtFZ_0 = 0;
        return V2eeoiySbAC_ACtFZ_0 & 1;
      }

      sub_1B49C685C(v50, v41, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v101 + 8))(v41, v100);
        goto LABEL_45;
      }

      v67 = v100;
      v66 = v101;
      v68 = v84;
      (*(v101 + 32))(v84, &v50[v52], v100);
      V2eeoiySbAC_ACtFZ_0 = sub_1B4D1774C();
      v69 = *(v66 + 8);
      v69(v68, v67);
      v69(v41, v67);
LABEL_36:
      sub_1B49C690C(v50, type metadata accessor for FitnessContextQueryDescriptor);
      return V2eeoiySbAC_ACtFZ_0 & 1;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1B49C685C(v50, v44, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v77 = v83;
        sub_1B49C6600(&v50[v52], v83, type metadata accessor for RingsPropertiesQuery);
        V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence20RingsPropertiesQueryV2eeoiySbAC_ACtFZ_0(v44, v77);
        sub_1B49C690C(v77, type metadata accessor for RingsPropertiesQuery);
        sub_1B49C690C(v44, type metadata accessor for RingsPropertiesQuery);
        goto LABEL_36;
      }

      v58 = type metadata accessor for RingsPropertiesQuery;
      v59 = v44;
    }

    else
    {
      sub_1B49C685C(v50, v47, type metadata accessor for FitnessContextQueryDescriptor);
      if (!swift_getEnumCaseMultiPayload())
      {
        v81 = v82;
        sub_1B49C6600(&v50[v52], v82, type metadata accessor for WorkoutPropertiesQuery);
        V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence22WorkoutPropertiesQueryV2eeoiySbAC_ACtFZ_0(v47, v81);
        sub_1B49C690C(v81, type metadata accessor for WorkoutPropertiesQuery);
        sub_1B49C690C(v47, type metadata accessor for WorkoutPropertiesQuery);
        sub_1B49C690C(v50, type metadata accessor for FitnessContextQueryDescriptor);
        return V2eeoiySbAC_ACtFZ_0 & 1;
      }

      v58 = type metadata accessor for WorkoutPropertiesQuery;
      v59 = v47;
    }

LABEL_44:
    sub_1B49C690C(v59, v58);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v60 = v95;
      sub_1B49C685C(v50, v95, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v93 + 8))(v60, v94);
        goto LABEL_45;
      }

      v62 = v93;
      v61 = v94;
      v63 = v90;
      (*(v93 + 32))(v90, &v50[v52], v94);
      V2eeoiySbAC_ACtFZ_0 = sub_1B4D1749C();
      v65 = *(v62 + 8);
      v65(v63, v61);
      v65(v60, v61);
      goto LABEL_36;
    }

    v38 = v96;
    sub_1B49C685C(v50, v96, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_37;
    }

    v54 = v101;
    v55 = *(v101 + 32);
    v56 = &v50[v52];
    v57 = v87;
LABEL_34:
    v78 = v100;
    v55(v57, v56, v100);
    V2eeoiySbAC_ACtFZ_0 = sub_1B4D1774C();
    v79 = *(v54 + 8);
    v79(v57, v78);
    v79(v38, v78);
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v38 = v97;
    sub_1B49C685C(v50, v97, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_37;
    }

    v54 = v101;
    v55 = *(v101 + 32);
    v56 = &v50[v52];
    v57 = v88;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v38 = v98;
    sub_1B49C685C(v50, v98, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v54 = v101;
      v55 = *(v101 + 32);
      v56 = &v50[v52];
      v57 = v89;
      goto LABEL_34;
    }

LABEL_37:
    (*(v101 + 8))(v38, v100);
    goto LABEL_45;
  }

  v74 = v99;
  sub_1B49C685C(v50, v99, type metadata accessor for FitnessContextQueryDescriptor);
  if (swift_getEnumCaseMultiPayload() != 9)
  {
    v58 = type metadata accessor for LocationCoordinate;
    v59 = v74;
    goto LABEL_44;
  }

  v75 = v92;
  sub_1B49C6600(&v50[v52], v92, type metadata accessor for LocationCoordinate);
  if ((sub_1B4D1774C() & 1) == 0 || *(v74 + *(v91 + 20)) != *(v75 + *(v91 + 20)) || *(v74 + *(v91 + 24)) != *(v75 + *(v91 + 24)))
  {
    sub_1B49C690C(v75, type metadata accessor for LocationCoordinate);
    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v76 = sub_1B4D1816C();
  sub_1B49C690C(v75, type metadata accessor for LocationCoordinate);
  if ((v76 & 1) == 0)
  {
LABEL_49:
    sub_1B49C690C(v74, type metadata accessor for LocationCoordinate);
    sub_1B49C690C(v50, type metadata accessor for FitnessContextQueryDescriptor);
    goto LABEL_46;
  }

  sub_1B49C690C(v74, type metadata accessor for LocationCoordinate);
  sub_1B49C690C(v50, type metadata accessor for FitnessContextQueryDescriptor);
  V2eeoiySbAC_ACtFZ_0 = 1;
  return V2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t sub_1B49C6600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B49C6700(uint64_t a1)
{
  type metadata accessor for WorkoutPropertiesQuery(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RingsPropertiesQuery(319);
    if (v2 <= 0x3F)
    {
      sub_1B49C6810(319, &unk_1EDC37830, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        sub_1B49C6810(319, &qword_1EDC37860, MEMORY[0x1E6968130]);
        if (v4 <= 0x3F)
        {
          sub_1B49C6810(319, &qword_1EDC37280, type metadata accessor for LocationCoordinate);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B49C6810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B49C685C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49C68C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B49C690C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t MomentType.description.getter()
{
  v1 = *v0;
  v2 = 0x6D6F74737563;
  if (v1 == 4)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000015;
  v4 = 0xD000000000000013;
  if (v1 == 1)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B49C6A44()
{
  v1 = *v0;
  v2 = 0x6D6F74737563;
  if (v1 == 4)
  {
    v2 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B49C6B0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B49C88B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B49C6B40(uint64_t a1)
{
  v2 = sub_1B49C7474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6B7C(uint64_t a1)
{
  v2 = sub_1B49C7474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6BC4(uint64_t a1)
{
  v2 = sub_1B49C74C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6C00(uint64_t a1)
{
  v2 = sub_1B49C74C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6C3C(uint64_t a1)
{
  v2 = sub_1B49C7570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6C78(uint64_t a1)
{
  v2 = sub_1B49C7570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6CB4(uint64_t a1)
{
  v2 = sub_1B49C766C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6CF0(uint64_t a1)
{
  v2 = sub_1B49C766C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6D2C(uint64_t a1)
{
  v2 = sub_1B49C751C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6D68(uint64_t a1)
{
  v2 = sub_1B49C751C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6DA4(uint64_t a1)
{
  v2 = sub_1B49C7618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6DE0(uint64_t a1)
{
  v2 = sub_1B49C7618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6E1C(uint64_t a1)
{
  v2 = sub_1B49C75C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6E58(uint64_t a1)
{
  v2 = sub_1B49C75C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MomentType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7308, &qword_1B4D1D7B0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7310, &qword_1B4D1D7B8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7318, &qword_1B4D1D7C0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7320, &qword_1B4D1D7C8);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7328, &qword_1B4D1D7D0);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7330, &qword_1B4D1D7D8);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7338, &qword_1B4D1D7E0);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49C7474();
  sub_1B4D18EFC();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1B49C7570();
      v21 = v33;
      v22 = v42;
      sub_1B4D18C5C();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1B49C751C();
      v21 = v36;
      v22 = v42;
      sub_1B4D18C5C();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1B49C74C8();
      v21 = v39;
      v22 = v42;
      sub_1B4D18C5C();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1B49C7618();
      v21 = v27;
      v22 = v42;
      sub_1B4D18C5C();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1B49C75C4();
      v21 = v30;
      v22 = v42;
      sub_1B4D18C5C();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1B49C766C();
  v22 = v42;
  sub_1B4D18C5C();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1B49C7474()
{
  result = qword_1EB8A7340;
  if (!qword_1EB8A7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7340);
  }

  return result;
}

unint64_t sub_1B49C74C8()
{
  result = qword_1EB8A7348;
  if (!qword_1EB8A7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7348);
  }

  return result;
}

unint64_t sub_1B49C751C()
{
  result = qword_1EB8A7350;
  if (!qword_1EB8A7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7350);
  }

  return result;
}

unint64_t sub_1B49C7570()
{
  result = qword_1EB8A7358;
  if (!qword_1EB8A7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7358);
  }

  return result;
}

unint64_t sub_1B49C75C4()
{
  result = qword_1EB8A7360;
  if (!qword_1EB8A7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7360);
  }

  return result;
}

unint64_t sub_1B49C7618()
{
  result = qword_1EB8A7368;
  if (!qword_1EB8A7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7368);
  }

  return result;
}

unint64_t sub_1B49C766C()
{
  result = qword_1EB8A7370;
  if (!qword_1EB8A7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7370);
  }

  return result;
}

uint64_t MomentType.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t MomentType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7378, &qword_1B4D1D7E8);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7380, &qword_1B4D1D7F0);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7388, &qword_1B4D1D7F8);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v43[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7390, &qword_1B4D1D800);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v43[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7398, &qword_1B4D1D808);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73A0, &qword_1B4D1D810);
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73A8, &qword_1B4D1D818);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43[-v21];
  v23 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1B49C7474();
  v24 = v62;
  sub_1B4D18EEC();
  if (!v24)
  {
    v45 = v16;
    v25 = v15;
    v27 = v60;
    v26 = v61;
    v62 = v20;
    v28 = v22;
    v29 = sub_1B4D18C2C();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
    {
      v33 = sub_1B4D189BC();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820);
      *v35 = &type metadata for MomentType;
      sub_1B4D18B5C();
      sub_1B4D189AC();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v29 + 32);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v39 = v59;
          v67 = 3;
          sub_1B49C7570();
          sub_1B4D18B4C();
          v40 = v62;
          (*(v52 + 8))(v26, v51);
          (*(v40 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v36 = v39;
        }

        else
        {
          v36 = v59;
          v37 = v62;
          if (v30 == 4)
          {
            v68 = 4;
            sub_1B49C751C();
            v38 = v57;
            sub_1B4D18B4C();
            (*(v54 + 8))(v38, v53);
          }

          else
          {
            v69 = 5;
            sub_1B49C74C8();
            v41 = v58;
            sub_1B4D18B4C();
            (*(v55 + 8))(v41, v56);
          }

          (*(v37 + 8))(v22, v19);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v65 = 1;
            sub_1B49C7618();
            v31 = v25;
            sub_1B4D18B4C();
            v32 = v62;
            (*(v47 + 8))(v31, v48);
          }

          else
          {
            v66 = 2;
            sub_1B49C75C4();
            sub_1B4D18B4C();
            v32 = v62;
            (*(v49 + 8))(v27, v50);
          }
        }

        else
        {
          v64 = 0;
          sub_1B49C766C();
          sub_1B4D18B4C();
          (*(v46 + 8))(v18, v45);
          v32 = v62;
        }

        (*(v32 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v36 = v59;
      }

      *v36 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v63);
}

uint64_t sub_1B49C7F78()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B49C7FAC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B49C7FE0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B49C8014()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B49C8048()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B49C8080()
{
  result = qword_1EB8A73B8;
  if (!qword_1EB8A73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73B8);
  }

  return result;
}

unint64_t sub_1B49C8104()
{
  v1 = *v0;
  v2 = 0x6D6F74737563;
  if (v1 == 4)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000015;
  v4 = 0xD000000000000013;
  if (v1 == 1)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for WorkoutPropertyDimensionsField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPropertyDimensionsField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B49C838C()
{
  result = qword_1EB8A73C0;
  if (!qword_1EB8A73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73C0);
  }

  return result;
}

unint64_t sub_1B49C83E4()
{
  result = qword_1EB8A73C8;
  if (!qword_1EB8A73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73C8);
  }

  return result;
}

unint64_t sub_1B49C843C()
{
  result = qword_1EB8A73D0;
  if (!qword_1EB8A73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73D0);
  }

  return result;
}

unint64_t sub_1B49C8494()
{
  result = qword_1EB8A73D8;
  if (!qword_1EB8A73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73D8);
  }

  return result;
}

unint64_t sub_1B49C84EC()
{
  result = qword_1EB8A73E0;
  if (!qword_1EB8A73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73E0);
  }

  return result;
}

unint64_t sub_1B49C8544()
{
  result = qword_1EB8A73E8;
  if (!qword_1EB8A73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73E8);
  }

  return result;
}

unint64_t sub_1B49C859C()
{
  result = qword_1EB8A73F0;
  if (!qword_1EB8A73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73F0);
  }

  return result;
}

unint64_t sub_1B49C85F4()
{
  result = qword_1EB8A73F8;
  if (!qword_1EB8A73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73F8);
  }

  return result;
}

unint64_t sub_1B49C864C()
{
  result = qword_1EB8A7400;
  if (!qword_1EB8A7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7400);
  }

  return result;
}

unint64_t sub_1B49C86A4()
{
  result = qword_1EB8A7408;
  if (!qword_1EB8A7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7408);
  }

  return result;
}

unint64_t sub_1B49C86FC()
{
  result = qword_1EB8A7410;
  if (!qword_1EB8A7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7410);
  }

  return result;
}

unint64_t sub_1B49C8754()
{
  result = qword_1EB8A7418;
  if (!qword_1EB8A7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7418);
  }

  return result;
}

unint64_t sub_1B49C87AC()
{
  result = qword_1EB8A7420;
  if (!qword_1EB8A7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7420);
  }

  return result;
}

unint64_t sub_1B49C8804()
{
  result = qword_1EB8A7428;
  if (!qword_1EB8A7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7428);
  }

  return result;
}

unint64_t sub_1B49C885C()
{
  result = qword_1EB8A7430;
  if (!qword_1EB8A7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7430);
  }

  return result;
}

uint64_t sub_1B49C88B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001B4D4F460 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D4F480 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D4F4A0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4D4F4C0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D4F4E0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t static PropertyRecordProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v36 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v32 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  v17 = a4[7];
  v17(&v41, a3, a4, v14);
  v18 = v41;
  v39 = a2;
  (v17)(&v40, a3, a4);
  if (v18 == v40 && (v19 = a4[8], v19(&v41, a3, a4), v20 = v41, v19(&v40, a3, a4), v20 == v40) && (v21 = a4[9], v21(a3, a4), v22 = v37, v21(a3, a4), swift_getAssociatedConformanceWitness(), v23 = sub_1B4D1816C(), v24 = *(v38 + 8), v24(v22, v11), v24(v16, v11), (v23 & 1) != 0))
  {
    v25 = a4[10];
    v26 = v33;
    v25(a3, a4);
    v27 = v34;
    v25(a3, a4);
    v28 = v36;
    swift_getAssociatedConformanceWitness();
    v29 = sub_1B4D1816C();
    v30 = *(v35 + 8);
    v30(v27, v28);
    v30(v26, v28);
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t AwardsContext.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardsContext(0) + 20);
  v4 = sub_1B4D174EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AwardsContext(uint64_t a1)
{
  result = qword_1EB8A7438;
  if (!qword_1EB8A7438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardsContext.init(earnedAchievements:dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for AwardsContext(0) + 20);
  v6 = sub_1B4D174EC();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

void sub_1B49C915C(uint64_t a1)
{
  sub_1B49C91E0(319);
  if (v1 <= 0x3F)
  {
    sub_1B4D174EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B49C91E0(uint64_t a1)
{
  if (!qword_1EB8A7448)
  {
    type metadata accessor for ActivityAchievementAward(255);
    v1 = sub_1B4D184BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB8A7448);
    }
  }
}

uint64_t sub_1B49C9238(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 36)
  {
    switch(a1)
    {
      case '4':
        if (a2)
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "you(assistant) and the user.";
          v7 = 0xD0000000000008E5;
        }

        else
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "you (assistant) and the user.";
          v7 = 0xD00000000000081CLL;
        }

        break;
      case ',':
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = " mention the same media again.";
        v7 = 0xD0000000000005C8;
        break;
      case '%':
        if (a2)
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "assistant) and the user.";
          v7 = 0xD000000000000820;
        }

        else
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "assistant) and the user.";
          v7 = 0xD000000000000758;
        }

        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    if (a1 != 13)
    {
      if (a1 == 16)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "assistant) and the user.";
        v7 = 0xD0000000000005C4;
        goto LABEL_21;
      }

      if (a1 == 24)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "stant) and the user.";
        v7 = 0xD00000000000081DLL;
        goto LABEL_21;
      }

LABEL_15:
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "xt at the *progress* moment:\n\n{";
      v7 = 0xD0000000000005BELL;
      goto LABEL_21;
    }

    if (a2)
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "n you(assistant) and the user.";
      v7 = 0xD0000000000005C8;
    }

    else
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "istant) and the user.";
      v7 = 0xD00000000000077ELL;
    }
  }

LABEL_21:
  MEMORY[0x1B8C7C620](v7, v6 | 0x8000000000000000);
  return 0;
}

uint64_t SnapshotQuery.with(range:filters:groupBy:propertyKinds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a7;
  v46 = a4;
  v44 = a3;
  v41 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1B4D1880C();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v40 - v18;
  v20 = type metadata accessor for DateRangeDescriptor(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49BFDE8(a1, v19);
  v24 = *(v21 + 48);
  v25 = v24(v19, 1, v20);
  v49 = v7;
  v42 = v23;
  if (v25 == 1)
  {
    v26 = a5;
    (*(a6 + 96))(a5, a6);
    if (v24(v19, 1, v20) != 1)
    {
      sub_1B49C9AE8(v19);
    }
  }

  else
  {
    v27 = v23;
    v26 = a5;
    sub_1B4993450(v19, v27);
  }

  (*(v47 + 16))(v14, v41, v48);
  v28 = *(AssociatedTypeWitness - 8);
  v29 = *(v28 + 48);
  v30 = v29(v14, 1, AssociatedTypeWitness);
  v31 = v43;
  if (v30 == 1)
  {
    v32 = v26;
    (*(a6 + 104))(v26, a6);
    v33 = v29(v14, 1, AssociatedTypeWitness);
    v34 = v46;
    if (v33 != 1)
    {
      (*(v47 + 8))(v14, v48);
    }
  }

  else
  {
    (*(v28 + 32))(v43, v14, AssociatedTypeWitness);
    v32 = v26;
    v34 = v46;
  }

  (*(v28 + 56))(v31, 0, 1, AssociatedTypeWitness);
  if (!v44)
  {
    v35 = (*(a6 + 112))(v32, a6);
    if (v34)
    {
      goto LABEL_11;
    }

LABEL_13:
    v37 = *(a6 + 120);

    v36 = v37(v32, a6);
    goto LABEL_14;
  }

  v35 = v44;
  if (!v34)
  {
    goto LABEL_13;
  }

LABEL_11:

  v36 = v34;
LABEL_14:
  v38 = *(a6 + 128);

  return v38(v42, v31, v35, v36, v32, a6);
}

uint64_t sub_1B49C9AE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SnapshotQuery.includes(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v19 = a3[12];
  v32 = v3;
  v19(a2, a3, v16);
  v33 = a1;
  (v19)(a2, a3);
  v20 = _s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v18, v14);
  sub_1B49CA284(v14);
  sub_1B49CA284(v18);
  if (v20 & 1) != 0 && (v21 = a3[13], v21(a2, a3), v22 = v30, v21(a2, a3), swift_getAssociatedConformanceWitness(), v23 = sub_1B4D1816C(), v24 = *(v31 + 8), v24(v22, AssociatedTypeWitness), v24(v11, AssociatedTypeWitness), (v23) && (v25 = a3[14], v25(a2, a3), v25(a2, a3), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v26 = sub_1B4D184DC(), , , (v26))
  {
    v27 = a3[15];
    v35 = v27(a2, a3);
    v34 = v27(a2, a3);
    swift_getAssociatedTypeWitness();
    sub_1B4D184BC();
    swift_getWitnessTable();
    swift_getAssociatedConformanceWitness();
    v28 = sub_1B4D1865C();
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t SnapshotQuery.analyticsKey.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateRangeDescriptor(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  (*(a2 + 88))(&v17, a1, a2, v5);
  v8 = 0xE800000000000000;
  v9 = 0x7374756F6B726F77;
  if (v17 != 1)
  {
    v9 = 0x507373656E746966;
    v8 = 0xEB0000000073756CLL;
  }

  if (v17)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x73676E6972;
  }

  if (v17)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1B8C7C620](v10, v11);

  MEMORY[0x1B8C7C620](95, 0xE100000000000000);
  (*(a2 + 96))(a1, a2);
  v12 = DateRangeDescriptor.analyticsKey.getter();
  v14 = v13;
  sub_1B49CA284(v7);
  MEMORY[0x1B8C7C620](v12, v14);

  return v18;
}

uint64_t SnapshotQueryPlan.init(steps:query:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  Plan = type metadata accessor for SnapshotQueryPlan(0, a3, a4, a4);
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(Plan + 36);

  return v9(v10, a2, a3);
}

uint64_t sub_1B49CA240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DateRangeDescriptor.analyticsKey.getter();
  MEMORY[0x1B8C7C620](v3);

  return a3;
}

uint64_t sub_1B49CA284(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B49CA384(uint64_t a1)
{
  sub_1B49CA7E0();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B49CA40C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
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
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
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

void sub_1B49CA590(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_1B49CA7E0()
{
  if (!qword_1EDC378F0)
  {
    v0 = sub_1B4D184BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC378F0);
    }
  }
}

uint64_t sub_1B49CA830(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1B4BA3834(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1B49DA04C(a2, type metadata accessor for FitnessContextQueryDescriptor);
    *v2 = v15;
  }

  else
  {
    v8 = sub_1B49E9FEC(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_1B4989318();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      sub_1B49DA04C(v13 + *(*(Descriptor - 8) + 72) * v10, type metadata accessor for FitnessContextQueryDescriptor);

      sub_1B4B7ED64(v10, v12);
      result = sub_1B49DA04C(a2, type metadata accessor for FitnessContextQueryDescriptor);
      *v3 = v12;
    }

    else
    {
      return sub_1B49DA04C(a2, type metadata accessor for FitnessContextQueryDescriptor);
    }
  }

  return result;
}

uint64_t sub_1B49CA980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B0, &unk_1B4D1AA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v10 = *(Descriptor - 8);
  v11 = MEMORY[0x1EEE9AC00](Descriptor);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, Descriptor, v11) == 1)
  {
    sub_1B4975024(a1, &qword_1EB8A67B0, &unk_1B4D1AA60);
    v14 = sub_1B49EA0C0(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1B49896A4();
        v18 = v22;
      }

      sub_1B49DA2F8(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for FitnessContextQueryDescriptor);
      sub_1B4B7F020(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, Descriptor);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, Descriptor);
    }

    return sub_1B4975024(v8, &qword_1EB8A67B0, &unk_1B4D1AA60);
  }

  else
  {
    sub_1B49DA2F8(a1, v13, type metadata accessor for FitnessContextQueryDescriptor);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1B4BA39C4(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1B49CABD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for WorkoutState(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1B4975024(a1, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v14 = sub_1B49EA4A8(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1B4989D04();
        v18 = v22;
      }

      sub_1B49DA2F8(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for WorkoutState);
      sub_1B4B7F24C(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1B4975024(v8, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  }

  else
  {
    sub_1B49DA2F8(a1, v13, type metadata accessor for WorkoutState);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1B4BA3C68(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1B49CAE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74E8, &qword_1B4D1E2D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for WorkoutMetadata(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1B4975024(a1, &qword_1EB8A74E8, &qword_1B4D1E2D8);
    sub_1B49D3004(v9, a2, a3);

    return sub_1B4975024(v9, &qword_1EB8A74E8, &qword_1B4D1E2D8);
  }

  else
  {
    sub_1B49DA2F8(a1, v13, type metadata accessor for WorkoutMetadata);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1B4BA3DC4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1B49CAFFC(uint64_t a1)
{
  if (_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v1, a1) & 1) != 0 && (v17 = type metadata accessor for WorkoutPropertiesQuery(0), v18 = v1, v3 = (v1 + v17[5]), v4 = v3[1], v5 = v3[2], v6 = v3[3], v7 = v3[4], v8 = v3[5], v22[0] = *v3, v22[1] = v4, v22[2] = v5, v22[3] = v6, v22[4] = v7, v22[5] = v8, v19 = a1, v9 = (a1 + v17[5]), v10 = v9[1], v12 = v9[2], v11 = v9[3], v13 = v9[4], v20 = v9[5], v21[0] = *v9, v21[1] = v10, v21[2] = v12, v21[3] = v11, v21[4] = v13, v21[5] = v20, , , , , , , , , , , , , LOBYTE(v4) = _s19FitnessIntelligence32WorkoutPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v22, v21), , , , , , , , , , , , , (v4) && (sub_1B4A0DD68(*(v18 + v17[6]), *(v19 + v17[6])))
  {
    v14 = v17[7];
    v22[0] = *(v18 + v14);
    v21[0] = *(v19 + v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74D0, &qword_1B4D1E2D0);
    sub_1B49DA0AC(&qword_1EB8A74D8, &qword_1EB8A74D0, &qword_1B4D1E2D0);
    sub_1B49DA100();
    v15 = sub_1B4D1865C();
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B49CB224(uint64_t a1)
{
  v2 = v1;
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v2, a1) & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = type metadata accessor for RingsPropertiesQuery(0);
  v5 = *(v4 + 20);
  v6 = *(v2 + v5);
  v7 = *(v2 + v5 + 8);
  v8 = *(v2 + v5 + 16);
  v9 = (a1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];

  if ((sub_1B4A0A1C0(v6, v10) & 1) == 0 || (sub_1B4A0A568(v7, v11) & 1) == 0)
  {

LABEL_8:
    v14 = 0;
    return v14 & 1;
  }

  v13 = sub_1B4A0A7D0(v8, v12);

  if ((v13 & 1) == 0 || (sub_1B4A0D340(*(v2 + *(v4 + 24)), *(a1 + *(v4 + 24))) & 1) == 0)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B8, &qword_1B4D3FD60);
  sub_1B49DA0AC(&qword_1EB8A74C0, &qword_1EB8A74B8, &qword_1B4D3FD60);
  sub_1B49D9FF8();
  v14 = sub_1B4D1865C();
  return v14 & 1;
}

uint64_t sub_1B49CB3F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;
}

uint64_t sub_1B49CB458@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 128);
}

uint64_t sub_1B49CB4A0(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 128) = v2;
}

void *WorkoutVoiceSession.__allocating_init(connection:unitManager:mode:transcript:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B4D1777C();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for WorkoutVoiceSession.Mode(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v18 = *a1;
  v19 = *a4;
  swift_defaultActor_initialize();
  v17[28] = 0;
  *&v49 = &protocol witness table for InferenceClient;
  *(&v48 + 1) = &type metadata for InferenceClient;
  *&v47 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7450, &qword_1B4D1E140);
  swift_allocObject();

  *(&v47 + 1) = sub_1B4D17ADC();
  sub_1B496F398(&v47, (v17 + 22));
  v20 = MEMORY[0x1E69E7CC0];
  v17[14] = MEMORY[0x1E69E7CC0];
  v21 = sub_1B4C95838(v20);
  v17[27] = a2;
  v17[15] = v21;
  v17[16] = v19;
  sub_1B49D9F90(a3, v16, type metadata accessor for WorkoutVoiceSession.Mode);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7458, &qword_1B4D1E148);
  if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
  {
    sub_1B49DA04C(a3, type metadata accessor for WorkoutVoiceSession.Mode);
    v17[20] = &type metadata for FitnessContextClient;
    v17[21] = &protocol witness table for FitnessContextClient;
    v17[17] = v18;
  }

  else
  {
    v41 = a3;
    v42 = a2;

    v40 = *&v16[*(v22 + 48)];
    v23 = &v16[*(v22 + 64)];
    v24 = *(v23 + 11);
    v57 = *(v23 + 10);
    v58 = v24;
    v59 = *(v23 + 24);
    v25 = *(v23 + 7);
    v53 = *(v23 + 6);
    v54 = v25;
    v26 = *(v23 + 9);
    v55 = *(v23 + 8);
    v56 = v26;
    v27 = *(v23 + 3);
    v49 = *(v23 + 2);
    v28 = *(v23 + 4);
    v52 = *(v23 + 5);
    v50 = v27;
    v51 = v28;
    v29 = *v23;
    v48 = *(v23 + 1);
    v47 = v29;
    v30 = v43;
    (*(v43 + 32))(v13, v16, v8);
    v31 = *(v30 + 16);
    v31(v10, v13, v8);
    v32 = type metadata accessor for FitnessContextDemoClient(0);
    v45 = v32;
    v46 = &off_1F2CBDF28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    v31(boxed_opaque_existential_1 + v32[5], v10, v8);
    v34 = boxed_opaque_existential_1 + v32[7];
    *v34 = v47;
    *(v34 + 4) = v51;
    *(v34 + 3) = v50;
    *(v34 + 2) = v49;
    *(v34 + 1) = v48;
    *(v34 + 8) = v55;
    *(v34 + 7) = v54;
    *(v34 + 6) = v53;
    *(v34 + 5) = v52;
    *(v34 + 24) = v59;
    *(v34 + 11) = v58;
    *(v34 + 10) = v57;
    *(v34 + 9) = v56;
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v35 = *(v30 + 8);
    v35(v10, v8);
    v36 = sub_1B4D1796C();
    v37 = __swift_project_value_buffer(v36, qword_1EDC3CE48);
    (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v37, v36);

    *(boxed_opaque_existential_1 + v32[6]) = v40;
    sub_1B49DA04C(v41, type metadata accessor for WorkoutVoiceSession.Mode);
    v35(v13, v8);
    sub_1B496F398(&v44, (v17 + 17));
  }

  return v17;
}

void *WorkoutVoiceSession.init(connection:unitManager:mode:transcript:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = sub_1B4D1777C();
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for WorkoutVoiceSession.Mode(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = *a4;
  swift_defaultActor_initialize();
  v5[28] = 0;
  *&v50 = &protocol witness table for InferenceClient;
  *(&v49 + 1) = &type metadata for InferenceClient;
  *&v48 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7450, &qword_1B4D1E140);
  swift_allocObject();

  *(&v48 + 1) = sub_1B4D17ADC();
  sub_1B496F398(&v48, (v5 + 22));
  v21 = MEMORY[0x1E69E7CC0];
  v5[14] = MEMORY[0x1E69E7CC0];
  v22 = sub_1B4C95838(v21);
  v5[27] = a2;
  v5[15] = v22;
  v5[16] = v20;
  sub_1B49D9F90(a3, v18, type metadata accessor for WorkoutVoiceSession.Mode);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7458, &qword_1B4D1E148);
  if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
  {
    sub_1B49DA04C(a3, type metadata accessor for WorkoutVoiceSession.Mode);
    v5[20] = &type metadata for FitnessContextClient;
    v5[21] = &protocol witness table for FitnessContextClient;
    v5[17] = v19;
  }

  else
  {
    v43 = a3;
    v42 = a2;

    v41 = *&v18[*(v23 + 48)];
    v24 = &v18[*(v23 + 64)];
    v25 = *(v24 + 11);
    v58 = *(v24 + 10);
    v59 = v25;
    v60 = *(v24 + 24);
    v26 = *(v24 + 7);
    v54 = *(v24 + 6);
    v55 = v26;
    v27 = *(v24 + 9);
    v56 = *(v24 + 8);
    v57 = v27;
    v28 = *(v24 + 3);
    v50 = *(v24 + 2);
    v29 = *(v24 + 4);
    v53 = *(v24 + 5);
    v51 = v28;
    v52 = v29;
    v30 = *v24;
    v49 = *(v24 + 1);
    v48 = v30;
    v31 = v44;
    (*(v44 + 32))(v15, v18, v10);
    v32 = *(v31 + 16);
    v32(v12, v15, v10);
    v33 = type metadata accessor for FitnessContextDemoClient(0);
    v46 = v33;
    v47 = &off_1F2CBDF28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
    v32(boxed_opaque_existential_1 + v33[5], v12, v10);
    v35 = boxed_opaque_existential_1 + v33[7];
    *v35 = v48;
    *(v35 + 4) = v52;
    *(v35 + 3) = v51;
    *(v35 + 2) = v50;
    *(v35 + 1) = v49;
    *(v35 + 8) = v56;
    *(v35 + 7) = v55;
    *(v35 + 6) = v54;
    *(v35 + 5) = v53;
    *(v35 + 24) = v60;
    *(v35 + 11) = v59;
    *(v35 + 10) = v58;
    *(v35 + 9) = v57;
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v36 = *(v31 + 8);
    v36(v12, v10);
    v37 = sub_1B4D1796C();
    v38 = __swift_project_value_buffer(v37, qword_1EDC3CE48);
    (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v38, v37);

    *(boxed_opaque_existential_1 + v33[6]) = v41;
    sub_1B49DA04C(v43, type metadata accessor for WorkoutVoiceSession.Mode);
    v36(v15, v10);
    sub_1B496F398(&v45, (v5 + 17));
  }

  return v5;
}

uint64_t type metadata accessor for WorkoutVoiceSession.Mode(uint64_t a1)
{
  result = qword_1EB8A7480;
  if (!qword_1EB8A7480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *WorkoutVoiceSession.__allocating_init(connection:unitManager:)(uint64_t *a1, void *a2)
{
  v4 = sub_1B4D1777C();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - v8;
  v9 = type metadata accessor for WorkoutVoiceSession.Mode(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = *a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7458, &qword_1B4D1E148);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v14, 1, 1, v16);
  type metadata accessor for WorkoutVoiceSession();
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v18[28] = 0;
  *&v47 = &protocol witness table for InferenceClient;
  *(&v46 + 1) = &type metadata for InferenceClient;
  *&v45 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7450, &qword_1B4D1E140);
  swift_allocObject();

  *(&v45 + 1) = sub_1B4D17ADC();
  sub_1B496F398(&v45, (v18 + 22));
  v19 = MEMORY[0x1E69E7CC0];
  v18[14] = MEMORY[0x1E69E7CC0];
  v20 = sub_1B4C95838(v19);
  v18[27] = a2;
  v18[15] = v20;
  v18[16] = v19;
  sub_1B49D9F90(v14, v11, type metadata accessor for WorkoutVoiceSession.Mode);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_1B49DA04C(v14, type metadata accessor for WorkoutVoiceSession.Mode);
    v18[20] = &type metadata for FitnessContextClient;
    v18[21] = &protocol witness table for FitnessContextClient;
    v18[17] = v15;
  }

  else
  {
    v39 = a2;

    v21 = *&v11[*(v16 + 48)];
    v22 = &v11[*(v16 + 64)];
    v23 = *(v22 + 11);
    v55 = *(v22 + 10);
    v56 = v23;
    v57 = *(v22 + 24);
    v24 = *(v22 + 7);
    v51 = *(v22 + 6);
    v52 = v24;
    v25 = *(v22 + 9);
    v53 = *(v22 + 8);
    v54 = v25;
    v26 = *(v22 + 3);
    v47 = *(v22 + 2);
    v27 = *(v22 + 4);
    v50 = *(v22 + 5);
    v48 = v26;
    v49 = v27;
    v28 = *v22;
    v46 = *(v22 + 1);
    v45 = v28;
    v29 = v41;
    v30 = v40;
    (*(v41 + 32))(v40, v11, v4);
    v31 = *(v29 + 16);
    v31(v6, v30, v4);
    v32 = type metadata accessor for FitnessContextDemoClient(0);
    v43 = v32;
    v44 = &off_1F2CBDF28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
    v31(boxed_opaque_existential_1 + v32[5], v6, v4);
    v34 = boxed_opaque_existential_1 + v32[7];
    *v34 = v45;
    *(v34 + 4) = v49;
    *(v34 + 3) = v48;
    *(v34 + 2) = v47;
    *(v34 + 1) = v46;
    *(v34 + 8) = v53;
    *(v34 + 7) = v52;
    *(v34 + 6) = v51;
    *(v34 + 5) = v50;
    *(v34 + 24) = v57;
    *(v34 + 11) = v56;
    *(v34 + 10) = v55;
    *(v34 + 9) = v54;
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v35 = *(v41 + 8);
    v35(v6, v4);
    v36 = sub_1B4D1796C();
    v37 = __swift_project_value_buffer(v36, qword_1EDC3CE48);
    (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v37, v36);

    *(boxed_opaque_existential_1 + v32[6]) = v21;
    v35(v40, v4);
    sub_1B49DA04C(v14, type metadata accessor for WorkoutVoiceSession.Mode);
    sub_1B496F398(&v42, (v18 + 17));
  }

  return v18;
}

uint64_t sub_1B49CC4F8(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  v5 = *(type metadata accessor for WorkoutState(0) - 8);
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 + 64);
  *(v3 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 89) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B49CC600, v2, 0);
}

uint64_t sub_1B49CC600()
{
  v29 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 224);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = qword_1EDC3CEC8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4D17F6C();
    __swift_project_value_buffer(v4, qword_1EDC3CED0);
    v5 = sub_1B4D17F5C();
    v6 = sub_1B4D1873C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 89);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28 = v9;
      *v8 = 136315138;
      *(v0 + 88) = v7;
      v10 = sub_1B4D181AC();
      v12 = sub_1B49558AC(v10, v11, &v28);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B4953000, v5, v6, "[WorkoutVoiceSession] Waiting for current fetching context task to finish before fetching context for %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B8C7DDA0](v9, -1, -1);
      MEMORY[0x1B8C7DDA0](v8, -1, -1);
    }

    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    *v13 = v0;
    v13[1] = sub_1B49CC974;
    v15 = MEMORY[0x1E69E7288];
    v16 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v14, v2, v16, v14, v15);
  }

  else
  {
    v17 = *(v0 + 89);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 32);
    v21 = *(v0 + 16);
    sub_1B4D1855C();
    v22 = sub_1B4D1858C();
    (*(*(v22 - 8) + 56))(v18, 0, 1, v22);
    sub_1B49D9F90(v21, v19, type metadata accessor for WorkoutState);
    v23 = sub_1B49D918C();
    v24 = (*(v20 + 80) + 41) & ~*(v20 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    *(v25 + 24) = v23;
    *(v25 + 32) = v1;
    *(v25 + 40) = v17;
    sub_1B49DA2F8(v19, v25 + v24, type metadata accessor for WorkoutState);
    swift_retain_n();
    *(v1 + 224) = sub_1B49CCEB8(0, 0, v18, &unk_1B4D1E168, v25);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1B49CC974()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1B49CCC40;
  }

  else
  {
    v4 = sub_1B49CCAA0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B49CCAA0()
{

  v1 = *(v0 + 89);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_1B4D1855C();
  v7 = sub_1B4D1858C();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_1B49D9F90(v6, v3, type metadata accessor for WorkoutState);
  v8 = sub_1B49D918C();
  v9 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v8;
  *(v10 + 32) = v5;
  *(v10 + 40) = v1;
  sub_1B49DA2F8(v3, v10 + v9, type metadata accessor for WorkoutState);
  swift_retain_n();
  *(v5 + 224) = sub_1B49CCEB8(0, 0, v2, &unk_1B4D1E168, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1B49CCC40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B49CCCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  *(v6 + 40) = a5;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_1B49CCD6C;

  return sub_1B49D1FD4((v6 + 40), a6);
}

uint64_t sub_1B49CCD6C()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1B49CCEA0, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B49CCEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1B4974FBC(a3, v22 - v9, &qword_1EB8A7460, &qword_1B4D1E158);
  v11 = sub_1B4D1858C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B4975024(v10, &qword_1EB8A7460, &qword_1B4D1E158);
  }

  else
  {
    sub_1B4D1857C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B4D184FC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B4D181DC() + 32;

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

      sub_1B4975024(a3, &qword_1EB8A7460, &qword_1B4D1E158);

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

  sub_1B4975024(a3, &qword_1EB8A7460, &qword_1B4D1E158);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1B49CD164(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v5 = *(a1 + 8);
  if (v5 <= 1)
  {
    if (*(a1 + 8))
    {
      *(v3 + 90) = 1;
      v6 = (v3 + 90);
      v7 = swift_task_alloc();
      *(v3 + 40) = v7;
      *v7 = v3;
      v8 = sub_1B49CD478;
    }

    else
    {
      *(v3 + 91) = 0;
      v6 = (v3 + 91);
      v7 = swift_task_alloc();
      *(v3 + 24) = v7;
      *v7 = v3;
      v8 = sub_1B49CD344;
    }

LABEL_12:
    v7[1] = v8;

    return sub_1B49CC4F8(v6, a2);
  }

  if (v5 == 2)
  {
    *(v3 + 89) = 2;
    v6 = (v3 + 89);
    v7 = swift_task_alloc();
    *(v3 + 56) = v7;
    *v7 = v3;
    v8 = sub_1B49CD5AC;
    goto LABEL_12;
  }

  if (v5 == 3)
  {
    *(v3 + 88) = 3;
    v6 = (v3 + 88);
    v7 = swift_task_alloc();
    *(v3 + 72) = v7;
    *v7 = v3;
    v8 = sub_1B49CD6E0;
    goto LABEL_12;
  }

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_1B49CD344()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD814, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B49CD478()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD82C, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B49CD5AC()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD844, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B49CD6E0()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD85C, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B49CD874(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  v6 = sub_1B4D177CC();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  v7 = sub_1B4D17F0C();
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 - 8);
  *(v4 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  *(v4 + 112) = swift_task_alloc();
  v8 = sub_1B4D1777C();
  *(v4 + 120) = v8;
  *(v4 + 128) = *(v8 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v9 = sub_1B4D17ECC();
  *(v4 + 160) = v9;
  *(v4 + 168) = *(v9 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 314) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B49CDAC8, v3, 0);
}

uint64_t sub_1B49CDAC8()
{
  if (qword_1EDC36F38 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17EFC();
  *(v0 + 200) = __swift_project_value_buffer(v1, qword_1EDC36F40);
  sub_1B4D17EBC();
  v2 = sub_1B4D17EEC();
  v3 = sub_1B4D1877C();
  if (sub_1B4D187DC())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1B4D17EAC();
    _os_signpost_emit_with_name_impl(&dword_1B4953000, v2, v3, v5, "requestMoment", "", v4, 2u);
    MEMORY[0x1B8C7DDA0](v4, -1, -1);
  }

  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  v10 = *(v0 + 56);

  (*(v9 + 16))(v6, v7, v8);
  sub_1B4D17F3C();
  swift_allocObject();
  *(v0 + 208) = sub_1B4D17F2C();
  v11 = *(v9 + 8);
  *(v0 + 216) = v11;
  *(v0 + 224) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v8);
  v12 = *(v10 + 224);
  *(v0 + 232) = v12;
  if (v12)
  {

    v13 = swift_task_alloc();
    *(v0 + 240) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    *v13 = v0;
    v13[1] = sub_1B49CDD88;
    v15 = MEMORY[0x1E69E7288];
    v16 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v14, v12, v16, v14, v15);
  }

  else
  {
    *(v0 + 312) = *(v0 + 314);
    v17 = swift_task_alloc();
    *(v0 + 256) = v17;
    *v17 = v0;
    v17[1] = sub_1B49CDF58;
    v18 = *(v0 + 48);

    return sub_1B49D1FD4((v0 + 312), v18);
  }
}

uint64_t sub_1B49CDD88()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);

    v4 = sub_1B49CE8A4;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 56);
    v4 = sub_1B49CDEB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B49CDEB0()
{

  *(v0 + 312) = *(v0 + 314);
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_1B49CDF58;
  v2 = *(v0 + 48);

  return sub_1B49D1FD4((v0 + 312), v2);
}

uint64_t sub_1B49CDF58()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1B49CE984;
  }

  else
  {
    v4 = sub_1B49CE070;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B49CE070()
{
  v8 = v0;
  v1 = v0[19].u8[10];
  v6 = v0[3];
  sub_1B4D1776C();
  v7 = v1;
  v2 = sub_1B4A6A1F8(&v7);
  v0[17].i64[0] = v2;
  v3 = swift_task_alloc();
  v0[17].i64[1] = v3;
  v3[1] = vextq_s8(v6, v6, 8uLL);
  v3[2].i8[0] = v1;
  v4 = swift_task_alloc();
  v0[18].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_1B49CE17C;

  return sub_1B49CF548(&unk_1B4D1E1A0, v3, v2);
}

uint64_t sub_1B49CE17C(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v4 = v3[7];

    v5 = sub_1B49CEA64;
  }

  else
  {
    v4 = v3[7];

    v5 = sub_1B49CE2D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B49CE2D4()
{
  v66 = v0;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B4D17F6C();
  __swift_project_value_buffer(v5, qword_1EDC3CED0);
  (*(v4 + 16))(v2, v1, v3);

  v6 = sub_1B4D17F5C();
  v7 = sub_1B4D1873C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 272);
  if (v8)
  {
    v10 = *(v0 + 314);
    v11 = *(v0 + 136);
    v12 = *(v0 + 128);
    v61 = *(v0 + 144);
    v63 = *(v0 + 120);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 134218498;
    v15 = *(v9 + 16);

    *(v13 + 4) = v15;

    *(v13 + 12) = 2080;
    *(v0 + 313) = v10;
    v16 = sub_1B4D181AC();
    v18 = sub_1B49558AC(v16, v17, &v65);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v20 = v19;
    v21 = *(v12 + 8);
    v21(v11, v63);
    v21(v61, v63);
    *(v13 + 24) = v20;
    _os_log_impl(&dword_1B4953000, v6, v7, "[WorkoutVoiceSession] Analyzed %ld facts for %s in %fs", v13, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B8C7DDA0](v14, -1, -1);
    MEMORY[0x1B8C7DDA0](v13, -1, -1);
  }

  else
  {
    v22 = *(v0 + 144);
    v23 = *(v0 + 120);
    v24 = *(v0 + 128);
    swift_bridgeObjectRelease_n();

    v21 = *(v24 + 8);
    v21(v22, v23);
  }

  v25 = *(v0 + 112);
  v26 = *(v0 + 314);
  sub_1B49D9F90(*(v0 + 48), v25, type metadata accessor for WorkoutState);
  v27 = type metadata accessor for WorkoutState(0);
  (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
  swift_beginAccess();
  sub_1B49CABD4(v25, v26);
  swift_endAccess();
  v28 = sub_1B4D17EEC();
  sub_1B4D17F1C();
  v29 = sub_1B4D1876C();
  if (sub_1B4D187DC())
  {
    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v32 = *(v0 + 88);

    sub_1B4D17F4C();

    if ((*(v31 + 88))(v30, v32) == *MEMORY[0x1E69E93E8])
    {
      v33 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      v33 = "";
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = sub_1B4D17EAC();
    _os_signpost_emit_with_name_impl(&dword_1B4953000, v28, v29, v35, "requestMoment", v33, v34, 2u);
    MEMORY[0x1B8C7DDA0](v34, -1, -1);
  }

  v36 = *(v0 + 296);
  v37 = *(v0 + 216);
  v38 = *(v0 + 176);
  v39 = *(v0 + 160);

  v37(v38, v39);
  v40 = *(v0 + 296);
  if (*(v36 + 16))
  {
    v64 = *(v0 + 314);
    v59 = v21;
    v60 = *(v0 + 152);
    v58 = *(v0 + 120);
    v41 = *(v0 + 72);
    v42 = *(v0 + 80);
    v43 = *(v0 + 64);
    v62 = *(v0 + 40);
    v44 = *(*(v0 + 48) + *(v27 + 24));
    v45 = [v44 effectiveTypeIdentifier];
    v46 = [v44 isIndoor];
    sub_1B4D177BC();
    v47 = sub_1B4D1779C();
    v49 = v48;

    (*(v41 + 8))(v42, v43);
    v59(v60, v58);
    v50 = v47;
    v51 = v45;
    v52 = v46;
    *v62 = v64;
    v53 = v40;
  }

  else
  {
    v54 = *(v0 + 40);
    v21(*(v0 + 152), *(v0 + 120));

    v51 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v49 = 0;
    *v54 = 0;
  }

  v55 = *(v0 + 40);
  v55[1] = v51;
  v55[2] = v52;
  v55[3] = v53;
  v55[4] = v50;
  v55[5] = v49;

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1B49CE8A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B49CE984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B49CEA64()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B49CEB64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 192) = a4;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  *(v4 + 80) = swift_task_alloc();
  v6 = sub_1B4D1777C();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B49CEC84, 0, 0);
}

uint64_t sub_1B49CEC84(double a1)
{
  v2 = *(v1 + 64);
  sub_1B4D1776C();

  return MEMORY[0x1EEE6DFA0](sub_1B49CECF0, v2, 0);
}

uint64_t sub_1B49CECF0()
{
  *(v0 + 144) = *(*(v0 + 64) + 112);

  return MEMORY[0x1EEE6DFA0](sub_1B49CED64, 0, 0);
}

uint64_t sub_1B49CED64()
{
  v1 = v0[8];
  v0[7] = v0[18];
  v0[19] = *(v1 + 216);
  return MEMORY[0x1EEE6DFA0](sub_1B49CED90, v1, 0);
}

uint64_t sub_1B49CED90()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 160) = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1B49CEE18, 0, 0);
}

uint64_t sub_1B49CEE18()
{
  if (*(*(v0 + 160) + 16))
  {
    v1 = sub_1B49EA4A8(*(v0 + 192));
    v2 = *(v0 + 80);
    if (v3)
    {
      v4 = v1;
      v5 = *(*(v0 + 160) + 56);
      v6 = type metadata accessor for WorkoutState(0);
      v7 = *(v6 - 8);
      sub_1B49D9F90(v5 + *(v7 + 72) * v4, v2, type metadata accessor for WorkoutState);

      (*(v7 + 56))(v2, 0, 1, v6);
    }

    else
    {

      v10 = type metadata accessor for WorkoutState(0);
      (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
    }
  }

  else
  {
    v8 = *(v0 + 80);

    v9 = type metadata accessor for WorkoutState(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_1B49CF014;
  v12 = *(v0 + 152);
  v13 = *(v0 + 128);
  v14 = *(v0 + 136);
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);

  return sub_1B4BE4ED0((v0 + 56), v12, v15, v16, v13, v14);
}

uint64_t sub_1B49CF014(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[10];
  if (v1)
  {
    sub_1B4975024(v5, &qword_1EB8A6A98, &unk_1B4D1CBE0);

    v6 = sub_1B49CF4A4;
  }

  else
  {
    v4[23] = a1;
    sub_1B4975024(v5, &qword_1EB8A6A98, &unk_1B4D1CBE0);

    v6 = sub_1B49CF18C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B49CF18C()
{
  v33 = v0;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7498, &qword_1B4D1E2B0);
  v1 = sub_1B4D18A7C();

  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = sub_1B4D17F6C();
  __swift_project_value_buffer(v6, qword_1EDC3CED0);
  (*(v4 + 16))(v3, v2, v5);
  v7 = sub_1B4D17F5C();
  v8 = sub_1B4D1873C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[17];
    v10 = v0[14];
    v12 = v0[12];
    v11 = v0[13];
    v29 = v0[11];
    v30 = v0[15];
    v31 = v1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315394;
    v0[5] = swift_getMetatypeMetadata();
    v0[6] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74A0, &qword_1B4D1E2B8);
    v15 = sub_1B4D181CC();
    v17 = sub_1B49558AC(v15, v16, &v32);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v11, v29);
    v20(v10, v29);
    *(v13 + 14) = v19;
    _os_log_impl(&dword_1B4953000, v7, v8, "[WorkoutVoiceSession] Analyzed %s in %fs", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B8C7DDA0](v14, -1, -1);
    v21 = v13;
    v1 = v31;
    MEMORY[0x1B8C7DDA0](v21, -1, -1);

    v20(v30, v29);
  }

  else
  {
    v22 = v0[14];
    v23 = v0[15];
    v24 = v0[11];
    v25 = v0[12];

    v26 = *(v25 + 8);
    v26(v22, v24);
    v26(v23, v24);
  }

  v27 = v0[1];

  return v27(v1);
}

uint64_t sub_1B49CF4A4()
{
  (*(v0[12] + 8))(v0[15], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B49CF548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B49CF56C, 0, 0);
}

uint64_t sub_1B49CF56C()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    *(v0 + 64) = MEMORY[0x1E69E7CC0];
    *(v0 + 72) = 0;
    *(v0 + 16) = *(v1 + 32);
    v8 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_1B49CF6C8;

    return v8(v0 + 16);
  }

  else
  {
    v6 = *(v0 + 8);
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }
}

uint64_t sub_1B49CF6C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {

    v4 = sub_1B49DA360;
  }

  else
  {
    v4 = sub_1B49CF7E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B49CF7E4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  if (!v1)
  {
    goto LABEL_15;
  }

  v3 = *(v1 + 16);
  v4 = v2[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_23;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 64);
  if (isUniquelyReferenced_nonNull_native && v5 <= v2[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v10 = v4 + v3;
    }

    else
    {
      v10 = v4;
    }

    v2 = sub_1B4A1DA24(isUniquelyReferenced_nonNull_native, v10, 1, *(v0 + 64));
    if (*(v1 + 16))
    {
LABEL_6:
      if ((v2[3] >> 1) - v2[2] >= v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7498, &qword_1B4D1E2B0);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_15;
        }

        v7 = v2[2];
        v8 = __OFADD__(v7, v3);
        v9 = v7 + v3;
        if (!v8)
        {
          v2[2] = v9;
          goto LABEL_15;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  if (v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  v11 = *(v0 + 72) + 1;
  if (v11 == *(v0 + 56))
  {
    v12 = *(v0 + 8);

    v12(v2);
  }

  else
  {
    *(v0 + 64) = v2;
    *(v0 + 72) = v11;
    v13 = *(v0 + 32);
    *(v0 + 16) = *(*(v0 + 48) + 16 * v11 + 32);
    v15 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 80) = v14;
    *v14 = v0;
    v14[1] = sub_1B49CF6C8;

    v15(v0 + 16);
  }
}

uint64_t sub_1B49CFA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B49CFA54, 0, 0);
}

uint64_t sub_1B49CFA54()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    *(v0 + 64) = MEMORY[0x1E69E7CC0];
    *(v0 + 72) = 0;
    *(v0 + 16) = *(v1 + 32);
    v8 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_1B49CFBB0;

    return v8(v0 + 16);
  }

  else
  {
    v6 = *(v0 + 8);
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }
}

uint64_t sub_1B49CFBB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {

    v4 = sub_1B49CFF08;
  }

  else
  {
    v4 = sub_1B49CFCCC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B49CFCCC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  if (!v1)
  {
    goto LABEL_15;
  }

  v3 = *(v1 + 16);
  v4 = *(v2 + 2);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_23;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 64);
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v2 + 3) >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v10 = v4 + v3;
    }

    else
    {
      v10 = v4;
    }

    v2 = sub_1B4A1EC78(isUniquelyReferenced_nonNull_native, v10, 1, *(v0 + 64));
    if (*(v1 + 16))
    {
LABEL_6:
      if ((*(v2 + 3) >> 1) - *(v2 + 2) >= v3)
      {
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_15;
        }

        v7 = *(v2 + 2);
        v8 = __OFADD__(v7, v3);
        v9 = v7 + v3;
        if (!v8)
        {
          *(v2 + 2) = v9;
          goto LABEL_15;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  if (v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  v11 = *(v0 + 72) + 1;
  if (v11 == *(v0 + 56))
  {
    v12 = *(v0 + 8);

    v12(v2);
  }

  else
  {
    *(v0 + 64) = v2;
    *(v0 + 72) = v11;
    v13 = *(v0 + 32);
    *(v0 + 16) = *(*(v0 + 48) + 16 * v11 + 32);
    v15 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 80) = v14;
    *v14 = v0;
    v14[1] = sub_1B49CFBB0;

    v15(v0 + 16);
  }
}

uint64_t sub_1B49CFF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 108) = *(a2 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1B49CFF4C, v3, 0);
}

uint64_t sub_1B49CFF4C()
{
  v1 = *(v0 + 108);
  if (v1 <= 1)
  {
    if (*(v0 + 108))
    {
      *(v0 + 106) = 1;
      v2 = (v0 + 106);
      v3 = swift_task_alloc();
      *(v0 + 56) = v3;
      *v3 = v0;
      v4 = sub_1B49D0270;
    }

    else
    {
      *(v0 + 107) = 0;
      v2 = (v0 + 107);
      v3 = swift_task_alloc();
      *(v0 + 40) = v3;
      *v3 = v0;
      v4 = sub_1B49D013C;
    }

LABEL_12:
    v3[1] = v4;
    v8 = *(v0 + 24);
    v9 = *(v0 + 16);

    return sub_1B49CD874(v9, v2, v8);
  }

  if (v1 == 2)
  {
    *(v0 + 105) = 2;
    v2 = (v0 + 105);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v4 = sub_1B49D03A4;
    goto LABEL_12;
  }

  if (v1 == 3)
  {
    *(v0 + 104) = 3;
    v2 = (v0 + 104);
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v4 = sub_1B49D04D8;
    goto LABEL_12;
  }

  v5 = *(v0 + 16);
  v5[1] = 0u;
  v5[2] = 0u;
  *v5 = 0u;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B49D013C()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD82C, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B49D0270()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD844, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B49D03A4()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD85C, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B49D04D8()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1B49D060C, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B49D0624(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v4 + 440) = a1;
  *(v4 + 448) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = type metadata accessor for InferenceResult(0);
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  sub_1B4D179BC();
  *(v4 + 504) = swift_task_alloc();
  v7 = sub_1B4D1777C();
  *(v4 + 512) = v7;
  *(v4 + 520) = *(v7 - 8);
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 156) = *a2;
  *(v4 + 552) = *(a2 + 8);
  *(v4 + 157) = *(a2 + 16);
  *(v4 + 560) = *(a2 + 24);
  *(v4 + 576) = *(a2 + 40);
  v8 = a3[1];
  *(v4 + 584) = *a3;
  *(v4 + 600) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B49D0800, v3, 0);
}

uint64_t sub_1B49D0800()
{
  v75 = v0;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  *(v0 + 616) = __swift_project_value_buffer(v1, qword_1EDC3CED0);

  v2 = sub_1B4D17F5C();
  v3 = sub_1B4D1873C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 156);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v69 = v6;
    *v5 = 136315138;
    *(v0 + 155) = v4;
    v7 = sub_1B4D181AC();
    v9 = sub_1B49558AC(v7, v8, &v69);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B4953000, v2, v3, "[WorkoutVoiceSession] Announcing %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B8C7DDA0](v6, -1, -1);
    MEMORY[0x1B8C7DDA0](v5, -1, -1);
  }

  v10 = *(v0 + 560);
  v11 = *(v0 + 156);
  v12 = *(v0 + 504);
  v13 = *(v0 + 448);
  sub_1B4D1776C();
  v14 = *(v13 + 216);
  sub_1B4D179AC();
  type metadata accessor for PromptFormatter(0);
  swift_allocObject();
  v15 = PromptFormatter.init(unitManager:timeZone:)(v14, v12);
  *(v0 + 624) = v15;
  v16 = sub_1B4C6E9B0(v10, v15);
  v18 = v17;
  v19 = *(v0 + 157);
  v20 = *(v0 + 552);
  v66 = v16;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v21 = sub_1B49C9238(v20, v19, v16, v18);
    }

    else
    {
      v21 = sub_1B4C64110(v20, v19, v16, v18);
    }
  }

  else if (v11)
  {
    v21 = sub_1B49DA600(v20, v19, v16, v18);
  }

  else
  {
    v21 = sub_1B49DD038(v20, v19, v16, v18);
  }

  v23 = v21;
  v24 = v22;
  v25 = *(v0 + 448);
  swift_beginAccess();
  v69 = *(v25 + 128);

  v26 = sub_1B4CD17C0();
  v28 = v27;

  v69 = v26;
  v70 = v28;

  MEMORY[0x1B8C7C620](v23, v24);

  v64 = v70;
  v65 = v69;
  swift_beginAccess();
  v29 = *(v25 + 128);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + 128) = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_1B4A1E1FC(0, *(v29 + 2) + 1, 1, v29);
    *(v25 + 128) = v29;
  }

  v32 = *(v29 + 2);
  v31 = *(v29 + 3);
  v33 = v32 + 1;
  v34 = v18;
  if (v32 >= v31 >> 1)
  {
    v59 = sub_1B4A1E1FC((v31 > 1), v32 + 1, 1, v29);
    v33 = v32 + 1;
    v29 = v59;
  }

  v35 = *(v0 + 576);
  v36 = *(v0 + 157);
  v37 = *(v0 + 552);
  v38 = *(v0 + 156);
  v39 = &v29[24 * v32];
  v61 = *(v0 + 584);
  v62 = *(v0 + 560);
  v60 = *(v0 + 600);
  *(v29 + 2) = v33;
  v39[32] = 1;
  *(v39 + 5) = v66;
  *(v39 + 6) = v34;
  *(v25 + 128) = v29;
  swift_endAccess();

  LOBYTE(v69) = v38;
  v70 = v37;
  v71 = v36;
  v72 = v62;
  v73 = v35;
  v74[1] = v60;
  v74[0] = v61;
  sub_1B49D1D08(&v69, v74, v0 + 304);
  v63 = *(v0 + 320);
  v67 = *(v0 + 304);
  v40 = *&aIntro_0[8 * v38];
  v41 = *(v0 + 336);
  v42 = *&aBreakthr[8 * v38 + 8];
  v43 = *(v0 + 576);
  v44 = qword_1EB8A6498;

  if (v44 != -1)
  {
    swift_once();
    v43 = *(v0 + 576);
  }

  v45 = *(v0 + 568);
  v46 = *(v0 + 448);
  v48 = qword_1EB8AC698;
  v47 = unk_1EB8AC6A0;

  v49 = sub_1B4BC2B00();
  *(v0 + 16) = v65;
  *(v0 + 24) = v64;
  *(v0 + 32) = v67;
  *(v0 + 48) = v63;
  *(v0 + 64) = v41;
  *(v0 + 72) = v48;
  *(v0 + 80) = v47;
  *(v0 + 88) = xmmword_1B4D1E130;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = v40;
  *(v0 + 128) = v42;
  *(v0 + 136) = v45;
  *(v0 + 144) = v43;
  *(v0 + 152) = v49 & 1;
  v50 = v46[25];
  v51 = v46[26];
  __swift_project_boxed_opaque_existential_1(v46 + 22, v50);
  v52 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v52;
  *(v0 + 281) = *(v0 + 137);
  v53 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v53;
  v54 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v54;
  v55 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v55;
  v68 = (*(v51 + 8) + **(v51 + 8));
  v56 = swift_task_alloc();
  *(v0 + 632) = v56;
  *v56 = v0;
  v56[1] = sub_1B49D0DC4;
  v57 = *(v0 + 440);

  return v68(v57, v0 + 160, v50, v51);
}

uint64_t sub_1B49D0DC4()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = *(v2 + 448);
    v4 = sub_1B49D15E4;
  }

  else
  {
    v5 = *(v2 + 448);
    sub_1B49D962C(v2 + 16);
    v4 = sub_1B49D0EEC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B49D0EEC()
{
  v74 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = v1[1];
  v68 = *v1;
  swift_beginAccess();
  v4 = *(v2 + 128);
  v70 = v3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 128) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v67 = *(v0 + 448);
    v4 = sub_1B4A1E1FC(0, *(v4 + 2) + 1, 1, v4);
    *(v67 + 128) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1B4A1E1FC((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  v10 = *(v0 + 520);
  v11 = *(v0 + 512);
  v12 = *(v0 + 448);
  *(v4 + 2) = v7 + 1;
  v13 = &v4[24 * v7];
  v13[32] = 0;
  *(v13 + 5) = v68;
  *(v13 + 6) = v70;
  *(v12 + 128) = v4;
  swift_endAccess();
  (*(v10 + 16))(v9, v8, v11);

  v14 = sub_1B4D17F5C();
  v15 = sub_1B4D1873C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 156);
    v71 = *(v0 + 536);
    v17 = *(v0 + 528);
    v18 = *(v0 + 520);
    v19 = *(v0 + 512);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v73 = v21;
    *v20 = 136315394;
    *(v0 + 154) = v16;
    v22 = sub_1B4D181AC();
    v24 = sub_1B49558AC(v22, v23, &v73);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v26 = v25;
    v27 = *(v18 + 8);
    v27(v17, v19);
    v27(v71, v19);
    *(v20 + 14) = v26;
    _os_log_impl(&dword_1B4953000, v14, v15, "[WorkoutVoiceSession] Announced %s in %fs", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1B8C7DDA0](v21, -1, -1);
    MEMORY[0x1B8C7DDA0](v20, -1, -1);
  }

  else
  {
    v28 = *(v0 + 536);
    v29 = *(v0 + 520);
    v30 = *(v0 + 512);

    v27 = *(v29 + 8);
    v27(v28, v30);
  }

  v31 = *(v0 + 488);
  v32 = *(v0 + 480);
  v33 = *(v0 + 440);
  sub_1B49D9F90(v33, *(v0 + 496), type metadata accessor for InferenceResult);
  sub_1B49D9F90(v33, v31, type metadata accessor for InferenceResult);
  sub_1B49D9F90(v33, v32, type metadata accessor for InferenceResult);

  v34 = sub_1B4D17F5C();
  v35 = sub_1B4D1873C();

  if (os_log_type_enabled(v34, v35))
  {
    v72 = v27;
    v36 = *(v0 + 156);
    v37 = *(v0 + 488);
    v38 = *(v0 + 496);
    v40 = *(v0 + 464);
    v39 = *(v0 + 472);
    v41 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v73 = v69;
    *v41 = 136315906;
    *(v0 + 153) = v36;
    v42 = sub_1B4D181AC();
    v44 = sub_1B49558AC(v42, v43, &v73);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2048;
    v45 = *(v38 + 16);
    sub_1B49DA04C(v38, type metadata accessor for InferenceResult);
    *(v41 + 14) = v45;
    *(v41 + 22) = 2048;
    sub_1B4974FBC(v37 + *(v39 + 24), v40, &qword_1EB8A6948, qword_1B4D1E1C0);
    sub_1B49DA04C(v37, type metadata accessor for InferenceResult);
    v46 = type metadata accessor for AnnounceUtteranceResult(0);
    v47 = *(*(v46 - 8) + 48);
    v48 = v47(v40, 1, v46);
    v49 = *(v0 + 464);
    if (v48 == 1)
    {
      sub_1B4975024(v49, &qword_1EB8A6948, qword_1B4D1E1C0);
      v50 = 0;
    }

    else
    {
      v50 = *v49;
      sub_1B49DA04C(v49, type metadata accessor for AnnounceUtteranceResult);
    }

    v58 = *(v0 + 480);
    v59 = *(v0 + 456);
    *(v41 + 24) = v50;
    *(v41 + 32) = 2048;
    sub_1B4974FBC(v58 + *(v39 + 24), v59, &qword_1EB8A6948, qword_1B4D1E1C0);
    sub_1B49DA04C(v58, type metadata accessor for InferenceResult);
    v60 = v47(v59, 1, v46);
    v61 = *(v0 + 456);
    if (v60 == 1)
    {
      sub_1B4975024(v61, &qword_1EB8A6948, qword_1B4D1E1C0);
      v62 = 0;
    }

    else
    {
      v62 = *(v61 + 24);
      sub_1B49DA04C(v61, type metadata accessor for AnnounceUtteranceResult);
    }

    v27 = v72;
    v63 = *(v0 + 544);
    v64 = *(v0 + 512);
    *(v41 + 34) = v62;
    _os_log_impl(&dword_1B4953000, v34, v35, "[WorkoutVoiceSession] Statistics for %s: inference=%fs, synthesis=%fs, playback=%fs", v41, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x1B8C7DDA0](v69, -1, -1);
    MEMORY[0x1B8C7DDA0](v41, -1, -1);

    v56 = v63;
    v57 = v64;
  }

  else
  {
    v51 = *(v0 + 544);
    v52 = *(v0 + 512);
    v54 = *(v0 + 488);
    v53 = *(v0 + 496);
    v55 = *(v0 + 480);

    sub_1B49DA04C(v55, type metadata accessor for InferenceResult);
    sub_1B49DA04C(v54, type metadata accessor for InferenceResult);
    sub_1B49DA04C(v53, type metadata accessor for InferenceResult);
    v56 = v51;
    v57 = v52;
  }

  v27(v56, v57);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1B49D15E4()
{
  v1 = v0[80];
  sub_1B49D962C((v0 + 2));
  v2 = v1;
  v3 = sub_1B4D17F5C();
  v4 = sub_1B4D1871C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[80];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B4953000, v3, v4, "Inference failed: %@", v6, 0xCu);
    sub_1B4975024(v7, &qword_1EB8A7478, &qword_1B4D1F190);
    MEMORY[0x1B8C7DDA0](v7, -1, -1);
    MEMORY[0x1B8C7DDA0](v6, -1, -1);
  }

  v10 = v0[56];

  swift_beginAccess();
  v11 = *(v10 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 128) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = v0[56];
    v11 = sub_1B4A1E1FC(0, *(v11 + 2) + 1, 1, v11);
    *(v22 + 128) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1B4A1E1FC((v13 > 1), v14 + 1, 1, v11);
  }

  v15 = v0[68];
  v16 = v0[65];
  v17 = v0[64];
  v18 = v0[56];
  *(v11 + 2) = v14 + 1;
  v19 = &v11[24 * v14];
  v19[32] = 0;
  strcpy(v19 + 40, "No response.");
  v19[53] = 0;
  *(v19 + 27) = -5120;
  *(v18 + 128) = v11;
  swift_endAccess();
  swift_willThrow();

  (*(v16 + 8))(v15, v17);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B49D18B0(uint64_t a1)
{
  *(v2 + 32) = v1;
  *(v2 + 82) = *a1;
  *(v2 + 40) = *(a1 + 24);
  *(v2 + 56) = *(a1 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1B49D18E8, v1, 0);
}

uint64_t sub_1B49D18E8()
{
  v21 = v0;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);

  v2 = sub_1B4D17F5C();
  v3 = sub_1B4D1873C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 82);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    *(v0 + 81) = v6;
    v9 = sub_1B4D181AC();
    v11 = sub_1B49558AC(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1B49558AC(v5, v4, &v20);
    _os_log_impl(&dword_1B4953000, v2, v3, "[WorkoutVoiceSession] Cancelling announcement for %s (%s)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C7DDA0](v8, -1, -1);
    MEMORY[0x1B8C7DDA0](v7, -1, -1);
  }

  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v14 = *(v0 + 32);
  v15 = v14[25];
  v16 = v14[26];
  __swift_project_boxed_opaque_existential_1(v14 + 22, v15);
  *(v0 + 16) = v13;
  *(v0 + 24) = v12;
  v19 = (*(v16 + 16) + **(v16 + 16));
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  *v17 = v0;
  v17[1] = sub_1B49D1BB8;

  return v19(v0 + 80, v0 + 16, v15, v16);
}

uint64_t sub_1B49D1BB8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1B49D1CEC;
  }

  else
  {
    v4 = sub_1B49D1CD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1B49D1D08(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  if (v4 == 1)
  {
    *a3 = xmmword_1B4D1A640;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    return;
  }

  v5 = *a1;
  v6 = *a2;
  v7 = a2[2];
  v8 = a1[1] - 24;
  v9 = v8 > 0x2E;
  v10 = (1 << v8) & 0x400010000001;
  if (v9 || v10 == 0)
  {
    v12 = 2 * (v5 == 3);
  }

  else
  {
    v12 = v5 != 3;
  }

  v32 = v12;
  v33 = a2[3];
  sub_1B49B3D28(v6, v4, v7, v33);
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v13 = sub_1B4D17F6C();
  __swift_project_value_buffer(v13, qword_1EDC3CED0);

  v14 = sub_1B4D17F5C();
  v15 = sub_1B4D1873C();

  if (!os_log_type_enabled(v14, v15))
  {

    v27 = v32;
    goto LABEL_15;
  }

  v31 = v6;
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v34 = v17;
  *v16 = 136315650;
  v18 = sub_1B4D181AC();
  v20 = sub_1B49558AC(v18, v19, &v34);

  *(v16 + 4) = v20;
  *(v16 + 12) = 2080;
  v21 = FILocalizedNameForIndoorAgnosticActivityType();
  if (v21)
  {
    v22 = v21;
    v23 = sub_1B4D1818C();
    v25 = v24;

    v26 = sub_1B49558AC(v23, v25, &v34);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = v32;
    v28 = sub_1B4D181AC();
    v30 = sub_1B49558AC(v28, v29, &v34);

    *(v16 + 24) = v30;
    _os_log_impl(&dword_1B4953000, v14, v15, "[WorkoutVoiceSession] Announcing %s for workout type %s with intensity %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C7DDA0](v17, -1, -1);
    MEMORY[0x1B8C7DDA0](v16, -1, -1);

    v6 = v31;
LABEL_15:
    *a3 = v6;
    *(a3 + 8) = v4;
    *(a3 + 16) = v7;
    *(a3 + 24) = v33;
    *(a3 + 32) = v27;
    return;
  }

  __break(1u);
}

uint64_t sub_1B49D1FD4(_BYTE *a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  v5 = sub_1B4D1777C();
  *(v3 + 48) = v5;
  *(v3 + 56) = *(v5 - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = *(type metadata accessor for FitnessContextQueryRequest(0) - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 146) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B49D2124, v2, 0);
}

uint64_t sub_1B49D2124()
{
  v61 = v0;
  if (qword_1EDC3CEC8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_1B4D17F6C();
    *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EDC3CED0);
    v2 = sub_1B4D17F5C();
    v3 = sub_1B4D1873C();
    v58 = v0;
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 146);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v60[0] = v6;
      *v5 = 136315138;
      *(v0 + 145) = v4;
      v7 = sub_1B4D181AC();
      v9 = sub_1B49558AC(v7, v8, v60);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1B4953000, v2, v3, "[WorkoutVoiceSession] Fetching context for %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1B8C7DDA0](v6, -1, -1);
      MEMORY[0x1B8C7DDA0](v5, -1, -1);
    }

    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    LOBYTE(v60[0]) = *(v0 + 146);
    v10 = v60[0];
    v13 = sub_1B4A6A1F8(v60);
    v14 = swift_task_alloc();
    *(v14 + 16) = v11;
    *(v14 + 24) = v12;
    *(v14 + 32) = v10;
    v15 = sub_1B4CB3E98(sub_1B49D9F70, v14, v13);

    v17 = sub_1B4A03048(v15, v16);

    *(v0 + 16) = *(v11 + 112);

    v19 = sub_1B49D4BD8(v18, (v0 + 16));
    sub_1B49A9A10(v19, v20);
    if (v19[2] <= *(v17 + 16) >> 3)
    {
      v60[0] = v17;
      sub_1B49D31F8(v19);

      v21 = v60[0];
    }

    else
    {
      v21 = sub_1B49D3400(v19, v17);
    }

    *(v0 + 120) = v21;
    if (!*(v21 + 16))
    {
      break;
    }

    v22 = v21 + 56;
    v23 = *(v0 + 88);
    v55 = *(v0 + 96);
    v24 = -1;
    v25 = -1 << *(v21 + 32);
    if (-v25 < 64)
    {
      v24 = ~(-1 << -v25);
    }

    v26 = v24 & *(v21 + 56);
    v27 = (63 - v25) >> 6;

    v28 = 0;
    v56 = v21;
    v54 = v23;
    if (v26)
    {
      while (2)
      {
        v29 = v28;
LABEL_17:
        v31 = *(v0 + 96);
        v30 = *(v0 + 104);
        v32 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        sub_1B49D9F90(*(v21 + 48) + *(v23 + 72) * (v32 | (v29 << 6)), v30, type metadata accessor for FitnessContextQueryRequest);
        sub_1B49DA2F8(v30, v31, type metadata accessor for FitnessContextQueryRequest);
        v33 = sub_1B4D17F5C();
        v34 = sub_1B4D1873C();
        v35 = os_log_type_enabled(v33, v34);
        v36 = *(v0 + 96);
        if (v35)
        {
          v37 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v60[0] = v57;
          *v37 = 136315138;
          v38 = *v36;
          v39 = *(v55 + 8);

          sub_1B49DA04C(v36, type metadata accessor for FitnessContextQueryRequest);
          v40 = sub_1B49558AC(v38, v39, v60);
          v21 = v56;

          *(v37 + 4) = v40;
          v23 = v54;
          _os_log_impl(&dword_1B4953000, v33, v34, "[WorkoutVoiceSession] Found %s to query", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          MEMORY[0x1B8C7DDA0](v57, -1, -1);
          v41 = v37;
          v0 = v58;
          MEMORY[0x1B8C7DDA0](v41, -1, -1);

          v28 = v29;
          if (v26)
          {
            continue;
          }
        }

        else
        {

          sub_1B49DA04C(v36, type metadata accessor for FitnessContextQueryRequest);
          v28 = v29;
          if (v26)
          {
            continue;
          }
        }

        break;
      }
    }

    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {

        v42 = sub_1B4D17F5C();
        v43 = sub_1B4D1873C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 134217984;
          *(v44 + 4) = *(v21 + 16);

          _os_log_impl(&dword_1B4953000, v42, v43, "[WorkoutVoiceSession] Overall found %ld requests to query, requesting new context", v44, 0xCu);
          MEMORY[0x1B8C7DDA0](v44, -1, -1);
        }

        else
        {
        }

        v50 = *(v0 + 40);
        sub_1B4D1776C();
        v51 = v50[20];
        v52 = v50[21];
        __swift_project_boxed_opaque_existential_1(v50 + 17, v51);
        v59 = (*(v52 + 8) + **(v52 + 8));
        v53 = swift_task_alloc();
        *(v0 + 128) = v53;
        *v53 = v0;
        v53[1] = sub_1B49D2854;

        return v59(v0 + 24, v21, v51, v52);
      }

      v26 = *(v22 + 8 * v29);
      ++v28;
      if (v26)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  v45 = sub_1B4D17F5C();
  v46 = sub_1B4D1873C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1B4953000, v45, v46, "[WorkoutVoiceSession] Found no requests to query. Skipping context update", v47, 2u);
    MEMORY[0x1B8C7DDA0](v47, -1, -1);
  }

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1B49D2854()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 40);

  if (v0)
  {
    v4 = sub_1B49D2C50;
  }

  else
  {
    v4 = sub_1B49D299C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B49D299C()
{
  v33 = v0;
  v1 = *(v0 + 146);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v32 = *(v0 + 24);
  v7 = v32;
  v31 = v1;
  sub_1B49D9494(&v32, &v31);
  sub_1B49975EC(v7);
  *(v6 + 112) = *(v0 + 16);

  (*(v5 + 16))(v3, v2, v4);
  v8 = sub_1B4D17F5C();
  v9 = sub_1B4D1873C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 146);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v29 = *(v0 + 48);
    v30 = *(v0 + 80);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315394;
    *(v0 + 144) = v10;
    v16 = sub_1B4D181AC();
    v18 = sub_1B49558AC(v16, v17, &v32);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v29);
    v21(v11, v29);
    *(v14 + 14) = v20;
    _os_log_impl(&dword_1B4953000, v8, v9, "[WorkoutVoiceSession] Fetched context for %s in %fs", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B8C7DDA0](v15, -1, -1);
    MEMORY[0x1B8C7DDA0](v14, -1, -1);

    v21(v30, v29);
  }

  else
  {
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v24 = *(v0 + 48);
    v25 = *(v0 + 56);

    v26 = *(v25 + 8);
    v26(v23, v24);
    v26(v22, v24);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1B49D2C50()
{
  (*(v0[7] + 8))(v0[10], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B49D2D10@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a4;
  result = sub_1B49DA154(v8, a3, &v11, v8, v9);
  *a5 = result;
  return result;
}

uint64_t sub_1B49D2DB0@<X0>(uint64_t a1@<X1>, Swift::String *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = FitnessContextQueryIdentifier.makeQueryKey()();
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  result = sub_1B49D9F90(a1, a4 + *(Request + 20), type metadata accessor for FitnessContextQueryDescriptor);
  *a4 = v6;
  return result;
}

uint64_t sub_1B49D2E80(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for FitnessContextQueryDescriptor(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t WorkoutVoiceSession.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t WorkoutVoiceSession.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B49D3004@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = v3;
  v6 = sub_1B49E9EC4(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B498A3C8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for WorkoutMetadata(0);
    v19 = *(v12 - 8);
    sub_1B49DA2F8(v11 + *(v19 + 72) * v8, a1, type metadata accessor for WorkoutMetadata);
    sub_1B4B7FC18(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a1;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for WorkoutMetadata(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a1;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void *sub_1B49D3170(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1B49D6FC8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1B49D31F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74A8, &qword_1B4D1E2C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v7 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request - 8);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_1B49D9F90(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for FitnessContextQueryRequest);
      sub_1B49D3F0C(v9, v5);
      sub_1B49DA04C(v9, type metadata accessor for FitnessContextQueryRequest);
      sub_1B4975024(v5, &qword_1EB8A74A8, &qword_1B4D1E2C0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B49D3400(uint64_t a1, uint64_t a2)
{
  v105 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74A8, &qword_1B4D1E2C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v78 - v9;
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v11 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v13 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v95 = (&v78 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v78 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v92 = (&v78 - v20);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v83 = v7;
  v79 = 0;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v90 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v21;
  v84 = (63 - v23) >> 6;
  v89 = (v11 + 7);
  v88 = (v11 + 6);
  v97 = (a2 + 56);

  v27 = 0;
  v81 = v11;
  v87 = a1;
  v96 = Request;
  for (i = a2; ; a2 = i)
  {
    v28 = v25;
    v29 = v27;
    v98 = v25;
    v94 = v27;
    if (v25)
    {
LABEL_16:
      v33 = (v28 - 1) & v28;
      v34 = v80;
      sub_1B49D9F90(*(a1 + 48) + v11[9] * (__clz(__rbit64(v28)) | (v29 << 6)), v80, type metadata accessor for FitnessContextQueryRequest);
      v35 = 0;
      v31 = v29;
    }

    else
    {
      if (v84 <= v27 + 1)
      {
        v30 = v27 + 1;
      }

      else
      {
        v30 = v84;
      }

      v31 = v30 - 1;
      v32 = v27;
      while (1)
      {
        v29 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_67;
        }

        if (v29 >= v84)
        {
          break;
        }

        v28 = *(v22 + 8 * v29);
        ++v32;
        if (v28)
        {
          v11 = v81;
          goto LABEL_16;
        }
      }

      v33 = 0;
      v35 = 1;
      v34 = v80;
    }

    v86 = *v89;
    v86(v34, v35, 1, Request);
    v100 = a1;
    v101 = v22;
    v102 = v90;
    v103 = v31;
    v104 = v33;
    v85 = *v88;
    if (v85(v34, 1, Request) == 1)
    {
      sub_1B4975024(v34, &qword_1EB8A74A8, &qword_1B4D1E2C0);
      sub_1B49B75FC(a1);
      return a2;
    }

    v94 = v33;
    v36 = v92;
    sub_1B49DA2F8(v34, v92, type metadata accessor for FitnessContextQueryRequest);
    sub_1B4D18E8C();
    v37 = *v36;
    v38 = a2;
    v39 = v36[1];
    sub_1B4D1820C();
    v91 = *(Request + 20);
    FitnessContextQueryDescriptor.hash(into:)(v99);
    v40 = sub_1B4D18EDC();
    v41 = -1 << *(v38 + 32);
    v25 = v40 & ~v41;
    v2 = v25 >> 6;
    v29 = 1 << v25;
    if (((1 << v25) & v97[v25 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1B49DA04C(v92, type metadata accessor for FitnessContextQueryRequest);
    v27 = v31;
    v25 = v94;
    Request = v96;
    v11 = v81;
    a1 = v87;
  }

  v42 = ~v41;
  v98 = v81[9];
  while (1)
  {
    sub_1B49D9F90(*(i + 48) + v98 * v25, v18, type metadata accessor for FitnessContextQueryRequest);
    v43 = *v18 == v37 && v18[1] == v39;
    if (v43 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v18 + *(v96 + 20), v92 + v91))
    {
      break;
    }

    sub_1B49DA04C(v18, type metadata accessor for FitnessContextQueryRequest);
    v25 = (v25 + 1) & v42;
    v2 = v25 >> 6;
    v29 = 1 << v25;
    if ((v97[v25 >> 6] & (1 << v25)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_1B49DA04C(v18, type metadata accessor for FitnessContextQueryRequest);
  v44 = sub_1B49DA04C(v92, type metadata accessor for FitnessContextQueryRequest);
  a2 = i;
  v45 = *(i + 32);
  v80 = ((1 << v45) + 63) >> 6;
  v26 = 8 * v80;
  a1 = v87;
  if ((v45 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v81 = &v78;
    MEMORY[0x1EEE9AC00](v44);
    v47 = &v78 - ((v46 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v47, v97, v46);
    v48 = *&v47[8 * v2] & ~v29;
    v49 = *(a2 + 16);
    v92 = v47;
    *&v47[8 * v2] = v48;
    v50 = v49 - 1;
    v29 = v83;
    v25 = v96;
    v51 = v84;
    v52 = v94;
    v82 = v22;
LABEL_31:
    v91 = v50;
    while (v52)
    {
      v53 = v31;
LABEL_43:
      v56 = __clz(__rbit64(v52));
      v57 = (v52 - 1) & v52;
      sub_1B49D9F90(*(a1 + 48) + (v56 | (v53 << 6)) * v98, v29, type metadata accessor for FitnessContextQueryRequest);
      v58 = 0;
LABEL_44:
      v86(v29, v58, 1, v25);
      v100 = a1;
      v101 = v22;
      v102 = v90;
      v103 = v31;
      v104 = v57;
      if (v85(v29, 1, v25) == 1)
      {
        sub_1B4975024(v29, &qword_1EB8A74A8, &qword_1B4D1E2C0);
        a2 = sub_1B49D463C(v92, v80, v91, a2, v71);
        goto LABEL_62;
      }

      v94 = v57;
      v59 = v95;
      sub_1B49DA2F8(v29, v95, type metadata accessor for FitnessContextQueryRequest);
      sub_1B4D18E8C();
      v60 = *v59;
      v2 = v59[1];
      sub_1B4D1820C();
      v61 = *(v25 + 20);
      FitnessContextQueryDescriptor.hash(into:)(v99);
      v62 = sub_1B4D18EDC();
      v63 = a2;
      v64 = -1 << *(a2 + 32);
      v65 = v62 & ~v64;
      v66 = v65 >> 6;
      v67 = 1 << v65;
      if (((1 << v65) & v97[v65 >> 6]) != 0)
      {
        v68 = ~v64;
        while (1)
        {
          sub_1B49D9F90(*(v63 + 48) + v65 * v98, v13, type metadata accessor for FitnessContextQueryRequest);
          v69 = *v13 == v60 && v13[1] == v2;
          if (v69 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v13 + *(v96 + 20), v95 + v61))
          {
            break;
          }

          sub_1B49DA04C(v13, type metadata accessor for FitnessContextQueryRequest);
          v65 = (v65 + 1) & v68;
          v66 = v65 >> 6;
          v67 = 1 << v65;
          if ((v97[v65 >> 6] & (1 << v65)) == 0)
          {
            goto LABEL_32;
          }
        }

        sub_1B49DA04C(v13, type metadata accessor for FitnessContextQueryRequest);
        sub_1B49DA04C(v95, type metadata accessor for FitnessContextQueryRequest);
        v70 = v92[v66];
        v92[v66] = v70 & ~v67;
        v43 = (v70 & v67) == 0;
        a2 = v63;
        a1 = v87;
        v22 = v82;
        v29 = v83;
        v25 = v96;
        v51 = v84;
        v52 = v94;
        if (!v43)
        {
          v50 = v91 - 1;
          if (__OFSUB__(v91, 1))
          {
            __break(1u);
          }

          if (v91 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_31;
        }
      }

      else
      {
LABEL_32:
        sub_1B49DA04C(v95, type metadata accessor for FitnessContextQueryRequest);
        a2 = v63;
        a1 = v87;
        v22 = v82;
        v29 = v83;
        v25 = v96;
        v51 = v84;
        v52 = v94;
      }
    }

    v54 = v51 <= v31 + 1 ? v31 + 1 : v51;
    v55 = v54 - 1;
    while (1)
    {
      v53 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v53 >= v51)
      {
        v57 = 0;
        v58 = 1;
        v31 = v55;
        goto LABEL_44;
      }

      v52 = *(v22 + 8 * v53);
      ++v31;
      if (v52)
      {
        v31 = v53;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v73 = v26;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v74 = swift_slowAlloc();
  memcpy(v74, v97, v73);
  v75 = v79;
  sub_1B49D41A4(v74, v80, a2, v25, &v100);
  v77 = v76;

  if (!v75)
  {

    MEMORY[0x1B8C7DDA0](v74, -1, -1);
    a1 = v100;
    v90 = v102;
    a2 = v77;
LABEL_62:
    sub_1B49B75FC(a1);
    return a2;
  }

  result = MEMORY[0x1B8C7DDA0](v74, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B49D3F0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v27 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v3;
  v8 = *v3;
  sub_1B4D18E8C();
  v9 = *a1;
  v10 = a1[1];
  sub_1B4D1820C();
  v28 = a1;
  v29 = Request;
  v11 = *(Request + 20);
  FitnessContextQueryDescriptor.hash(into:)(v30);
  v12 = sub_1B4D18EDC();
  v13 = -1 << *(v8 + 32);
  v14 = v12 & ~v13;
  if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return (*(v27 + 56))(v26, 1, 1, v29);
  }

  v15 = ~v13;
  v16 = *(v27 + 72);
  while (1)
  {
    sub_1B49D9F90(*(v8 + 48) + v16 * v14, v7, type metadata accessor for FitnessContextQueryRequest);
    v17 = *v7 == v9 && v7[1] == v10;
    if (v17 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v7 + *(v29 + 20), v28 + v11))
    {
      break;
    }

    sub_1B49DA04C(v7, type metadata accessor for FitnessContextQueryRequest);
    v14 = (v14 + 1) & v15;
    if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return (*(v27 + 56))(v26, 1, 1, v29);
    }
  }

  sub_1B49DA04C(v7, type metadata accessor for FitnessContextQueryRequest);
  v19 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v19;
  v30[0] = *v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B4A00884(v21);
    v22 = v30[0];
  }

  v23 = v26;
  sub_1B49DA2F8(*(v22 + 48) + v16 * v14, v26, type metadata accessor for FitnessContextQueryRequest);
  sub_1B49D4920(v14, v24);
  *v19 = v30[0];
  return (*(v27 + 56))(v23, 0, 1, v29);
}

void sub_1B49D41A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v49 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74A8, &qword_1B4D1E2C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  MEMORY[0x1EEE9AC00](Request);
  v13 = (&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v58 = (&v49 - v15);
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v51 = a1;
  v52 = v11;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v55 = (v20 + 56);
  v56 = v20;
  v53 = a5;
  v54 = (v20 + 48);
  v61 = a3;
  v59 = a3 + 56;
  while (2)
  {
    v50 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_1B49D9F90(*(v21 + 48) + *(v56 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, type metadata accessor for FitnessContextQueryRequest);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = Request;
        (*v55)(v11, v31, 1, Request);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v54)(v11, 1, v32) == 1)
        {
          sub_1B4975024(v11, &qword_1EB8A74A8, &qword_1B4D1E2C0);
          v47 = v61;

          sub_1B49D463C(v51, v49, v50, v47, v48);
          return;
        }

        v33 = v58;
        sub_1B49DA2F8(v11, v58, type metadata accessor for FitnessContextQueryRequest);
        v34 = v61;
        sub_1B4D18E8C();
        v35 = *v33;
        v36 = v33[1];
        sub_1B4D1820C();
        v37 = *(v32 + 20);
        FitnessContextQueryDescriptor.hash(into:)(v60);
        v38 = sub_1B4D18EDC();
        v39 = -1 << *(v34 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v59 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_1B49DA04C(v58, type metadata accessor for FitnessContextQueryRequest);
        v11 = v52;
        a5 = v53;
      }

      v43 = ~v39;
      v44 = *(v56 + 72);
      while (1)
      {
        sub_1B49D9F90(*(v61 + 48) + v44 * v40, v13, type metadata accessor for FitnessContextQueryRequest);
        v45 = *v13 == v35 && v13[1] == v36;
        if (v45 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v13 + *(Request + 20), v58 + v37))
        {
          break;
        }

        sub_1B49DA04C(v13, type metadata accessor for FitnessContextQueryRequest);
        v40 = (v40 + 1) & v43;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if ((*(v59 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_1B49DA04C(v13, type metadata accessor for FitnessContextQueryRequest);
      sub_1B49DA04C(v58, type metadata accessor for FitnessContextQueryRequest);
      v11 = v52;
      v46 = v51[v41];
      v51[v41] = v46 & ~v42;
      a5 = v53;
    }

    while ((v46 & v42) == 0);
    v19 = v50 - 1;
    if (__OFSUB__(v50, 1))
    {
LABEL_33:
      __break(1u);
      return;
    }

    if (v50 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1B49D463C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v32 = *(Request - 8);
  v33 = Request;
  MEMORY[0x1EEE9AC00](Request);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B0, &qword_1B4D1E2C8);
  result = sub_1B4D1892C();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v31 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v21 = *(v32 + 72);
    sub_1B49D9F90(v20 + v21 * (v17 | (v15 << 6)), v11, type metadata accessor for FitnessContextQueryRequest);
    sub_1B4D18E8C();
    sub_1B4D1820C();
    FitnessContextQueryDescriptor.hash(into:)(v34);
    result = sub_1B4D18EDC();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_1B49DA2F8(v11, *(v12 + 48) + v25 * v21, type metadata accessor for FitnessContextQueryRequest);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1B49D4920(int64_t a1, double a2)
{
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v5 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = *v2 + 56;
  v10 = -1 << *(*v2 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1B4D188EC();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v23 = v9;
      v14 = (v13 + 1) & v12;
      v15 = *(v5 + 72);
      while (1)
      {
        v16 = v15 * v11;
        sub_1B49D9F90(*(v8 + 48) + v15 * v11, v7, type metadata accessor for FitnessContextQueryRequest);
        sub_1B4D18E8C();
        sub_1B4D1820C();
        FitnessContextQueryDescriptor.hash(into:)(v24);
        v17 = sub_1B4D18EDC();
        sub_1B49DA04C(v7, type metadata accessor for FitnessContextQueryRequest);
        v18 = v17 & v12;
        if (a1 >= v14)
        {
          break;
        }

        if (v18 < v14)
        {
          goto LABEL_11;
        }

LABEL_12:
        v19 = v15 * a1;
        if (v15 * a1 < v16 || *(v8 + 48) + v15 * a1 >= (*(v8 + 48) + v16 + v15))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v11;
          if (v19 == v16)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v11;
LABEL_6:
        v11 = (v11 + 1) & v12;
        if (((*(v23 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          v9 = v23;
          goto LABEL_19;
        }
      }

      if (v18 < v14)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v18)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_19:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(v8 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v22;
    ++*(v8 + 36);
  }
}

void *sub_1B49D4BD8(unint64_t a1, void *a2)
{
  v3 = v2;
  v184 = a2;
  v214 = *MEMORY[0x1E69E9840];
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = v164 - v6;
  v188 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v188);
  v187 = v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v186 = v164 - v9;
  v180 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v180);
  v198 = v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v199 = v164 - v12;
  v176 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v176);
  v194 = v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v164 - v15;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v18 = v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v201 = v164 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v164 - v22;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7300, &unk_1B4D1D7A0);
  MEMORY[0x1EEE9AC00](v200);
  v25 = v164 - v24;
  v26 = type metadata accessor for FitnessContextQueryResult(0);
  v203 = *(v26 - 8);
  v204 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v210 = v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v183 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v208 = v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v29) = *(a1 + 32);
  v165 = ((1 << v29) + 63) >> 6;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_361;
  }

LABEL_2:
  v164[2] = v3;
  v164[1] = v164;
  MEMORY[0x1EEE9AC00](v28);
  v175 = v164 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v175, v30);
  v181 = 0;
  v32 = 0;
  v33 = *(a1 + 56);
  v174 = a1 + 56;
  v34 = 1 << *(a1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v173 = (v34 + 63) >> 6;
  v185 = (v5 + 8);
  v193 = v16;
  v182 = a1;
  v196 = v18;
  v195 = v23;
  v211 = v25;
  while (1)
  {
    while (1)
    {
      if (v36)
      {
        v191 = (v36 - 1) & v36;
        v192 = v32;
        v5 = __clz(__rbit64(v36)) | (v32 << 6);
      }

      else
      {
        v37 = v32;
        do
        {
          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_360;
          }

          if (v38 >= v173)
          {
            return sub_1B49D463C(v175, v165, v181, a1, v31);
          }

          v39 = *(v174 + 8 * v38);
          ++v37;
        }

        while (!v39);
        v191 = (v39 - 1) & v39;
        v192 = v38;
        v5 = __clz(__rbit64(v39)) | (v38 << 6);
      }

      sub_1B49D9F90(*(a1 + 48) + *(v183 + 72) * v5, v208, type metadata accessor for FitnessContextQueryRequest);
      v40 = *(*v184 + 16);

      v206 = v40;
      if (v40)
      {
        break;
      }

LABEL_5:

      sub_1B49DA04C(v208, type metadata accessor for FitnessContextQueryRequest);
      a1 = v182;
      v32 = v192;
      v36 = v191;
    }

    v179 = v5;
    v42 = 0;
    v23 = v200;
    v205 = v41;
LABEL_17:
    if (v42 >= *(v41 + 16))
    {
      __break(1u);
LABEL_360:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_361:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        goto LABEL_364;
      }

      goto LABEL_2;
    }

    v52 = v41 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
    v53 = *(v203 + 72);
    v209 = v42;
    v54 = v210;
    sub_1B49D9F90(v52 + v53 * v42, v210, type metadata accessor for FitnessContextQueryResult);
    v3 = *(v204 + 20);
    a1 = *(Request + 20);
    v55 = *(v23 + 12);
    v56 = v54 + v3;
    v25 = v211;
    sub_1B49D9F90(v56, v211, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B49D9F90(v208 + a1, &v25[v55], type metadata accessor for FitnessContextQueryDescriptor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 9)
    {
      break;
    }

    v25 = v211;
    v18 = v196;
    sub_1B49D9F90(v211, v196, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload() != 9)
    {
      v67 = type metadata accessor for LocationCoordinate;
      v68 = v18;
      goto LABEL_103;
    }

    v43 = v186;
    sub_1B49DA2F8(v18, v186, type metadata accessor for LocationCoordinate);
    v44 = v187;
    sub_1B49DA2F8(&v25[v55], v187, type metadata accessor for LocationCoordinate);
    v45 = v188;
    v46 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v43 + *(v188 + 20)) longitude:*(v43 + *(v188 + 24))];
    v3 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v44 + *(v45 + 20)) longitude:*(v44 + *(v45 + 24))];
    [v46 distanceFromLocation_];
    a1 = [objc_opt_self() meters];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v47 = v189;
    sub_1B4D1741C();

    v5 = v190;
    sub_1B4D1742C();
    v49 = v48;
    v50 = v47;
    v16 = v193;
    (*v185)(v50, v5);
    v51 = v44;
    v23 = v200;
    sub_1B49DA04C(v51, type metadata accessor for LocationCoordinate);
    sub_1B49DA04C(v43, type metadata accessor for LocationCoordinate);
    sub_1B49DA04C(v25, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B49DA04C(v210, type metadata accessor for FitnessContextQueryResult);
    if (v49 >= 500.0)
    {
      goto LABEL_16;
    }

LABEL_355:

    sub_1B49DA04C(v208, type metadata accessor for FitnessContextQueryRequest);
    *&v175[(v179 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v179;
    v160 = __OFADD__(v181++, 1);
    a1 = v182;
    v32 = v192;
    v36 = v191;
    if (v160)
    {
      __break(1u);
      return sub_1B49D463C(v175, v165, v181, a1, v31);
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_104:
      v5 = v210;
      DescriptorO2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v210 + v3, v208 + a1);
      sub_1B4975024(v211, &qword_1EB8A7300, &unk_1B4D1D7A0);
      v80 = v5;
LABEL_105:
      sub_1B49DA04C(v80, type metadata accessor for FitnessContextQueryResult);
      if ((DescriptorO2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_355;
    }

    v25 = v211;
    v58 = v195;
    sub_1B49D9F90(v211, v195, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B49DA04C(v58, type metadata accessor for WorkoutPropertiesQuery);
      v23 = v200;
      goto LABEL_104;
    }

    sub_1B49DA2F8(v58, v16, type metadata accessor for WorkoutPropertiesQuery);
    v81 = &v25[v55];
    v5 = v194;
    sub_1B49DA2F8(v81, v194, type metadata accessor for WorkoutPropertiesQuery);
    if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v16, v5) & 1) == 0)
    {
      v23 = v200;
      goto LABEL_277;
    }

    v82 = *(v176 + 20);
    v83 = &v16[v82];
    v84 = *&v16[v82];
    v85 = (v194 + v82);
    v25 = *v85;
    v197 = v84;
    v86 = *(v84 + 16);
    v23 = v200;
    if (v86 != *(v25 + 2))
    {
      goto LABEL_277;
    }

    v87 = *(v83 + 1);
    v88 = *(v83 + 2);
    a1 = *(v83 + 3);
    v89 = *(v83 + 4);
    v166 = *(v83 + 5);
    v91 = v85[1];
    v90 = v85[2];
    v3 = v85[3];
    v178 = v85[4];
    v177 = v85[5];
    v171 = v88;
    v168 = v91;
    v167 = v90;
    v172 = v3;
    v169 = a1;
    v170 = v89;
    if (v86)
    {

      v164[0] = v87;

      v18 = v166;

      if (v197 != v25)
      {
        v5 = 32;
        v87 = v164[0];
        while (1)
        {
          v92 = *(v197 + v5);
          if (v92 > 5)
          {
            if (*(v197 + v5) > 8u)
            {
              v98 = 0x7265626D65766F6ELL;
              if (v92 != 10)
              {
                v98 = 0x7265626D65636564;
              }

              if (v92 == 9)
              {
                v97 = 0x7265626F74636FLL;
              }

              else
              {
                v97 = v98;
              }

              if (v92 == 9)
              {
                a1 = 0xE700000000000000;
              }

              else
              {
                a1 = 0xE800000000000000;
              }
            }

            else if (v92 == 6)
            {
              a1 = 0xE400000000000000;
              v97 = 2037151082;
            }

            else if (v92 == 7)
            {
              a1 = 0xE600000000000000;
              v97 = 0x747375677561;
            }

            else
            {
              v97 = 0x65626D6574706573;
              a1 = 0xE900000000000072;
            }
          }

          else
          {
            v93 = 1701737834;
            if (v92 == 4)
            {
              v93 = 7954797;
            }

            v94 = 0xE300000000000000;
            if (v92 != 4)
            {
              v94 = 0xE400000000000000;
            }

            if (v92 == 3)
            {
              v93 = 0x6C69727061;
              v94 = 0xE500000000000000;
            }

            v95 = 0x7972617572626566;
            if (v92 != 1)
            {
              v95 = 0x686372616DLL;
            }

            v96 = 0xE800000000000000;
            if (v92 != 1)
            {
              v96 = 0xE500000000000000;
            }

            if (!*(v197 + v5))
            {
              v95 = 0x797261756E616ALL;
              v96 = 0xE700000000000000;
            }

            if (*(v197 + v5) <= 2u)
            {
              v97 = v95;
            }

            else
            {
              v97 = v93;
            }

            if (*(v197 + v5) <= 2u)
            {
              a1 = v96;
            }

            else
            {
              a1 = v94;
            }
          }

          v99 = v25[v5];
          if (v99 > 5)
          {
            if (v25[v5] > 8u)
            {
              if (v99 == 9)
              {
                v100 = 0xE700000000000000;
                if (v97 != 0x7265626F74636FLL)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v100 = 0xE800000000000000;
                if (v99 == 10)
                {
                  v101 = 1702260590;
                }

                else
                {
                  v101 = 1701012836;
                }

                if (v97 != (v101 | 0x7265626D00000000))
                {
                  goto LABEL_112;
                }
              }
            }

            else if (v99 == 6)
            {
              v100 = 0xE400000000000000;
              if (v97 != 2037151082)
              {
                goto LABEL_112;
              }
            }

            else if (v99 == 7)
            {
              v100 = 0xE600000000000000;
              if (v97 != 0x747375677561)
              {
                goto LABEL_112;
              }
            }

            else
            {
              v100 = 0xE900000000000072;
              if (v97 != 0x65626D6574706573)
              {
                goto LABEL_112;
              }
            }
          }

          else if (v25[v5] > 2u)
          {
            if (v99 == 3)
            {
              v100 = 0xE500000000000000;
              if (v97 != 0x6C69727061)
              {
                goto LABEL_112;
              }
            }

            else if (v99 == 4)
            {
              v100 = 0xE300000000000000;
              if (v97 != 7954797)
              {
                goto LABEL_112;
              }
            }

            else
            {
              v100 = 0xE400000000000000;
              if (v97 != 1701737834)
              {
                goto LABEL_112;
              }
            }
          }

          else if (v25[v5])
          {
            if (v99 == 1)
            {
              v100 = 0xE800000000000000;
              if (v97 != 0x7972617572626566)
              {
                goto LABEL_112;
              }
            }

            else
            {
              v100 = 0xE500000000000000;
              if (v97 != 0x686372616DLL)
              {
                goto LABEL_112;
              }
            }
          }

          else
          {
            v100 = 0xE700000000000000;
            if (v97 != 0x797261756E616ALL)
            {
              goto LABEL_112;
            }
          }

          if (a1 == v100)
          {

            goto LABEL_113;
          }

LABEL_112:
          v3 = sub_1B4D18DCC();

          if ((v3 & 1) == 0)
          {
LABEL_308:

            goto LABEL_309;
          }

LABEL_113:
          ++v5;
          if (!--v86)
          {
            goto LABEL_245;
          }
        }
      }

      v87 = v164[0];
    }

    else
    {

      v18 = v166;
    }

LABEL_245:
    v5 = v168;
    v121 = sub_1B4A0A568(v87, v168);
    v16 = v193;
    if ((v121 & 1) == 0)
    {

      goto LABEL_276;
    }

    v3 = v171;
    v122 = *(v171 + 16);
    if (v122 != *(v167 + 16))
    {

      goto LABEL_275;
    }

    if (v122)
    {
      a1 = v172;
      v123 = v169;
      if (v171 != v167)
      {
        v124 = 32;
        while (*(v171 + v124) == *(v167 + v124))
        {
          v124 += 8;
          if (!--v122)
          {
            goto LABEL_264;
          }
        }

LABEL_274:
        a1 = v123;

LABEL_275:

LABEL_276:

LABEL_277:
        v119 = type metadata accessor for WorkoutPropertiesQuery;
        sub_1B49DA04C(v194, type metadata accessor for WorkoutPropertiesQuery);
        v120 = v16;
        goto LABEL_278;
      }
    }

    else
    {
      a1 = v172;
      v123 = v169;
    }

LABEL_264:
    v133 = *(v123 + 16);
    if (v133 != *(a1 + 16))
    {
      goto LABEL_274;
    }

    if (v133 && v123 != a1)
    {
      v134 = 32;
      while (*(v123 + v134) == *(a1 + v134))
      {
        v134 += 8;
        if (!--v133)
        {
          goto LABEL_270;
        }
      }

      goto LABEL_274;
    }

LABEL_270:
    v135 = v18;
    v18 = v170;
    v5 = *(v170 + 2);
    v3 = v178;
    if (v5 != *(v178 + 16))
    {
      v5 = a1;
      a1 = v123;

      goto LABEL_276;
    }

    if (!v5 || v170 == v178)
    {
      v3 = v171;
      v18 = v135;
    }

    else
    {
      v136 = 32;
      v18 = v135;
      do
      {
        v138 = v170[v136];
        if (v138 <= 1)
        {
          if (v170[v136])
          {
            v139 = 0x726F6F646E69;
          }

          else
          {
            v139 = 0x6E776F6E6B6E75;
          }

          if (v170[v136])
          {
            v3 = 0xE600000000000000;
          }

          else
          {
            v3 = 0xE700000000000000;
          }
        }

        else if (v138 == 2)
        {
          v3 = 0xE700000000000000;
          v139 = 0x726F6F6474756FLL;
        }

        else if (v138 == 3)
        {
          v139 = 0x657461576E65706FLL;
          v3 = 0xE900000000000072;
        }

        else
        {
          v139 = 0x676E696D6D697773;
          v3 = 0xEC0000006C6F6F50;
        }

        v140 = *(v178 + v136);
        if (v140 <= 1)
        {
          if (*(v178 + v136))
          {
            v141 = 0x726F6F646E69;
          }

          else
          {
            v141 = 0x6E776F6E6B6E75;
          }

          if (*(v178 + v136))
          {
            a1 = 0xE600000000000000;
          }

          else
          {
            a1 = 0xE700000000000000;
          }
        }

        else if (v140 == 2)
        {
          a1 = 0xE700000000000000;
          v141 = 0x726F6F6474756FLL;
        }

        else if (v140 == 3)
        {
          v141 = 0x657461576E65706FLL;
          a1 = 0xE900000000000072;
        }

        else
        {
          v141 = 0x676E696D6D697773;
          a1 = 0xEC0000006C6F6F50;
        }

        if (v139 == v141 && v3 == a1)
        {
        }

        else
        {
          v137 = sub_1B4D18DCC();

          if ((v137 & 1) == 0)
          {
            goto LABEL_308;
          }
        }

        ++v136;
        --v5;
        a1 = v172;
        v3 = v171;
        v123 = v169;
      }

      while (v5);
    }

    v152 = *(v18 + 2);
    v153 = v177;
    if (v152 != *(v177 + 16))
    {
      v5 = a1;
      a1 = v123;

LABEL_309:

      v16 = v193;
      goto LABEL_277;
    }

    v16 = v193;
    v3 = v167;
    if (!v152 || v18 == v177)
    {
    }

    else
    {
      v154 = 0;
      do
      {
        if (*&v18[v154 + 32] != *(v153 + v154 + 32) || *&v18[v154 + 40] != *(v153 + v154 + 40))
        {
          v156 = v153;
          v157 = sub_1B4D18DCC();
          v153 = v156;
          v3 = v171;
          if ((v157 & 1) == 0)
          {
            v5 = v153;

            goto LABEL_276;
          }
        }

        v154 += 16;
        --v152;
      }

      while (v152);

      v3 = v167;
    }

    v5 = v176;
    if ((sub_1B4A0DD68(*&v16[*(v176 + 24)], *(v194 + *(v176 + 24))) & 1) == 0)
    {
      goto LABEL_277;
    }

    v158 = *(v5 + 28);
    v159 = *&v16[v158];
    v5 = v194;
    v212 = *(v194 + v158);
    v213 = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74D0, &qword_1B4D1E2D0);
    a1 = sub_1B49DA0AC(&qword_1EB8A74D8, &qword_1EB8A74D0, &qword_1B4D1E2D0);
    sub_1B49DA100();
    DescriptorO2eeoiySbAC_ACtFZ_0 = sub_1B4D1865C();
    v3 = type metadata accessor for WorkoutPropertiesQuery;
    sub_1B49DA04C(v5, type metadata accessor for WorkoutPropertiesQuery);
    sub_1B49DA04C(v16, type metadata accessor for WorkoutPropertiesQuery);
    sub_1B49DA04C(v211, type metadata accessor for FitnessContextQueryDescriptor);
    v80 = v210;
    goto LABEL_105;
  }

  v25 = v211;
  sub_1B49D9F90(v211, v201, type metadata accessor for FitnessContextQueryDescriptor);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v67 = type metadata accessor for RingsPropertiesQuery;
    v68 = v201;
LABEL_103:
    sub_1B49DA04C(v68, v67);
    goto LABEL_104;
  }

  v3 = v199;
  sub_1B49DA2F8(v201, v199, type metadata accessor for RingsPropertiesQuery);
  v59 = &v25[v55];
  v5 = v198;
  sub_1B49DA2F8(v59, v198, type metadata accessor for RingsPropertiesQuery);
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v3, v5) & 1) == 0)
  {
    goto LABEL_243;
  }

  v60 = v180[5];
  v61 = (v199 + v60);
  v62 = (v198 + v60);
  v63 = *v62;
  v64 = *(*v61 + 2);
  if (v64 != *(*v62 + 2))
  {
    goto LABEL_242;
  }

  v25 = *v61;
  v65 = v61[1];
  a1 = v61[2];
  v66 = v62[2];
  v18 = v65;
  v197 = v62[1];
  v178 = v66;
  v177 = a1;
  if (v64)
  {

    if (v25 == v63)
    {
      goto LABEL_185;
    }

    v5 = 32;
    while (1)
    {
      v70 = v25[v5];
      if (v70 > 5)
      {
        if (v25[v5] > 8u)
        {
          v76 = 0x7265626D65766F6ELL;
          if (v70 != 10)
          {
            v76 = 0x7265626D65636564;
          }

          if (v70 == 9)
          {
            v75 = 0x7265626F74636FLL;
          }

          else
          {
            v75 = v76;
          }

          if (v70 == 9)
          {
            a1 = 0xE700000000000000;
          }

          else
          {
            a1 = 0xE800000000000000;
          }
        }

        else if (v70 == 6)
        {
          a1 = 0xE400000000000000;
          v75 = 2037151082;
        }

        else if (v70 == 7)
        {
          a1 = 0xE600000000000000;
          v75 = 0x747375677561;
        }

        else
        {
          v75 = 0x65626D6574706573;
          a1 = 0xE900000000000072;
        }
      }

      else
      {
        v71 = 1701737834;
        if (v70 == 4)
        {
          v71 = 7954797;
        }

        v72 = 0xE300000000000000;
        if (v70 != 4)
        {
          v72 = 0xE400000000000000;
        }

        if (v70 == 3)
        {
          v71 = 0x6C69727061;
          v72 = 0xE500000000000000;
        }

        v73 = 0x7972617572626566;
        if (v70 != 1)
        {
          v73 = 0x686372616DLL;
        }

        v74 = 0xE800000000000000;
        if (v70 != 1)
        {
          v74 = 0xE500000000000000;
        }

        if (!v25[v5])
        {
          v73 = 0x797261756E616ALL;
          v74 = 0xE700000000000000;
        }

        if (v25[v5] <= 2u)
        {
          v75 = v73;
        }

        else
        {
          v75 = v71;
        }

        if (v25[v5] <= 2u)
        {
          a1 = v74;
        }

        else
        {
          a1 = v72;
        }
      }

      v77 = v63[v5];
      if (v77 > 5)
      {
        if (v63[v5] > 8u)
        {
          if (v77 == 9)
          {
            v3 = 0xE700000000000000;
            if (v75 != 0x7265626F74636FLL)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v3 = 0xE800000000000000;
            if (v77 == 10)
            {
              v78 = 1702260590;
            }

            else
            {
              v78 = 1701012836;
            }

            if (v75 != (v78 | 0x7265626D00000000))
            {
              goto LABEL_31;
            }
          }
        }

        else if (v77 == 6)
        {
          v3 = 0xE400000000000000;
          if (v75 != 2037151082)
          {
            goto LABEL_31;
          }
        }

        else if (v77 == 7)
        {
          v3 = 0xE600000000000000;
          if (v75 != 0x747375677561)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v3 = 0xE900000000000072;
          if (v75 != 0x65626D6574706573)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v63[v5] > 2u)
      {
        if (v77 == 3)
        {
          v3 = 0xE500000000000000;
          if (v75 != 0x6C69727061)
          {
            goto LABEL_31;
          }
        }

        else if (v77 == 4)
        {
          v3 = 0xE300000000000000;
          if (v75 != 7954797)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v3 = 0xE400000000000000;
          if (v75 != 1701737834)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v63[v5])
      {
        if (v77 == 1)
        {
          v3 = 0xE800000000000000;
          if (v75 != 0x7972617572626566)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v3 = 0xE500000000000000;
          if (v75 != 0x686372616DLL)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v3 = 0xE700000000000000;
        if (v75 != 0x797261756E616ALL)
        {
          goto LABEL_31;
        }
      }

      if (a1 == v3)
      {

        goto LABEL_32;
      }

LABEL_31:
      v69 = sub_1B4D18DCC();

      if ((v69 & 1) == 0)
      {
LABEL_241:

LABEL_242:
        v16 = v193;
LABEL_243:
        v119 = type metadata accessor for RingsPropertiesQuery;
        sub_1B49DA04C(v198, type metadata accessor for RingsPropertiesQuery);
        v120 = v199;
LABEL_278:
        sub_1B49DA04C(v120, v119);
        sub_1B49DA04C(v211, type metadata accessor for FitnessContextQueryDescriptor);
        sub_1B49DA04C(v210, type metadata accessor for FitnessContextQueryResult);
LABEL_16:
        v42 = v209 + 1;
        v41 = v205;
        if (v209 + 1 == v206)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }

LABEL_32:
      ++v5;
      --v64;
      v65 = v18;
      if (!v64)
      {
        goto LABEL_185;
      }
    }
  }

LABEL_185:
  v5 = *(v65 + 2);
  v3 = v197;
  v16 = v193;
  if (v5 != *(v197 + 16))
  {
LABEL_239:

    goto LABEL_243;
  }

  if (v5 && v65 != v197)
  {
    v102 = 32;
    while (1)
    {
      v104 = v65[v102];
      v105 = *(v197 + v102);
      v106 = 0x7961646E7573;
      if (v104 == 5)
      {
        v106 = 0x7961647275746173;
        v107 = 0xE800000000000000;
      }

      else
      {
        v107 = 0xE600000000000000;
      }

      v108 = 0x7961647372756874;
      if (v104 == 3)
      {
        v109 = 0xE800000000000000;
      }

      else
      {
        v108 = 0x796164697266;
        v109 = 0xE600000000000000;
      }

      if (v65[v102] <= 4u)
      {
        v106 = v108;
        v107 = v109;
      }

      v110 = 0xE900000000000079;
      v111 = 0x616473656E646577;
      if (v104 == 1)
      {
        v111 = 0x79616473657574;
        v110 = 0xE700000000000000;
      }

      if (!v65[v102])
      {
        v111 = 0x7961646E6F6DLL;
        v110 = 0xE600000000000000;
      }

      v112 = v65[v102] <= 2u ? v111 : v106;
      a1 = v65[v102] <= 2u ? v110 : v107;
      if (*(v197 + v102) <= 2u)
      {
        break;
      }

      if (*(v197 + v102) <= 4u)
      {
        if (v105 == 3)
        {
          v3 = 0xE800000000000000;
          v113 = 0x647372756874;
          goto LABEL_219;
        }

        v3 = 0xE600000000000000;
        v114 = 1684632166;
LABEL_225:
        if (v112 != (v114 & 0xFFFF0000FFFFFFFFLL | 0x796100000000))
        {
          goto LABEL_189;
        }

        goto LABEL_228;
      }

      if (v105 == 5)
      {
        v3 = 0xE800000000000000;
        v113 = 0x647275746173;
LABEL_219:
        if (v112 != (v113 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
        {
          goto LABEL_189;
        }

        goto LABEL_228;
      }

      v3 = 0xE600000000000000;
      if (v112 != 0x7961646E7573)
      {
        goto LABEL_189;
      }

LABEL_228:
      if (a1 != v3)
      {
LABEL_189:
        v103 = sub_1B4D18DCC();

        if ((v103 & 1) == 0)
        {
          goto LABEL_241;
        }

        goto LABEL_190;
      }

LABEL_190:
      ++v102;
      --v5;
      v65 = v18;
      if (!v5)
      {
        goto LABEL_230;
      }
    }

    if (*(v197 + v102))
    {
      if (v105 == 1)
      {
        v3 = 0xE700000000000000;
        if (v112 != 0x79616473657574)
        {
          goto LABEL_189;
        }
      }

      else
      {
        v3 = 0xE900000000000079;
        if (v112 != 0x616473656E646577)
        {
          goto LABEL_189;
        }
      }

      goto LABEL_228;
    }

    v3 = 0xE600000000000000;
    v114 = 1684959085;
    goto LABEL_225;
  }

LABEL_230:
  v115 = *(v177 + 16);
  v5 = v178;
  v16 = v193;
  if (v115 != *(v178 + 16))
  {
    goto LABEL_239;
  }

  if (v115 && v177 != v178)
  {
    v116 = 32;
    do
    {
      v117 = *(v177 + v116);
      v118 = *(v178 + v116);
      if (v117 == 2)
      {
        if (v118 != 2)
        {
          goto LABEL_239;
        }
      }

      else if (v118 == 2 || ((v117 ^ v118) & 1) != 0)
      {
        goto LABEL_239;
      }

      ++v116;
      --v115;
    }

    while (v115);
  }

  v125 = v180[6];
  v126 = *(v199 + v125);
  v127 = *(v198 + v125);
  v5 = *(v126 + 16);
  if (v5 != *(v127 + 16))
  {
    goto LABEL_243;
  }

  if (v5)
  {
    v128 = v126 == v127;
  }

  else
  {
    v128 = 1;
  }

  if (v128)
  {
LABEL_261:
    v129 = v180[7];
    v5 = v198;
    v130 = v199;
    v131 = *(v199 + v129);
    v212 = *(v198 + v129);
    v213 = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B8, &qword_1B4D3FD60);
    a1 = sub_1B49DA0AC(&qword_1EB8A74C0, &qword_1EB8A74B8, &qword_1B4D3FD60);
    sub_1B49D9FF8();
    v132 = sub_1B4D1865C();
    v3 = type metadata accessor for RingsPropertiesQuery;
    sub_1B49DA04C(v5, type metadata accessor for RingsPropertiesQuery);
    sub_1B49DA04C(v130, type metadata accessor for RingsPropertiesQuery);
    sub_1B49DA04C(v211, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B49DA04C(v210, type metadata accessor for FitnessContextQueryResult);
    v16 = v193;
    if ((v132 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_355;
  }

  v142 = (v126 + 32);
  a1 = v127 + 32;
  v143 = 0x656557664F796164;
  while (v5)
  {
    v145 = *a1;
    v146 = 0xE90000000000006BLL;
    if (*v142 == 1)
    {
      v147 = 0xE90000000000006BLL;
    }

    else
    {
      v143 = 0x646573756170;
      v147 = 0xE600000000000000;
    }

    if (*v142)
    {
      v148 = v143;
    }

    else
    {
      v148 = 0x59664F68746E6F6DLL;
    }

    if (*v142)
    {
      v149 = v147;
    }

    else
    {
      v149 = 0xEB00000000726165;
    }

    if (v145 == 1)
    {
      v150 = 0x656557664F796164;
    }

    else
    {
      v150 = 0x646573756170;
    }

    if (v145 != 1)
    {
      v146 = 0xE600000000000000;
    }

    if (*a1)
    {
      v151 = v150;
    }

    else
    {
      v151 = 0x59664F68746E6F6DLL;
    }

    if (*a1)
    {
      v3 = v146;
    }

    else
    {
      v3 = 0xEB00000000726165;
    }

    if (v148 == v151 && v149 == v3)
    {
    }

    else
    {
      v144 = sub_1B4D18DCC();

      if ((v144 & 1) == 0)
      {
        goto LABEL_242;
      }
    }

    ++v142;
    ++a1;
    --v5;
    v143 = 0x656557664F796164;
    if (!v5)
    {
      goto LABEL_261;
    }
  }

  __break(1u);
  __break(1u);
LABEL_364:
  v162 = swift_slowAlloc();
  v163 = sub_1B49D3170(v162, v165, a1, v184);

  result = MEMORY[0x1B8C7DDA0](v162, -1, -1);
  if (!v3)
  {
    return v163;
  }

  return result;
}

void sub_1B49D6FC8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v204 = a4;
  v186 = a2;
  v196 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v210 = &v185 - v7;
  v209 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v185 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v207 = &v185 - v10;
  v201 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v201);
  v220 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v221 = &v185 - v13;
  v197 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v197);
  v15 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v215 = &v185 - v17;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v19 = &v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v222 = &v185 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v185 - v23;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7300, &unk_1B4D1D7A0);
  MEMORY[0x1EEE9AC00](v226);
  v26 = &v185 - v25;
  Result = type metadata accessor for FitnessContextQueryResult(0);
  v224 = *(Result - 8);
  v225 = Result;
  MEMORY[0x1EEE9AC00](Result);
  v231 = &v185 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v203 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v230 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = 0;
  v30 = 0;
  v205 = a3;
  v31 = *(a3 + 56);
  v194 = a3 + 56;
  v32 = 1 << *(a3 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v193 = (v32 + 63) >> 6;
  v206 = (v6 + 8);
  v211 = v5;
  v216 = v15;
  v217 = v24;
  v218 = v19;
  while (1)
  {
LABEL_5:
    if (v34)
    {
      v212 = (v34 - 1) & v34;
      v213 = v30;
      v35 = __clz(__rbit64(v34)) | (v30 << 6);
    }

    else
    {
      v36 = v30;
      do
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_351;
        }

        if (v37 >= v193)
        {
          goto LABEL_349;
        }

        v38 = *(v194 + 8 * v37);
        ++v36;
      }

      while (!v38);
      v212 = (v38 - 1) & v38;
      v213 = v37;
      v35 = __clz(__rbit64(v38)) | (v37 << 6);
    }

    sub_1B49D9F90(*(v205 + 48) + *(v203 + 72) * v35, v230, type metadata accessor for FitnessContextQueryRequest);
    v39 = *(*v204 + 16);

    v228 = v39;
    if (v39)
    {
      break;
    }

LABEL_4:

    sub_1B49DA04C(v230, type metadata accessor for FitnessContextQueryRequest);
    v30 = v213;
    v34 = v212;
  }

  v200 = v35;
  v41 = 0;
  v227 = v40;
  while (1)
  {
    if (v41 >= *(v40 + 16))
    {
      __break(1u);
LABEL_351:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_352:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      return;
    }

    v54 = v231;
    sub_1B49D9F90(v40 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v41, v231, type metadata accessor for FitnessContextQueryResult);
    v55 = *(v225 + 20);
    v56 = *(Request + 20);
    v57 = *(v226 + 48);
    sub_1B49D9F90(v54 + v55, v26, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B49D9F90(v230 + v56, &v26[v57], type metadata accessor for FitnessContextQueryDescriptor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      v75 = v218;
      sub_1B49D9F90(v26, v218, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v42 = v75;
        v43 = v207;
        sub_1B49DA2F8(v42, v207, type metadata accessor for LocationCoordinate);
        v44 = v208;
        sub_1B49DA2F8(&v26[v57], v208, type metadata accessor for LocationCoordinate);
        v45 = v209;
        v46 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v43 + *(v209 + 20)) longitude:*(v43 + *(v209 + 24))];
        v47 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v44 + *(v45 + 20)) longitude:*(v44 + *(v45 + 24))];
        [v46 distanceFromLocation_];
        v48 = [objc_opt_self() meters];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v49 = v210;
        sub_1B4D1741C();

        v50 = v211;
        sub_1B4D1742C();
        v52 = v51;
        (*v206)(v49, v50);
        v53 = v44;
        v15 = v216;
        sub_1B49DA04C(v53, type metadata accessor for LocationCoordinate);
        sub_1B49DA04C(v43, type metadata accessor for LocationCoordinate);
        sub_1B49DA04C(v26, type metadata accessor for FitnessContextQueryDescriptor);
        sub_1B49DA04C(v231, type metadata accessor for FitnessContextQueryResult);
        if (v52 < 500.0)
        {
          break;
        }

        goto LABEL_15;
      }

      v60 = type metadata accessor for LocationCoordinate;
      v61 = v75;
      goto LABEL_102;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_103:
        v88 = v231;
        DescriptorO2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v231 + v55, v230 + v56);
        sub_1B4975024(v26, &qword_1EB8A7300, &unk_1B4D1D7A0);
        v90 = v88;
LABEL_104:
        sub_1B49DA04C(v90, type metadata accessor for FitnessContextQueryResult);
        if (DescriptorO2eeoiySbAC_ACtFZ_0)
        {
          break;
        }

        goto LABEL_15;
      }

      v59 = v217;
      sub_1B49D9F90(v26, v217, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload())
      {
        v60 = type metadata accessor for WorkoutPropertiesQuery;
        v61 = v59;
LABEL_102:
        sub_1B49DA04C(v61, v60);
        goto LABEL_103;
      }

      v91 = v215;
      sub_1B49DA2F8(v59, v215, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B49DA2F8(&v26[v57], v15, type metadata accessor for WorkoutPropertiesQuery);
      if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v91, v15) & 1) == 0)
      {
        goto LABEL_258;
      }

      v92 = *(v197 + 20);
      v93 = (v91 + v92);
      v94 = *(v91 + v92);
      v95 = &v15[v92];
      v96 = *v95;
      v219 = v94;
      v97 = *(v94 + 16);
      if (v97 != *(v96 + 16))
      {
        goto LABEL_258;
      }

      v98 = v93[2];
      v214 = v93[1];
      v99 = v93[3];
      v195 = v93[4];
      v100 = v93[5];
      v102 = *(v95 + 1);
      v101 = *(v95 + 2);
      v103 = *(v95 + 3);
      v199 = *(v95 + 4);
      v198 = *(v95 + 5);
      v189 = v102;
      v190 = v101;
      v188 = v103;
      v192 = v98;
      v191 = v99;
      v187 = v100;
      if (v97)
      {

        if (v219 != v96)
        {
          v104 = 32;
          do
          {
            v106 = *(v219 + v104);
            if (v106 > 5)
            {
              if (*(v219 + v104) > 8u)
              {
                v113 = 0x7265626D65766F6ELL;
                if (v106 != 10)
                {
                  v113 = 0x7265626D65636564;
                }

                if (v106 == 9)
                {
                  v111 = 0x7265626F74636FLL;
                }

                else
                {
                  v111 = v113;
                }

                if (v106 == 9)
                {
                  v112 = 0xE700000000000000;
                }

                else
                {
                  v112 = 0xE800000000000000;
                }
              }

              else if (v106 == 6)
              {
                v112 = 0xE400000000000000;
                v111 = 2037151082;
              }

              else if (v106 == 7)
              {
                v112 = 0xE600000000000000;
                v111 = 0x747375677561;
              }

              else
              {
                v111 = 0x65626D6574706573;
                v112 = 0xE900000000000072;
              }
            }

            else
            {
              v107 = 1701737834;
              if (v106 == 4)
              {
                v107 = 7954797;
              }

              v108 = 0xE300000000000000;
              if (v106 != 4)
              {
                v108 = 0xE400000000000000;
              }

              if (v106 == 3)
              {
                v107 = 0x6C69727061;
                v108 = 0xE500000000000000;
              }

              v109 = 0x7972617572626566;
              if (v106 != 1)
              {
                v109 = 0x686372616DLL;
              }

              v110 = 0xE800000000000000;
              if (v106 != 1)
              {
                v110 = 0xE500000000000000;
              }

              if (!*(v219 + v104))
              {
                v109 = 0x797261756E616ALL;
                v110 = 0xE700000000000000;
              }

              if (*(v219 + v104) <= 2u)
              {
                v111 = v109;
              }

              else
              {
                v111 = v107;
              }

              if (*(v219 + v104) <= 2u)
              {
                v112 = v110;
              }

              else
              {
                v112 = v108;
              }
            }

            v114 = *(v96 + v104);
            if (v114 > 5)
            {
              if (*(v96 + v104) > 8u)
              {
                if (v114 == 9)
                {
                  v115 = 0xE700000000000000;
                  if (v111 != 0x7265626F74636FLL)
                  {
                    goto LABEL_111;
                  }
                }

                else
                {
                  v115 = 0xE800000000000000;
                  if (v114 == 10)
                  {
                    v116 = 1702260590;
                  }

                  else
                  {
                    v116 = 1701012836;
                  }

                  if (v111 != (v116 | 0x7265626D00000000))
                  {
LABEL_111:
                    v105 = sub_1B4D18DCC();

                    if ((v105 & 1) == 0)
                    {
                      goto LABEL_301;
                    }

                    goto LABEL_112;
                  }
                }
              }

              else if (v114 == 6)
              {
                v115 = 0xE400000000000000;
                if (v111 != 2037151082)
                {
                  goto LABEL_111;
                }
              }

              else if (v114 == 7)
              {
                v115 = 0xE600000000000000;
                if (v111 != 0x747375677561)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v115 = 0xE900000000000072;
                if (v111 != 0x65626D6574706573)
                {
                  goto LABEL_111;
                }
              }
            }

            else if (*(v96 + v104) > 2u)
            {
              if (v114 == 3)
              {
                v115 = 0xE500000000000000;
                if (v111 != 0x6C69727061)
                {
                  goto LABEL_111;
                }
              }

              else if (v114 == 4)
              {
                v115 = 0xE300000000000000;
                if (v111 != 7954797)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v115 = 0xE400000000000000;
                if (v111 != 1701737834)
                {
                  goto LABEL_111;
                }
              }
            }

            else if (*(v96 + v104))
            {
              if (v114 == 1)
              {
                v115 = 0xE800000000000000;
                if (v111 != 0x7972617572626566)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v115 = 0xE500000000000000;
                if (v111 != 0x686372616DLL)
                {
                  goto LABEL_111;
                }
              }
            }

            else
            {
              v115 = 0xE700000000000000;
              if (v111 != 0x797261756E616ALL)
              {
                goto LABEL_111;
              }
            }

            if (v112 != v115)
            {
              goto LABEL_111;
            }

LABEL_112:
            ++v104;
            --v97;
          }

          while (v97);
        }
      }

      else
      {
      }

      v137 = sub_1B4A0A568(v214, v189);
      v15 = v216;
      if ((v137 & 1) == 0)
      {
        goto LABEL_257;
      }

      v138 = *(v192 + 16);
      if (v138 != *(v190 + 16))
      {
        goto LABEL_257;
      }

      if (v138 && v192 != v190)
      {
        v139 = 32;
        while (*(v192 + v139) == *(v190 + v139))
        {
          v139 += 8;
          if (!--v138)
          {
            goto LABEL_247;
          }
        }

LABEL_257:

LABEL_258:
        v145 = type metadata accessor for WorkoutPropertiesQuery;
        sub_1B49DA04C(v15, type metadata accessor for WorkoutPropertiesQuery);
        v146 = v215;
LABEL_271:
        sub_1B49DA04C(v146, v145);
        sub_1B49DA04C(v26, type metadata accessor for FitnessContextQueryDescriptor);
        sub_1B49DA04C(v231, type metadata accessor for FitnessContextQueryResult);
        goto LABEL_15;
      }

LABEL_247:
      v140 = *(v191 + 16);
      if (v140 != *(v188 + 16))
      {
        goto LABEL_257;
      }

      if (v140 && v191 != v188)
      {
        v141 = 32;
        while (*(v191 + v141) == *(v188 + v141))
        {
          v141 += 8;
          if (!--v140)
          {
            goto LABEL_253;
          }
        }

        goto LABEL_257;
      }

LABEL_253:
      v142 = *(v195 + 16);
      if (v142 != *(v199 + 16))
      {
        goto LABEL_257;
      }

      if (v142)
      {
        v143 = v187;
        if (v195 != v199)
        {
          v144 = 32;
          do
          {
            v157 = *(v195 + v144);
            if (v157 <= 1)
            {
              if (*(v195 + v144))
              {
                v158 = 0x726F6F646E69;
              }

              else
              {
                v158 = 0x6E776F6E6B6E75;
              }

              if (*(v195 + v144))
              {
                v159 = 0xE600000000000000;
              }

              else
              {
                v159 = 0xE700000000000000;
              }
            }

            else if (v157 == 2)
            {
              v159 = 0xE700000000000000;
              v158 = 0x726F6F6474756FLL;
            }

            else if (v157 == 3)
            {
              v158 = 0x657461576E65706FLL;
              v159 = 0xE900000000000072;
            }

            else
            {
              v158 = 0x676E696D6D697773;
              v159 = 0xEC0000006C6F6F50;
            }

            v160 = *(v199 + v144);
            if (v160 <= 1)
            {
              if (*(v199 + v144))
              {
                v161 = 0x726F6F646E69;
              }

              else
              {
                v161 = 0x6E776F6E6B6E75;
              }

              if (*(v199 + v144))
              {
                v162 = 0xE600000000000000;
              }

              else
              {
                v162 = 0xE700000000000000;
              }
            }

            else if (v160 == 2)
            {
              v162 = 0xE700000000000000;
              v161 = 0x726F6F6474756FLL;
            }

            else if (v160 == 3)
            {
              v161 = 0x657461576E65706FLL;
              v162 = 0xE900000000000072;
            }

            else
            {
              v161 = 0x676E696D6D697773;
              v162 = 0xEC0000006C6F6F50;
            }

            if (v158 == v161 && v159 == v162)
            {
            }

            else
            {
              v156 = sub_1B4D18DCC();

              if ((v156 & 1) == 0)
              {
                goto LABEL_301;
              }
            }

            ++v144;
            --v142;
          }

          while (v142);
        }
      }

      else
      {
        v143 = v187;
      }

      v175 = *(v143 + 16);
      v176 = v198;
      if (v175 != *(v198 + 16))
      {
LABEL_301:

        v15 = v216;
        goto LABEL_258;
      }

      v15 = v216;
      if (v175 && v143 != v198)
      {
        v177 = 0;
        do
        {
          v178 = *(v143 + v177 + 32) == *(v176 + v177 + 32) && *(v143 + v177 + 40) == *(v176 + v177 + 40);
          if (!v178 && (sub_1B4D18DCC() & 1) == 0)
          {
            goto LABEL_257;
          }

          v177 += 16;
        }

        while (--v175);
      }

      v179 = v197;
      v180 = v215;
      if ((sub_1B4A0DD68(*(v215 + *(v197 + 24)), *&v15[*(v197 + 24)]) & 1) == 0)
      {
        goto LABEL_258;
      }

      v181 = *(v179 + 28);
      v233 = *(v180 + v181);
      v232 = *&v15[v181];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74D0, &qword_1B4D1E2D0);
      sub_1B49DA0AC(&qword_1EB8A74D8, &qword_1EB8A74D0, &qword_1B4D1E2D0);
      sub_1B49DA100();
      DescriptorO2eeoiySbAC_ACtFZ_0 = sub_1B4D1865C();
      sub_1B49DA04C(v15, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B49DA04C(v180, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B49DA04C(v26, type metadata accessor for FitnessContextQueryDescriptor);
      v90 = v231;
      goto LABEL_104;
    }

    sub_1B49D9F90(v26, v222, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v60 = type metadata accessor for RingsPropertiesQuery;
      v61 = v222;
      goto LABEL_102;
    }

    v62 = v221;
    sub_1B49DA2F8(v222, v221, type metadata accessor for RingsPropertiesQuery);
    v63 = &v26[v57];
    v64 = v220;
    sub_1B49DA2F8(v63, v220, type metadata accessor for RingsPropertiesQuery);
    if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v62, v64) & 1) == 0)
    {
      goto LABEL_270;
    }

    v65 = v201[5];
    v66 = (v221 + v65);
    v67 = (v220 + v65);
    v68 = *v67;
    v69 = *(*v66 + 16);
    if (v69 != *(*v67 + 16))
    {
      goto LABEL_270;
    }

    v70 = *v66;
    v71 = v66[1];
    v72 = v66[2];
    v73 = v67[2];
    v219 = v67[1];
    v214 = v71;
    v199 = v73;
    v198 = v72;
    if (v69)
    {

      if (v70 != v68)
      {
        v74 = 32;
        do
        {
          v77 = *(v70 + v74);
          if (v77 > 5)
          {
            if (*(v70 + v74) > 8u)
            {
              v84 = 0x7265626D65766F6ELL;
              if (v77 != 10)
              {
                v84 = 0x7265626D65636564;
              }

              if (v77 == 9)
              {
                v82 = 0x7265626F74636FLL;
              }

              else
              {
                v82 = v84;
              }

              if (v77 == 9)
              {
                v83 = 0xE700000000000000;
              }

              else
              {
                v83 = 0xE800000000000000;
              }
            }

            else if (v77 == 6)
            {
              v83 = 0xE400000000000000;
              v82 = 2037151082;
            }

            else if (v77 == 7)
            {
              v83 = 0xE600000000000000;
              v82 = 0x747375677561;
            }

            else
            {
              v82 = 0x65626D6574706573;
              v83 = 0xE900000000000072;
            }
          }

          else
          {
            v78 = 1701737834;
            if (v77 == 4)
            {
              v78 = 7954797;
            }

            v79 = 0xE300000000000000;
            if (v77 != 4)
            {
              v79 = 0xE400000000000000;
            }

            if (v77 == 3)
            {
              v78 = 0x6C69727061;
              v79 = 0xE500000000000000;
            }

            v80 = 0x7972617572626566;
            if (v77 != 1)
            {
              v80 = 0x686372616DLL;
            }

            v81 = 0xE800000000000000;
            if (v77 != 1)
            {
              v81 = 0xE500000000000000;
            }

            if (!*(v70 + v74))
            {
              v80 = 0x797261756E616ALL;
              v81 = 0xE700000000000000;
            }

            if (*(v70 + v74) <= 2u)
            {
              v82 = v80;
            }

            else
            {
              v82 = v78;
            }

            if (*(v70 + v74) <= 2u)
            {
              v83 = v81;
            }

            else
            {
              v83 = v79;
            }
          }

          v85 = *(v68 + v74);
          if (v85 > 5)
          {
            if (*(v68 + v74) > 8u)
            {
              if (v85 == 9)
              {
                v86 = 0xE700000000000000;
                if (v82 != 0x7265626F74636FLL)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                v86 = 0xE800000000000000;
                if (v85 == 10)
                {
                  v87 = 1702260590;
                }

                else
                {
                  v87 = 1701012836;
                }

                if (v82 != (v87 | 0x7265626D00000000))
                {
                  goto LABEL_30;
                }
              }
            }

            else if (v85 == 6)
            {
              v86 = 0xE400000000000000;
              if (v82 != 2037151082)
              {
                goto LABEL_30;
              }
            }

            else if (v85 == 7)
            {
              v86 = 0xE600000000000000;
              if (v82 != 0x747375677561)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v86 = 0xE900000000000072;
              if (v82 != 0x65626D6574706573)
              {
                goto LABEL_30;
              }
            }
          }

          else if (*(v68 + v74) > 2u)
          {
            if (v85 == 3)
            {
              v86 = 0xE500000000000000;
              if (v82 != 0x6C69727061)
              {
                goto LABEL_30;
              }
            }

            else if (v85 == 4)
            {
              v86 = 0xE300000000000000;
              if (v82 != 7954797)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v86 = 0xE400000000000000;
              if (v82 != 1701737834)
              {
                goto LABEL_30;
              }
            }
          }

          else if (*(v68 + v74))
          {
            if (v85 == 1)
            {
              v86 = 0xE800000000000000;
              if (v82 != 0x7972617572626566)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v86 = 0xE500000000000000;
              if (v82 != 0x686372616DLL)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            v86 = 0xE700000000000000;
            if (v82 != 0x797261756E616ALL)
            {
              goto LABEL_30;
            }
          }

          if (v83 == v86)
          {

            goto LABEL_31;
          }

LABEL_30:
          v76 = sub_1B4D18DCC();

          if ((v76 & 1) == 0)
          {
LABEL_260:

LABEL_261:
            v15 = v216;
            goto LABEL_270;
          }

LABEL_31:
          ++v74;
          --v69;
        }

        while (v69);
      }
    }

    else
    {
    }

    v117 = *(v214 + 16);
    v15 = v216;
    if (v117 != *(v219 + 16))
    {
      goto LABEL_259;
    }

    if (v117 && v214 != v219)
    {
      v118 = 32;
      while (1)
      {
        v120 = *(v214 + v118);
        v121 = *(v219 + v118);
        v122 = 0x7961646E7573;
        if (v120 == 5)
        {
          v122 = 0x7961647275746173;
          v123 = 0xE800000000000000;
        }

        else
        {
          v123 = 0xE600000000000000;
        }

        v124 = 0x7961647372756874;
        if (v120 == 3)
        {
          v125 = 0xE800000000000000;
        }

        else
        {
          v124 = 0x796164697266;
          v125 = 0xE600000000000000;
        }

        if (*(v214 + v118) <= 4u)
        {
          v122 = v124;
          v123 = v125;
        }

        v126 = 0xE900000000000079;
        v127 = 0x616473656E646577;
        if (v120 == 1)
        {
          v127 = 0x79616473657574;
          v126 = 0xE700000000000000;
        }

        if (!*(v214 + v118))
        {
          v127 = 0x7961646E6F6DLL;
          v126 = 0xE600000000000000;
        }

        v128 = *(v214 + v118) <= 2u ? v127 : v122;
        v129 = *(v214 + v118) <= 2u ? v126 : v123;
        if (*(v219 + v118) <= 2u)
        {
          break;
        }

        if (*(v219 + v118) <= 4u)
        {
          if (v121 == 3)
          {
            v130 = 0xE800000000000000;
            v131 = 0x647372756874;
            goto LABEL_217;
          }

          v130 = 0xE600000000000000;
          v132 = 1684632166;
LABEL_223:
          if (v128 != (v132 & 0xFFFF0000FFFFFFFFLL | 0x796100000000))
          {
            goto LABEL_187;
          }

          goto LABEL_226;
        }

        if (v121 == 5)
        {
          v130 = 0xE800000000000000;
          v131 = 0x647275746173;
LABEL_217:
          if (v128 != (v131 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
          {
            goto LABEL_187;
          }

          goto LABEL_226;
        }

        v130 = 0xE600000000000000;
        if (v128 != 0x7961646E7573)
        {
          goto LABEL_187;
        }

LABEL_226:
        if (v129 != v130)
        {
LABEL_187:
          v119 = sub_1B4D18DCC();

          if ((v119 & 1) == 0)
          {
            goto LABEL_260;
          }

          goto LABEL_188;
        }

LABEL_188:
        ++v118;
        if (!--v117)
        {
          goto LABEL_229;
        }
      }

      if (*(v219 + v118))
      {
        if (v121 == 1)
        {
          v130 = 0xE700000000000000;
          if (v128 != 0x79616473657574)
          {
            goto LABEL_187;
          }
        }

        else
        {
          v130 = 0xE900000000000079;
          if (v128 != 0x616473656E646577)
          {
            goto LABEL_187;
          }
        }

        goto LABEL_226;
      }

      v130 = 0xE600000000000000;
      v132 = 1684959085;
      goto LABEL_223;
    }

LABEL_229:
    v133 = *(v198 + 16);
    v15 = v216;
    if (v133 != *(v199 + 16))
    {
LABEL_259:

      goto LABEL_270;
    }

    if (v133 && v198 != v199)
    {
      v134 = 32;
      do
      {
        v135 = *(v198 + v134);
        v136 = *(v199 + v134);
        if (v135 == 2)
        {
          if (v136 != 2)
          {
            goto LABEL_259;
          }
        }

        else if (v136 == 2 || ((v135 ^ v136) & 1) != 0)
        {
          goto LABEL_259;
        }

        ++v134;
        --v133;
      }

      while (v133);
    }

    v147 = v201[6];
    v148 = *(v221 + v147);
    v149 = *(v220 + v147);
    v150 = *(v148 + 16);
    if (v150 != *(v149 + 16))
    {
LABEL_270:
      v145 = type metadata accessor for RingsPropertiesQuery;
      sub_1B49DA04C(v220, type metadata accessor for RingsPropertiesQuery);
      v146 = v221;
      goto LABEL_271;
    }

    if (v150)
    {
      v151 = v148 == v149;
    }

    else
    {
      v151 = 1;
    }

    if (!v151)
    {
      v163 = (v148 + 32);
      v164 = (v149 + 32);
      v165 = 0x656557664F796164;
      while (v150)
      {
        v167 = *v164;
        v168 = 0xE90000000000006BLL;
        if (*v163 == 1)
        {
          v169 = 0xE90000000000006BLL;
        }

        else
        {
          v165 = 0x646573756170;
          v169 = 0xE600000000000000;
        }

        if (*v163)
        {
          v170 = v165;
        }

        else
        {
          v170 = 0x59664F68746E6F6DLL;
        }

        if (*v163)
        {
          v171 = v169;
        }

        else
        {
          v171 = 0xEB00000000726165;
        }

        if (v167 == 1)
        {
          v172 = 0x656557664F796164;
        }

        else
        {
          v172 = 0x646573756170;
        }

        if (v167 != 1)
        {
          v168 = 0xE600000000000000;
        }

        if (*v164)
        {
          v173 = v172;
        }

        else
        {
          v173 = 0x59664F68746E6F6DLL;
        }

        if (*v164)
        {
          v174 = v168;
        }

        else
        {
          v174 = 0xEB00000000726165;
        }

        if (v170 == v173 && v171 == v174)
        {
        }

        else
        {
          v166 = sub_1B4D18DCC();

          if ((v166 & 1) == 0)
          {
            goto LABEL_261;
          }
        }

        ++v163;
        ++v164;
        --v150;
        v165 = 0x656557664F796164;
        if (!v150)
        {
          goto LABEL_268;
        }
      }

      goto LABEL_352;
    }

LABEL_268:
    v152 = v201[7];
    v153 = v220;
    v154 = v221;
    v233 = *(v221 + v152);
    v232 = *(v220 + v152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B8, &qword_1B4D3FD60);
    sub_1B49DA0AC(&qword_1EB8A74C0, &qword_1EB8A74B8, &qword_1B4D3FD60);
    sub_1B49D9FF8();
    v155 = sub_1B4D1865C();
    sub_1B49DA04C(v153, type metadata accessor for RingsPropertiesQuery);
    sub_1B49DA04C(v154, type metadata accessor for RingsPropertiesQuery);
    sub_1B49DA04C(v26, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B49DA04C(v231, type metadata accessor for FitnessContextQueryResult);
    v15 = v216;
    if (v155)
    {
      break;
    }

LABEL_15:
    ++v41;
    v40 = v227;
    if (v41 == v228)
    {
      goto LABEL_4;
    }
  }

  sub_1B49DA04C(v230, type metadata accessor for FitnessContextQueryRequest);
  *(v196 + ((v200 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v200;
  v182 = __OFADD__(v202++, 1);
  v30 = v213;
  v34 = v212;
  if (!v182)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_349:
  v183 = v205;

  sub_1B49D463C(v196, v186, v202, v183, v184);
}