unint64_t sub_1B4AE95E4()
{
  result = qword_1EB8A9CC8;
  if (!qword_1EB8A9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CC8);
  }

  return result;
}

unint64_t sub_1B4AE9638()
{
  result = qword_1EB8A9CD8;
  if (!qword_1EB8A9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CD8);
  }

  return result;
}

uint64_t sub_1B4AE968C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1B4AE96D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B4AE9738()
{
  result = qword_1EB8A9CE0;
  if (!qword_1EB8A9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CE0);
  }

  return result;
}

unint64_t sub_1B4AE9790()
{
  result = qword_1EB8A9CE8;
  if (!qword_1EB8A9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CE8);
  }

  return result;
}

unint64_t sub_1B4AE97E8()
{
  result = qword_1EB8A9CF0;
  if (!qword_1EB8A9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CF0);
  }

  return result;
}

uint64_t sub_1B4AE9840()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x65636E6174736964;
  }
}

uint64_t sub_1B4AE9874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t sub_1B4AE9950(uint64_t a1)
{
  v2 = sub_1B4AEEEBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AE998C(uint64_t a1)
{
  v2 = sub_1B4AEEEBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4AE99C8()
{
  if (*v0)
  {
    return 0x6D6F747375437369;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B4AE99F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F747375437369 && a2 == 0xE800000000000000)
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

uint64_t sub_1B4AE9ACC(uint64_t a1)
{
  v2 = sub_1B4AEEF64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AE9B08(uint64_t a1)
{
  v2 = sub_1B4AEEF64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4AE9B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1B4AE9BD0(uint64_t a1)
{
  v2 = sub_1B4AEEF10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AE9C0C(uint64_t a1)
{
  v2 = sub_1B4AEEF10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutSplitFact.SplitFactType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D00, &unk_1B4D2BD90);
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D08, &unk_1B4D2BDA0);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D10, &qword_1B4D2BDB0);
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v16 = &v28 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AEEEBC();
  v17 = v16;
  sub_1B4D18EFC();
  sub_1B4AEF0D4(v36, v14, type metadata accessor for WorkoutSplitFact.SplitFactType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v28;
    v19 = v29;
    v20 = v30;
    (*(v29 + 32))(v28, v14, v30);
    v45 = 1;
    sub_1B4AEEF10();
    v21 = v31;
    v22 = v40;
    sub_1B4D18C5C();
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
    v23 = v35;
    sub_1B4D18D0C();
    (*(v34 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    return (*(v37 + 8))(v17, v22);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8);
    (*(v38 + 32))(v11, v14, v39);
    v44 = 0;
    sub_1B4AEEF64();
    v25 = v40;
    sub_1B4D18C5C();
    v43 = 0;
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    v26 = v33;
    v27 = v41;
    sub_1B4D18D0C();
    if (!v27)
    {
      v42 = 1;
      sub_1B4D18CCC();
    }

    (*(v32 + 8))(v8, v26);
    (*(v38 + 8))(v11, v39);
    return (*(v37 + 8))(v16, v25);
  }
}

uint64_t WorkoutSplitFact.SplitFactType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D38, &qword_1B4D2BDC0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v38 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D40, &qword_1B4D2BDC8);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D48, &unk_1B4D2BDD0);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B4AEEEBC();
  v19 = v48;
  sub_1B4D18EEC();
  if (!v19)
  {
    v38 = v11;
    v39 = v14;
    v20 = v45;
    v21 = v46;
    v48 = v9;
    v22 = sub_1B4D18C2C();
    v23 = (2 * *(v22 + 16)) | 1;
    v50 = v22;
    v51 = v22 + 32;
    v52 = 0;
    v53 = v23;
    v24 = sub_1B49C7F78();
    v25 = v8;
    if (v24 == 2 || v52 != v53 >> 1)
    {
      v29 = sub_1B4D189BC();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820);
      *v31 = v48;
      sub_1B4D18B5C();
      sub_1B4D189AC();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v47 + 8))(v25, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        v54 = 1;
        sub_1B4AEEF10();
        sub_1B4D18B4C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
        v26 = v38;
        v27 = v43;
        sub_1B4D18C0C();
        (*(v42 + 8))(v21, v27);
        (*(v47 + 8))(v25, v6);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v28 = v26;
      }

      else
      {
        v54 = 0;
        sub_1B4AEEF64();
        sub_1B4D18B4C();
        v46 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
        v54 = 0;
        sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
        v33 = v41;
        sub_1B4D18C0C();
        v34 = v47;
        v54 = 1;
        v35 = sub_1B4D18BCC();
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48);
        (*(v44 + 8))(v20, v33);
        (*(v34 + 8))(v25, v46);
        swift_unknownObjectRelease();
        v37 = v39;
        v39[v36] = v35 & 1;
        swift_storeEnumTagMultiPayload();
        v28 = v37;
      }

      sub_1B4AEEFB8(v28, v17);
      sub_1B4AEEFB8(v17, v40);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v49);
}

uint64_t WorkoutSplitFact.init(activityType:splitNumber:type:progressDuration:totalWorkoutDuration:distance:totalDistance:pace:averagePower:elevationGained:totalEnergyBurned:splitAverageHeartRate:currentHeartRate:isFastestSplit:isSummarizing:isFasterThanPreviousSplit:isHigherHeartRateThanLastSplit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16, char a17, char a18)
{
  *a9 = a1;
  a9[1] = a2;
  v25 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4AEEFB8(a3, a9 + v25[6]);
  sub_1B498B270(a4, a9 + v25[7], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(a5, a9 + v25[8], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(a6, a9 + v25[9], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B498B270(a7, a9 + v25[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B498B270(a8, a9 + v25[11], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B498B270(a10, a9 + v25[12], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B498B270(a11, a9 + v25[13], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B498B270(a12, a9 + v25[14], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(a13, a9 + v25[15], &qword_1EB8A6CC8, &unk_1B4D464B0);
  result = sub_1B498B270(a14, a9 + v25[16], &qword_1EB8A6CC8, &unk_1B4D464B0);
  *(a9 + v25[17]) = a15;
  *(a9 + v25[18]) = a16;
  *(a9 + v25[19]) = a17;
  *(a9 + v25[20]) = a18;
  return result;
}

unint64_t sub_1B4AEAF64(char a1)
{
  result = 0x6D754E74696C7073;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x65636E6174736964;
      break;
    case 6:
      result = 0x7369446C61746F74;
      break;
    case 7:
      result = 1701011824;
      break;
    case 8:
      result = 0x5065676172657661;
      break;
    case 9:
      result = 0x6F69746176656C65;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      v3 = 5;
      goto LABEL_11;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x7365747361467369;
      break;
    case 14:
      result = 0x72616D6D75537369;
      break;
    case 15:
      v3 = 9;
LABEL_11:
      result = v3 | 0xD000000000000010;
      break;
    case 16:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1B4AEB184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4AEFA84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4AEB1AC(uint64_t a1)
{
  v2 = sub_1B4AEF03C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AEB1E8(uint64_t a1)
{
  v2 = sub_1B4AEF03C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutSplitFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D50, &unk_1B4D2BDE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AEF03C();
  sub_1B4D18EFC();
  v14 = *v3;
  v13 = 0;
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18D0C();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v14) = 1;
    sub_1B4D18CEC();
    v10 = type metadata accessor for WorkoutSplitFact(0);
    LOBYTE(v14) = 2;
    type metadata accessor for WorkoutSplitFact.SplitFactType(0);
    sub_1B4AEF090(&qword_1EB8A9D60, &protocol conformance descriptor for WorkoutSplitFact.SplitFactType);
    sub_1B4D18D0C();
    v12 = v10;
    LOBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v14) = 4;
    sub_1B4D18CAC();
    LOBYTE(v14) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v14) = 6;
    sub_1B4D18CAC();
    LOBYTE(v14) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v14) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    sub_1B49B0578(&qword_1EB8A7838, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v14) = 9;
    sub_1B4D18CAC();
    LOBYTE(v14) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v14) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    sub_1B49B0578(&qword_1EB8A9D68, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v14) = 12;
    sub_1B4D18CAC();
    LOBYTE(v14) = 13;
    sub_1B4D18C7C();
    LOBYTE(v14) = 14;
    sub_1B4D18CCC();
    LOBYTE(v14) = 15;
    sub_1B4D18C7C();
    LOBYTE(v14) = 16;
    sub_1B4D18C7C();
  }

  return (*(v6 + 8))(v8, v5);
}

void WorkoutSplitFact.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v45 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v58 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v24 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D70, &qword_1B4D2BDF0);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v28 = &v45 - v27;
  v29 = type metadata accessor for WorkoutSplitFact(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1B4AEF03C();
  v60 = v28;
  v33 = v62;
  sub_1B4D18EEC();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  else
  {
    v46 = v23;
    v47 = v26;
    v48 = v29;
    v62 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v64 = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18C0C();
    v34 = v62;
    *v62 = v65;
    LOBYTE(v65) = 1;
    v34[1] = sub_1B4D18BEC();
    LOBYTE(v65) = 2;
    sub_1B4AEF090(&qword_1EB8A9D78, &protocol conformance descriptor for WorkoutSplitFact.SplitFactType);
    v35 = v47;
    sub_1B4D18C0C();
    v36 = v48;
    sub_1B4AEEFB8(v35, v34 + v48[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    LOBYTE(v65) = 3;
    sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
    v37 = v46;
    sub_1B4D18BAC();
    sub_1B498B270(v37, v34 + v36[7], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    LOBYTE(v65) = 4;
    v38 = v58;
    sub_1B4D18BAC();
    sub_1B498B270(v38, v34 + v36[8], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    LOBYTE(v65) = 5;
    sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
    v39 = v57;
    sub_1B4D18BAC();
    sub_1B498B270(v39, v34 + v36[9], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    LOBYTE(v65) = 6;
    v40 = v56;
    sub_1B4D18BAC();
    sub_1B498B270(v40, v34 + v36[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    LOBYTE(v65) = 7;
    sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968098]);
    v41 = v55;
    sub_1B4D18BAC();
    sub_1B498B270(v41, v62 + v48[11], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    LOBYTE(v65) = 8;
    sub_1B49B0578(&qword_1EB8A7848, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968098]);
    v42 = v54;
    sub_1B4D18BAC();
    sub_1B498B270(v42, v62 + v48[12], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    LOBYTE(v65) = 9;
    sub_1B4D18BAC();
    sub_1B498B270(v53, v62 + v48[13], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    LOBYTE(v65) = 10;
    sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968098]);
    sub_1B4D18BAC();
    sub_1B498B270(v52, v62 + v48[14], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    LOBYTE(v65) = 11;
    sub_1B49B0578(&qword_1EB8A9D80, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968098]);
    sub_1B4D18BAC();
    sub_1B498B270(v51, v62 + v48[15], &qword_1EB8A6CC8, &unk_1B4D464B0);
    LOBYTE(v65) = 12;
    sub_1B4D18BAC();
    sub_1B498B270(v50, v62 + v48[16], &qword_1EB8A6CC8, &unk_1B4D464B0);
    LOBYTE(v65) = 13;
    *(v62 + v48[17]) = sub_1B4D18B7C();
    LOBYTE(v65) = 14;
    *(v62 + v48[18]) = sub_1B4D18BCC() & 1;
    LOBYTE(v65) = 15;
    *(v62 + v48[19]) = sub_1B4D18B7C();
    LOBYTE(v65) = 16;
    LOBYTE(v42) = sub_1B4D18B7C();
    (*(v59 + 8))(v60, v61);
    v43 = v49;
    v44 = v62;
    *(v62 + v48[20]) = v42;
    sub_1B4AEF0D4(v44, v43, type metadata accessor for WorkoutSplitFact);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    sub_1B4AEF13C(v44, type metadata accessor for WorkoutSplitFact);
  }
}

BOOL _s19FitnessIntelligence16WorkoutSplitFactV2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v194 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v188 = &v186 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v189 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v191 = &v186 - v8;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E10, &unk_1B4D46A80);
  MEMORY[0x1EEE9AC00](v193);
  v192 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v197 = &v186 - v11;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v190 = &v186 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v196 = &v186 - v14;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F68, &unk_1B4D1C550);
  MEMORY[0x1EEE9AC00](v195);
  v200 = &v186 - v15;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v211 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v203 = &v186 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v205 = &v186 - v18;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7878, &unk_1B4D2D8B0);
  MEMORY[0x1EEE9AC00](v207);
  v208 = &v186 - v19;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v216 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v206 = &v186 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v210 = &v186 - v22;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E18, &unk_1B4D2C410);
  MEMORY[0x1EEE9AC00](v212);
  v213 = &v186 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v25 = *(v24 - 8);
  v221 = v24;
  v222 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v217 = &v186 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v199 = &v186 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v215 = &v186 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v219 = &v186 - v32;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  MEMORY[0x1EEE9AC00](v224);
  v204 = &v186 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v218 = &v186 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v220 = &v186 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v226 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v225 = &v186 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v223 = &v186 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v186 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F60, &qword_1B4D2C420);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v186 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v186 - v49;
  v227 = a1;
  v228 = a2;
  v51 = *a1;
  v52 = *a2;
  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  if (v53 && (v54 = v53, objc_opt_self(), (v55 = swift_dynamicCastObjCClass()) != 0))
  {
    v56 = v55;
    v57 = v51;
    v58 = v52;
    [v54 coordinate];
    v60 = v59;
    [v56 coordinate];
    if (v60 != v61)
    {

      return 0;
    }

    [v54 coordinate];
    v63 = v62;
    [v56 coordinate];
    v65 = v64;

    if (v63 != v65)
    {
      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      return 0;
    }
  }

  v66 = v227;
  v67 = v228;
  if (v227[1] != v228[1])
  {
    return 0;
  }

  v68 = type metadata accessor for WorkoutSplitFact(0);
  if ((_s19FitnessIntelligence16WorkoutSplitFactV0dE4TypeO2eeoiySbAE_AEtFZ_0(v66 + *(v68 + 24), v67 + *(v68 + 24)) & 1) == 0)
  {
    return 0;
  }

  v187 = v68;
  v69 = *(v68 + 28);
  v70 = *(v45 + 48);
  sub_1B4974FBC(v66 + v69, v50, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4974FBC(v67 + v69, &v50[v70], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v71 = v226[6];
  if (v71(v50, 1, v38) == 1)
  {
    if (v71(&v50[v70], 1, v38) == 1)
    {
      sub_1B4975024(v50, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      goto LABEL_17;
    }

LABEL_15:
    v72 = &qword_1EB8A6F60;
    v73 = &qword_1B4D2C420;
    v74 = v50;
LABEL_31:
    sub_1B4975024(v74, v72, v73);
    return 0;
  }

  sub_1B4974FBC(v50, v44, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v71(&v50[v70], 1, v38) == 1)
  {
    (v226[1])(v44, v38);
    goto LABEL_15;
  }

  v75 = v226;
  (v226[4])(v225, &v50[v70], v38);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  v76 = sub_1B4D1816C();
  v77 = v75[1];
  v77(v225, v38);
  v77(v44, v38);
  sub_1B4975024(v50, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v78 = v187;
  v79 = v187[8];
  v80 = *(v45 + 48);
  v81 = v227;
  sub_1B4974FBC(v227 + v79, v47, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4974FBC(v228 + v79, &v47[v80], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v71(v47, 1, v38) == 1)
  {
    if (v71(&v47[v80], 1, v38) == 1)
    {
      sub_1B4975024(v47, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      goto LABEL_25;
    }

LABEL_22:
    v72 = &qword_1EB8A6F60;
    v73 = &qword_1B4D2C420;
LABEL_23:
    v74 = v47;
    goto LABEL_31;
  }

  v82 = v223;
  sub_1B4974FBC(v47, v223, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v71(&v47[v80], 1, v38) == 1)
  {
    (v226[1])(v82, v38);
    goto LABEL_22;
  }

  v84 = v225;
  v83 = v226;
  (v226[4])(v225, &v47[v80], v38);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  v85 = v82;
  v86 = sub_1B4D1816C();
  v87 = v83[1];
  v87(v84, v38);
  v87(v85, v38);
  sub_1B4975024(v47, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((v86 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v88 = v78[9];
  v89 = *(v224 + 48);
  v90 = v220;
  sub_1B4974FBC(v81 + v88, v220, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v228 + v88, v90 + v89, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v92 = v221;
  v91 = v222;
  v93 = *(v222 + 48);
  if ((v93)(v90, 1, v221) == 1)
  {
    if ((v93)(v90 + v89, 1, v92) == 1)
    {
      v226 = v93;
      v94 = v81;
      sub_1B4975024(v90, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_35;
    }

LABEL_30:
    v72 = &qword_1EB8A6F50;
    v73 = &qword_1B4D425A0;
    v74 = v90;
    goto LABEL_31;
  }

  v95 = v219;
  sub_1B4974FBC(v90, v219, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v93)(v90 + v89, 1, v92) == 1)
  {
    (*(v91 + 8))(v95, v92);
    goto LABEL_30;
  }

  v226 = v93;
  v94 = v81;
  v97 = v217;
  (*(v91 + 32))(v217, v90 + v89, v92);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v98 = sub_1B4D1816C();
  v99 = *(v91 + 8);
  v99(v97, v92);
  v99(v95, v92);
  sub_1B4975024(v90, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v98 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v100 = v187[10];
  v101 = *(v224 + 48);
  v102 = v94;
  v47 = v218;
  sub_1B4974FBC(v94 + v100, v218, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v228 + v100, &v47[v101], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v103 = v226;
  if ((v226)(v47, 1, v92) == 1)
  {
    if ((v103)(&v47[v101], 1, v92) == 1)
    {
      v226 = v103;
      sub_1B4975024(v47, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_42;
    }

LABEL_40:
    v72 = &qword_1EB8A6F50;
    v73 = &qword_1B4D425A0;
    goto LABEL_23;
  }

  v104 = v215;
  sub_1B4974FBC(v47, v215, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v103)(&v47[v101], 1, v92) == 1)
  {
    (*(v222 + 8))(v104, v92);
    goto LABEL_40;
  }

  v226 = v103;
  v105 = v222;
  v106 = &v47[v101];
  v107 = v47;
  v108 = v217;
  (*(v222 + 32))(v217, v106, v92);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v109 = sub_1B4D1816C();
  v110 = *(v105 + 8);
  v110(v108, v92);
  v110(v104, v92);
  sub_1B4975024(v107, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v109 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v111 = v187;
  v112 = v187[11];
  v47 = v213;
  v113 = *(v212 + 48);
  sub_1B4974FBC(v102 + v112, v213, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v228 + v112, &v47[v113], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v114 = *(v216 + 48);
  v115 = v214;
  if (v114(v47, 1, v214) == 1)
  {
    if (v114(&v47[v113], 1, v115) == 1)
    {
      sub_1B4975024(v47, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
      goto LABEL_49;
    }

LABEL_47:
    v72 = &qword_1EB8A9E18;
    v73 = &unk_1B4D2C410;
    goto LABEL_23;
  }

  v116 = v210;
  sub_1B4974FBC(v47, v210, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v114(&v47[v113], 1, v115) == 1)
  {
    (*(v216 + 8))(v116, v115);
    goto LABEL_47;
  }

  v117 = v47;
  v118 = v216;
  v119 = v117 + v113;
  v120 = v206;
  (*(v216 + 32))(v206, v119, v115);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968090]);
  v121 = sub_1B4D1816C();
  v122 = *(v118 + 8);
  v122(v120, v115);
  v122(v116, v115);
  sub_1B4975024(v117, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v111 = v187;
  if ((v121 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  v123 = v111[12];
  v124 = *(v207 + 48);
  v125 = v208;
  sub_1B4974FBC(v102 + v123, v208, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(v228 + v123, &v124[v125], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v126 = *(v211 + 48);
  v127 = v209;
  if (v126(v125, 1, v209) == 1)
  {
    if (v126(&v124[v125], 1, v127) == 1)
    {
      sub_1B4975024(v125, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
      goto LABEL_56;
    }

LABEL_54:
    v72 = &qword_1EB8A7878;
    v73 = &unk_1B4D2D8B0;
    v74 = v125;
    goto LABEL_31;
  }

  v128 = v205;
  sub_1B4974FBC(v125, v205, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v225 = v124;
  if (v126(&v124[v125], 1, v127) == 1)
  {
    (*(v211 + 8))(v128, v127);
    goto LABEL_54;
  }

  v129 = v211;
  v130 = v203;
  (*(v211 + 32))(v203, &v225[v125], v127);
  sub_1B49B0578(&qword_1EB8A7880, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968090]);
  LODWORD(v225) = sub_1B4D1816C();
  v131 = *(v129 + 8);
  v131(v130, v127);
  v131(v128, v127);
  sub_1B4975024(v125, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((v225 & 1) == 0)
  {
    return 0;
  }

LABEL_56:
  v132 = v111[13];
  v133 = *(v224 + 48);
  v47 = v204;
  sub_1B4974FBC(v102 + v132, v204, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v228 + v132, &v47[v133], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v134 = v226;
  if ((v226)(v47, 1, v92) == 1)
  {
    if (v134(&v47[v133], 1, v92) == 1)
    {
      sub_1B4975024(v47, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_62;
    }

    goto LABEL_40;
  }

  v135 = v199;
  sub_1B4974FBC(v47, v199, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v134(&v47[v133], 1, v92) == 1)
  {
    (*(v222 + 8))(v135, v92);
    goto LABEL_40;
  }

  v136 = v222;
  v137 = v217;
  (*(v222 + 32))(v217, &v47[v133], v92);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v138 = sub_1B4D1816C();
  v139 = *(v136 + 8);
  v139(v137, v92);
  v139(v135, v92);
  sub_1B4975024(v47, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v138 & 1) == 0)
  {
    return 0;
  }

LABEL_62:
  v140 = v111[14];
  v141 = *(v195 + 48);
  v142 = v200;
  sub_1B4974FBC(v102 + v140, v200, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(v228 + v140, v142 + v141, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v143 = *(v201 + 48);
  v144 = v202;
  if (v143(v142, 1, v202) == 1)
  {
    if (v143(v142 + v141, 1, v144) == 1)
    {
      sub_1B4975024(v142, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  sub_1B4974FBC(v142, v196, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v143(v142 + v141, 1, v144) == 1)
  {
    (*(v201 + 8))(v196, v202);
    v142 = v200;
LABEL_67:
    v72 = &qword_1EB8A6F68;
    v73 = &unk_1B4D1C550;
    v74 = v142;
    goto LABEL_31;
  }

  v145 = v201;
  v146 = v200;
  v147 = v200 + v141;
  v148 = v190;
  v149 = v202;
  (*(v201 + 32))(v190, v147, v202);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
  v150 = v196;
  v151 = sub_1B4D1816C();
  v152 = *(v145 + 8);
  v152(v148, v149);
  v152(v150, v149);
  sub_1B4975024(v146, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((v151 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  v153 = v187[15];
  v154 = *(v193 + 48);
  v155 = v197;
  sub_1B4974FBC(v227 + v153, v197, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v228 + v153, v155 + v154, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v156 = *(v194 + 48);
  if (v156(v155, 1, v198) == 1)
  {
    if (v156(v197 + v154, 1, v198) == 1)
    {
      sub_1B4975024(v197, &qword_1EB8A6CC8, &unk_1B4D464B0);
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  v157 = v197;
  sub_1B4974FBC(v197, v191, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v156(v157 + v154, 1, v198) == 1)
  {
    (*(v194 + 8))(v191, v198);
LABEL_74:
    v72 = &qword_1EB8A9E10;
    v73 = &unk_1B4D46A80;
    v74 = v197;
    goto LABEL_31;
  }

  v158 = v194;
  v159 = v197;
  v160 = v188;
  v161 = v198;
  (*(v194 + 32))(v188, v197 + v154, v198);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
  v162 = v191;
  v163 = sub_1B4D1816C();
  v164 = *(v158 + 8);
  v164(v160, v161);
  v164(v162, v161);
  sub_1B4975024(v159, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((v163 & 1) == 0)
  {
    return 0;
  }

LABEL_76:
  v165 = v187[16];
  v166 = *(v193 + 48);
  v167 = v192;
  sub_1B4974FBC(v227 + v165, v192, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v228 + v165, v167 + v166, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v156(v167, 1, v198) == 1)
  {
    if (v156(v192 + v166, 1, v198) == 1)
    {
      sub_1B4975024(v192, &qword_1EB8A6CC8, &unk_1B4D464B0);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v168 = v192;
  sub_1B4974FBC(v192, v189, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v156(v168 + v166, 1, v198) == 1)
  {
    (*(v194 + 8))(v189, v198);
LABEL_81:
    v72 = &qword_1EB8A9E10;
    v73 = &unk_1B4D46A80;
    v74 = v192;
    goto LABEL_31;
  }

  v169 = v194;
  v170 = v192;
  v171 = v192 + v166;
  v172 = v188;
  v173 = v198;
  (*(v194 + 32))(v188, v171, v198);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
  v174 = v189;
  v175 = sub_1B4D1816C();
  v176 = *(v169 + 8);
  v176(v172, v173);
  v176(v174, v173);
  sub_1B4975024(v170, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((v175 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  v177 = v187[17];
  v178 = *(v227 + v177);
  v179 = *(v228 + v177);
  if (v178 == 2)
  {
    if (v179 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v179 == 2 || ((v179 ^ v178) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v227 + v187[18]) != *(v228 + v187[18]))
  {
    return 0;
  }

  v180 = v187[19];
  v181 = *(v227 + v180);
  v182 = *(v228 + v180);
  if (v181 == 2)
  {
    if (v182 != 2)
    {
      return 0;
    }

    goto LABEL_94;
  }

  result = 0;
  if (v182 != 2 && ((v182 ^ v181) & 1) == 0)
  {
LABEL_94:
    v183 = v187[20];
    v184 = *(v227 + v183);
    v185 = *(v228 + v183);
    if (v184 != 2)
    {
      return v185 != 2 && ((v185 ^ v184) & 1) == 0;
    }

    return v185 == 2;
  }

  return result;
}

uint64_t _s19FitnessIntelligence16WorkoutSplitFactV0dE4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E20, &qword_1B4D2C428);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  v18 = &v29 + *(v17 + 56) - v15;
  sub_1B4AEF0D4(v31, &v29 - v15, type metadata accessor for WorkoutSplitFact.SplitFactType);
  sub_1B4AEF0D4(v32, v18, type metadata accessor for WorkoutSplitFact.SplitFactType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4AEF0D4(v16, v13, type metadata accessor for WorkoutSplitFact.SplitFactType);
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48);
    v24 = v13[v23];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = v18[v23];
      (*(v5 + 32))(v7, v18, v4);
      sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
      v27 = sub_1B4D1816C();
      v28 = *(v5 + 8);
      v28(v7, v4);
      v28(v13, v4);
      if (v27)
      {
        sub_1B4AEF13C(v16, type metadata accessor for WorkoutSplitFact.SplitFactType);
        v21 = v24 ^ v26 ^ 1;
        return v21 & 1;
      }

      sub_1B4AEF13C(v16, type metadata accessor for WorkoutSplitFact.SplitFactType);
      goto LABEL_8;
    }

    (*(v5 + 8))(v13, v4);
LABEL_7:
    sub_1B4975024(v16, &qword_1EB8A9E20, &qword_1B4D2C428);
LABEL_8:
    v21 = 0;
    return v21 & 1;
  }

  sub_1B4AEF0D4(v16, v10, type metadata accessor for WorkoutSplitFact.SplitFactType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v30 + 8))(v10, v2);
    goto LABEL_7;
  }

  v20 = v29;
  v19 = v30;
  (*(v30 + 32))(v29, v18, v2);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  v21 = sub_1B4D1816C();
  v22 = *(v19 + 8);
  v22(v20, v2);
  v22(v10, v2);
  sub_1B4AEF13C(v16, type metadata accessor for WorkoutSplitFact.SplitFactType);
  return v21 & 1;
}

unint64_t sub_1B4AEEEBC()
{
  result = qword_1EB8A9D18;
  if (!qword_1EB8A9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9D18);
  }

  return result;
}

unint64_t sub_1B4AEEF10()
{
  result = qword_1EB8A9D20;
  if (!qword_1EB8A9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9D20);
  }

  return result;
}

unint64_t sub_1B4AEEF64()
{
  result = qword_1EB8A9D30;
  if (!qword_1EB8A9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9D30);
  }

  return result;
}

uint64_t sub_1B4AEEFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4AEF03C()
{
  result = qword_1EB8A9D58;
  if (!qword_1EB8A9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9D58);
  }

  return result;
}

uint64_t sub_1B4AEF090(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutSplitFact.SplitFactType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4AEF0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AEF13C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B4AEF1C4(uint64_t a1)
{
  sub_1B49BEEDC(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WorkoutSplitFact.SplitFactType(319);
    if (v2 <= 0x3F)
    {
      sub_1B49AFCD8(319, &qword_1EDC3CB20, &qword_1EB8A6850, &unk_1B4D1BC10);
      if (v3 <= 0x3F)
      {
        sub_1B49AFCD8(319, &qword_1EDC3CB30, &qword_1EB8A6830, &unk_1B4D1AB40);
        if (v4 <= 0x3F)
        {
          sub_1B49AFCD8(319, &qword_1EDC37888, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
          if (v5 <= 0x3F)
          {
            sub_1B49AFCD8(319, &qword_1EDC37880, &qword_1EB8A6CE0, &unk_1B4D1EF00);
            if (v6 <= 0x3F)
            {
              sub_1B49AFCD8(319, &qword_1EDC3CB48, &qword_1EB8A6868, &unk_1B4D1AB80);
              if (v7 <= 0x3F)
              {
                sub_1B49AFCD8(319, &qword_1EDC37868, &qword_1EB8A6CD0, &unk_1B4D1F270);
                if (v8 <= 0x3F)
                {
                  sub_1B49AFD84();
                  if (v9 <= 0x3F)
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
  }
}

void sub_1B4AEF3CC(uint64_t a1)
{
  sub_1B4AEF46C(319);
  if (v1 <= 0x3F)
  {
    sub_1B49BEEDC(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008, MEMORY[0x1E6968070]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B4AEF46C(uint64_t a1)
{
  if (!qword_1EB8A9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB8A9DA8);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutSplitFact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutSplitFact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4AEF668()
{
  result = qword_1EB8A9DB0;
  if (!qword_1EB8A9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DB0);
  }

  return result;
}

unint64_t sub_1B4AEF6C0()
{
  result = qword_1EB8A9DB8;
  if (!qword_1EB8A9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DB8);
  }

  return result;
}

unint64_t sub_1B4AEF718()
{
  result = qword_1EB8A9DC0;
  if (!qword_1EB8A9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DC0);
  }

  return result;
}

unint64_t sub_1B4AEF770()
{
  result = qword_1EB8A9DC8;
  if (!qword_1EB8A9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DC8);
  }

  return result;
}

unint64_t sub_1B4AEF7C8()
{
  result = qword_1EB8A9DD0;
  if (!qword_1EB8A9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DD0);
  }

  return result;
}

unint64_t sub_1B4AEF820()
{
  result = qword_1EB8A9DD8;
  if (!qword_1EB8A9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DD8);
  }

  return result;
}

unint64_t sub_1B4AEF878()
{
  result = qword_1EB8A9DE0;
  if (!qword_1EB8A9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DE0);
  }

  return result;
}

unint64_t sub_1B4AEF8D0()
{
  result = qword_1EB8A9DE8;
  if (!qword_1EB8A9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DE8);
  }

  return result;
}

unint64_t sub_1B4AEF928()
{
  result = qword_1EB8A9DF0;
  if (!qword_1EB8A9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DF0);
  }

  return result;
}

unint64_t sub_1B4AEF980()
{
  result = qword_1EB8A9DF8;
  if (!qword_1EB8A9DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DF8);
  }

  return result;
}

unint64_t sub_1B4AEF9D8()
{
  result = qword_1EB8A9E00;
  if (!qword_1EB8A9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E00);
  }

  return result;
}

unint64_t sub_1B4AEFA30()
{
  result = qword_1EB8A9E08;
  if (!qword_1EB8A9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E08);
  }

  return result;
}

uint64_t sub_1B4AEFA84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D754E74696C7073 && a2 == 0xEB00000000726562 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D613E0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D61400 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7369446C61746F74 && a2 == 0xED000065636E6174 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5065676172657661 && a2 == 0xEC0000007265776FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69746176656C65 && a2 == 0xEF64656E6961476ELL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D61420 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D61440 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61460 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7365747361467369 && a2 == 0xEE0074696C705374 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x72616D6D75537369 && a2 == 0xED0000676E697A69 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B4D61480 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B4D614A0 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t type metadata accessor for RingClosureStreakFact(uint64_t a1)
{
  result = qword_1EB8A9E40;
  if (!qword_1EB8A9E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4AF0100()
{
  v1 = *v0;
  v2 = 0x6C416B6165727473;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1B4AF01B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4AF0C04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4AF01D8(uint64_t a1)
{
  v2 = sub_1B4AF0920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF0214(uint64_t a1)
{
  v2 = sub_1B4AF0920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RingClosureStreakFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E28, &qword_1B4D2C430);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF0920();
  sub_1B4D18EFC();
  v8[15] = 0;
  sub_1B4D18CEC();
  if (!v1)
  {
    type metadata accessor for RingClosureStreakFact(0);
    v8[14] = 1;
    type metadata accessor for RingProgressType(0);
    sub_1B49951E4(&qword_1EB8A6BE0, &protocol conformance descriptor for RingProgressType);
    sub_1B4D18D0C();
    v8[13] = 2;
    sub_1B4D18CCC();
    v8[12] = 3;
    sub_1B4D18CCC();
    v8[11] = 4;
    sub_1B4D18CCC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RingClosureStreakFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E38, &qword_1B4D2C438);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for RingClosureStreakFact(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF0920();
  v24 = v8;
  v12 = v25;
  sub_1B4D18EEC();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13 = a1;
  v15 = v22;
  v14 = v23;
  v30 = 0;
  v16 = sub_1B4D18BEC();
  v25 = v11;
  *v11 = v16;
  v29 = 1;
  sub_1B49951E4(&qword_1EB8A6BF0, &protocol conformance descriptor for RingProgressType);
  sub_1B4D18C0C();
  v17 = v25;
  sub_1B4995228(v5, v25 + v9[5]);
  v28 = 2;
  *(v17 + v9[6]) = sub_1B4D18BCC() & 1;
  v27 = 3;
  *(v17 + v9[7]) = sub_1B4D18BCC() & 1;
  v26 = 4;
  v19 = sub_1B4D18BCC();
  (*(v15 + 8))(v24, v14);
  *(v17 + v9[8]) = v19 & 1;
  sub_1B4AF0974(v17, v21, type metadata accessor for RingClosureStreakFact);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return sub_1B4AF09DC(v17, type metadata accessor for RingClosureStreakFact);
}

uint64_t _s19FitnessIntelligence21RingClosureStreakFactV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for RingClosureStreakFact(0);
  if ((static RingProgressType.== infix(_:_:)(a1 + v4[5], a2 + v4[5]) & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v5 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1B4AF0920()
{
  result = qword_1EB8A9E30;
  if (!qword_1EB8A9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E30);
  }

  return result;
}

uint64_t sub_1B4AF0974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AF09DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4AF0A64(uint64_t a1)
{
  result = type metadata accessor for RingProgressType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4AF0B00()
{
  result = qword_1EB8A9E50;
  if (!qword_1EB8A9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E50);
  }

  return result;
}

unint64_t sub_1B4AF0B58()
{
  result = qword_1EB8A9E58;
  if (!qword_1EB8A9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E58);
  }

  return result;
}

unint64_t sub_1B4AF0BB0()
{
  result = qword_1EB8A9E60;
  if (!qword_1EB8A9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E60);
  }

  return result;
}

uint64_t sub_1B4AF0C04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C416B6165727473 && a2 == 0xED0000656D69546CLL;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F000 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F020 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F040 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4D61540 == a2)
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

void __swiftcall WorkoutMediaCurrentPlayingItemFact.init(mediaDetails:)(FitnessIntelligence::WorkoutMediaCurrentPlayingItemFact *__return_ptr retstr, FitnessIntelligence::WorkoutMediaDetails *mediaDetails)
{
  v2 = *&mediaDetails->isFavorited;
  retstr->mediaDetails.genreName = mediaDetails->genreName;
  *&retstr->mediaDetails.isFavorited = v2;
  *(&retstr->mediaDetails.duration.value + 5) = *(&mediaDetails->duration.value + 5);
  LOBYTE(retstr[1].mediaDetails.title.value._object) = mediaDetails[1].title.value._object;
  artistName = mediaDetails->artistName;
  retstr->mediaDetails.title = mediaDetails->title;
  retstr->mediaDetails.artistName = artistName;
}

BOOL static WorkoutMediaCurrentPlayingItemFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v25 = *(a1 + 32);
  v26 = v2;
  v4 = *(a1 + 48);
  v27 = *(a1 + 64);
  v5 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v30 = *(a2 + 32);
  v31 = v6;
  v8 = *(a2 + 48);
  v32 = *(a2 + 64);
  v9 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v9;
  v20 = v25;
  v21 = v4;
  v22 = *(a1 + 64);
  v18 = v24[0];
  v19 = v3;
  v14 = v30;
  v15 = v8;
  v16 = *(a2 + 64);
  v28 = *(a1 + 80);
  v33 = *(a2 + 80);
  v23 = *(a1 + 80);
  v17 = *(a2 + 80);
  v12 = v29[0];
  v13 = v7;
  v10 = _s19FitnessIntelligence19WorkoutMediaDetailsV2eeoiySbAC_ACtFZ_0(&v18, &v12);
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v35 = v17;
  v34[0] = v12;
  v34[1] = v13;
  sub_1B4A22530(v24, v36);
  sub_1B4A22530(v29, v36);
  sub_1B4A22568(v34);
  v36[2] = v20;
  v36[3] = v21;
  v36[4] = v22;
  v37 = v23;
  v36[0] = v18;
  v36[1] = v19;
  sub_1B4A22568(v36);
  return v10;
}

uint64_t sub_1B4AF0F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746544616964656DLL && a2 == 0xEC000000736C6961)
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

uint64_t sub_1B4AF0FB4(uint64_t a1)
{
  v2 = sub_1B4AF14D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF0FF0(uint64_t a1)
{
  v2 = sub_1B4AF14D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutMediaCurrentPlayingItemFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E68, &qword_1B4D2C610);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[3];
  v20 = v1[2];
  v21 = v7;
  v22 = v1[4];
  v23 = *(v1 + 80);
  v8 = v1[1];
  v18 = *v1;
  v19 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A22530(&v18, &v12);
  sub_1B4AF14D0();
  sub_1B4D18EFC();
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12 = v18;
  v13 = v19;
  sub_1B4AF1524();
  sub_1B4D18D0C();
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v11 = v17;
  v10[0] = v12;
  v10[1] = v13;
  sub_1B4A22568(v10);
  return (*(v4 + 8))(v6, v3);
}

uint64_t WorkoutMediaCurrentPlayingItemFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E80, &qword_1B4D2C618);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF14D0();
  sub_1B4D18EEC();
  if (!v2)
  {
    sub_1B4AF1578();
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    v9 = v15;
    *(a2 + 32) = v14;
    *(a2 + 48) = v9;
    *(a2 + 64) = v16;
    *(a2 + 80) = v17;
    v10 = v13;
    *a2 = *&v12[8];
    *(a2 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

BOOL sub_1B4AF13B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v25 = *(a1 + 32);
  v26 = v2;
  v4 = *(a1 + 48);
  v27 = *(a1 + 64);
  v5 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v30 = *(a2 + 32);
  v31 = v6;
  v8 = *(a2 + 48);
  v32 = *(a2 + 64);
  v9 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v9;
  v20 = v25;
  v21 = v4;
  v22 = *(a1 + 64);
  v18 = v24[0];
  v19 = v3;
  v14 = v30;
  v15 = v8;
  v16 = *(a2 + 64);
  v28 = *(a1 + 80);
  v33 = *(a2 + 80);
  v23 = *(a1 + 80);
  v17 = *(a2 + 80);
  v12 = v29[0];
  v13 = v7;
  v10 = _s19FitnessIntelligence19WorkoutMediaDetailsV2eeoiySbAC_ACtFZ_0(&v18, &v12);
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v35 = v17;
  v34[0] = v12;
  v34[1] = v13;
  sub_1B4A22530(v24, v36);
  sub_1B4A22530(v29, v36);
  sub_1B4A22568(v34);
  v36[2] = v20;
  v36[3] = v21;
  v36[4] = v22;
  v37 = v23;
  v36[0] = v18;
  v36[1] = v19;
  sub_1B4A22568(v36);
  return v10;
}

unint64_t sub_1B4AF14D0()
{
  result = qword_1EB8A9E70;
  if (!qword_1EB8A9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E70);
  }

  return result;
}

unint64_t sub_1B4AF1524()
{
  result = qword_1EB8A9E78;
  if (!qword_1EB8A9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E78);
  }

  return result;
}

unint64_t sub_1B4AF1578()
{
  result = qword_1EB8A9E88;
  if (!qword_1EB8A9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E88);
  }

  return result;
}

unint64_t sub_1B4AF15F0()
{
  result = qword_1EB8A9E90;
  if (!qword_1EB8A9E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E90);
  }

  return result;
}

unint64_t sub_1B4AF1648()
{
  result = qword_1EB8A9E98;
  if (!qword_1EB8A9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E98);
  }

  return result;
}

unint64_t sub_1B4AF16A0()
{
  result = qword_1EB8A9EA0;
  if (!qword_1EB8A9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9EA0);
  }

  return result;
}

uint64_t WorkoutAwardsFact.init(date:dateEarned:awardType:templateUniqueName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1B4D1777C();
  v13 = *(*(v12 - 8) + 32);
  v13(a6, a1, v12);
  v14 = type metadata accessor for WorkoutAwardsFact(0);
  v13(a6 + v14[5], a2, v12);
  result = sub_1B4AF3DB8(a3, a6 + v14[6], type metadata accessor for WorkoutAwardsFact.AwardType);
  v16 = (a6 + v14[7]);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t WorkoutAwardsFact.AwardDistance.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t WorkoutAwardsFact.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D1777C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutAwardsFact.dateEarned.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutAwardsFact(0) + 20);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutAwardsFact.templateUniqueName.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutAwardsFact(0) + 28));

  return v1;
}

uint64_t static WorkoutAwardsFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutAwardsFact(0);
  if ((sub_1B4D1774C() & 1) == 0 || (_s19FitnessIntelligence17WorkoutAwardsFactV9AwardTypeO2eeoiySbAE_AEtFZ_0(a1 + *(v4 + 24), (a2 + *(v4 + 24)), v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 28);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1B4D18DCC();
}

uint64_t sub_1B4AF1AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1B4D1774C() & 1) == 0 || (sub_1B4D1774C() & 1) == 0 || (static WorkoutAwardsFact.AwardType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 28);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1B4D18DCC();
}

uint64_t _s19FitnessIntelligence17WorkoutAwardsFactV9RingValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9F70, &qword_1B4D2C9C8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v45 - v24;
  v27 = *(v26 + 56);
  sub_1B4AF3CF0(v53, &v45 - v24, type metadata accessor for WorkoutAwardsFact.RingValue);
  sub_1B4AF3CF0(v54, &v25[v27], type metadata accessor for WorkoutAwardsFact.RingValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1B4AF3CF0(v25, v13, type metadata accessor for WorkoutAwardsFact.RingValue);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v49 + 8))(v13, v50);
        goto LABEL_16;
      }

      v38 = v49;
      v37 = v50;
      v39 = &v25[v27];
      v40 = v47;
      (*(v49 + 32))(v47, v39, v50);
      sub_1B4A1F6B0(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
      v32 = sub_1B4D1816C();
      v41 = *(v38 + 8);
      v41(v40, v37);
      v41(v13, v37);
LABEL_18:
      sub_1B4AF3D58(v25, type metadata accessor for WorkoutAwardsFact.RingValue);
      return v32 & 1;
    }

    sub_1B4AF3CF0(v25, v16, type metadata accessor for WorkoutAwardsFact.RingValue);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v51 + 8))(v16, v52);
      goto LABEL_16;
    }

    v30 = v51;
    v29 = v52;
    v31 = v46;
    (*(v51 + 32))(v46, &v25[v27], v52);
    sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
    v32 = sub_1B4D1816C();
    v33 = *(v30 + 8);
    v33(v31, v29);
    v34 = v16;
LABEL_10:
    v33(v34, v29);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1B4AF3CF0(v25, v19, type metadata accessor for WorkoutAwardsFact.RingValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v51 + 8))(v19, v52);
      goto LABEL_16;
    }

    v35 = v51;
    v29 = v52;
    v36 = v45;
    (*(v51 + 32))(v45, &v25[v27], v52);
    sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
    v32 = sub_1B4D1816C();
    v33 = *(v35 + 8);
    v33(v36, v29);
    v34 = v19;
    goto LABEL_10;
  }

  sub_1B4AF3CF0(v25, v22, type metadata accessor for WorkoutAwardsFact.RingValue);
  if (!swift_getEnumCaseMultiPayload())
  {
    v42 = v48;
    (*(v48 + 32))(v10, &v25[v27], v8);
    sub_1B4A1F6B0(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
    v32 = sub_1B4D1816C();
    v43 = *(v42 + 8);
    v43(v10, v8);
    v43(v22, v8);
    goto LABEL_18;
  }

  (*(v48 + 8))(v22, v8);
LABEL_16:
  sub_1B4975024(v25, &qword_1EB8A9F70, &qword_1B4D2C9C8);
  v32 = 0;
  return v32 & 1;
}

uint64_t _s19FitnessIntelligence17WorkoutAwardsFactV9AwardTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, void *a2, double a3)
{
  v199 = a1;
  v200 = a2;
  v3 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v180 = &v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v179 = &v173 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v197 = *(v7 - 8);
  v198 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v182 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v183 = &v173 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v181 = &v173 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v186 = &v173 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v184 = *(v15 - 8);
  v185 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v175 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v176 = &v173 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v195 = *(v19 - 8);
  v196 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v177 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v178 = &v173 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v173 = &v173 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v174 = &v173 - v26;
  v27 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v193 = (&v173 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v191 = (&v173 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v189 = &v173 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v188 = &v173 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v192 = &v173 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v190 = &v173 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v173 - v42);
  MEMORY[0x1EEE9AC00](v44);
  v187 = (&v173 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v48 = (&v173 - v47);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v173 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v173 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = (&v173 - v56);
  MEMORY[0x1EEE9AC00](v58);
  v60 = (&v173 - v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9F78, &unk_1B4D2C9D0);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v63 = &v173 - v62;
  v65 = &v173 + *(v64 + 56) - v62;
  sub_1B4AF3CF0(v199, &v173 - v62, type metadata accessor for WorkoutAwardsFact.AwardType);
  v66 = v200;
  v200 = v65;
  sub_1B4AF3CF0(v66, v65, type metadata accessor for WorkoutAwardsFact.AwardType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B4AF3CF0(v63, v57, type metadata accessor for WorkoutAwardsFact.AwardType);
      v71 = v200;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_53;
      }

      v84 = *v57;
      goto LABEL_27;
    case 2u:
      sub_1B4AF3CF0(v63, v54, type metadata accessor for WorkoutAwardsFact.AwardType);
      v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0) + 48);
      v91 = v200;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v184 + 8))(&v54[v90], v185);
        goto LABEL_53;
      }

      v92 = *v54;
      v93 = *v91;
      v94 = v184;
      v95 = *(v184 + 32);
      v96 = &v54[v90];
      v97 = v176;
      v98 = v185;
      v95(v176, v96, v185);
      v99 = &v91[v90];
      v100 = v175;
      v95(v175, v99, v98);
      if (v92 == v93)
      {
        sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
        v82 = sub_1B4D1816C();
        v101 = *(v94 + 8);
        v101(v100, v98);
        v102 = v97;
        goto LABEL_57;
      }

      v164 = *(v94 + 8);
      v164(v100, v98);
      v165 = v97;
      goto LABEL_70;
    case 3u:
      sub_1B4AF3CF0(v63, v51, type metadata accessor for WorkoutAwardsFact.AwardType);
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E98, &unk_1B4D25A40) + 48);
      v104 = v200;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v195 + 8))(&v51[v103], v196);
        goto LABEL_53;
      }

      v105 = *v51;
      v106 = *v104;
      v107 = v195;
      v108 = *(v195 + 32);
      v109 = &v51[v103];
      v110 = v178;
      v111 = v196;
      v108(v178, v109, v196);
      v112 = &v104[v103];
      v113 = v177;
      v108(v177, v112, v111);
      v202 = v105;
      v201 = v106;
      v114 = FitnessPlusModalityKind.rawValue.getter();
      v116 = v115;
      if (v114 == FitnessPlusModalityKind.rawValue.getter() && v116 == v117)
      {

LABEL_61:
        sub_1B4A1F6B0(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
        v82 = sub_1B4D1816C();
        v167 = *(v107 + 8);
        v167(v113, v111);
        v167(v110, v111);
        goto LABEL_62;
      }

      v166 = sub_1B4D18DCC();

      if (v166)
      {
        goto LABEL_61;
      }

      v172 = *(v107 + 8);
      v172(v113, v111);
      v172(v110, v111);
LABEL_72:
      sub_1B4AF3D58(v63, type metadata accessor for WorkoutAwardsFact.AwardType);
LABEL_54:
      v82 = 0;
      return v82 & 1;
    case 4u:
      sub_1B4AF3CF0(v63, v48, type metadata accessor for WorkoutAwardsFact.AwardType);
      v67 = *v48;
      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E90, &unk_1B4D2C9E0) + 48);
      v73 = v200;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v197 + 8))(v48 + v72, v198);
        goto LABEL_52;
      }

      v74 = *v73;
      v76 = v197;
      v75 = v198;
      v77 = *(v197 + 32);
      v77(v186, v48 + v72, v198);
      v78 = v73 + v72;
      v79 = v181;
      v77(v181, v78, v75);
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v80 = sub_1B4D187AC();

      if (v80)
      {
        sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
        v81 = v186;
        v82 = sub_1B4D1816C();
        v83 = *(v76 + 8);
        v83(v79, v75);
        v83(v81, v75);
        goto LABEL_62;
      }

      v163 = *(v76 + 8);
      v163(v79, v75);
      v163(v186, v75);
      goto LABEL_72;
    case 5u:
      v122 = v187;
      sub_1B4AF3CF0(v63, v187, type metadata accessor for WorkoutAwardsFact.AwardType);
      v67 = *v122;
      v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E88, &unk_1B4D25A30) + 48);
      v124 = v200;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v197 + 8))(v122 + v123, v198);
        goto LABEL_52;
      }

      v125 = *v124;
      v126 = v197;
      v127 = *(v197 + 32);
      v128 = v122 + v123;
      v129 = v183;
      v130 = v198;
      v127(v183, v128, v198);
      v131 = v124 + v123;
      v132 = v182;
      v127(v182, v131, v130);
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v133 = sub_1B4D187AC();

      if (v133)
      {
        sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
        v82 = sub_1B4D1816C();
        v134 = *(v126 + 8);
        v134(v132, v130);
        v134(v129, v130);
        goto LABEL_62;
      }

      v170 = *(v126 + 8);
      v170(v132, v130);
      v170(v129, v130);
      goto LABEL_72;
    case 6u:
      sub_1B4AF3CF0(v63, v43, type metadata accessor for WorkoutAwardsFact.AwardType);
      v67 = *v43;
      v144 = v200;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_52;
      }

      v145 = *v144;
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v82 = sub_1B4D187AC();

      goto LABEL_62;
    case 7u:
      v118 = v190;
      sub_1B4AF3CF0(v63, v190, type metadata accessor for WorkoutAwardsFact.AwardType);
      v119 = v200;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_47;
      }

      v120 = v119;
      v121 = &v207;
      goto LABEL_46;
    case 8u:
      v118 = v192;
      sub_1B4AF3CF0(v63, v192, type metadata accessor for WorkoutAwardsFact.AwardType);
      v153 = v200;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
LABEL_47:
        sub_1B4AF3D58(v118, type metadata accessor for WorkoutAwardsFact.RingValue);
        goto LABEL_53;
      }

      v120 = v153;
      v121 = &v208;
LABEL_46:
      v154 = *(v121 - 32);
      sub_1B4AF3DB8(v120, v154, type metadata accessor for WorkoutAwardsFact.RingValue);
      v82 = _s19FitnessIntelligence17WorkoutAwardsFactV9RingValueO2eeoiySbAE_AEtFZ_0(v118, v154);
      sub_1B4AF3D58(v154, type metadata accessor for WorkoutAwardsFact.RingValue);
      sub_1B4AF3D58(v118, type metadata accessor for WorkoutAwardsFact.RingValue);
      goto LABEL_62;
    case 9u:
      v85 = v188;
      sub_1B4AF3CF0(v63, v188, type metadata accessor for WorkoutAwardsFact.AwardType);
      v86 = *(v85 + 8);
      v87 = v200;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_53;
      }

      v88 = v87[1];
      if ((sub_1B4975CE8(*v85, *v87) & 1) == 0)
      {
        goto LABEL_72;
      }

      v89 = v86 == v88;
      goto LABEL_28;
    case 0xAu:
      v146 = v189;
      sub_1B4AF3CF0(v63, v189, type metadata accessor for WorkoutAwardsFact.AwardType);
      v147 = v200;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_53;
      }

      v148 = *v147;
      v204 = *v146;
      v203 = v148;
      v149 = FitnessPlusModalityKind.rawValue.getter();
      v151 = v150;
      if (v149 == FitnessPlusModalityKind.rawValue.getter() && v151 == v152)
      {
      }

      else
      {
        v171 = sub_1B4D18DCC();

        if ((v171 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

LABEL_68:
      sub_1B4AF3D58(v63, type metadata accessor for WorkoutAwardsFact.AwardType);
      v82 = 1;
      return v82 & 1;
    case 0xBu:
      v70 = v191;
      sub_1B4AF3CF0(v63, v191, type metadata accessor for WorkoutAwardsFact.AwardType);
      v71 = v200;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_53;
      }

      goto LABEL_12;
    case 0xCu:
      v70 = v193;
      sub_1B4AF3CF0(v63, v193, type metadata accessor for WorkoutAwardsFact.AwardType);
      v71 = v200;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_53;
      }

LABEL_12:
      v84 = *v70;
LABEL_27:
      v89 = v84 == *v71;
      goto LABEL_28;
    case 0xDu:
      v135 = v194;
      sub_1B4AF3CF0(v63, v194, type metadata accessor for WorkoutAwardsFact.AwardType);
      v136 = *(v135 + 8);
      v137 = v200;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_53;
      }

      v138 = *v137;
      v139 = v137[1];
      v206 = *v135;
      v205 = v138;
      v140 = FitnessPlusModalityKind.rawValue.getter();
      v142 = v141;
      if (v140 == FitnessPlusModalityKind.rawValue.getter() && v142 == v143)
      {

        v89 = v136 == v139;
      }

      else
      {
        v169 = sub_1B4D18DCC();

        if ((v169 & 1) == 0)
        {
          goto LABEL_72;
        }

        v89 = v136 == v139;
      }

LABEL_28:
      v82 = v89;
      goto LABEL_62;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_68;
      }

      goto LABEL_53;
    default:
      sub_1B4AF3CF0(v63, v60, type metadata accessor for WorkoutAwardsFact.AwardType);
      v67 = *v60;
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA8, &unk_1B4D25A50) + 48);
      v69 = v200;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v195 + 8))(v60 + v68, v196);
LABEL_52:

LABEL_53:
        sub_1B4975024(v63, &qword_1EB8A9F78, &unk_1B4D2C9D0);
        goto LABEL_54;
      }

      v155 = *v69;
      v156 = v195;
      v98 = v196;
      v157 = *(v195 + 32);
      v158 = v60 + v68;
      v159 = v174;
      v157(v174, v158, v196);
      v160 = v69 + v68;
      v161 = v173;
      v157(v173, v160, v98);
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v162 = sub_1B4D187AC();

      if ((v162 & 1) == 0)
      {
        v164 = *(v156 + 8);
        v164(v161, v98);
        v165 = v159;
LABEL_70:
        v164(v165, v98);
        goto LABEL_72;
      }

      sub_1B4A1F6B0(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
      v82 = sub_1B4D1816C();
      v101 = *(v156 + 8);
      v101(v161, v98);
      v102 = v159;
LABEL_57:
      v101(v102, v98);
LABEL_62:
      sub_1B4AF3D58(v63, type metadata accessor for WorkoutAwardsFact.AwardType);
      return v82 & 1;
  }
}

unint64_t sub_1B4AF34E4()
{
  result = qword_1EB8A9EA8;
  if (!qword_1EB8A9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9EA8);
  }

  return result;
}

uint64_t sub_1B4AF3560(uint64_t a1)
{
  result = sub_1B4D1777C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WorkoutAwardsFact.AwardType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B4AF35EC(uint64_t a1)
{
  sub_1B4AF3908(319, &qword_1EB8A9ED0, &qword_1EB8A6868, &unk_1B4D1AB80, "activityType energy ");
  if (v1 <= 0x3F)
  {
    sub_1B4AF37E8();
    if (v2 <= 0x3F)
    {
      sub_1B4AF3818(319);
      if (v3 <= 0x3F)
      {
        sub_1B4AF3890(319);
        if (v4 <= 0x3F)
        {
          sub_1B4AF3908(319, &qword_1EB8A9EF0, &qword_1EB8A6830, &unk_1B4D1AB40, "activityType distance ");
          if (v5 <= 0x3F)
          {
            sub_1B4AF3908(319, &qword_1EB8A9EF8, &qword_1EB8A6830, &unk_1B4D1AB40, "activityType elevationGain ");
            if (v6 <= 0x3F)
            {
              sub_1B4AF39A0();
              if (v7 <= 0x3F)
              {
                sub_1B4AF39F8(319, &qword_1EB8A9F08, type metadata accessor for WorkoutAwardsFact.RingValue);
                if (v8 <= 0x3F)
                {
                  sub_1B4AF3AF4(319, &qword_1EB8A9F10, &type metadata for Ring, "ringType earnedInstanceCount ");
                  if (v9 <= 0x3F)
                  {
                    sub_1B4AF3A64();
                    if (v10 <= 0x3F)
                    {
                      sub_1B4AF3A94();
                      if (v11 <= 0x3F)
                      {
                        sub_1B4AF3AC4();
                        if (v12 <= 0x3F)
                        {
                          sub_1B4AF3AF4(319, &qword_1EB8A9F30, &type metadata for FitnessPlusModalityKind, "fitnessPlusModality numWorkouts ");
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B4AF37E8()
{
  result = qword_1EB8A9ED8;
  if (!qword_1EB8A9ED8)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB8A9ED8);
  }

  return result;
}

void sub_1B4AF3818(uint64_t a1)
{
  if (!qword_1EB8A9EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB8A9EE0);
    }
  }
}

void sub_1B4AF3890(uint64_t a1)
{
  if (!qword_1EB8A9EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB8A9EE8);
    }
  }
}

void sub_1B4AF3908(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1B498AFB8(255, &qword_1EDC36DC8, 0x1E699C9F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B4AF39A0()
{
  if (!qword_1EB8A9F00)
  {
    v0 = sub_1B498AFB8(0, &qword_1EDC36DC8, 0x1E699C9F0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8A9F00);
    }
  }
}

void sub_1B4AF39F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

ValueMetadata *sub_1B4AF3A64()
{
  result = qword_1EB8A9F18;
  if (!qword_1EB8A9F18)
  {
    result = &type metadata for FitnessPlusModalityKind;
    atomic_store(&type metadata for FitnessPlusModalityKind, &qword_1EB8A9F18);
  }

  return result;
}

uint64_t sub_1B4AF3A94()
{
  result = qword_1EB8A9F20;
  if (!qword_1EB8A9F20)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB8A9F20);
  }

  return result;
}

uint64_t sub_1B4AF3AC4()
{
  result = qword_1EB8A9F28;
  if (!qword_1EB8A9F28)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB8A9F28);
  }

  return result;
}

void sub_1B4AF3AF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B4AF3B60(uint64_t a1)
{
  sub_1B4AF3C44(319, &qword_1EB8A9F48, &qword_1EB8A9F50, &qword_1EDC378C8, 0x1E696B030);
  if (v1 <= 0x3F)
  {
    sub_1B4AF3C44(319, &qword_1EB8A9F58, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008);
    if (v2 <= 0x3F)
    {
      sub_1B4AF39F8(319, &qword_1EB8A9F60, sub_1B4AF3C98);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B4AF3C44(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1B49E4D9C(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B4AF3C98(uint64_t a1)
{
  if (!qword_1EB8A9F68)
  {
    type metadata accessor for UnitCount();
    v1 = sub_1B4D1746C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB8A9F68);
    }
  }
}

uint64_t sub_1B4AF3CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AF3D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4AF3DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static RingsHighestMetricPropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v57 = a4;
  v8 = type metadata accessor for RingsBestMeasurementEntry(0, a3, a3, a5);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  v56 = sub_1B4D1777C();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6820, &qword_1B4D2CA00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = (&v46 - v13);
  v14 = type metadata accessor for LocalizedDate(0);
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v46 - v17;
  v18 = sub_1B4D1746C();
  v19 = sub_1B4D1880C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  v23 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v46 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v46 - v27;
  v29 = *a2;
  sub_1B49A8448(a1, &v58);
  if (!v59)
  {
    result = sub_1B4975024(&v58, &qword_1EB8A6E58, &qword_1B4D1C110);
    goto LABEL_10;
  }

  sub_1B49A24C4(&v58, v60);
  LOBYTE(v58) = v29;
  sub_1B4AF461C(v60, &v58, v22);
  if ((*(v23 + 48))(v22, 1, v18) == 1)
  {
    (*(v20 + 8))(v22, v19);
LABEL_4:
    result = __swift_destroy_boxed_opaque_existential_1Tm(v60);
LABEL_10:
    *v57 = 0;
    return result;
  }

  (*(v23 + 32))(v28, v22, v18);
  v31 = v61;
  v32 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  (*(*(v32 + 8) + 8))(&v58, v31);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v33 = sub_1B4D1796C();
  __swift_project_value_buffer(v33, qword_1EDC3CE48);
  CacheIndex.date(for:)(v11);
  v34 = v55;
  static LocalizedDate.from(_:)(v11, v55);
  (*(v54 + 8))(v11, v56);
  if ((*(v52 + 48))(v34, 1, v53) == 1)
  {
    (*(v23 + 8))(v28, v18);
    sub_1B4975024(v34, &qword_1EB8A6820, &qword_1B4D2CA00);
    goto LABEL_4;
  }

  v35 = v48;
  sub_1B4AF497C(v34, v48);
  v36 = v61;
  v37 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  (*(*(v37 + 8) + 8))(&v58, v36);
  v38 = v47;
  sub_1B4AE7BD8(v35, v47);
  v39 = v46;
  (*(v23 + 16))(v46, v28, v18);
  v40 = v49;
  sub_1B4B02C28(&v58, v38, v39, a3, v49);
  v41 = v51;
  sub_1B4D18D6C();
  v42 = v50;
  swift_allocObject();
  v43 = sub_1B4D1841C();
  (*(v42 + 32))(v44, v40, v41);
  v45 = sub_1B49BA6A8(v43, v41);
  sub_1B4AF49E0(v35);
  (*(v23 + 8))(v28, v18);
  swift_getWitnessTable();
  RingsBestMetricPropertyValue.init(topEntries:)(v45, &v58);
  *v57 = v58;
  return __swift_destroy_boxed_opaque_existential_1Tm(v60);
}

uint64_t sub_1B4AF461C@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = *a2;
  if (v13 == 24)
  {
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    (*(v21 + 112))(v20, v21);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    if ((*(*(v22 - 8) + 48))(v9, 1, v22) == 1)
    {
      v17 = &qword_1EB8A6CC0;
      v18 = &unk_1B4D1BC00;
      v19 = v9;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v13 == 23)
  {
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 96))(v14, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    if ((*(*(v16 - 8) + 48))(v12, 1, v16) == 1)
    {
      v17 = &qword_1EB8A6D18;
      v18 = &unk_1B4D1BCA0;
      v19 = v12;
LABEL_7:
      sub_1B4975024(v19, v17, v18);
      v23 = sub_1B4D1746C();
      return (*(*(v23 - 8) + 56))(a4, 1, 1, v23);
    }

LABEL_11:
    v27 = sub_1B4D1746C();
    if (swift_dynamicCast())
    {
      v28 = a4;
      v29 = 0;
    }

    else
    {
      v28 = a4;
      v29 = 1;
    }

    return (*(*(v27 - 8) + 56))(v28, v29, 1, v27);
  }

  v25 = sub_1B4D1746C();
  v26 = *(*(v25 - 8) + 56);

  return v26(a4, 1, 1, v25);
}

uint64_t sub_1B4AF497C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedDate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AF49E0(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4AF4A3C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t WorkoutDetailFact.place.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t WorkoutDetailFact.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetailFact(0) + 24);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WorkoutDetailFact(uint64_t a1)
{
  result = qword_1EB8A9FA8;
  if (!qword_1EB8A9FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutDetailFact.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutDetailFact(0) + 28);

  return sub_1B4A315C4(v3, a1);
}

uint64_t WorkoutDetailFact.goal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetailFact(0) + 32);
  v4 = sub_1B4D179EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetailFact.init(activityType:place:startDate:endDate:goal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v11 = type metadata accessor for WorkoutDetailFact(0);
  v12 = v11[6];
  v13 = sub_1B4D1777C();
  (*(*(v13 - 8) + 32))(&a7[v12], a4, v13);
  sub_1B4AF4D5C(a5, &a7[v11[7]]);
  v14 = v11[8];
  v15 = sub_1B4D179EC();
  v16 = *(*(v15 - 8) + 32);

  return v16(&a7[v14], a6, v15);
}

uint64_t sub_1B4AF4D5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4AF4DD0()
{
  v1 = *v0;
  v2 = 0x6563616C70;
  v3 = 0x7461447472617473;
  v4 = 0x65746144646E65;
  if (v1 != 3)
  {
    v4 = 1818324839;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1B4AF4E68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4AF5FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4AF4E90(uint64_t a1)
{
  v2 = sub_1B4AF5CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF4ECC(uint64_t a1)
{
  v2 = sub_1B4AF5CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutDetailFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9F80, &qword_1B4D2CA78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF5CAC();
  sub_1B4D18EFC();
  v12 = *v3;
  v11[15] = 0;
  v9 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B1148(&qword_1EB8A6FA0, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18D0C();

  if (!v2)
  {
    v11[14] = 1;
    sub_1B4D18C6C();
    type metadata accessor for WorkoutDetailFact(0);
    v11[13] = 2;
    sub_1B4D1777C();
    sub_1B4AF6180(&qword_1EDC37820, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B4D18D0C();
    v11[12] = 3;
    sub_1B4D18CAC();
    v11[11] = 4;
    sub_1B4D179EC();
    sub_1B4AF6180(&qword_1EB8A9F90, MEMORY[0x1E6985B58], &protocol conformance descriptor for WorkoutGoal);
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v8, v5);
}

void WorkoutDetailFact.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = sub_1B4D179EC();
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = &v20 - v5;
  v6 = sub_1B4D1777C();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9F98, &qword_1B4D2CA88);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v20 - v9;
  v11 = type metadata accessor for WorkoutDetailFact(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF5CAC();
  v28 = v10;
  v14 = v30;
  sub_1B4D18EEC();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v15 = v27;
    v30 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v35 = 0;
    sub_1B49B1148(&qword_1EB8A6FB0, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18C0C();
    *v13 = v36;
    v34 = 1;
    *(v13 + 1) = sub_1B4D18B6C();
    *(v13 + 2) = v16;
    v33 = 2;
    sub_1B4AF6180(&qword_1EB8A6FB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v20 = 0;
    sub_1B4D18C0C();
    (*(v26 + 32))(&v13[v30[6]], v8, v6);
    v32 = 3;
    v17 = v25;
    sub_1B4D18BAC();
    sub_1B4AF4D5C(v17, &v13[v30[7]]);
    v31 = 4;
    sub_1B4AF6180(&qword_1EB8A9FA0, MEMORY[0x1E6985B58], &protocol conformance descriptor for WorkoutGoal);
    v18 = v23;
    v19 = v24;
    sub_1B4D18C0C();
    (*(v15 + 8))(v28, v29);
    (*(v21 + 32))(&v13[v30[8]], v19, v18);
    sub_1B4A3123C(v13, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1B4AF5D00(v13);
  }
}

uint64_t _s19FitnessIntelligence17WorkoutDetailFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9FD0, &qword_1B4D2CC58);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = *a1;
  v14 = *a2;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15 && (v16 = v15, objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
  {
    v18 = v17;
    v19 = v13;
    v20 = v14;
    [v16 coordinate];
    v22 = v21;
    [v18 coordinate];
    if (v22 != v23)
    {

      goto LABEL_22;
    }

    [v16 coordinate];
    v25 = v24;
    [v18 coordinate];
    v27 = v26;

    if (v25 != v27)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v28 = *(a1 + 16);
  v29 = *(a2 + 16);
  if (v28)
  {
    if (!v29 || (*(a1 + 8) != *(a2 + 8) || v28 != v29) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v29)
  {
    goto LABEL_22;
  }

  v30 = type metadata accessor for WorkoutDetailFact(0);
  if (sub_1B4D1774C())
  {
    v31 = *(v30 + 28);
    v32 = *(v10 + 48);
    sub_1B4A315C4(a1 + v31, v12);
    sub_1B4A315C4(a2 + v31, &v12[v32]);
    v33 = v43;
    v34 = *(v44 + 48);
    if (v34(v12, 1, v43) == 1)
    {
      if (v34(&v12[v32], 1, v33) == 1)
      {
        sub_1B4975024(v12, &qword_1EB8A6790, &qword_1B4D1BBC0);
LABEL_25:
        v35 = MEMORY[0x1B8C7BDC0](a1 + *(v30 + 32), a2 + *(v30 + 32));
        return v35 & 1;
      }

      goto LABEL_21;
    }

    sub_1B4A315C4(v12, v9);
    if (v34(&v12[v32], 1, v33) == 1)
    {
      (*(v44 + 8))(v9, v33);
LABEL_21:
      sub_1B4975024(v12, &qword_1EB8A9FD0, &qword_1B4D2CC58);
      goto LABEL_22;
    }

    v37 = v44;
    v38 = v42;
    (*(v44 + 32))(v42, &v12[v32], v33);
    sub_1B4AF6180(&qword_1EB8A9FD8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v39 = sub_1B4D1816C();
    v40 = *(v37 + 8);
    v40(v38, v33);
    v40(v9, v33);
    sub_1B4975024(v12, &qword_1EB8A6790, &qword_1B4D1BBC0);
    if (v39)
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  v35 = 0;
  return v35 & 1;
}

unint64_t sub_1B4AF5CAC()
{
  result = qword_1EB8A9F88;
  if (!qword_1EB8A9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9F88);
  }

  return result;
}

uint64_t sub_1B4AF5D00(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDetailFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4AF5D84(uint64_t a1)
{
  sub_1B49B13FC(319);
  if (v1 <= 0x3F)
  {
    sub_1B4ABA5F0();
    if (v2 <= 0x3F)
    {
      sub_1B4D1777C();
      if (v3 <= 0x3F)
      {
        sub_1B4AF5E50(319);
        if (v4 <= 0x3F)
        {
          sub_1B4D179EC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B4AF5E50(uint64_t a1)
{
  if (!qword_1EDC37818)
  {
    sub_1B4D1777C();
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC37818);
    }
  }
}

unint64_t sub_1B4AF5EBC()
{
  result = qword_1EB8A9FB8;
  if (!qword_1EB8A9FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9FB8);
  }

  return result;
}

unint64_t sub_1B4AF5F14()
{
  result = qword_1EB8A9FC0;
  if (!qword_1EB8A9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9FC0);
  }

  return result;
}

unint64_t sub_1B4AF5F6C()
{
  result = qword_1EB8A9FC8;
  if (!qword_1EB8A9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9FC8);
  }

  return result;
}

uint64_t sub_1B4AF5FC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6563616C70 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B4AF6180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

FitnessIntelligence::HeartRateZonesFact __swiftcall HeartRateZonesFact.init(highlightedZone:percentage:)(Swift::Int highlightedZone, Swift::Double percentage)
{
  *v2 = highlightedZone;
  *(v2 + 8) = percentage;
  result.percentage = percentage;
  result.highlightedZone = highlightedZone;
  return result;
}

uint64_t sub_1B4AF6200()
{
  if (*v0)
  {
    return 0x61746E6563726570;
  }

  else
  {
    return 0x6867696C68676968;
  }
}

uint64_t sub_1B4AF624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6867696C68676968 && a2 == 0xEF656E6F5A646574;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567)
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

uint64_t sub_1B4AF6338(uint64_t a1)
{
  v2 = sub_1B4AF6544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF6374(uint64_t a1)
{
  v2 = sub_1B4AF6544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HeartRateZonesFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9FE0, &qword_1B4D2CC60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF6544();
  sub_1B4D18EFC();
  v8[15] = 0;
  sub_1B4D18CEC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B4D18CDC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B4AF6544()
{
  result = qword_1EB8A9FE8;
  if (!qword_1EB8A9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9FE8);
  }

  return result;
}

uint64_t HeartRateZonesFact.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9FF0, &qword_1B4D2CC68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF6544();
  sub_1B4D18EEC();
  if (!v2)
  {
    v13[15] = 0;
    v9 = sub_1B4D18BEC();
    v13[14] = 1;
    sub_1B4D18BDC();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t getEnumTagSinglePayload for HeartRateZonesFact(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HeartRateZonesFact(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_1B4AF6810()
{
  result = qword_1EB8A9FF8;
  if (!qword_1EB8A9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9FF8);
  }

  return result;
}

unint64_t sub_1B4AF6868()
{
  result = qword_1EB8AA000;
  if (!qword_1EB8AA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA000);
  }

  return result;
}

unint64_t sub_1B4AF68C0()
{
  result = qword_1EB8AA008;
  if (!qword_1EB8AA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA008);
  }

  return result;
}

uint64_t CurrentDayFact.init(today:dayOfWeek:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1B4D1777C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for CurrentDayFact(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for CurrentDayFact(uint64_t a1)
{
  result = qword_1EB8AA038;
  if (!qword_1EB8AA038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static CurrentDayFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CurrentDayFact(0) + 20);
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);

  return sub_1B49767B8(v6, v5);
}

uint64_t sub_1B4AF6A3C()
{
  if (*v0)
  {
    return 0x656557664F796164;
  }

  else
  {
    return 0x7961646F74;
  }
}

uint64_t sub_1B4AF6A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656557664F796164 && a2 == 0xE90000000000006BLL)
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

uint64_t sub_1B4AF6B58(uint64_t a1)
{
  v2 = sub_1B4AF6D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF6B94(uint64_t a1)
{
  v2 = sub_1B4AF6D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrentDayFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA010, &qword_1B4D2CE30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF6D8C();
  sub_1B4D18EFC();
  v10[15] = 0;
  sub_1B4D1777C();
  sub_1B49B1198(&qword_1EDC37820, MEMORY[0x1E6969538]);
  sub_1B4D18D0C();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for CurrentDayFact(0) + 20));
    v10[13] = 1;
    sub_1B4AF6DE0();
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B4AF6D8C()
{
  result = qword_1EB8AA018;
  if (!qword_1EB8AA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA018);
  }

  return result;
}

unint64_t sub_1B4AF6DE0()
{
  result = qword_1EB8AA020;
  if (!qword_1EB8AA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA020);
  }

  return result;
}

uint64_t CurrentDayFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_1B4D1777C();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA028, &qword_1B4D2CE38);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for CurrentDayFact(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF6D8C();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_1B49B1198(&qword_1EB8A6FB8, MEMORY[0x1E6969558]);
  v15 = v27;
  v16 = v25;
  sub_1B4D18C0C();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_1B4AF7180();
  sub_1B4D18C0C();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_1B49C1268(v18, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1B4AF71D4(v18);
}

unint64_t sub_1B4AF7180()
{
  result = qword_1EB8AA030;
  if (!qword_1EB8AA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA030);
  }

  return result;
}

uint64_t sub_1B4AF71D4(uint64_t a1)
{
  v2 = type metadata accessor for CurrentDayFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4AF7260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a2 + v6);
  v8 = *(a1 + v6);

  return sub_1B49767B8(v8, v7);
}

uint64_t sub_1B4AF72F0(uint64_t a1)
{
  result = sub_1B4D1777C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4AF7378()
{
  result = qword_1EB8AA048;
  if (!qword_1EB8AA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA048);
  }

  return result;
}

unint64_t sub_1B4AF73D0()
{
  result = qword_1EB8AA050;
  if (!qword_1EB8AA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA050);
  }

  return result;
}

unint64_t sub_1B4AF7428()
{
  result = qword_1EB8AA058;
  if (!qword_1EB8AA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA058);
  }

  return result;
}

uint64_t sub_1B4AF7484(uint64_t a1)
{
  v2 = sub_1B4AF7610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF74C0(uint64_t a1)
{
  v2 = sub_1B4AF7610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClosedAllRingsFact.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA060, &qword_1B4D2CFF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF7610();
  sub_1B4D18EFC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B4AF7610()
{
  result = qword_1EB8AA068;
  if (!qword_1EB8AA068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA068);
  }

  return result;
}

uint64_t sub_1B4AF76B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA060, &qword_1B4D2CFF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF7610();
  sub_1B4D18EFC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B4AF77EC()
{
  result = qword_1EB8AA070;
  if (!qword_1EB8AA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA070);
  }

  return result;
}

unint64_t sub_1B4AF7844()
{
  result = qword_1EB8AA078;
  if (!qword_1EB8AA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA078);
  }

  return result;
}

uint64_t WorkoutGoalAchievementStatusFact.goal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D179EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutGoalAchievementStatusFact.init(goal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4D179EC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B4AF7980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1818324839 && a2 == 0xE400000000000000)
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

uint64_t sub_1B4AF7A08(uint64_t a1)
{
  v2 = sub_1B4AF7BE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF7A44(uint64_t a1)
{
  v2 = sub_1B4AF7BE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutGoalAchievementStatusFact.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA080, &qword_1B4D2D130);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF7BE4();
  sub_1B4D18EFC();
  sub_1B4D179EC();
  sub_1B4AF7EF0(&qword_1EB8A9F90, &protocol conformance descriptor for WorkoutGoal);
  sub_1B4D18D0C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B4AF7BE4()
{
  result = qword_1EB8AA088;
  if (!qword_1EB8AA088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA088);
  }

  return result;
}

uint64_t WorkoutGoalAchievementStatusFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1B4D179EC();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA090, &qword_1B4D2D138);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for WorkoutGoalAchievementStatusFact(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF7BE4();
  v12 = v19;
  sub_1B4D18EEC();
  if (!v12)
  {
    v13 = v17;
    sub_1B4AF7EF0(&qword_1EB8A9FA0, &protocol conformance descriptor for WorkoutGoal);
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_1B49E1B84(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t type metadata accessor for WorkoutGoalAchievementStatusFact(uint64_t a1)
{
  result = qword_1EB8AA098;
  if (!qword_1EB8AA098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4AF7EF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D179EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4AF7F4C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA080, &qword_1B4D2D130);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF7BE4();
  sub_1B4D18EFC();
  sub_1B4D179EC();
  sub_1B4AF7EF0(&qword_1EB8A9F90, &protocol conformance descriptor for WorkoutGoal);
  sub_1B4D18D0C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B4AF80DC(uint64_t a1)
{
  result = sub_1B4D179EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4AF815C()
{
  result = qword_1EB8AA0A8;
  if (!qword_1EB8AA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0A8);
  }

  return result;
}

unint64_t sub_1B4AF81B4()
{
  result = qword_1EB8AA0B0;
  if (!qword_1EB8AA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0B0);
  }

  return result;
}

unint64_t sub_1B4AF820C()
{
  result = qword_1EB8AA0B8;
  if (!qword_1EB8AA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0B8);
  }

  return result;
}

uint64_t HighestDailyDistanceAnniversaryFact.TemplateString.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B4AF82E0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AF8354(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AF83A8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

uint64_t HighestDailyDistanceAnniversaryFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for HighestDailyDistanceAnniversaryFact(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4D1BE00;
  sub_1B4AF86B0(v1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1B4AF8714(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B4AF8778;
  *(v9 + 24) = v8;
  *(v6 + 32) = 0x65636E6174736964;
  *(v6 + 40) = 0xE800000000000000;
  *(v6 + 48) = sub_1B4AF87E4;
  *(v6 + 56) = v9;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  v17[1] = *(v1 + *(v3 + 32));
  v10 = sub_1B4D18D5C();
  v12 = v11;
  *(v6 + 80) = 0x67615F7372616579;
  *(v6 + 88) = 0xE90000000000006FLL;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v6 + 96) = sub_1B4993DFC;
  *(v6 + 104) = v13;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  sub_1B4AF86B0(v1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_1B4AF8714(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v7);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B4AF89E8;
  *(v15 + 24) = v14;
  *(v6 + 128) = 0x7261655F65746164;
  *(v6 + 136) = 0xEB0000000064656ELL;
  *(v6 + 144) = sub_1B4AF8C58;
  *(v6 + 152) = v15;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  return v6;
}

uint64_t sub_1B4AF86B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighestDailyDistanceAnniversaryFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AF8714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighestDailyDistanceAnniversaryFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AF87EC(uint64_t a1)
{
  type metadata accessor for HighestDailyDistanceAnniversaryFact(0);
  v2 = sub_1B4D11F8C();
  [v2 setDateStyle_];

  v3 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
  [*(a1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) setTimeStyle_];
  v4 = *(a1 + v3);
  v5 = sub_1B4D1771C();
  v6 = [v4 stringFromDate_];

  v7 = sub_1B4D1818C();
  return v7;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for HighestDailyDistanceAnniversaryFact(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_1B4D1777C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4AF89E8(uint64_t a1)
{
  type metadata accessor for HighestDailyDistanceAnniversaryFact(0);

  return sub_1B4AF87EC(a1);
}

unint64_t sub_1B4AF8A5C()
{
  result = qword_1EB8AA0C0;
  if (!qword_1EB8AA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0C0);
  }

  return result;
}

unint64_t sub_1B4AF8AB4()
{
  result = qword_1EB8AA0C8;
  if (!qword_1EB8AA0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA0D0, &qword_1B4D2D398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0C8);
  }

  return result;
}

unint64_t sub_1B4AF8B1C()
{
  result = qword_1EB8AA0D8;
  if (!qword_1EB8AA0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0D8);
  }

  return result;
}

unint64_t sub_1B4AF8B74()
{
  result = qword_1EB8AA0E0;
  if (!qword_1EB8AA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0E0);
  }

  return result;
}

unint64_t sub_1B4AF8BC8(uint64_t a1)
{
  result = sub_1B4AF8BF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4AF8BF0()
{
  result = qword_1EB8AA0E8[0];
  if (!qword_1EB8AA0E8[0])
  {
    type metadata accessor for HighestDailyDistanceAnniversaryFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB8AA0E8);
  }

  return result;
}

uint64_t static Task<>.withTimeout(_:_:onTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = a6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 32) = a2;
  *(v7 + 24) = a7;
  *(v7 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4AF8C8C, 0, 0);
}

uint64_t sub_1B4AF8C8C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v1;
  *(v5 + 24) = v6;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1B4AF8D98;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v8);
}

uint64_t sub_1B4AF8D98()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4AF8ED4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4AF8ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4AF8F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 56) = a5;
  *(v8 + 48) = a8;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1B4D1880C();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158);
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4AF9050, 0, 0);
}

uint64_t sub_1B4AF9050()
{
  v1 = v0[14];
  v2 = v0[9];
  v14 = v0[7];
  v15 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
  v6 = sub_1B4D1858C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v4;
  v8[6] = v5;

  v0[15] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  v9 = sub_1B4D185DC();
  sub_1B4AF9808(v1, &unk_1B4D2D438, v8, v9);
  sub_1B4AF9DBC(v1);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v3;
  v10[6] = v14;
  v10[7] = v15;
  sub_1B4AF9EFC(v14, v15);
  sub_1B4AF9808(v1, &unk_1B4D2D450, v10, v9);
  sub_1B4AF9DBC(v1);
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_1B4AF9284;
  v12 = v0[13];

  return MEMORY[0x1EEE6DAC8](v12, 0, 0, v9);
}

uint64_t sub_1B4AF9284()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1B4AF95B0;
  }

  else
  {
    v2 = sub_1B4AF9398;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4AF9398()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  sub_1B4D185CC();
  (*(v4 + 16))(v1, v2, v3);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = *(v4 + 8);
  if (v7 == 1)
  {
    v9 = v0[13];
    v11 = v0[9];
    v10 = v0[10];
    v8(v0[12], v10);
    _s7FailureOMa_4(0, v11, v12, v13);
    swift_getWitnessTable();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    v8(v9, v10);
  }

  else
  {
    v16 = v0[12];
    v17 = v0[9];
    v18 = v0[2];
    v8(v0[13], v0[10]);
    (*(v6 + 32))(v18, v16, v17);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B4AF95B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4AF9630(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v11 = *(v2 + 6);
  v10 = *(v2 + 7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B4983F3C;

  return sub_1B4AF8F38(a1, a2, v7, v8, v11, v10, v6, v9);
}

uint64_t sub_1B4AF9710(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B4983F3C;

  return v8(a1);
}

uint64_t sub_1B4AF9808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1B4AF9F24(a1, v19 - v9);
  v11 = sub_1B4D1858C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B4AF9DBC(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1B4D184FC();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4D1857C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1B4AF99DC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4AF9A04, 0, 0);
}

uint64_t sub_1B4AF9A04(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_1B4AF9AEC;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B4AF9AEC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4AF9C1C, 0, 0);
  }
}

uint64_t sub_1B4AF9C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  if (v5)
  {
    v6 = v4[4];

    v5(v7);
    sub_1B4A03C40(v5, v6);
  }

  _s7FailureOMa_4(0, v4[5], a3, a4);
  swift_getWitnessTable();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();
  v9 = v4[1];

  return v9();
}

uint64_t sub_1B4AF9CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B4AF9710(a1, v4, v5, v6);
}

uint64_t sub_1B4AF9DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4AF9E24(uint64_t a1)
{
  v5 = *(v1 + 3);
  v4 = *(v1 + 4);
  v6 = *(v1 + 2);
  v7 = v1[5];
  v9 = *(v1 + 6);
  v8 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B49DA364;

  return sub_1B4AF99DC(v7, a1, v6, v5, v9, v8, v4);
}

uint64_t sub_1B4AF9EFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B4AF9F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutVoiceGreatestElevationGainFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000085;
  }

  else
  {
    return 0xD00000000000006DLL;
  }
}

uint64_t sub_1B4AFA05C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000085;
  }

  else
  {
    v3 = 0xD00000000000006DLL;
  }

  if (v2)
  {
    v4 = "ears ago, on <date_earned>.";
  }

  else
  {
    v4 = "lue of <elevation_milestone>.";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000085;
  }

  else
  {
    v6 = 0xD00000000000006DLL;
  }

  if (*a2)
  {
    v7 = "lue of <elevation_milestone>.";
  }

  else
  {
    v7 = "ears ago, on <date_earned>.";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4AFA108()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4AFA188(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4AFA1F4(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4AFA270@<X0>(char *a2@<X8>)
{
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

  *a2 = v5;
  return result;
}

void sub_1B4AFA2D0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000085;
  }

  else
  {
    v2 = 0xD00000000000006DLL;
  }

  if (*v1)
  {
    v3 = "lue of <elevation_milestone>.";
  }

  else
  {
    v3 = "ears ago, on <date_earned>.";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id WorkoutVoiceGreatestElevationGainFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1BE00;
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v7 = result;
    v8 = sub_1B4D1818C();
    v10 = v9;

    strcpy((v5 + 32), "activity_type");
    *(v5 + 46) = -4864;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v5 + 48) = sub_1B4993DFC;
    *(v5 + 56) = v11;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    sub_1B4AFA798(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v13 = swift_allocObject();
    sub_1B4AFA7FC(v4, v13 + v12);
    *(v5 + 80) = 0xD000000000000013;
    *(v5 + 88) = 0x80000001B4D61650;
    *(v5 + 96) = sub_1B4AFA860;
    *(v5 + 104) = v13;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    v14 = *(v0 + *(v1 + 24));
    v15 = *&aThisDaythisWee_1[8 * v14];
    v16 = qword_1B4D2D668[v14];
    *(v5 + 128) = 0xD000000000000015;
    *(v5 + 136) = 0x80000001B4D4EFE0;
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    *(v5 + 144) = sub_1B4994004;
    *(v5 + 152) = v17;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4AFA568()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - v2;
  type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  FIUnitManager.userMeasurementUnitForElevation()(v4);
  v6 = v5;
  sub_1B4D1745C();
  v7 = sub_1B4D12160();
  sub_1B499221C();
  v8 = sub_1B4D1878C();

  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0) + 24)) >= 4u)
  {

    v5 = 0;
  }

  else
  {
    v3 = sub_1B4D18DCC();

    v5 = (v3 & 1) == 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1B4AFA798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AFA7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AFA860()
{
  type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);

  return sub_1B4AFA568();
}

unint64_t sub_1B4AFA8D4()
{
  result = qword_1EB8AA170;
  if (!qword_1EB8AA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA170);
  }

  return result;
}

unint64_t sub_1B4AFA92C()
{
  result = qword_1EB8AA178;
  if (!qword_1EB8AA178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA180, &qword_1B4D2D5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA178);
  }

  return result;
}

unint64_t sub_1B4AFA994()
{
  result = qword_1EB8AA188;
  if (!qword_1EB8AA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA188);
  }

  return result;
}

unint64_t sub_1B4AFA9EC()
{
  result = qword_1EB8AA190;
  if (!qword_1EB8AA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA190);
  }

  return result;
}

unint64_t sub_1B4AFAA40(uint64_t a1)
{
  result = sub_1B4AFAA68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4AFAA68()
{
  result = qword_1EB8AA198;
  if (!qword_1EB8AA198)
  {
    type metadata accessor for WorkoutVoiceGreatestElevationGainFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA198);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutMetricsFact(uint64_t a1)
{
  result = qword_1EB8AA1B8;
  if (!qword_1EB8AA1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutMetricsFact.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutMetricsFact(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutMetricsFact.init(activityType:distance:pace:duration:workoutHasEnded:energyBurned:elevationGained:averagePower:averageHeartRate:maximumHeartRate:estimatedEffort:shouldUseHigherPrecisionForDistance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14)
{
  *a9 = a1;
  v21 = type metadata accessor for WorkoutMetricsFact(0);
  sub_1B498B270(a2, &a9[v21[5]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B498B270(a3, &a9[v21[6]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  (*(*(v23 - 8) + 32))(&a9[v22], a4, v23);
  a9[v21[8]] = a5;
  sub_1B498B270(a6, &a9[v21[9]], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(a7, &a9[v21[10]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B498B270(a8, &a9[v21[11]], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B498B270(a10, &a9[v21[12]], &qword_1EB8A6CC8, &unk_1B4D464B0);
  result = sub_1B498B270(a11, &a9[v21[13]], &qword_1EB8A6CC8, &unk_1B4D464B0);
  v25 = &a9[v21[14]];
  *v25 = a12;
  v25[8] = a13 & 1;
  a9[v21[15]] = a14;
  return result;
}

unint64_t sub_1B4AFB014(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000010;
    v6 = 0x6574616D69747365;
    if (a1 != 10)
    {
      v6 = 0xD000000000000023;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6F69746176656C65;
    v8 = 0x5065676172657661;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x65636E6174736964;
    v2 = 0x6E6F697461727564;
    v3 = 0x4874756F6B726F77;
    if (a1 != 4)
    {
      v3 = 0x7542796772656E65;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 1701011824;
    }

    if (!a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B4AFB1D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4AFE1EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4AFB1FC(uint64_t a1)
{
  v2 = sub_1B4AFDC10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AFB238(uint64_t a1)
{
  v2 = sub_1B4AFDC10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutMetricsFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA1A0, &qword_1B4D2D690);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFDC10();
  sub_1B4D18EFC();
  v16 = *v3;
  v15 = 0;
  v9 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18D0C();
  if (v2)
  {
  }

  else
  {

    v10 = type metadata accessor for WorkoutMetricsFact(0);
    v14[4] = v3;
    LOBYTE(v16) = 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v12 = sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    v14[1] = v12;
    v14[2] = v11;
    v14[3] = v10;
    LOBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
    LOBYTE(v16) = 4;
    sub_1B4D18CCC();
    LOBYTE(v16) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v16) = 6;
    sub_1B4D18CAC();
    LOBYTE(v16) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    sub_1B49B0578(&qword_1EB8A7838, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v16) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    sub_1B49B0578(&qword_1EB8A9D68, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v16) = 9;
    sub_1B4D18CAC();
    LOBYTE(v16) = 10;
    sub_1B4D18C8C();
    LOBYTE(v16) = 11;
    sub_1B4D18CCC();
  }

  return (*(v6 + 8))(v8, v5);
}

void WorkoutMetricsFact.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v64 = v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v65 = v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA1B0, &qword_1B4D2D698);
  v68 = *(v21 - 8);
  v69 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v54 - v22;
  v24 = type metadata accessor for WorkoutMetricsFact(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFDC10();
  v70 = v23;
  v27 = v71;
  sub_1B4D18EEC();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v55 = v17;
    v56 = v20;
    v71 = a1;
    v57 = v24;
    v58 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v72[0] = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18C0C();
    v28 = v58;
    *v58 = v73;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    LOBYTE(v73) = 1;
    v30 = sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
    v31 = v56;
    sub_1B4D18BAC();
    v32 = v68;
    v54[1] = v30;
    v54[2] = v29;
    v33 = v57;
    sub_1B498B270(v31, v28 + v57[5], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    LOBYTE(v73) = 2;
    sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968098]);
    v34 = v65;
    sub_1B4D18BAC();
    sub_1B498B270(v34, v28 + v33[6], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    LOBYTE(v73) = 3;
    sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
    v35 = v64;
    sub_1B4D18C0C();
    (*(v66 + 32))(v28 + v33[7], v35, v67);
    LOBYTE(v73) = 4;
    *(v28 + v33[8]) = sub_1B4D18BCC() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    LOBYTE(v73) = 5;
    sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968098]);
    v36 = v63;
    sub_1B4D18BAC();
    sub_1B498B270(v36, v28 + v33[9], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    LOBYTE(v73) = 6;
    v37 = v55;
    sub_1B4D18BAC();
    sub_1B498B270(v37, v28 + v33[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    LOBYTE(v73) = 7;
    sub_1B49B0578(&qword_1EB8A7848, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968098]);
    v38 = v62;
    sub_1B4D18BAC();
    v65 = 0;
    sub_1B498B270(v38, v28 + v33[11], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    LOBYTE(v73) = 8;
    sub_1B49B0578(&qword_1EB8A9D80, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968098]);
    v39 = v61;
    v40 = v65;
    sub_1B4D18BAC();
    v41 = v40 == 0;
    v65 = v40;
    if (v40)
    {
      (*(v32 + 8))(v70, v69);
      v42 = 0;
    }

    else
    {
      sub_1B498B270(v39, v28 + v33[12], &qword_1EB8A6CC8, &unk_1B4D464B0);
      LOBYTE(v73) = 9;
      v43 = v65;
      sub_1B4D18BAC();
      v65 = v43;
      if (v43)
      {
        (*(v68 + 8))(v70, v69);
        v42 = 0;
      }

      else
      {
        sub_1B498B270(v60, v58 + v57[13], &qword_1EB8A6CC8, &unk_1B4D464B0);
        LOBYTE(v73) = 10;
        v44 = v65;
        v45 = sub_1B4D18B8C();
        v65 = v44;
        if (!v44)
        {
          v47 = v58 + v57[14];
          *v47 = v45;
          v47[8] = v46 & 1;
          LOBYTE(v73) = 11;
          v48 = v65;
          v49 = sub_1B4D18BCC();
          v65 = v48;
          if (!v48)
          {
            v50 = v49;
            (*(v68 + 8))(v70, v69);
            v51 = v50 & 1;
            v53 = v58;
            v52 = v59;
            *(v58 + v57[15]) = v51;
            sub_1B4AFDC64(v53, v52);
            __swift_destroy_boxed_opaque_existential_1Tm(v71);
            sub_1B4AFDCC8(v53);
            return;
          }
        }

        (*(v68 + 8))(v70, v69);
        v42 = 1;
      }

      v33 = v57;
      v28 = v58;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v71);

    sub_1B4975024(v28 + v33[5], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v28 + v33[6], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    (*(v66 + 8))(v28 + v33[7], v67);
    sub_1B4975024(v28 + v33[9], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v28 + v33[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v28 + v33[11], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    if (v41)
    {
      sub_1B4975024(v28 + v33[12], &qword_1EB8A6CC8, &unk_1B4D464B0);
      if (v42)
      {
        goto LABEL_12;
      }
    }

    else if (v42)
    {
LABEL_12:
      sub_1B4975024(v28 + v33[13], &qword_1EB8A6CC8, &unk_1B4D464B0);
    }
  }
}

uint64_t _s19FitnessIntelligence18WorkoutMetricsFactV2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v154 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v148 = &v142 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v147 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v159 = &v142 - v9;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E10, &unk_1B4D46A80);
  MEMORY[0x1EEE9AC00](v153);
  v149 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v151 = &v142 - v12;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v150 = &v142 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v152 = &v142 - v15;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7878, &unk_1B4D2D8B0);
  MEMORY[0x1EEE9AC00](v155);
  v156 = &v142 - v16;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v17 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v161 = &v142 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v163 = &v142 - v20;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F68, &unk_1B4D1C550);
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v142 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v172 = *(v22 - 8);
  v173 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v167 = &v142 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v168 = &v142 - v25;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E18, &unk_1B4D2C410);
  MEMORY[0x1EEE9AC00](v170);
  v171 = &v142 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v28 = *(v27 - 8);
  v175 = v27;
  v176 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v169 = &v142 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v160 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v142 - v33;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  MEMORY[0x1EEE9AC00](v174);
  v162 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v142 - v37;
  v39 = *a1;
  v40 = *a2;
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (v41 && (v42 = v41, objc_opt_self(), (v43 = swift_dynamicCastObjCClass()) != 0))
  {
    v44 = v43;
    v146 = v17;
    v45 = v39;
    v46 = v40;
    [v42 coordinate];
    v48 = v47;
    [v44 coordinate];
    if (v48 != v49)
    {

      goto LABEL_22;
    }

    [v42 coordinate];
    v51 = v50;
    [v44 coordinate];
    v53 = v52;

    v17 = v146;
    if (v51 != v53)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v145 = type metadata accessor for WorkoutMetricsFact(0);
  v54 = v145[5];
  v55 = *(v174 + 48);
  sub_1B4974FBC(a1 + v54, v38, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(a2 + v54, &v38[v55], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v56 = v175;
  v57 = *(v176 + 48);
  if (v57(v38, 1, v175) == 1)
  {
    if (v57(&v38[v55], 1, v56) == 1)
    {
      v144 = v57;
      v146 = v17;
      v143 = v4;
      sub_1B4975024(v38, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_15;
    }

LABEL_12:
    v58 = &qword_1EB8A6F50;
    v59 = &qword_1B4D425A0;
    v60 = v38;
LABEL_21:
    sub_1B4975024(v60, v58, v59);
    goto LABEL_22;
  }

  sub_1B4974FBC(v38, v34, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v57(&v38[v55], 1, v56) == 1)
  {
    (*(v176 + 8))(v34, v56);
    goto LABEL_12;
  }

  v144 = v57;
  v146 = v17;
  v143 = v4;
  v142 = a2;
  v61 = v176;
  v62 = v169;
  (*(v176 + 32))(v169, &v38[v55], v56);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v63 = sub_1B4D1816C();
  v64 = *(v61 + 8);
  v64(v62, v56);
  v64(v34, v56);
  a2 = v142;
  sub_1B4975024(v38, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v63 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v65 = v145[6];
  v66 = v171;
  v67 = *(v170 + 48);
  sub_1B4974FBC(a1 + v65, v171, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(a2 + v65, v66 + v67, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v69 = v172;
  v68 = v173;
  v70 = *(v172 + 48);
  if (v70(v66, 1, v173) == 1)
  {
    if (v70(v66 + v67, 1, v68) == 1)
    {
      sub_1B4975024(v66, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v71 = v168;
  sub_1B4974FBC(v66, v168, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v70(v66 + v67, 1, v68) == 1)
  {
    (*(v69 + 8))(v71, v68);
LABEL_20:
    v58 = &qword_1EB8A9E18;
    v59 = &unk_1B4D2C410;
    v60 = v66;
    goto LABEL_21;
  }

  v74 = v66 + v67;
  v75 = v167;
  (*(v69 + 32))(v167, v74, v68);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968090]);
  v76 = sub_1B4D1816C();
  v77 = *(v69 + 8);
  v77(v75, v68);
  v77(v71, v68);
  sub_1B4975024(v66, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((v76 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v78 = a1;
  v79 = v145;
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0 || *(a1 + v79[8]) != *(a2 + v79[8]))
  {
    goto LABEL_22;
  }

  v80 = v79[9];
  v81 = v165;
  v82 = *(v164 + 48);
  v173 = v78;
  sub_1B4974FBC(v78 + v80, v165, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(a2 + v80, v81 + v82, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v83 = *(v146 + 48);
  v84 = v166;
  if (v83(v81, 1, v166) == 1)
  {
    if (v83(v81 + v82, 1, v84) == 1)
    {
      sub_1B4975024(v81, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      goto LABEL_34;
    }

LABEL_32:
    v58 = &qword_1EB8A6F68;
    v59 = &unk_1B4D1C550;
LABEL_40:
    v60 = v81;
    goto LABEL_21;
  }

  v85 = v163;
  sub_1B4974FBC(v81, v163, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v83(v81 + v82, 1, v84) == 1)
  {
    (*(v146 + 8))(v85, v84);
    goto LABEL_32;
  }

  v86 = v146;
  v87 = v81 + v82;
  v88 = v161;
  (*(v146 + 32))(v161, v87, v84);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
  v89 = sub_1B4D1816C();
  v90 = *(v86 + 8);
  v90(v88, v84);
  v90(v85, v84);
  sub_1B4975024(v81, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((v89 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_34:
  v91 = v79[10];
  v92 = *(v174 + 48);
  v81 = v162;
  sub_1B4974FBC(v173 + v91, v162, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(a2 + v91, v81 + v92, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v93 = v175;
  v94 = v144;
  if (v144(v81, 1, v175) == 1)
  {
    if (v94(v81 + v92, 1, v93) == 1)
    {
      sub_1B4975024(v81, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v95 = v160;
  sub_1B4974FBC(v81, v160, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v94(v81 + v92, 1, v93) == 1)
  {
    (*(v176 + 8))(v95, v93);
LABEL_39:
    v58 = &qword_1EB8A6F50;
    v59 = &qword_1B4D425A0;
    goto LABEL_40;
  }

  v96 = v176;
  v97 = v169;
  (*(v176 + 32))(v169, v81 + v92, v93);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v98 = v93;
  v99 = sub_1B4D1816C();
  v100 = *(v96 + 8);
  v100(v97, v98);
  v100(v95, v98);
  sub_1B4975024(v81, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v99 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_42:
  v101 = v79[11];
  v102 = *(v155 + 48);
  v103 = v156;
  sub_1B4974FBC(v173 + v101, v156, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(a2 + v101, v103 + v102, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v104 = v157;
  v105 = *(v157 + 48);
  v106 = v158;
  if (v105(v103, 1, v158) == 1)
  {
    v107 = v105(v103 + v102, 1, v106);
    v108 = v159;
    if (v107 == 1)
    {
      sub_1B4975024(v103, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
      goto LABEL_49;
    }

LABEL_47:
    v58 = &qword_1EB8A7878;
    v59 = &unk_1B4D2D8B0;
    v60 = v103;
    goto LABEL_21;
  }

  v109 = v152;
  sub_1B4974FBC(v103, v152, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v110 = v105(v103 + v102, 1, v106);
  v108 = v159;
  if (v110 == 1)
  {
    (*(v104 + 8))(v109, v106);
    goto LABEL_47;
  }

  v111 = v103 + v102;
  v112 = v150;
  (*(v104 + 32))(v150, v111, v106);
  sub_1B49B0578(&qword_1EB8A7880, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968090]);
  v113 = sub_1B4D1816C();
  v114 = *(v104 + 8);
  v114(v112, v106);
  v114(v109, v106);
  sub_1B4975024(v103, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((v113 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_49:
  v115 = v145;
  v116 = v145[12];
  v117 = *(v153 + 48);
  v118 = v151;
  sub_1B4974FBC(v173 + v116, v151, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v119 = v118;
  sub_1B4974FBC(a2 + v116, v118 + v117, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v120 = *(v154 + 48);
  v121 = v143;
  if (v120(v119, 1, v143) != 1)
  {
    sub_1B4974FBC(v119, v108, &qword_1EB8A6CC8, &unk_1B4D464B0);
    if (v120(v119 + v117, 1, v121) != 1)
    {
      v122 = v154;
      v123 = v119 + v117;
      v124 = v148;
      (*(v154 + 32))(v148, v123, v121);
      sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
      v125 = v108;
      v126 = sub_1B4D1816C();
      v127 = *(v122 + 8);
      v127(v124, v121);
      v128 = v125;
      v115 = v145;
      v143 = v121;
      v127(v128, v121);
      sub_1B4975024(v151, &qword_1EB8A6CC8, &unk_1B4D464B0);
      if ((v126 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_56;
    }

    (*(v154 + 8))(v108, v121);
LABEL_54:
    v58 = &qword_1EB8A9E10;
    v59 = &unk_1B4D46A80;
    v60 = v119;
    goto LABEL_21;
  }

  if (v120(v119 + v117, 1, v121) != 1)
  {
    goto LABEL_54;
  }

  v143 = v121;
  sub_1B4975024(v119, &qword_1EB8A6CC8, &unk_1B4D464B0);
LABEL_56:
  v129 = v115[13];
  v130 = *(v153 + 48);
  v81 = v149;
  sub_1B4974FBC(v173 + v129, v149, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(a2 + v129, v81 + v130, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v131 = v143;
  if (v120(v81, 1, v143) == 1)
  {
    if (v120(v81 + v130, 1, v131) == 1)
    {
      sub_1B4975024(v81, &qword_1EB8A6CC8, &unk_1B4D464B0);
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  v132 = v147;
  sub_1B4974FBC(v81, v147, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v120(v81 + v130, 1, v131) == 1)
  {
    (*(v154 + 8))(v132, v131);
LABEL_61:
    v58 = &qword_1EB8A9E10;
    v59 = &unk_1B4D46A80;
    goto LABEL_40;
  }

  v133 = v154;
  v134 = v81 + v130;
  v135 = v148;
  (*(v154 + 32))(v148, v134, v131);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
  v136 = sub_1B4D1816C();
  v137 = *(v133 + 8);
  v137(v135, v131);
  v137(v132, v131);
  sub_1B4975024(v81, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v136)
  {
LABEL_63:
    v138 = v145[14];
    v139 = (v173 + v138);
    v140 = *(v173 + v138 + 8);
    v141 = (a2 + v138);
    v72 = *(a2 + v138 + 8);
    if (v140)
    {
      if (!v72)
      {
        return v72 & 1;
      }
    }

    else
    {
      if (*v139 != *v141)
      {
        LOBYTE(v72) = 1;
      }

      if (v72)
      {
        goto LABEL_22;
      }
    }

    LOBYTE(v72) = *(v173 + v145[15]) ^ *(a2 + v145[15]) ^ 1;
    return v72 & 1;
  }

LABEL_22:
  LOBYTE(v72) = 0;
  return v72 & 1;
}

unint64_t sub_1B4AFDC10()
{
  result = qword_1EB8AA1A8;
  if (!qword_1EB8AA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA1A8);
  }

  return result;
}

uint64_t sub_1B4AFDC64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMetricsFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AFDCC8(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutMetricsFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4AFDD4C(uint64_t a1)
{
  sub_1B49BEEDC(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
  if (v1 <= 0x3F)
  {
    sub_1B49AFCD8(319, &qword_1EDC3CB30, &qword_1EB8A6830, &unk_1B4D1AB40);
    if (v2 <= 0x3F)
    {
      sub_1B49AFCD8(319, &qword_1EDC37888, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
      if (v3 <= 0x3F)
      {
        sub_1B49BEEDC(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008, MEMORY[0x1E6968070]);
        if (v4 <= 0x3F)
        {
          sub_1B49AFCD8(319, &qword_1EDC3CB48, &qword_1EB8A6868, &unk_1B4D1AB80);
          if (v5 <= 0x3F)
          {
            sub_1B49AFCD8(319, &qword_1EDC37880, &qword_1EB8A6CE0, &unk_1B4D1EF00);
            if (v6 <= 0x3F)
            {
              sub_1B49AFCD8(319, &qword_1EDC37868, &qword_1EB8A6CD0, &unk_1B4D1F270);
              if (v7 <= 0x3F)
              {
                sub_1B4AFDF44();
                if (v8 <= 0x3F)
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
}

void sub_1B4AFDF44()
{
  if (!qword_1EDC378D8)
  {
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC378D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for MonthOfYear(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MonthOfYear(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4AFE0E8()
{
  result = qword_1EB8AA1C8;
  if (!qword_1EB8AA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA1C8);
  }

  return result;
}

unint64_t sub_1B4AFE140()
{
  result = qword_1EB8AA1D0;
  if (!qword_1EB8AA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA1D0);
  }

  return result;
}

unint64_t sub_1B4AFE198()
{
  result = qword_1EB8AA1D8;
  if (!qword_1EB8AA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA1D8);
  }

  return result;
}

uint64_t sub_1B4AFE1EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4874756F6B726F77 && a2 == 0xEF6465646E457361 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7542796772656E65 && a2 == 0xEC00000064656E72 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746176656C65 && a2 == 0xEF64656E6961476ELL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5065676172657661 && a2 == 0xEC0000007265776FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4C140 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61670 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xEF74726F66664564 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001B4D61690 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t AnnounceCancellationRequest.requestIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for RingStateFact(uint64_t a1)
{
  result = qword_1EB8AA1F8;
  if (!qword_1EB8AA1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RingStateFact.init(ringProgressType:isWheelchairUser:isCloseToClosing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1B4995228(a1, a4);
  result = type metadata accessor for RingStateFact(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t static RingStateFact.== infix(_:_:)(char *a1, char *a2)
{
  if (_s19FitnessIntelligence16RingProgressTypeO2eeoiySbAC_ACtFZ_0(a1, a2) && (v4 = type metadata accessor for RingStateFact(0), a1[*(v4 + 20)] == a2[*(v4 + 20)]))
  {
    v5 = a1[*(v4 + 24)] ^ a2[*(v4 + 24)] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1B4AFE7EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4AFF104(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4AFE814(uint64_t a1)
{
  v2 = sub_1B4AFEE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AFE850(uint64_t a1)
{
  v2 = sub_1B4AFEE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RingStateFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA1E0, &qword_1B4D2D910);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFEE2C();
  sub_1B4D18EFC();
  v8[15] = 0;
  type metadata accessor for RingProgressType(0);
  sub_1B49951E4(&qword_1EB8A6BE0, &protocol conformance descriptor for RingProgressType);
  sub_1B4D18D0C();
  if (!v1)
  {
    type metadata accessor for RingStateFact(0);
    v8[14] = 1;
    sub_1B4D18CCC();
    v8[13] = 2;
    sub_1B4D18CCC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RingStateFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA1F0, &qword_1B4D2D918);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for RingStateFact(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFEE2C();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_1B49951E4(&qword_1EB8A6BF0, &protocol conformance descriptor for RingProgressType);
  v14 = v19;
  sub_1B4D18C0C();
  sub_1B4995228(v20, v13);
  v22 = 1;
  *(v13 + *(v9 + 20)) = sub_1B4D18BCC() & 1;
  v21 = 2;
  v15 = sub_1B4D18BCC();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v15 & 1;
  sub_1B4AFEE80(v13, v17, type metadata accessor for RingStateFact);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1B4AFEEE8(v13, type metadata accessor for RingStateFact);
}

uint64_t sub_1B4AFEDC0(char *a1, char *a2, uint64_t a3)
{
  if (_s19FitnessIntelligence16RingProgressTypeO2eeoiySbAC_ACtFZ_0(a1, a2) && a1[*(a3 + 20)] == a2[*(a3 + 20)])
  {
    v6 = a1[*(a3 + 24)] ^ a2[*(a3 + 24)] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1B4AFEE2C()
{
  result = qword_1EB8AA1E8;
  if (!qword_1EB8AA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA1E8);
  }

  return result;
}

uint64_t sub_1B4AFEE80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AFEEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4AFEF70(uint64_t a1)
{
  result = type metadata accessor for RingProgressType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4AFF000()
{
  result = qword_1EB8AA208;
  if (!qword_1EB8AA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA208);
  }

  return result;
}

unint64_t sub_1B4AFF058()
{
  result = qword_1EB8AA210;
  if (!qword_1EB8AA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA210);
  }

  return result;
}

unint64_t sub_1B4AFF0B0()
{
  result = qword_1EB8AA218;
  if (!qword_1EB8AA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA218);
  }

  return result;
}

uint64_t sub_1B4AFF104(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001B4D4F000 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F160 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D616C0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

__n128 WorkoutAlertFact.init(alert:activityType:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u8[8];
  v4 = a1->n128_u8[9];
  v5 = a1->n128_u8[10];
  v6 = a1[2].n128_u8[0];
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u8[8] = v3;
  a3->n128_u8[9] = v4;
  a3->n128_u8[10] = v5;
  result = a1[1];
  a3[1] = result;
  a3[2].n128_u8[0] = v6;
  a3[2].n128_u64[1] = a2;
  return result;
}

BOOL static WorkoutAlertFact.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 32);
  v6 = a1[5];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  v11 = *(a2 + 32);
  v12 = a2[5];
  v33 = *a1;
  v34 = v2;
  v35 = v3;
  v36 = v4;
  v37 = *(a1 + 1);
  v38 = v5;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = *(a2 + 1);
  v32 = v11;
  if (!_s19FitnessIntelligence17WorkoutVoiceAlertV2eeoiySbAC_ACtFZ_0(&v33, &v27))
  {
    return 0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13 && (v14 = v13, objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0))
  {
    v16 = v15;
    v17 = v6;
    v18 = v12;
    [v14 coordinate];
    v20 = v19;
    [v16 coordinate];
    if (v20 == v21)
    {
      [v14 coordinate];
      v23 = v22;
      [v16 coordinate];
      v25 = v24;

      return v23 == v25;
    }
  }

  else
  {
    sub_1B49DF540();
    if (sub_1B4D187AC())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B4AFF400()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7472656C61;
  }
}

uint64_t sub_1B4AFF43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2)
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

uint64_t sub_1B4AFF51C(uint64_t a1)
{
  v2 = sub_1B4AFFAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AFF558(uint64_t a1)
{
  v2 = sub_1B4AFFAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutAlertFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA220, &unk_1B4D2DAE0);
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v27 = *(v1 + 10);
  v9 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v9;
  v15 = *(v1 + 32);
  v14 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFFAFC();
  sub_1B4D18EFC();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v27;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v28 = 0;
  sub_1B4AFFB50();
  v10 = v18;
  sub_1B4D18D0C();
  if (!v10)
  {
    v20 = v14;
    v28 = 1;
    v11 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B49B1148(&qword_1EB8A6FA0, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18D0C();
  }

  return (*(v19 + 8))(v5, v3);
}

uint64_t WorkoutAlertFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA238, &qword_1B4D2DAF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFFAFC();
  sub_1B4D18EEC();
  if (!v2)
  {
    v26 = 0;
    sub_1B4AFFBA4();
    sub_1B4D18C0C();
    v9 = v18;
    v10 = v19;
    v25 = v21;
    v16 = v23;
    v17 = v22;
    HIDWORD(v15) = v24;
    v27 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v26 = 1;
    sub_1B49B1148(&qword_1EB8A6FB0, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    v11 = v27;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 9) = v11;
    *(a2 + 10) = v25;
    v12 = v18;
    v13 = v16;
    *(a2 + 16) = v17;
    *(a2 + 24) = v13;
    *(a2 + 32) = BYTE4(v15);
    *(a2 + 40) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

BOOL sub_1B4AFFA34(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 32);
  v6 = a1[5];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  v11 = *(a2 + 32);
  v12 = a2[5];
  v20 = *a1;
  v21 = v2;
  v22 = v3;
  v23 = v4;
  v24 = *(a1 + 1);
  v25 = v5;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = *(a2 + 1);
  v19 = v11;
  if (!_s19FitnessIntelligence17WorkoutVoiceAlertV2eeoiySbAC_ACtFZ_0(&v20, &v14))
  {
    return 0;
  }

  return sub_1B49B0864(v6, v12);
}

unint64_t sub_1B4AFFAFC()
{
  result = qword_1EB8AA228;
  if (!qword_1EB8AA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA228);
  }

  return result;
}

unint64_t sub_1B4AFFB50()
{
  result = qword_1EB8AA230;
  if (!qword_1EB8AA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA230);
  }

  return result;
}

unint64_t sub_1B4AFFBA4()
{
  result = qword_1EB8AA240;
  if (!qword_1EB8AA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA240);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B4AFFC0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4AFFC54(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1B4AFFCC4()
{
  result = qword_1EB8AA248;
  if (!qword_1EB8AA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA248);
  }

  return result;
}

unint64_t sub_1B4AFFD1C()
{
  result = qword_1EB8AA250;
  if (!qword_1EB8AA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA250);
  }

  return result;
}

unint64_t sub_1B4AFFD74()
{
  result = qword_1EB8AA258;
  if (!qword_1EB8AA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA258);
  }

  return result;
}

uint64_t sub_1B4AFFE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E696E69617274 && a2 == 0xEF79614464616F4CLL)
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

uint64_t sub_1B4AFFE9C(uint64_t a1)
{
  v2 = sub_1B4B00060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AFFED8(uint64_t a1)
{
  v2 = sub_1B4B00060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrainingLoadFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA260, &qword_1B4D2DCD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B00060();
  sub_1B4D18EFC();
  v10 = v7;
  sub_1B4B000B4();
  sub_1B4D18D0C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B4B00060()
{
  result = qword_1EB8AA268;
  if (!qword_1EB8AA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA268);
  }

  return result;
}

unint64_t sub_1B4B000B4()
{
  result = qword_1EB8AA270;
  if (!qword_1EB8AA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA270);
  }

  return result;
}

uint64_t TrainingLoadFact.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA278, &qword_1B4D2DCD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B00060();
  sub_1B4D18EEC();
  if (!v2)
  {
    sub_1B4B00274();
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B4B00274()
{
  result = qword_1EB8AA280;
  if (!qword_1EB8AA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA280);
  }

  return result;
}

unint64_t sub_1B4B0031C()
{
  result = qword_1EB8AA288;
  if (!qword_1EB8AA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA288);
  }

  return result;
}

unint64_t sub_1B4B00374()
{
  result = qword_1EB8AA290;
  if (!qword_1EB8AA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA290);
  }

  return result;
}

unint64_t sub_1B4B003CC()
{
  result = qword_1EB8AA298;
  if (!qword_1EB8AA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA298);
  }

  return result;
}

uint64_t AverageWorkoutDurationFact.init(activityType:numberOfWorkouts:averageDuration:currentDuration:workoutHasEnded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for AverageWorkoutDurationFact(0);
  v11 = v10[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v13 = *(*(v12 - 8) + 32);
  v13(&a6[v11], a3, v12);
  result = (v13)(&a6[v10[7]], a4, v12);
  a6[v10[8]] = a5;
  return result;
}

uint64_t type metadata accessor for AverageWorkoutDurationFact(uint64_t a1)
{
  result = qword_1EB8AA2B8;
  if (!qword_1EB8AA2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4B00540()
{
  v1 = *v0;
  v2 = 0x4465676172657661;
  v3 = 0x44746E6572727563;
  if (v1 != 3)
  {
    v3 = 0x4874756F6B726F77;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000013;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4B005FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B01410(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B00624(uint64_t a1)
{
  v2 = sub_1B4B010C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B00660(uint64_t a1)
{
  v2 = sub_1B4B010C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AverageWorkoutDurationFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA2A0, &unk_1B4D2DE98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B010C8();
  sub_1B4D18EFC();
  v17 = *v3;
  v16 = 0;
  v9 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18D0C();

  if (!v2)
  {
    v15 = 1;
    sub_1B4D18CEC();
    v11 = type metadata accessor for AverageWorkoutDurationFact(0);
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
    v13 = 3;
    sub_1B4D18D0C();
    v12 = 4;
    sub_1B4D18CCC();
  }

  return (*(v6 + 8))(v8, v5);
}

void AverageWorkoutDurationFact.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA2B0, &qword_1B4D2DEA8);
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - v11;
  v13 = type metadata accessor for AverageWorkoutDurationFact(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B010C8();
  v36 = v12;
  v16 = v37;
  sub_1B4D18EEC();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v37 = v8;
    v29 = v13;
    v30 = v15;
    v17 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v42 = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    v18 = v34;
    sub_1B4D18C0C();
    v19 = v30;
    *v30 = v43;
    v41 = 1;
    v19[1] = sub_1B4D18BEC();
    v40 = 2;
    v20 = sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
    v21 = v37;
    v28[1] = v20;
    sub_1B4D18C0C();
    v22 = v19 + *(v29 + 24);
    v37 = *(v32 + 32);
    v37(v22, v21, v17);
    v39 = 3;
    sub_1B4D18C0C();
    v23 = v29;
    v37(v30 + *(v29 + 28), v5, v17);
    v38 = 4;
    v24 = sub_1B4D18BCC();
    (*(v35 + 8))(v36, v18);
    v25 = v24 & 1;
    v27 = v30;
    v26 = v31;
    *(v30 + *(v23 + 32)) = v25;
    sub_1B4B0111C(v27, v26);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1B4B01180(v27);
  }
}

uint64_t _s19FitnessIntelligence26AverageWorkoutDurationFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = v6, objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if (sub_1B4D187AC())
    {
      goto LABEL_7;
    }

LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

  v9 = v8;
  v10 = v4;
  v11 = v5;
  [v7 coordinate];
  v13 = v12;
  [v9 coordinate];
  if (v13 != v14)
  {

    goto LABEL_12;
  }

  [v7 coordinate];
  v16 = v15;
  [v9 coordinate];
  v18 = v17;

  if (v16 != v18)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v19 = type metadata accessor for AverageWorkoutDurationFact(0);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = *(a1 + *(v19 + 32)) ^ *(a2 + *(v19 + 32)) ^ 1;
  return v20 & 1;
}

unint64_t sub_1B4B010C8()
{
  result = qword_1EB8AA2A8;
  if (!qword_1EB8AA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA2A8);
  }

  return result;
}

uint64_t sub_1B4B0111C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AverageWorkoutDurationFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B01180(uint64_t a1)
{
  v2 = type metadata accessor for AverageWorkoutDurationFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4B01204(uint64_t a1)
{
  sub_1B49BEEDC(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
  if (v1 <= 0x3F)
  {
    sub_1B49BEEDC(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008, MEMORY[0x1E6968070]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4B0130C()
{
  result = qword_1EB8AA2C8;
  if (!qword_1EB8AA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA2C8);
  }

  return result;
}

unint64_t sub_1B4B01364()
{
  result = qword_1EB8AA2D0;
  if (!qword_1EB8AA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA2D0);
  }

  return result;
}

unint64_t sub_1B4B013BC()
{
  result = qword_1EB8AA2D8;
  if (!qword_1EB8AA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA2D8);
  }

  return result;
}

uint64_t sub_1B4B01410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D616E0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4465676172657661 && a2 == 0xEF6E6F6974617275 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44746E6572727563 && a2 == 0xEF6E6F6974617275 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4874756F6B726F77 && a2 == 0xEF6465646E457361)
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

uint64_t ThisWeekCurrentWorkoutDistanceFact.init(activityType:currentWeekTotalDistance:thisTimeLastWeekTotalDistance:lastWeekDistance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  v10 = v9[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  sub_1B4B016F8(a3, &a5[v9[6]]);
  v12 = &a5[v9[7]];

  return sub_1B4B016F8(a4, v12);
}

uint64_t type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(uint64_t a1)
{
  result = qword_1EB8AA2F8;
  if (!qword_1EB8AA2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4B016F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4B0176C()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1B4B017E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B02A4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B01808(uint64_t a1)
{
  v2 = sub_1B4B026A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B01844(uint64_t a1)
{
  v2 = sub_1B4B026A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ThisWeekCurrentWorkoutDistanceFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA2E0, &unk_1B4D2E060);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B026A0();
  sub_1B4D18EFC();
  v16 = *v3;
  v15 = 0;
  v9 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18D0C();

  if (!v2)
  {
    v11 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
    v13 = 2;
    sub_1B4D18CAC();
    v12 = 3;
    sub_1B4D18CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

void ThisWeekCurrentWorkoutDistanceFact.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v25 = v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA2F0, &qword_1B4D2E070);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - v12;
  v14 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B026A0();
  v29 = v13;
  v17 = v30;
  sub_1B4D18EEC();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v30 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v34 = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    v18 = v27;
    sub_1B4D18C0C();
    v19 = v30;
    *v30 = v35;
    v33 = 1;
    v22[2] = sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
    sub_1B4D18C0C();
    (*(v26 + 32))(v19 + v14[5], v9, v7);
    v32 = 2;
    v20 = v25;
    v22[1] = 0;
    sub_1B4D18BAC();
    sub_1B4B016F8(v20, v19 + v14[6]);
    v31 = 3;
    v21 = v24;
    sub_1B4D18BAC();
    (*(v28 + 8))(v29, v18);
    sub_1B4B016F8(v21, v19 + v14[7]);
    sub_1B4B026F4(v19, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1B4B02758(v19);
  }
}

BOOL _s19FitnessIntelligence34ThisWeekCurrentWorkoutDistanceFactV2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50[-v11];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  MEMORY[0x1EEE9AC00](v55);
  v14 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50[-v16];
  v56 = a1;
  v57 = a2;
  v18 = *a1;
  v19 = *a2;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20 && (v21 = v20, objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) != 0))
  {
    v23 = v22;
    v53 = v14;
    v24 = v18;
    v25 = v19;
    [v21 coordinate];
    v27 = v26;
    [v23 coordinate];
    if (v27 != v28)
    {

      return 0;
    }

    [v21 coordinate];
    v30 = v29;
    [v23 coordinate];
    v32 = v31;

    v14 = v53;
    if (v30 != v32)
    {
      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      return 0;
    }
  }

  v33 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  v34 = sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v35 = v56;
  v36 = v57;
  v53 = v34;
  if ((sub_1B4D1816C() & 1) == 0)
  {
    return 0;
  }

  v37 = v35;
  v38 = *(v33 + 24);
  v39 = *(v55 + 48);
  sub_1B4B02BB8(v37 + v38, v17);
  sub_1B4B02BB8(v36 + v38, &v17[v39]);
  v40 = *(v5 + 48);
  if (v40(v17, 1, v4) == 1)
  {
    if (v40(&v17[v39], 1, v4) == 1)
    {
      v52 = v5;
      sub_1B4975024(v17, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_16;
    }

LABEL_14:
    v41 = v17;
LABEL_22:
    sub_1B4975024(v41, &qword_1EB8A6F50, &qword_1B4D425A0);
    return 0;
  }

  sub_1B4B02BB8(v17, v12);
  if (v40(&v17[v39], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_14;
  }

  (*(v5 + 32))(v7, &v17[v39], v4);
  v51 = sub_1B4D1816C();
  v52 = v5;
  v42 = *(v5 + 8);
  v42(v7, v4);
  v42(v12, v4);
  sub_1B4975024(v17, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v43 = *(v33 + 28);
  v44 = *(v55 + 48);
  sub_1B4B02BB8(v56 + v43, v14);
  sub_1B4B02BB8(v57 + v43, &v14[v44]);
  if (v40(v14, 1, v4) != 1)
  {
    v45 = v54;
    sub_1B4B02BB8(v14, v54);
    if (v40(&v14[v44], 1, v4) == 1)
    {
      (*(v52 + 8))(v45, v4);
      goto LABEL_21;
    }

    v47 = v52;
    (*(v52 + 32))(v7, &v14[v44], v4);
    v48 = sub_1B4D1816C();
    v49 = *(v47 + 8);
    v49(v7, v4);
    v49(v45, v4);
    sub_1B4975024(v14, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return (v48 & 1) != 0;
  }

  if (v40(&v14[v44], 1, v4) != 1)
  {
LABEL_21:
    v41 = v14;
    goto LABEL_22;
  }

  sub_1B4975024(v14, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  return 1;
}

unint64_t sub_1B4B026A0()
{
  result = qword_1EB8AA2E8;
  if (!qword_1EB8AA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA2E8);
  }

  return result;
}

uint64_t sub_1B4B026F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B02758(uint64_t a1)
{
  v2 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4B027DC(uint64_t a1)
{
  sub_1B49BEEDC(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
  if (v1 <= 0x3F)
  {
    sub_1B49BEEDC(319, &qword_1EDC3CE78, &qword_1EDC3CB80, 0x1E696B058, MEMORY[0x1E6968070]);
    if (v2 <= 0x3F)
    {
      sub_1B4B028D0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4B028D0(uint64_t a1)
{
  if (!qword_1EDC3CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC3CB30);
    }
  }
}

unint64_t sub_1B4B02948()
{
  result = qword_1EB8AA308;
  if (!qword_1EB8AA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA308);
  }

  return result;
}

unint64_t sub_1B4B029A0()
{
  result = qword_1EB8AA310;
  if (!qword_1EB8AA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA310);
  }

  return result;
}

unint64_t sub_1B4B029F8()
{
  result = qword_1EB8AA318;
  if (!qword_1EB8AA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA318);
  }

  return result;
}

uint64_t sub_1B4B02A4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4D61700 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B4D61720 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61740 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B4B02BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B02C28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = *a1;
  v8 = type metadata accessor for RingsBestMeasurementEntry(0, a4, a3, a4);
  sub_1B4AF497C(a2, &a5[*(v8 + 28)]);
  v9 = *(v8 + 32);
  v10 = sub_1B4D1746C();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a5[v9], a3, v10);
}

double RingsBestMetricPropertyValue.topEntries.getter()
{
  sub_1B4959850();

  return result;
}

uint64_t RingsBestMetricPropertyValue.hashValue.getter(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D184CC();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B02D9C(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  RingsBestMetricPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t RingsBestMeasurementEntry.measurement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1B4D1746C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4B02EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = sub_1B4D1746C();
  v12 = *(type metadata accessor for RingsBestMeasurementEntry(0, a3, v10, v11) + 32);
  WitnessTable = swift_getWitnessTable();
  return a5(a1 + v12, a2 + v12, v9, WitnessTable) & 1;
}

uint64_t RingsBestMeasurementEntry.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1B8C7D2C0](*v2);
  LocalizedDate.hash(into:)(a1);
  sub_1B4D1746C();
  swift_getWitnessTable();
  return sub_1B4D1808C();
}

uint64_t RingsBestMeasurementEntry.hashValue.getter(uint64_t a1)
{
  sub_1B4D18E8C();
  RingsBestMeasurementEntry.hash(into:)(v3, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B03048(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  RingsBestMeasurementEntry.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B030CC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B03108(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B03144(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B031C0(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1B4B03240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B4B03294(uint64_t a1)
{
  result = type metadata accessor for LocalizedDate(319);
  if (v2 <= 0x3F)
  {
    result = sub_1B4D1746C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static CompletedWorkoutsFact.RelatedActivity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1B49DF540();
  return sub_1B4D187AC() & (v2 == v3);
}

uint64_t sub_1B4B033AC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1B49DF540();
  return sub_1B4D187AC() & (v2 == v3);
}

__n128 CompletedWorkoutsFact.init(workoutRecordsByWorkoutType:currentActivityType:relatedActivity:numberOfWorkoutsForCurrentActivityType:workoutCount:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = a4;
  a6[2].n128_u64[1] = a5;
  return result;
}

BOOL _s19FitnessIntelligence21CompletedWorkoutsFactV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2, double a3)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  sub_1B4A24660(*a1, *a2, a3);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v19 = v5;
  sub_1B49DF540();
  if ((sub_1B4D187AC() & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v7)
    {
      if (v6 == v10)
      {
        return v19 == v9;
      }

      return 0;
    }

    v17 = 0;
    v4 = v7;
LABEL_12:
    v18 = v4;

    return 0;
  }

  if (!v7)
  {
    v17 = v4;
    goto LABEL_12;
  }

  v12 = v4;
  v13 = v7;
  v14 = v12;
  v15 = sub_1B4D187AC();

  result = 0;
  if ((v15 & 1) != 0 && v3 == v8 && v6 == v10)
  {
    return v19 == v9;
  }

  return result;
}

uint64_t sub_1B4B03538(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B4B03580(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

FitnessIntelligence::VitalsFact __swiftcall VitalsFact.init(vitalsDay:outOfRangeVitals:)(FitnessIntelligence::VitalsDay vitalsDay, Swift::OpaquePointer outOfRangeVitals)
{
  v3 = *(*&vitalsDay.heartRate + 4);
  *v2 = **&vitalsDay.heartRate;
  *(v2 + 4) = v3;
  *(v2 + 8) = outOfRangeVitals;
  result.outOfRangeVitals = outOfRangeVitals;
  result.heartRate = vitalsDay.heartRate;
  result.bloodOxygen = vitalsDay.bloodOxygen;
  result.respiratoryRate = vitalsDay.respiratoryRate;
  result.wristTemperature = vitalsDay.wristTemperature;
  result.timeAsleep = vitalsDay.timeAsleep;
  return result;
}

unint64_t sub_1B4B03608()
{
  v1 = *v0;
  v2 = 0x7461527472616568;
  v3 = 0xD000000000000010;
  v4 = 0x656C7341656D6974;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x79784F646F6F6C62;
  if (v1 != 1)
  {
    v5 = 0x7461726970736572;
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

uint64_t sub_1B4B036E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B0404C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B03710(uint64_t a1)
{
  v2 = sub_1B4B03E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B0374C(uint64_t a1)
{
  v2 = sub_1B4B03E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VitalsFact.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA320, &qword_1B4D2E570);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = *v1;
  v21 = v1[1];
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v17 = v1[4];
  v16 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B03E58();
  v10 = v4;
  sub_1B4D18EFC();
  LOBYTE(v20) = v8;
  v22 = 0;
  sub_1B49967BC();
  sub_1B4D18D0C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v18;
  v11 = v19;
  v13 = v17;
  v14 = v16;
  LOBYTE(v20) = v21;
  v22 = 1;
  sub_1B4D18D0C();
  LOBYTE(v20) = v11;
  v22 = 2;
  sub_1B4D18D0C();
  LOBYTE(v20) = v12;
  v22 = 3;
  sub_1B4D18D0C();
  LOBYTE(v20) = v13;
  v22 = 4;
  sub_1B4D18D0C();
  v20 = v14;
  v22 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA330, &qword_1B4D2E578);
  sub_1B4B03EAC(&qword_1EB8AA338, sub_1B49967BC, MEMORY[0x1E69E6300]);
  sub_1B4D18D0C();
  return (*(v5 + 8))(v7, v10);
}

uint64_t VitalsFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA340, &qword_1B4D2E580);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B03E58();
  sub_1B4D18EEC();
  if (!v2)
  {
    v20 = 0;
    sub_1B4996810();
    sub_1B4D18C0C();
    v9 = v18;
    v20 = 1;
    sub_1B4D18C0C();
    v19 = v9;
    v10 = v18;
    v20 = 2;
    sub_1B4D18C0C();
    v17 = v10;
    v11 = v18;
    v20 = 3;
    sub_1B4D18C0C();
    v16 = v11;
    LOBYTE(v11) = v18;
    v20 = 4;
    sub_1B4D18C0C();
    v13 = v11;
    LOBYTE(v11) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA330, &qword_1B4D2E578);
    v20 = 5;
    sub_1B4B03EAC(&qword_1EB8AA348, sub_1B4996810, MEMORY[0x1E69E6330]);
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    v14 = v18;
    *a2 = v19;
    v15 = v16;
    *(a2 + 1) = v17;
    *(a2 + 2) = v15;
    *(a2 + 3) = v13;
    *(a2 + 4) = v11;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _s19FitnessIntelligence10VitalsFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  a3.i32[0] = *a1;
  a4.i32[0] = *a2;
  if ((vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL))) & 1) != 0 && *(a1 + 4) == *(a2 + 4))
  {
    return sub_1B4A0C94C(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B4B03E58()
{
  result = qword_1EB8AA328;
  if (!qword_1EB8AA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA328);
  }

  return result;
}

uint64_t sub_1B4B03EAC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA330, &qword_1B4D2E578);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4B03F48()
{
  result = qword_1EB8AA350;
  if (!qword_1EB8AA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA350);
  }

  return result;
}

unint64_t sub_1B4B03FA0()
{
  result = qword_1EB8AA358;
  if (!qword_1EB8AA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA358);
  }

  return result;
}

unint64_t sub_1B4B03FF8()
{
  result = qword_1EB8AA360;
  if (!qword_1EB8AA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA360);
  }

  return result;
}

uint64_t sub_1B4B0404C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461527472616568 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79784F646F6F6C62 && a2 == 0xEB000000006E6567 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461726970736572 && a2 == 0xEF6574615279726FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F060 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C7341656D6974 && a2 == 0xEA00000000007065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61760 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_1B4B04274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D188DC();
  v5 = result;
  v6 = (1 << *(a1 + 32));
  if (result == v6)
  {
    v7 = 0;
  }

  else
  {
    result = sub_1B4B05C48(result, *(a1 + 36), a1, &v8);
    v7 = v8;
  }

  *a2 = v7;
  *(a2 + 8) = v5 == v6;
  return result;
}

uint64_t SnapshotContainerProtocol.make(for:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA368, &unk_1B4D2E750);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B4D1A800;
  sub_1B497558C(a2, v9 + 32);
  SnapshotContainerProtocol.make(for:with:)(&v11, v9, a3, a4, a5);
}

uint64_t SnapshotContainerProtocol.make(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v25 = a5;
  v11 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  (*(v17 + 32))(&v26, v18, v17, v12);
  if (v16 >= v26)
  {
    v26 = v16;
    result = static SnapshotContainerProtocol.from(cacheIndex:_:)(&v26, a2, a3, a4, v14);
    if (!v6)
    {
      static SnapshotContainerProtocol.add(_:_:)(v5, v14, a3, a4, v25);
      return (*(v11 + 8))(v14, a3);
    }
  }

  else
  {
    if (qword_1EDC3CBB8[0] != -1)
    {
      swift_once();
    }

    v19 = sub_1B4D17F6C();
    __swift_project_value_buffer(v19, qword_1EDC37A40);
    v20 = sub_1B4D17F5C();
    v21 = sub_1B4D1871C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B4953000, v20, v21, "Adding previous container to current container. Ignoring...", v22, 2u);
      MEMORY[0x1B8C7DDA0](v22, -1, -1);
    }

    return (*(v11 + 16))(v25, v7, a3);
  }

  return result;
}

uint64_t static SnapshotContainerProtocol.from(cacheIndex:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v75 = a5;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v73 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72 = &v61 - v14;
  v15 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v25 = *a1;
  v26 = *(a2 + 16);
  if (!v26)
  {
    v76 = *a1;
    return static SnapshotContainerProtocol.empty(cacheIndex:)(&v76, a3, a4);
  }

  v70 = v6;
  v71 = v25;
  v66 = v19;
  v67 = &v61 - v21;
  v62 = v24;
  v63 = v23;
  v68 = v13;
  v69 = AssociatedTypeWitness;
  v64 = v22;
  v65 = a4;
  v74 = a3;
  v81 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF09C(0, v26, 0);
  v27 = v81;
  v28 = a2 + 32;
  do
  {
    sub_1B497558C(v28, &v76);
    v30 = v78;
    v29 = v79;
    __swift_project_boxed_opaque_existential_1(&v76, v78);
    (*(v29 + 8))(&v80, v30, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(&v76);
    v31 = v80;
    v81 = v27;
    v33 = *(v27 + 16);
    v32 = *(v27 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_1B4BCF09C((v32 > 1), v33 + 1, 1);
      v27 = v81;
    }

    *(v27 + 16) = v33 + 1;
    *(v27 + 8 * v33 + 32) = v31;
    v28 += 40;
    --v26;
  }

  while (v26);
  v34 = sub_1B4A052E8(v27);

  if (*(v34 + 16) == 1)
  {
    sub_1B4B04274(v34, &v76);

    v35 = v74;
    if (v77 != 1)
    {
      v36 = v71;
      if (v76 == v71)
      {
        v76 = v71;
        v38 = v72;
        v37 = v73;
        sub_1B4B05518(v15, v73);
        v39 = v67;
        v40 = v70;
        sub_1B4BDE744(a2, &v76, v38, 0, 0, v15, v37, v67);
        if (v40)
        {
          return (*(v68 + 8))(v38, v69);
        }

        (*(v68 + 8))(v38, v69);
        v76 = v36;
        v57 = v64;
        v58 = *(v64 + 16);
        v58(v66, v39, v15);
        v59 = v62;
        v58(v62, v39, v15);
        v60 = v63;
        v58(v63, v39, v15);
        (*(v65 + 64))(&v76, v66, v59, v60, v35);
        return (*(v57 + 8))(v39, v15);
      }
    }
  }

  else
  {
  }

  if (qword_1EDC3CBB8[0] != -1)
  {
    swift_once();
  }

  v42 = sub_1B4D17F6C();
  __swift_project_value_buffer(v42, qword_1EDC37A40);
  v43._countAndFlagsBits = 0xD00000000000002BLL;
  v43._object = 0x80000001B4D61780;
  v44._object = 0x80000001B4D617B0;
  v44._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v43, v44);

  v45 = sub_1B4D17F5C();
  v46 = sub_1B4D1871C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v76 = v48;
    *v47 = 136315394;
    v49 = sub_1B4D1900C();
    v51 = sub_1B49558AC(v49, v50, &v76);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
    v53 = MEMORY[0x1B8C7C800](a2, v52);
    v55 = sub_1B49558AC(v53, v54, &v76);

    *(v47 + 14) = v55;
    _os_log_impl(&dword_1B4953000, v45, v46, "%s Invalid representables: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C7DDA0](v48, -1, -1);
    MEMORY[0x1B8C7DDA0](v47, -1, -1);
  }

  sub_1B4B05C9C();
  swift_allocError();
  *v56 = 0;
  return swift_willThrow();
}

{
  v8 = *a1;
  sub_1B4B05CF0(a2, &v11);
  if (v12)
  {
    sub_1B496F398(&v11, v13);
    *&v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA368, &unk_1B4D2E750);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B4D1A800;
    sub_1B497558C(v13, v9 + 32);
    static SnapshotContainerProtocol.from(cacheIndex:_:)(&v11, v9, a3, a4, a5);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    sub_1B4B05D60(&v11);
    v13[0] = v8;
    return static SnapshotContainerProtocol.empty(cacheIndex:)(v13, a3, a4);
  }
}

uint64_t static SnapshotContainerProtocol.add(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v58 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v56 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v60 = &v48 - v23;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v24 = sub_1B4D1796C();
  __swift_project_value_buffer(v24, qword_1EDC3CE48);
  v25 = *(a4 + 32);
  v25(&v62, a3, a4);
  v25(&v61, a3, a4);
  result = Calendar.isSameMonth(_:_:)(&v62, &v61);
  if (!v5)
  {
    v27 = a1;
    v28 = a2;
    v29 = result;
    v50 = v27;
    v25(&v62, a3, a4);
    v25(&v61, a3, a4);
    v49 = Calendar.isSameWeek(_:_:)(&v62, &v61);
    v25(&v62, a3, a4);
    v30 = v62;
    v25(&v61, a3, a4);
    v31 = v61;
    if (v61 <= v30)
    {
      v31 = v30;
    }

    v62 = v31;
    v32 = *(a4 + 40);
    if (v29)
    {
      v33 = v56;
      v32(a3, a4);
      v34 = v55;
      v32(a3, a4);
      v35 = v34;
      v36 = v58;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      static SnapshotProperties.add(_:_:)(v33, v35, v36, AssociatedConformanceWitness);
      v38 = v28;
      v39 = v59;
      v48 = v38;
      v40 = *(v57 + 8);
      v40(v35, v36);
      v40(v33, v36);
    }

    else
    {
      v32(a3, a4);
      v48 = v28;
      v36 = v58;
      v39 = v59;
    }

    v41 = *(a4 + 48);
    if (v49)
    {
      v42 = v52;
      v41(a3, a4);
      v43 = v51;
      v41(a3, a4);
      v44 = v42;
      v39 = v59;
      v45 = swift_getAssociatedConformanceWitness();
      static SnapshotProperties.add(_:_:)(v44, v43, v36, v45);
      v46 = *(v57 + 8);
      v46(v43, v36);
      v46(v44, v36);
    }

    else
    {
      v41(a3, a4);
    }

    v47 = v53;
    (*(a4 + 56))(a3, a4);
    return (*(a4 + 64))(&v62, v60, v39, v47, a3, a4);
  }

  return result;
}

uint64_t static SnapshotContainerProtocol.empty(cacheIndex:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  v18 = *a1;
  v15 = v18;
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static SnapshotProperties.empty(cacheIndex:)(&v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = v15;
  static SnapshotProperties.empty(cacheIndex:)(&v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = v15;
  static SnapshotProperties.empty(cacheIndex:)(&v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(a3 + 64))(&v19, v14, v11, v8, a2, a3);
}

uint64_t sub_1B4B05518(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t SnapshotContainerProtocol.uniqueSnapshotProperties()(uint64_t a1, void (**a2)(void, void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B4B05BD4(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v5 = sub_1B4D1841C();
  a2[5](a1, a2);
  a2[6](a1, a2);
  a2[7](a1, a2);
  sub_1B49BA6A8(v5, AssociatedTypeWitness);
  sub_1B4D1843C();
  sub_1B4D184BC();
  swift_getWitnessTable();
  sub_1B4D182DC();

  return v7;
}