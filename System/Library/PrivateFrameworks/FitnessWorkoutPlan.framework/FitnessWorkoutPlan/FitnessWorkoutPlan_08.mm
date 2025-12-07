uint64_t sub_1E59519E4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 5;
    v5 -= 40;
    v18 = v12;
    do
    {
      v19 = (v5 + 40);
      v20 = *(v18 - 40);
      v18 -= 40;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v23;
          *(v5 + 16) = v24;
        }

        if (v12 <= v4 || (v6 -= 5, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 16);
        *(v5 + 32) = *(v18 + 32);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v26 = (v25 >> 4) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v26])
  {
    memmove(v6, v4, 40 * v26);
  }

  return 1;
}

unint64_t sub_1E5951C28()
{
  result = qword_1ECFFE360;
  if (!qword_1ECFFE360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE358, &qword_1E5A39A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE368, &unk_1E5A39A60);
    sub_1E58CD164(&qword_1ECFFE370, &qword_1ECFFE368, &unk_1E5A39A60, MEMORY[0x1E697D680]);
    sub_1E58EFCE8();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFDB28, &qword_1ECFFDB30, &qword_1E5A36B78, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE360);
  }

  return result;
}

unint64_t sub_1E5951DD8()
{
  result = qword_1ECFFE380;
  if (!qword_1ECFFE380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE378, &qword_1E5A39A70);
    sub_1E58CD164(&qword_1ECFFE388, &qword_1ECFFE390, &qword_1E5A39A78, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE380);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1E5951EDC()
{
  result = qword_1ECFFE3B8;
  if (!qword_1ECFFE3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE3A8, &qword_1E5A39B50);
    sub_1E5951F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE3B8);
  }

  return result;
}

unint64_t sub_1E5951F68()
{
  result = qword_1ECFFE3C0;
  if (!qword_1ECFFE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE3C0);
  }

  return result;
}

unint64_t sub_1E5951FBC()
{
  result = qword_1ECFFE3C8;
  if (!qword_1ECFFE3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE3B0, &qword_1E5A39B58);
    sub_1E58CD164(&qword_1ECFFE3D0, &qword_1ECFFE3D8, &qword_1E5A39B60, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE3C8);
  }

  return result;
}

uint64_t sub_1E5952074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A2B6A4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59520D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1E590DEE8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  result = sub_1E5A2BDE4();
  v6 = result;
  v7 = 0;
  v23 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v25 = *v10;
    v12 = *(v26 + 16);
    v13 = *(v26 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1E590DEE8((v13 > 1), v12 + 1, 1);
    }

    *(v26 + 16) = v12 + 1;
    v14 = (v26 + 32 * v12);
    v14[4] = v25;
    v14[5] = v11;
    v15 = MEMORY[0x1E69E7CC0];
    v14[6] = MEMORY[0x1E69E7CC0];
    v14[7] = v15;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v9);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1E5901D04(v6, v24, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1E5901D04(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E595230C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1E590DEA8(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1E5A2BDE4();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 32 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1E590DEA8((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1E5901D04(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1E5901D04(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t WorkoutPlanCreationScheduleRequest.init(modalityIdentifiers:planIdentifier:recommendationMetrics:totalDailyDuration:variation:weekCount:weekdays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v15 = sub_1E59520D8(a1);

  v16 = sub_1E591CA10(v15);

  *a8 = v16;
  v17 = type metadata accessor for WorkoutPlanCreationScheduleRequest(0);
  v18 = v17[5];
  v19 = sub_1E5A29E74();
  (*(*(v19 - 8) + 32))(&a8[v18], a2, v19);
  result = sub_1E595418C(a3, &a8[v17[6]]);
  *&a8[v17[7]] = a4;
  a8[v17[8]] = a5;
  *&a8[v17[9]] = a6;
  *&a8[v17[10]] = a7;
  return result;
}

uint64_t WorkoutPlanCreationScheduleRequest.modalityIdentifiers.getter()
{
  v1 = sub_1E595230C(*v0);
  v2 = sub_1E591C978(v1);

  return v2;
}

uint64_t WorkoutPlanCreationScheduleRequest.planIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlanCreationScheduleRequest(0) + 20);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutPlanCreationScheduleRequest.recommendationMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutPlanCreationScheduleRequest(0) + 24);

  return sub_1E59541FC(v3, a1);
}

uint64_t WorkoutPlanCreationScheduleRequest.weekdays.getter()
{
  type metadata accessor for WorkoutPlanCreationScheduleRequest(0);
}

uint64_t WorkoutPlanCreationScheduleRequest.init(modalitySelections:planIdentifier:recommendationMetrics:totalDailyDuration:variation:weekCount:weekdays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v15 = type metadata accessor for WorkoutPlanCreationScheduleRequest(0);
  v16 = v15[5];
  v17 = sub_1E5A29E74();
  (*(*(v17 - 8) + 32))(&a8[v16], a2, v17);
  result = sub_1E595418C(a3, &a8[v15[6]]);
  *&a8[v15[7]] = a4;
  a8[v15[8]] = a5;
  *&a8[v15[9]] = a6;
  *&a8[v15[10]] = a7;
  return result;
}

unint64_t sub_1E59528D0()
{
  v1 = *v0;
  v2 = 0x6E6564496E616C70;
  v3 = 0x6E756F436B656577;
  if (v1 != 5)
  {
    v3 = 0x737961646B656577;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6F69746169726176;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1E59529CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5954798(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59529F4(uint64_t a1)
{
  v2 = sub_1E595426C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5952A30(uint64_t a1)
{
  v2 = sub_1E595426C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationScheduleRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE428, &qword_1E5A39BB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595426C();
  sub_1E5A2C224();
  v12 = *v3;
  HIBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE438, &qword_1E5A39BC0);
  sub_1E595438C(&qword_1ECFFE440, sub_1E59542C0, MEMORY[0x1E69E64F0]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v9 = type metadata accessor for WorkoutPlanCreationScheduleRequest(0);
    LOBYTE(v12) = 1;
    sub_1E5A29E74();
    sub_1E59544A0(&qword_1ECFFC7F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5A2C0B4();
    LOBYTE(v12) = 2;
    type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
    sub_1E59544A0(&qword_1ECFFE450, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateMetrics);
    sub_1E5A2C054();
    LOBYTE(v12) = 3;
    sub_1E5A2C094();
    LOBYTE(v12) = *(v3 + *(v9 + 32));
    HIBYTE(v11) = 4;
    sub_1E58F8F9C();
    sub_1E5A2C0B4();
    LOBYTE(v12) = 5;
    sub_1E5A2C094();
    v12 = *(v3 + *(v9 + 40));
    HIBYTE(v11) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE458, &qword_1E5A39BC8);
    sub_1E5954314(&qword_1ECFFE460, sub_1E58C2944, MEMORY[0x1E69E64F0]);
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WorkoutPlanCreationScheduleRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_1E5A29E74();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE468, &qword_1E5A39BD0);
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v23 - v9;
  v11 = type metadata accessor for WorkoutPlanCreationScheduleRequest(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E595426C();
  v29 = v10;
  v15 = v30;
  sub_1E5A2C214();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v30 = v8;
  v24 = v5;
  v16 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE438, &qword_1E5A39BC0);
  v32 = 0;
  sub_1E595438C(&qword_1ECFFE470, sub_1E5954404, MEMORY[0x1E69E6510]);
  v17 = v26;
  sub_1E5A2BFE4();
  v18 = v13;
  *v13 = v33;
  LOBYTE(v33) = 1;
  sub_1E59544A0(&qword_1ECFFC818, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v19 = v30;
  sub_1E5A2BFE4();
  v23 = v6;
  (*(v16 + 32))(v18 + v11[5], v19, v6);
  type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  LOBYTE(v33) = 2;
  sub_1E59544A0(&qword_1ECFFE480, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateMetrics);
  v20 = v24;
  sub_1E5A2BF84();
  sub_1E595418C(v20, v18 + v11[6]);
  LOBYTE(v33) = 3;
  *(v18 + v11[7]) = sub_1E5A2BFC4();
  v32 = 4;
  sub_1E58F98EC();
  sub_1E5A2BFE4();
  v21 = v28;
  *(v18 + v11[8]) = v33;
  LOBYTE(v33) = 5;
  *(v18 + v11[9]) = sub_1E5A2BFC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE458, &qword_1E5A39BC8);
  v32 = 6;
  sub_1E5954314(&qword_1ECFFE488, sub_1E58C7514, MEMORY[0x1E69E6510]);
  sub_1E5A2BFE4();
  (*(v21 + 8))(v29, v17);
  *(v18 + v11[10]) = v33;
  sub_1E59549FC(v18, v25, type metadata accessor for WorkoutPlanCreationScheduleRequest);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1E5954ACC(v18, type metadata accessor for WorkoutPlanCreationScheduleRequest);
}

uint64_t WorkoutPlanCreationScheduleRequest.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1E58B91E8(a1, *v1);
  v10 = type metadata accessor for WorkoutPlanCreationScheduleRequest(0);
  sub_1E5A29E74();
  sub_1E59544A0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E59541FC(v1 + v10[6], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    sub_1E5954A64(v9, v6, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
    sub_1E5A2C1D4();
    MEMORY[0x1E6932DE0](*v6);
    sub_1E5A2BA44();
    sub_1E5953800(a1, *(v6 + *(v3 + 24)));
    sub_1E5954ACC(v6, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  }

  MEMORY[0x1E6932DE0](*(v1 + v10[7]));
  MEMORY[0x1E6932DE0](*(v1 + v10[8]));
  MEMORY[0x1E6932DE0](*(v1 + v10[9]));
  return sub_1E58BAD7C();
}

uint64_t WorkoutPlanCreationScheduleRequest.hashValue.getter()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationScheduleRequest.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E595377C()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationScheduleRequest.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59537C0(uint64_t a1)
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationScheduleRequest.hash(into:)(v2);
  return sub_1E5A2C204();
}

uint64_t sub_1E5953800(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E6932DE0](v3);
  if (v3)
  {
    v5 = a2 + 64;
    do
    {
      v6 = *(v5 - 16);
      v5 += 40;

      sub_1E5A2BB74();
      MEMORY[0x1E6932DE0](v6);
      sub_1E5A2BB74();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E59538AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v33 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v32 - v8;
  v9 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  v21 = *(a2 + 16);
  result = MEMORY[0x1E6932DE0](v21, v18);
  if (v21)
  {
    v23 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v24 = *(v14 + 72);
    v25 = (v10 + 48);
    v26 = v24;
    v34 = (v39 + 48);
    v35 = v25;
    v36 = v16;
    v32 = v24;
    do
    {
      sub_1E59549FC(v23, v20, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
      sub_1E59549FC(v20, v16, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
      if ((*v25)(v16, 1, v9) == 1)
      {
        MEMORY[0x1E6932DE0](0);
        result = sub_1E5954ACC(v20, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
      }

      else
      {
        sub_1E5954A64(v16, v12, type metadata accessor for PersonalizedWorkoutPlanCandidate);
        MEMORY[0x1E6932DE0](1);
        v27 = sub_1E5A29E74();
        sub_1E59544A0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v39 = v27;
        sub_1E5A2BA44();
        sub_1E5A2BB74();
        sub_1E5A2BB74();
        sub_1E58F9DDC(a1, *&v12[v9[7]]);
        sub_1E58FA3DC(a1, *&v12[v9[8]]);
        v28 = v37;
        sub_1E59541FC(&v12[v9[9]], v37);
        v29 = v38;
        if ((*v34)(v28, 1, v38) == 1)
        {
          sub_1E5A2C1D4();
        }

        else
        {
          v30 = v33;
          sub_1E5954A64(v28, v33, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
          sub_1E5A2C1D4();
          MEMORY[0x1E6932DE0](*v30);
          sub_1E5A2BA44();
          sub_1E5953800(a1, *(v30 + *(v29 + 24)));
          v31 = v30;
          v26 = v32;
          sub_1E5954ACC(v31, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
        }

        MEMORY[0x1E6932DE0](*&v12[v9[10]]);
        MEMORY[0x1E6932DE0](v12[v9[11]]);
        sub_1E5954ACC(v20, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
        result = sub_1E5954ACC(v12, type metadata accessor for PersonalizedWorkoutPlanCandidate);
        v25 = v35;
        v16 = v36;
      }

      v23 += v26;
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t _s18FitnessWorkoutPlan0bC23CreationScheduleRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4D0, &unk_1E5A3DBC0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if ((sub_1E58B5D34(*a1, *a2) & 1) == 0)
  {
    goto LABEL_19;
  }

  v14 = type metadata accessor for WorkoutPlanCreationScheduleRequest(0);
  if ((sub_1E5A29E54() & 1) == 0)
  {
    goto LABEL_19;
  }

  v15 = v14[6];
  v16 = *(v11 + 48);
  sub_1E59541FC(a1 + v15, v13);
  sub_1E59541FC(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_1E59541FC(v13, v10);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      sub_1E5954A64(&v13[v16], v7, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      if (*v10 == *v7 && (sub_1E5A29E54() & 1) != 0)
      {
        v21 = sub_1E595AC4C(*(v10 + *(v4 + 24)), *(v7 + *(v4 + 24)));
        sub_1E5954ACC(v7, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
        sub_1E5954ACC(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
        sub_1E58BAD14(v13, &qword_1ECFFD900, &qword_1E5A39BB0);
        if (v21)
        {
          goto LABEL_6;
        }

LABEL_19:
        v18 = 0;
        return v18 & 1;
      }

      sub_1E5954ACC(v7, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      sub_1E5954ACC(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      v19 = &qword_1ECFFD900;
      v20 = &qword_1E5A39BB0;
LABEL_18:
      sub_1E58BAD14(v13, v19, v20);
      goto LABEL_19;
    }

    sub_1E5954ACC(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
LABEL_12:
    v19 = &qword_1ECFFE4D0;
    v20 = &unk_1E5A3DBC0;
    goto LABEL_18;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1E58BAD14(v13, &qword_1ECFFD900, &qword_1E5A39BB0);
LABEL_6:
  if (*(a1 + v14[7]) != *(a2 + v14[7]) || *(a1 + v14[8]) != *(a2 + v14[8]) || *(a1 + v14[9]) != *(a2 + v14[9]))
  {
    goto LABEL_19;
  }

  v18 = sub_1E58BAD74();
  return v18 & 1;
}

uint64_t type metadata accessor for WorkoutPlanCreationScheduleRequest(uint64_t a1)
{
  result = qword_1ECFFE498;
  if (!qword_1ECFFE498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E595418C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59541FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E595426C()
{
  result = qword_1ECFFE430;
  if (!qword_1ECFFE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE430);
  }

  return result;
}

unint64_t sub_1E59542C0()
{
  result = qword_1ECFFE448;
  if (!qword_1ECFFE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE448);
  }

  return result;
}

uint64_t sub_1E5954314(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE458, &qword_1E5A39BC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E595438C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE438, &qword_1E5A39BC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5954404()
{
  result = qword_1ECFFE478;
  if (!qword_1ECFFE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE478);
  }

  return result;
}

uint64_t sub_1E59544A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5954510(uint64_t a1)
{
  sub_1E5954620(319, &qword_1ECFFE4A8, sub_1E591CB94, &type metadata for WorkoutPlanModalitySelection);
  if (v1 <= 0x3F)
  {
    sub_1E5A29E74();
    if (v2 <= 0x3F)
    {
      sub_1E5898B54(319);
      if (v3 <= 0x3F)
      {
        sub_1E5954620(319, &qword_1ECFFE4B0, sub_1E58D1B2C, &type metadata for WorkoutPlanWeekday);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5954620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1E5A2BD24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1E5954694()
{
  result = qword_1ECFFE4B8;
  if (!qword_1ECFFE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE4B8);
  }

  return result;
}

unint64_t sub_1E59546EC()
{
  result = qword_1ECFFE4C0;
  if (!qword_1ECFFE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE4C0);
  }

  return result;
}

unint64_t sub_1E5954744()
{
  result = qword_1ECFFE4C8;
  if (!qword_1ECFFE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE4C8);
  }

  return result;
}

uint64_t sub_1E5954798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5A468D0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564496E616C70 && a2 == 0xEE00726569666974 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5A468F0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A46910 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E756F436B656577 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737961646B656577 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v5 = sub_1E5A2C114();

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

uint64_t sub_1E59549FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5954A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5954ACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL PersonalizedWorkoutPlanCandidateType.isPersonalized.getter()
{
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v0, v3);
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) == 1;
  sub_1E5955008(v3, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  return v5;
}

uint64_t sub_1E5954C00()
{
  if (*v0)
  {
    return 0x6C616E6F73726570;
  }

  else
  {
    return 0x6D6F74737563;
  }
}

uint64_t sub_1E5954C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E6F73726570 && a2 == 0xEC00000064657A69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E5954D1C(uint64_t a1)
{
  v2 = sub_1E595578C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5954D58(uint64_t a1)
{
  v2 = sub_1E595578C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5954D94(uint64_t a1)
{
  v2 = sub_1E5955834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5954DD0(uint64_t a1)
{
  v2 = sub_1E5955834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5954E0C(uint64_t a1)
{
  v2 = sub_1E59557E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5954E48(uint64_t a1)
{
  v2 = sub_1E59557E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlanCandidateType.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 0x6D6F74737563;
  }

  sub_1E5955EE4(v8, v5, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v10 = sub_1E5A29E44();
  sub_1E5955008(v5, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  return v10;
}

uint64_t sub_1E5955008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PersonalizedWorkoutPlanCandidateType.candidate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v1, v5);
  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E5955008(v5, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v8 = 1;
  }

  else
  {
    sub_1E5955EE4(v5, a1, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v8 = 0;
  }

  return (*(v7 + 56))(a1, v8, 1, v6);
}

uint64_t sub_1E59551A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v2, v10);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    v12 = 0xE600000000000000;
    v13 = 0x6D6F74737563;
  }

  else
  {
    sub_1E5955EE4(v10, v7, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v13 = sub_1E5A29E44();
    v12 = v14;
    result = sub_1E5955008(v7, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  }

  *a1 = v13;
  a1[1] = v12;
  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4D8, &qword_1E5A39E10);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v22 - v3;
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4E0, &qword_1E5A39E18);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4E8, &qword_1E5A39E20);
  v13 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595578C();
  sub_1E5A2C224();
  sub_1E590B588(v29, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v31 = 0;
    sub_1E5955834();
    v16 = v30;
    sub_1E5A2C024();
    (*(v23 + 8))(v9, v24);
    return (*(v13 + 8))(v15, v16);
  }

  else
  {
    v18 = v25;
    sub_1E5955EE4(v12, v25, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v32 = 1;
    sub_1E59557E0();
    v19 = v26;
    v20 = v30;
    sub_1E5A2C024();
    sub_1E59568AC(&qword_1ECFFC158, type metadata accessor for PersonalizedWorkoutPlanCandidate, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidate);
    v21 = v28;
    sub_1E5A2C0B4();
    (*(v27 + 8))(v19, v21);
    sub_1E5955008(v18, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    return (*(v13 + 8))(v15, v20);
  }
}

unint64_t sub_1E595578C()
{
  result = qword_1ECFFE4F0;
  if (!qword_1ECFFE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE4F0);
  }

  return result;
}

unint64_t sub_1E59557E0()
{
  result = qword_1ECFFE4F8;
  if (!qword_1ECFFE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE4F8);
  }

  return result;
}

unint64_t sub_1E5955834()
{
  result = qword_1ECFFE500;
  if (!qword_1ECFFE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE500);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE508, &qword_1E5A39E28);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE510, &qword_1E5A39E30);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE518, &unk_1E5A39E38);
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E595578C();
  v20 = v51;
  sub_1E5A2C214();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v51 = v13;
  v42 = v15;
  v43 = v18;
  v22 = v48;
  v21 = v49;
  v23 = sub_1E5A2C004();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1E58BC5B4();
  v26 = v10;
  v27 = v12;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_1E5A2BE84();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v32 = v51;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v50 + 8))(v12, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  if (v25)
  {
    v57 = 1;
    sub_1E59557E0();
    v28 = v22;
    sub_1E5A2BF44();
    v29 = v50;
    v35 = v21;
    v36 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
    sub_1E59568AC(&qword_1ECFFC188, type metadata accessor for PersonalizedWorkoutPlanCandidate, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidate);
    v37 = v42;
    v38 = v46;
    sub_1E5A2BFE4();
    (*(v47 + 8))(v28, v38);
    (*(v29 + 8))(v27, v26);
    swift_unknownObjectRelease();
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    v39 = v43;
    sub_1E5955EE4(v37, v43, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  }

  else
  {
    v57 = 0;
    sub_1E5955834();
    sub_1E5A2BF44();
    v34 = v50;
    v35 = v21;
    (*(v45 + 8))(v9, v44);
    (*(v34 + 8))(v12, v10);
    swift_unknownObjectRelease();
    v40 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
    v39 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }

  sub_1E5955EE4(v39, v35, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1E5955EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PersonalizedWorkoutPlanCandidateType.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v2, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return MEMORY[0x1E6932DE0](0);
  }

  sub_1E5955EE4(v10, v7, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  MEMORY[0x1E6932DE0](1);
  PersonalizedWorkoutPlanCandidate.hash(into:)(a1);
  return sub_1E5955008(v7, type metadata accessor for PersonalizedWorkoutPlanCandidate);
}

uint64_t PersonalizedWorkoutPlanCandidateType.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2C1B4();
  sub_1E590B588(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1E6932DE0](0);
  }

  else
  {
    sub_1E5955EE4(v8, v5, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    MEMORY[0x1E6932DE0](1);
    PersonalizedWorkoutPlanCandidate.hash(into:)(v11);
    sub_1E5955008(v5, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  }

  return sub_1E5A2C204();
}

uint64_t sub_1E59562A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E590B588(v2, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return MEMORY[0x1E6932DE0](0);
  }

  sub_1E5955EE4(v10, v7, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  MEMORY[0x1E6932DE0](1);
  PersonalizedWorkoutPlanCandidate.hash(into:)(a1);
  return sub_1E5955008(v7, type metadata accessor for PersonalizedWorkoutPlanCandidate);
}

uint64_t sub_1E5956420(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2C1B4();
  sub_1E590B588(v2, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    MEMORY[0x1E6932DE0](0);
  }

  else
  {
    sub_1E5955EE4(v9, v6, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    MEMORY[0x1E6932DE0](1);
    PersonalizedWorkoutPlanCandidate.hash(into:)(v12);
    sub_1E5955008(v6, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  }

  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan012PersonalizedbC13CandidateTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE568, &qword_1E5A3A268);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_1E590B588(a1, &v19 - v12);
  sub_1E590B588(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1E590B588(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1E5955EE4(&v13[v15], v7, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      v17 = _s18FitnessWorkoutPlan012PersonalizedbC9CandidateV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1E5955008(v7, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      sub_1E5955008(v10, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      sub_1E5955008(v13, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
      return v17;
    }

    sub_1E5955008(v10, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1E5956C0C(v13);
    return 0;
  }

  sub_1E5955008(v13, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  return 1;
}

uint64_t sub_1E59568AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5956950()
{
  result = qword_1ECFFE528;
  if (!qword_1ECFFE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE528);
  }

  return result;
}

unint64_t sub_1E59569A8()
{
  result = qword_1ECFFE530;
  if (!qword_1ECFFE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE530);
  }

  return result;
}

unint64_t sub_1E5956A00()
{
  result = qword_1ECFFE538;
  if (!qword_1ECFFE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE538);
  }

  return result;
}

unint64_t sub_1E5956A58()
{
  result = qword_1ECFFE540;
  if (!qword_1ECFFE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE540);
  }

  return result;
}

unint64_t sub_1E5956AB0()
{
  result = qword_1ECFFE548;
  if (!qword_1ECFFE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE548);
  }

  return result;
}

unint64_t sub_1E5956B08()
{
  result = qword_1ECFFE550;
  if (!qword_1ECFFE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE550);
  }

  return result;
}

unint64_t sub_1E5956B60()
{
  result = qword_1ECFFE558;
  if (!qword_1ECFFE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE558);
  }

  return result;
}

unint64_t sub_1E5956BB8()
{
  result = qword_1ECFFE560;
  if (!qword_1ECFFE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE560);
  }

  return result;
}

uint64_t sub_1E5956C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE568, &qword_1E5A3A268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ArtworkContainerRelativeFrame(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E5956D40@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE570, &qword_1E5A3A300);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE578, &qword_1E5A3A308);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  if (a2)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE580, &qword_1E5A3A310);
    (*(*(v13 - 8) + 16))(v12, a1, v13);
    swift_storeEnumTagMultiPayload();
    v14 = sub_1E595702C();
    v20 = v13;
    v21 = v14;
    swift_getOpaqueTypeConformance2();
    return sub_1E5A2AA74();
  }

  else
  {
    sub_1E5A2AD64();
    sub_1E5A2B7E4();
    v19[0] = a1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE580, &qword_1E5A3A310);
    v17 = sub_1E595702C();
    v19[1] = a3;
    v18 = v17;
    sub_1E5A2B274();
    (*(v7 + 16))(v12, v9, v6);
    swift_storeEnumTagMultiPayload();
    v20 = v16;
    v21 = v18;
    swift_getOpaqueTypeConformance2();
    sub_1E5A2AA74();
    return (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_1E595702C()
{
  result = qword_1ECFFE588;
  if (!qword_1ECFFE588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE580, &qword_1E5A3A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE588);
  }

  return result;
}

unint64_t sub_1E5957090()
{
  result = qword_1ECFFE590;
  if (!qword_1ECFFE590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE598, &qword_1E5A3A318);
    sub_1E595702C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE580, &qword_1E5A3A310);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE590);
  }

  return result;
}

uint64_t RepeatReplaceAlertDetailView.init(locale:planDetail:dateComponentsFormatter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E5A29EB4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for RepeatReplaceAlertDetailView(0);
  result = sub_1E5957230(a2, a4 + *(v9 + 20));
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for RepeatReplaceAlertDetailView(uint64_t a1)
{
  result = qword_1ECFFE5A8;
  if (!qword_1ECFFE5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5957230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviousPlanDetail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5957294@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E5A2B7E4();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE5A0, &qword_1E5A3A320);
  return sub_1E5957994(v2, (a2 + *(v5 + 44)));
}

uint64_t RepeatReplaceAlertDetailView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E5A2B7E4();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE5A0, &qword_1E5A3A320);
  return sub_1E5957994(v2, (a2 + *(v5 + 44)));
}

uint64_t sub_1E5957354(uint64_t a1, unsigned __int8 a2)
{
  if (a1)
  {
    sub_1E5A2BE64();
    v3 = 0xE600000000000000;
    v4 = 0xE800000000000000;
    v5 = 0x5941445255544153;
    if (a2 != 5)
    {
      v5 = 0x5941444E5553;
      v4 = 0xE600000000000000;
    }

    v6 = 0xE800000000000000;
    v7 = 0x5941445352554854;
    if (a2 != 3)
    {
      v7 = 0x594144495246;
      v6 = 0xE600000000000000;
    }

    if (a2 <= 4u)
    {
      v4 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = 0xE700000000000000;
    v9 = 0x59414453455554;
    if (a2 != 1)
    {
      v9 = 0x414453454E444557;
      v8 = 0xE900000000000059;
    }

    if (a2)
    {
      v3 = v8;
    }

    else
    {
      v9 = 0x5941444E4F4DLL;
    }

    if (a2 <= 2u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (a2 <= 2u)
    {
      v11 = v3;
    }

    else
    {
      v11 = v4;
    }

    MEMORY[0x1E69327A0](v10, v11);

    v12 = 0x80000001E5A469B0;
    v13 = 0xD000000000000013;
  }

  else
  {
    sub_1E5A2BE64();
    v14 = 0xE600000000000000;
    v15 = 0xE800000000000000;
    v16 = 0x5941445255544153;
    if (a2 != 5)
    {
      v16 = 0x5941444E5553;
      v15 = 0xE600000000000000;
    }

    v17 = 0xE800000000000000;
    v18 = 0x5941445352554854;
    if (a2 != 3)
    {
      v18 = 0x594144495246;
      v17 = 0xE600000000000000;
    }

    if (a2 <= 4u)
    {
      v15 = v17;
    }

    else
    {
      v18 = v16;
    }

    v19 = 0xE700000000000000;
    v20 = 0x59414453455554;
    if (a2 != 1)
    {
      v20 = 0x414453454E444557;
      v19 = 0xE900000000000059;
    }

    if (a2)
    {
      v14 = v19;
    }

    else
    {
      v20 = 0x5941444E4F4DLL;
    }

    if (a2 <= 2u)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18;
    }

    if (a2 <= 2u)
    {
      v22 = v14;
    }

    else
    {
      v22 = v15;
    }

    MEMORY[0x1E69327A0](v21, v22);

    v13 = 0xD000000000000016;
    v12 = 0x80000001E5A469D0;
  }

  MEMORY[0x1E69327A0](v13, v12);
  return 0;
}

uint64_t sub_1E59575B0(char *a1)
{
  v31 = sub_1E5A29EB4();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;

  sub_1E5959814(&v32);
  v8 = v32;
  v9 = *(v32 + 2);
  if (v9)
  {
    v32 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    sub_1E590DEA8(0, v9, 0);
    v1 = v27;
    v10 = 0;
    v11 = v32;
    v12 = *(v8 + 2);
    v26 = v3;
    v28 = (v3 + 16);
    v29 = v12;
    while (v29 != v10)
    {
      if (v10 >= *(v8 + 2))
      {
        goto LABEL_15;
      }

      sub_1E5957354(v10, v8[v10 + 32]);
      sub_1E5A2BB24();
      if (qword_1EE2CFA28 != -1)
      {
        swift_once();
      }

      v13 = qword_1EE2D33E0;
      (*v28)(v30, v1, v31);
      v14 = v13;
      v15 = v7;
      v16 = sub_1E5A2BB64();
      v18 = v17;
      v32 = v11;
      v3 = *(v11 + 2);
      v19 = *(v11 + 3);
      if (v3 >= v19 >> 1)
      {
        sub_1E590DEA8((v19 > 1), v3 + 1, 1);
        v1 = v27;
        v11 = v32;
      }

      ++v10;
      *(v11 + 2) = v3 + 1;
      v20 = &v11[16 * v3];
      *(v20 + 4) = v16;
      *(v20 + 5) = v18;
      v7 = v15;
      if (v9 == v10)
      {

        v3 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v32 = v11;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
LABEL_16:
    swift_once();
  }

  v21 = qword_1EE2D33E0;
  (*(v3 + 16))(v30, v1, v31);
  v22 = v21;
  sub_1E5A2BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB988, &qword_1E5A3A470);
  sub_1E58CD164(&qword_1ECFFE600, &qword_1ECFFB988, &qword_1E5A3A470, MEMORY[0x1E69E6310]);
  v23 = sub_1E5A2BA54();

  return v23;
}

uint64_t sub_1E5957994@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v74 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - v20;
  *&v113 = 0;
  BYTE8(v113) = 1;
  sub_1E5958210(a1, &v114);
  sub_1E5A2B6B4();
  v21[*(v5 + 44)] = sub_1E5A2AD64();
  v78 = v21;
  *&v102 = 0;
  BYTE8(v102) = 1;
  sub_1E5958730(a1, &v103);
  sub_1E5A2B6B4();
  v18[*(v5 + 44)] = sub_1E5A2AD64();
  v77 = v18;
  *&v91 = 0;
  BYTE8(v91) = 1;
  sub_1E5958DD0(a1, &v92);
  sub_1E5A2B6B4();
  v15[*(v5 + 44)] = sub_1E5A2AD64();
  *&v80 = 0;
  BYTE8(v80) = 1;
  sub_1E595935C(a1, &v81);
  v79 = v12;
  sub_1E58BABA0(v21, v12, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v22 = v9;
  v76 = v9;
  sub_1E58BABA0(v18, v9, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v23 = v75;
  sub_1E58BABA0(v15, v75, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v24 = v124;
  v126[10] = v123;
  v126[11] = v124;
  v25 = v125;
  v126[12] = v125;
  v26 = v119;
  v27 = v120;
  v126[6] = v119;
  v126[7] = v120;
  v29 = v121;
  v28 = v122;
  v126[8] = v121;
  v126[9] = v122;
  v30 = v115;
  v31 = v116;
  v126[2] = v115;
  v126[3] = v116;
  v33 = v117;
  v32 = v118;
  v126[4] = v117;
  v126[5] = v118;
  v35 = v113;
  v34 = v114;
  v126[0] = v113;
  v126[1] = v114;
  a2[10] = v123;
  a2[11] = v24;
  a2[12] = v25;
  a2[6] = v26;
  a2[7] = v27;
  a2[8] = v29;
  a2[9] = v28;
  a2[2] = v30;
  a2[3] = v31;
  a2[4] = v33;
  a2[5] = v32;
  *a2 = v35;
  a2[1] = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE5D0, &qword_1E5A3A3B0);
  sub_1E58BABA0(v12, a2 + v36[12], &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v37 = v36[16];
  v38 = v111;
  v127[8] = v110;
  v127[9] = v111;
  v39 = v112[0];
  v128[0] = v112[0];
  *(v128 + 9) = *(v112 + 9);
  v40 = v106;
  v41 = v107;
  v127[4] = v106;
  v127[5] = v107;
  v42 = v108;
  v43 = v109;
  v127[6] = v108;
  v127[7] = v109;
  v44 = v102;
  v45 = v103;
  v127[0] = v102;
  v127[1] = v103;
  v46 = v104;
  v47 = v105;
  v127[2] = v104;
  v127[3] = v105;
  v48 = (a2 + v37);
  v48[8] = v110;
  v48[9] = v38;
  v48[10] = v39;
  *(v48 + 169) = *(v112 + 9);
  v48[4] = v40;
  v48[5] = v41;
  v48[6] = v42;
  v48[7] = v43;
  *v48 = v44;
  v48[1] = v45;
  v48[2] = v46;
  v48[3] = v47;
  sub_1E58BABA0(v22, a2 + v36[20], &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v49 = v36[24];
  v50 = v100;
  v129[8] = v99;
  v129[9] = v100;
  v51 = v101[0];
  v130[0] = v101[0];
  *(v130 + 11) = *(v101 + 11);
  v52 = v97;
  v53 = v98;
  v129[6] = v97;
  v129[7] = v98;
  v54 = v95;
  v55 = v96;
  v129[4] = v95;
  v129[5] = v96;
  v56 = v91;
  v57 = v92;
  v129[0] = v91;
  v129[1] = v92;
  v58 = v93;
  v59 = v94;
  v129[2] = v93;
  v129[3] = v94;
  v60 = (a2 + v49);
  v60[8] = v99;
  v60[9] = v50;
  v60[10] = v51;
  *(v60 + 171) = *(v101 + 11);
  v60[4] = v54;
  v60[5] = v55;
  v60[6] = v52;
  v60[7] = v53;
  *v60 = v56;
  v60[1] = v57;
  v60[2] = v58;
  v60[3] = v59;
  sub_1E58BABA0(v23, a2 + v36[28], &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v61 = v36[32];
  v62 = v89;
  v131[8] = v88;
  v131[9] = v89;
  v63 = v90[0];
  v132[0] = v90[0];
  *(v132 + 9) = *(v90 + 9);
  v64 = v84;
  v65 = v85;
  v131[4] = v84;
  v131[5] = v85;
  v66 = v86;
  v67 = v87;
  v131[6] = v86;
  v131[7] = v87;
  v68 = v80;
  v69 = v81;
  v131[0] = v80;
  v131[1] = v81;
  v70 = v82;
  v71 = v83;
  v131[2] = v82;
  v131[3] = v83;
  v72 = (a2 + v61);
  v72[8] = v88;
  v72[9] = v62;
  v72[10] = v63;
  *(v72 + 169) = *(v90 + 9);
  v72[4] = v64;
  v72[5] = v65;
  v72[6] = v66;
  v72[7] = v67;
  *v72 = v68;
  v72[1] = v69;
  v72[2] = v70;
  v72[3] = v71;
  sub_1E58BABA0(v126, v139, &qword_1ECFFE5D8, &qword_1E5A3A3B8);
  sub_1E58BABA0(v127, v139, &qword_1ECFFE5E0, &qword_1E5A3A3C0);
  sub_1E58BABA0(v129, v139, &qword_1ECFFE5E8, &qword_1E5A3A3C8);
  sub_1E58BABA0(v131, v139, &qword_1ECFFE5E0, &qword_1E5A3A3C0);
  sub_1E58BAD14(v15, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  sub_1E58BAD14(v77, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  sub_1E58BAD14(v78, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v133[8] = v88;
  v133[9] = v89;
  v134[0] = v90[0];
  *(v134 + 9) = *(v90 + 9);
  v133[4] = v84;
  v133[5] = v85;
  v133[6] = v86;
  v133[7] = v87;
  v133[0] = v80;
  v133[1] = v81;
  v133[2] = v82;
  v133[3] = v83;
  sub_1E58BAD14(v133, &qword_1ECFFE5E0, &qword_1E5A3A3C0);
  sub_1E58BAD14(v23, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v135[8] = v99;
  v135[9] = v100;
  v136[0] = v101[0];
  *(v136 + 11) = *(v101 + 11);
  v135[4] = v95;
  v135[5] = v96;
  v135[6] = v97;
  v135[7] = v98;
  v135[0] = v91;
  v135[1] = v92;
  v135[2] = v93;
  v135[3] = v94;
  sub_1E58BAD14(v135, &qword_1ECFFE5E8, &qword_1E5A3A3C8);
  sub_1E58BAD14(v76, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v137[8] = v110;
  v137[9] = v111;
  v138[0] = v112[0];
  *(v138 + 9) = *(v112 + 9);
  v137[4] = v106;
  v137[5] = v107;
  v137[6] = v108;
  v137[7] = v109;
  v137[0] = v102;
  v137[1] = v103;
  v137[2] = v104;
  v137[3] = v105;
  sub_1E58BAD14(v137, &qword_1ECFFE5E0, &qword_1E5A3A3C0);
  sub_1E58BAD14(v79, &qword_1ECFFE5C8, &qword_1E5A3A3A8);
  v139[10] = v123;
  v139[11] = v124;
  v139[12] = v125;
  v139[6] = v119;
  v139[7] = v120;
  v139[9] = v122;
  v139[8] = v121;
  v139[2] = v115;
  v139[3] = v116;
  v139[5] = v118;
  v139[4] = v117;
  v139[1] = v114;
  v139[0] = v113;
  return sub_1E58BAD14(v139, &qword_1ECFFE5D8, &qword_1E5A3A3B8);
}

uint64_t sub_1E5958128(uint64_t a1)
{
  result = sub_1E5A29EB4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PreviousPlanDetail(319);
    if (v3 <= 0x3F)
    {
      result = sub_1E59581C4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1E59581C4()
{
  result = qword_1EE2CFA30;
  if (!qword_1EE2CFA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2CFA30);
  }

  return result;
}

uint64_t sub_1E5958210@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A29EB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2D33E0;
  (*(v5 + 16))(v7, a1, v4);
  v10 = v9;
  v11 = sub_1E5A2AF64();
  v55 = v12;
  v56 = v11;
  v13 = v12;
  v15 = v14;
  v58 = v16;
  KeyPath = swift_getKeyPath();
  v59 = sub_1E5A2AED4();
  v17 = swift_getKeyPath();
  v18 = v15 & 1;
  LOBYTE(v97) = v15 & 1;
  v54 = v15 & 1;
  LOBYTE(v90) = 0;
  v19 = sub_1E5A2AB84();
  v47 = sub_1E5A2AA34();
  v20 = a1 + *(type metadata accessor for RepeatReplaceAlertDetailView(0) + 20);
  v21 = type metadata accessor for PreviousPlanDetail(0);
  v97 = sub_1E59575B0(*(v20 + *(v21 + 40)));
  v98 = v22;
  sub_1E58D1C80();
  v23 = sub_1E5A2AFD4();
  v25 = v24;
  LOBYTE(v9) = v26;
  v53 = v27;
  v51 = swift_getKeyPath();
  v52 = sub_1E5A2AED4();
  v50 = swift_getKeyPath();
  LOBYTE(v9) = v9 & 1;
  LOBYTE(v97) = v9;
  LOBYTE(v90) = 0;
  v49 = sub_1E5A2ABA4();
  v48 = swift_getKeyPath();
  v28 = sub_1E5A2AA44();
  *&v84 = v56;
  *(&v84 + 1) = v13;
  LOBYTE(v85) = v18;
  *(&v85 + 1) = *v79;
  DWORD1(v85) = *&v79[3];
  *(&v85 + 1) = v58;
  *&v86 = KeyPath;
  *(&v86 + 1) = 2;
  LOBYTE(v87) = 0;
  *(&v87 + 1) = *v78;
  DWORD1(v87) = *&v78[3];
  *(&v87 + 1) = v17;
  *&v88 = v59;
  DWORD2(v88) = v19;
  v29 = v47;
  v89 = v47;
  v74 = v86;
  v75 = v87;
  v76 = v88;
  v72 = v84;
  v73 = v85;
  *&v90 = v23;
  *(&v90 + 1) = v25;
  LOBYTE(v91) = v9;
  DWORD1(v91) = *&v81[3];
  v30 = *v81;
  *(&v91 + 1) = *v81;
  v32 = v52;
  v31 = v53;
  *(&v91 + 1) = v53;
  v34 = v50;
  v33 = v51;
  *&v92 = v51;
  *(&v92 + 1) = 2;
  LOBYTE(v93) = 0;
  DWORD1(v93) = *&v80[3];
  *(&v93 + 1) = *v80;
  *(&v93 + 1) = v50;
  *&v94 = v52;
  v35 = v49;
  DWORD2(v94) = v49;
  v36 = v48;
  *&v95 = v48;
  WORD4(v95) = 2;
  BYTE10(v95) = 1;
  HIBYTE(v95) = v83;
  *(&v95 + 11) = v82;
  v96 = v28;
  *&v77[0] = v47;
  *(&v77[6] + 1) = v28;
  *(&v77[5] + 8) = v95;
  *(&v77[4] + 8) = v94;
  *(&v77[3] + 8) = v93;
  *(&v77[2] + 8) = v92;
  *(&v77[1] + 8) = v91;
  *(v77 + 8) = v90;
  v37 = v84;
  v38 = v85;
  v39 = v87;
  a2[2] = v86;
  a2[3] = v39;
  *a2 = v37;
  a2[1] = v38;
  v40 = v76;
  v41 = v77[0];
  v42 = v77[2];
  a2[6] = v77[1];
  a2[7] = v42;
  a2[4] = v40;
  a2[5] = v41;
  v43 = v77[3];
  v44 = v77[4];
  v45 = v77[6];
  a2[10] = v77[5];
  a2[11] = v45;
  a2[8] = v43;
  a2[9] = v44;
  v97 = v23;
  v98 = v25;
  v99 = v9;
  *v100 = v30;
  *&v100[3] = *&v81[3];
  v101 = v31;
  v102 = v33;
  v103 = 2;
  v104 = 0;
  *v105 = *v80;
  *&v105[3] = *&v80[3];
  v106 = v34;
  v107 = v32;
  v108 = v35;
  v109 = v36;
  v110 = 2;
  v111 = 1;
  v113 = v83;
  v112 = v82;
  v114 = v28;
  sub_1E58BABA0(&v84, v60, &qword_1ECFFE610, &qword_1E5A3A480);
  sub_1E58BABA0(&v90, v60, &qword_1ECFFE618, &qword_1E5A3A488);
  sub_1E58BAD14(&v97, &qword_1ECFFE618, &qword_1E5A3A488);
  v60[0] = v56;
  v60[1] = v55;
  v61 = v54;
  *v62 = *v79;
  *&v62[3] = *&v79[3];
  v63 = v58;
  v64 = KeyPath;
  v65 = 2;
  v66 = 0;
  *v67 = *v78;
  *&v67[3] = *&v78[3];
  v68 = v17;
  v69 = v59;
  v70 = v19;
  v71 = v29;
  return sub_1E58BAD14(v60, &qword_1ECFFE610, &qword_1E5A3A480);
}

uint64_t sub_1E5958730@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2BAF4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E5A29EB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE2D33E0;
  v59 = *(v6 + 16);
  v60 = v5;
  v59(v8, a1, v5);
  v11 = v10;
  v12 = sub_1E5A2AF64();
  v67 = v13;
  v68 = v12;
  v14 = a1;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v69 = sub_1E5A2AED4();
  v65 = swift_getKeyPath();
  v64 = v16 & 1;
  LOBYTE(v99) = v16 & 1;
  LOBYTE(v94) = 0;
  v19 = sub_1E5A2AB84();
  v20 = type metadata accessor for RepeatReplaceAlertDetailView(0);
  v21 = *(v20 + 20);
  v61 = v14;
  v22 = v14 + v21;
  result = type metadata accessor for PreviousPlanDetail(0);
  v24 = *(v22 + *(result + 44));
  v25 = v24[2];
  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v25 == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v62 = v19;
  v63 = v18;
  v27 = v24[4];
  v26 = v24[5];
  if (v27 == v26)
  {
    v28 = *(v61 + *(v20 + 24));
    [v28 setUnitsStyle_];
    [v28 setAllowedUnits_];
    sub_1E5A2BD04();
    v29 = [v28 stringFromTimeInterval_];
    if (v29)
    {
      v30 = v29;
      v31 = sub_1E5A2BB44();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }
  }

  else
  {
    sub_1E5A2BAE4();
    sub_1E5A2BAD4();
    v99 = v27;
    sub_1E5A2BAB4();
    sub_1E5A2BAD4();
    v99 = v26;
    sub_1E5A2BAB4();
    sub_1E5A2BAD4();
    sub_1E5A2BB04();
    v34 = qword_1EE2D33E0;
    v59(v8, v61, v60);
    v35 = v34;
    v31 = sub_1E5A2BB64();
    v33 = v36;
  }

  v99 = v31;
  v100 = v33;
  sub_1E58D1C80();
  v37 = sub_1E5A2AFD4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = swift_getKeyPath();
  v61 = sub_1E5A2AED4();
  v45 = swift_getKeyPath();
  v46 = v41 & 1;
  v116 = v41 & 1;
  v114 = 0;
  v47 = sub_1E5A2ABA4();
  v48 = swift_getKeyPath();
  *&v90 = v68;
  *(&v90 + 1) = v67;
  LOBYTE(v91) = v64;
  *(&v91 + 1) = v118[0];
  DWORD1(v91) = *(v118 + 3);
  *(&v91 + 1) = v63;
  *&v92 = KeyPath;
  *(&v92 + 1) = 2;
  LOBYTE(v93[0]) = 0;
  *(v93 + 1) = *v117;
  DWORD1(v93[0]) = *&v117[3];
  *(&v93[0] + 1) = v65;
  *&v93[1] = v69;
  DWORD2(v93[1]) = v62;
  *(v84 + 12) = *(v93 + 12);
  v83 = v92;
  v84[0] = v93[0];
  v81 = v90;
  v82 = v91;
  *&v94 = v37;
  *(&v94 + 1) = v39;
  LOBYTE(v95) = v46;
  DWORD1(v95) = *&v115[3];
  *(&v95 + 1) = *v115;
  *(&v95 + 1) = v43;
  *&v96 = v44;
  *(&v96 + 1) = 2;
  LOBYTE(v97) = 0;
  DWORD1(v97) = *&v113[3];
  *(&v97 + 1) = *v113;
  v49 = v45;
  *(&v97 + 1) = v45;
  v50 = v61;
  *&v98[0] = v61;
  DWORD2(v98[0]) = v47;
  *&v98[1] = v48;
  BYTE8(v98[1]) = 2;
  v85 = v94;
  v86 = v95;
  *(v89 + 9) = *(v98 + 9);
  v88 = v97;
  v89[0] = v98[0];
  v87 = v96;
  v51 = v91;
  *a2 = v90;
  a2[1] = v51;
  v52 = v83;
  v53 = v84[0];
  v54 = v85;
  a2[4] = v84[1];
  a2[5] = v54;
  a2[2] = v52;
  a2[3] = v53;
  v55 = v86;
  v56 = v87;
  *(a2 + 153) = *(v89 + 9);
  v57 = v89[0];
  a2[8] = v88;
  a2[9] = v57;
  a2[6] = v55;
  a2[7] = v56;
  v99 = v37;
  v100 = v39;
  v101 = v46;
  *v102 = *v115;
  *&v102[3] = *&v115[3];
  v103 = v43;
  v104 = v44;
  v105 = 2;
  v106 = 0;
  *v107 = *v113;
  *&v107[3] = *&v113[3];
  v108 = v49;
  v109 = v50;
  v110 = v47;
  v111 = v48;
  v112 = 2;
  sub_1E58BABA0(&v90, v70, &qword_1ECFFE5F0, &qword_1E5A3A460);
  sub_1E58BABA0(&v94, v70, &qword_1ECFFE5F8, &qword_1E5A3A468);
  sub_1E58BAD14(&v99, &qword_1ECFFE5F8, &qword_1E5A3A468);
  v70[0] = v68;
  v70[1] = v67;
  v71 = v64;
  *v72 = v118[0];
  *&v72[3] = *(v118 + 3);
  v73 = v63;
  v74 = KeyPath;
  v75 = 2;
  v76 = 0;
  *v77 = *v117;
  *&v77[3] = *&v117[3];
  v78 = v65;
  v79 = v69;
  v80 = v62;
  return sub_1E58BAD14(v70, &qword_1ECFFE5F0, &qword_1E5A3A460);
}

uint64_t sub_1E5958DD0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A29EB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2D33E0;
  v10 = *(v5 + 16);
  v10(v7, a1, v4);
  v11 = v9;
  v12 = sub_1E5A2AF64();
  v46 = v13;
  v47 = v12;
  LOBYTE(v9) = v14;
  v49 = v15;
  KeyPath = swift_getKeyPath();
  v48 = sub_1E5A2AED4();
  v44 = swift_getKeyPath();
  v42 = v9 & 1;
  LOBYTE(v83) = v9 & 1;
  LOBYTE(v78) = 0;
  v43 = sub_1E5A2AB84();
  v16 = a1 + *(type metadata accessor for RepeatReplaceAlertDetailView(0) + 20);
  v83 = *(v16 + *(type metadata accessor for PreviousPlanDetail(0) + 48));
  sub_1E5A2BA84();
  v17 = qword_1EE2D33E0;
  v10(v7, a1, v4);
  v18 = v17;
  sub_1E5A2BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB988, &qword_1E5A3A470);
  sub_1E58CD164(&qword_1ECFFE600, &qword_1ECFFB988, &qword_1E5A3A470, MEMORY[0x1E69E6310]);
  v19 = sub_1E5A2BA54();
  v21 = v20;

  v83 = v19;
  v84 = v21;
  sub_1E58D1C80();
  v22 = sub_1E5A2AFD4();
  v24 = v23;
  LOBYTE(v17) = v25;
  v27 = v26;
  v28 = swift_getKeyPath();
  v41 = sub_1E5A2AED4();
  v29 = swift_getKeyPath();
  LOBYTE(v19) = v17 & 1;
  LOBYTE(v83) = v17 & 1;
  LOBYTE(v78) = 0;
  LODWORD(v17) = sub_1E5A2ABA4();
  v30 = swift_getKeyPath();
  *&v74 = v47;
  *(&v74 + 1) = v46;
  LOBYTE(v75) = v42;
  *(&v75 + 1) = *v73;
  DWORD1(v75) = *&v73[3];
  *(&v75 + 1) = v49;
  *&v76 = KeyPath;
  *(&v76 + 1) = 2;
  LOBYTE(v77[0]) = 0;
  *(v77 + 1) = *v72;
  DWORD1(v77[0]) = *&v72[3];
  *(&v77[0] + 1) = v44;
  *&v77[1] = v48;
  DWORD2(v77[1]) = v43;
  *(v64 + 12) = *(v77 + 12);
  v63 = v76;
  v64[0] = v77[0];
  v61 = v74;
  v62 = v75;
  *&v78 = v22;
  *(&v78 + 1) = v24;
  LOBYTE(v79) = v19;
  DWORD1(v79) = *(v71 + 3);
  *(&v79 + 1) = v71[0];
  *(&v79 + 1) = v27;
  *&v80 = v28;
  *(&v80 + 1) = 3;
  LOBYTE(v81) = 0;
  DWORD1(v81) = *&v70[3];
  *(&v81 + 1) = *v70;
  v31 = v29;
  *(&v81 + 1) = v29;
  v32 = v41;
  *&v82[0] = v41;
  DWORD2(v82[0]) = v17;
  *&v82[1] = v30;
  WORD4(v82[1]) = 2;
  BYTE10(v82[1]) = 1;
  v65 = v78;
  v66 = v79;
  *(v69 + 11) = *(v82 + 11);
  v68 = v81;
  v69[0] = v82[0];
  v67 = v80;
  v33 = v75;
  *a2 = v74;
  a2[1] = v33;
  v34 = v63;
  v35 = v64[0];
  v36 = v65;
  a2[4] = v64[1];
  a2[5] = v36;
  a2[2] = v34;
  a2[3] = v35;
  v37 = v66;
  v38 = v67;
  *(a2 + 155) = *(v69 + 11);
  v39 = v69[0];
  a2[8] = v68;
  a2[9] = v39;
  a2[6] = v37;
  a2[7] = v38;
  v83 = v22;
  v84 = v24;
  v85 = v19;
  *v86 = v71[0];
  *&v86[3] = *(v71 + 3);
  v87 = v27;
  v88 = v28;
  v89 = 3;
  v90 = 0;
  *v91 = *v70;
  *&v91[3] = *&v70[3];
  v92 = v31;
  v93 = v32;
  v94 = v17;
  v95 = v30;
  v96 = 2;
  v97 = 1;
  sub_1E58BABA0(&v74, v50, &qword_1ECFFE5F0, &qword_1E5A3A460);
  sub_1E58BABA0(&v78, v50, &qword_1ECFFE608, &qword_1E5A3A478);
  sub_1E58BAD14(&v83, &qword_1ECFFE608, &qword_1E5A3A478);
  v50[0] = v47;
  v50[1] = v46;
  v51 = v42;
  *v52 = *v73;
  *&v52[3] = *&v73[3];
  v53 = v49;
  v54 = KeyPath;
  v55 = 2;
  v56 = 0;
  *v57 = *v72;
  *&v57[3] = *&v72[3];
  v58 = v44;
  v59 = v48;
  v60 = v43;
  return sub_1E58BAD14(v50, &qword_1ECFFE5F0, &qword_1E5A3A460);
}

uint64_t sub_1E595935C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A29EB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2D33E0;
  (*(v5 + 16))(v7, a1, v4);
  v10 = v9;
  v11 = sub_1E5A2AF64();
  v45 = v12;
  v46 = v13;
  v15 = v14;
  KeyPath = swift_getKeyPath();
  v40 = sub_1E5A2AED4();
  v43 = swift_getKeyPath();
  v41 = v15 & 1;
  LOBYTE(v76[0]) = v15 & 1;
  LOBYTE(v71) = 0;
  v42 = sub_1E5A2AB84();
  v16 = type metadata accessor for RepeatReplaceAlertDetailView(0);
  type metadata accessor for PreviousPlanDetail(0);
  v17 = *(a1 + *(v16 + 24));
  [v17 setUnitsStyle_];
  [v17 setAllowedUnits_];
  sub_1E5A2BCF4();
  v18 = [v17 stringFromTimeInterval_];
  if (v18)
  {
    v19 = v18;
    v39 = sub_1E5A2BB44();
    v21 = v20;
  }

  else
  {
    v39 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = swift_getKeyPath();
  v23 = sub_1E5A2AED4();
  v24 = swift_getKeyPath();
  v88 = 0;
  v87 = 0;
  v25 = sub_1E5A2ABA4();
  v26 = swift_getKeyPath();
  *&v67 = v11;
  *(&v67 + 1) = v45;
  LOBYTE(v68) = v41;
  *(&v68 + 1) = v90[0];
  DWORD1(v68) = *(v90 + 3);
  v38 = v11;
  *(&v68 + 1) = v46;
  *&v69 = KeyPath;
  *(&v69 + 1) = 2;
  LOBYTE(v70[0]) = 0;
  *(v70 + 1) = *v89;
  DWORD1(v70[0]) = *&v89[3];
  v27 = v39;
  v28 = v40;
  *(&v70[0] + 1) = v43;
  *&v70[1] = v40;
  DWORD2(v70[1]) = v42;
  *(v61 + 12) = *(v70 + 12);
  v60 = v69;
  v61[0] = v70[0];
  v58 = v67;
  v59 = v68;
  *&v71 = v39;
  *(&v71 + 1) = v21;
  LOBYTE(v72) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(&v72 + 1) = MEMORY[0x1E69E7CC0];
  *&v73 = v22;
  *(&v73 + 1) = 2;
  LOBYTE(v74) = 0;
  *(&v74 + 1) = v24;
  *&v75[0] = v23;
  DWORD2(v75[0]) = v25;
  *&v75[1] = v26;
  BYTE8(v75[1]) = 2;
  v62 = v71;
  v63 = v72;
  *(v66 + 9) = *(v75 + 9);
  v65 = v74;
  v66[0] = v75[0];
  v64 = v73;
  v30 = v68;
  *a2 = v67;
  a2[1] = v30;
  v31 = v60;
  v32 = v61[0];
  v33 = v62;
  a2[4] = v61[1];
  a2[5] = v33;
  a2[2] = v31;
  a2[3] = v32;
  v34 = v63;
  v35 = v64;
  *(a2 + 153) = *(v66 + 9);
  v36 = v66[0];
  a2[8] = v65;
  a2[9] = v36;
  a2[6] = v34;
  a2[7] = v35;
  v76[0] = v27;
  v76[1] = v21;
  v77 = 0;
  v78 = v29;
  v79 = v22;
  v80 = 2;
  v81 = 0;
  v82 = v24;
  v83 = v23;
  v84 = v25;
  v85 = v26;
  v86 = 2;
  sub_1E58BABA0(&v67, v47, &qword_1ECFFE5F0, &qword_1E5A3A460);
  sub_1E58BABA0(&v71, v47, &qword_1ECFFE5F8, &qword_1E5A3A468);
  sub_1E58BAD14(v76, &qword_1ECFFE5F8, &qword_1E5A3A468);
  v47[0] = v38;
  v47[1] = v45;
  v48 = v41;
  *v49 = v90[0];
  *&v49[3] = *(v90 + 3);
  v50 = v46;
  v51 = KeyPath;
  v52 = 2;
  v53 = 0;
  *v54 = *v89;
  *&v54[3] = *&v89[3];
  v55 = v43;
  v56 = v28;
  v57 = v42;
  return sub_1E58BAD14(v47, &qword_1ECFFE5F0, &qword_1E5A3A460);
}

uint64_t sub_1E5959814(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A2278C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E5A2C0E4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E5A2BC24();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E58D1F98(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t PersonalizedWorkoutPlansEnvironment.init(resolvePersonalizedWorkoutPlanCandidates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CreateWorkoutPlanButtonEnvironment.init(navigateToPlanCreation:showWorkoutPlanCreationPrompt:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5959970(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E59599B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static WorkoutPlanTrainer.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanTrainer.init(artworks:identifier:informalName:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t WorkoutPlanTrainer.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t WorkoutPlanTrainer.informalName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t WorkoutPlanTrainer.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1E5959AE4()
{
  v1 = 0x736B726F77747261;
  v2 = 0x6C616D726F666E69;
  if (*v0 != 2)
  {
    v2 = 1701667182;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5959B64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E595AA10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5959B8C(uint64_t a1)
{
  v2 = sub_1E595A6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5959BC8(uint64_t a1)
{
  v2 = sub_1E595A6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5959C08(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E5959C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E5959C80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E5959CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanTrainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE620, &qword_1E5A3A540);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v13[5] = v1[2];
  v13[6] = v8;
  v11 = v1[5];
  v13[3] = v1[4];
  v13[4] = v10;
  v13[1] = v1[6];
  v13[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595A6C4();

  sub_1E5A2C224();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE630, &qword_1E5A3A548);
  sub_1E595A718(&qword_1ECFFE638, &qword_1ECFFE640, &protocol conformance descriptor for WorkoutPlanArtwork, MEMORY[0x1E69E64F0]);
  sub_1E5A2C0B4();

  if (!v2)
  {
    v16 = 1;
    sub_1E5A2C064();
    v15 = 2;
    sub_1E5A2C034();
    v14 = 3;
    sub_1E5A2C064();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t WorkoutPlanTrainer.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE648, &qword_1E5A3A550);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595A6C4();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE630, &qword_1E5A3A548);
  v29 = 0;
  sub_1E595A718(&qword_1ECFFE650, &qword_1ECFFE658, &protocol conformance descriptor for WorkoutPlanArtwork, MEMORY[0x1E69E6510]);
  sub_1E5A2BFE4();
  v9 = v30;
  v28 = 1;
  v10 = sub_1E5A2BF94();
  v25 = v11;
  v23 = v10;
  v27 = 2;
  v22 = sub_1E5A2BF64();
  v24 = v12;
  v26 = 3;
  v13 = sub_1E5A2BF94();
  v16 = v15;
  v17 = v13;
  (*(v6 + 8))(v8, v5);
  v18 = v22;
  v19 = v23;
  *a2 = v9;
  a2[1] = v19;
  v20 = v24;
  a2[2] = v25;
  a2[3] = v18;
  a2[4] = v20;
  a2[5] = v17;
  a2[6] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanTrainer.hash(into:)(__int128 *a1)
{
  v2 = v1[4];
  sub_1E58B892C(a1, *v1);
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v2)
  {
    sub_1E5A2BB74();
  }

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanTrainer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[4];
  sub_1E5A2C1B4();
  sub_1E58B892C(v4, v1);
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v2)
  {
    sub_1E5A2BB74();
  }

  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E595A430(__int128 *a1)
{
  v2 = v1[4];
  sub_1E58B892C(a1, *v1);
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v2)
  {
    sub_1E5A2BB74();
  }

  return sub_1E5A2BB74();
}

uint64_t sub_1E595A4D8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[4];
  sub_1E5A2C1B4();
  sub_1E58B892C(v5, v2);
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v3)
  {
    sub_1E5A2BB74();
  }

  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC7TrainerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((sub_1E58B4D88(*a1, *a2) & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v10 && (v3 == v8 && v5 == v10 || (sub_1E5A2C114() & 1) != 0))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_10:
  if (v13 == v9 && v14 == v11)
  {
    return 1;
  }

  return sub_1E5A2C114();
}

unint64_t sub_1E595A6C4()
{
  result = qword_1ECFFE628;
  if (!qword_1ECFFE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE628);
  }

  return result;
}

uint64_t sub_1E595A718(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE630, &qword_1E5A3A548);
    sub_1E595A7A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E595A7A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutPlanArtwork(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E595A7E4()
{
  result = qword_1ECFFE660;
  if (!qword_1ECFFE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE660);
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

uint64_t sub_1E595A854(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E595A89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E595A90C()
{
  result = qword_1ECFFE668;
  if (!qword_1ECFFE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE668);
  }

  return result;
}

unint64_t sub_1E595A964()
{
  result = qword_1ECFFE670;
  if (!qword_1ECFFE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE670);
  }

  return result;
}

unint64_t sub_1E595A9BC()
{
  result = qword_1ECFFE678;
  if (!qword_1ECFFE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE678);
  }

  return result;
}

uint64_t sub_1E595AA10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B726F77747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616D726F666E69 && a2 == 0xEC000000656D614ELL || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t PersonalizedWorkoutPlanCandidates.init(workoutPlans:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  sub_1E5A29E64();
  *a2 = 0;
  *(a2 + *(v4 + 24)) = MEMORY[0x1E69E7CC0];
  result = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1E595ABF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E595AC4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;
      if (*(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3))
      {
        if (v6 != v9)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1E5A2C114();
        result = 0;
        if ((v12 & 1) == 0 || v6 != v9)
        {
          return result;
        }
      }

      v14 = v5 == v8 && v7 == v10;
      if (!v14 && (sub_1E5A2C114() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1E595AD48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (1)
    {
      v6 = (v4 + 72 * v3);
      v7 = v6[1];
      v26 = *v6;
      *v27 = v7;
      v8 = v6[3];
      *&v27[16] = v6[2];
      v28 = v8;
      v29 = *(v6 + 8);
      v9 = (v5 + 72 * v3);
      v33 = *(v9 + 8);
      v10 = v9[3];
      *&v31[16] = v9[2];
      v32 = v10;
      v11 = v9[1];
      v30 = *v9;
      *v31 = v11;
      v12 = *(v26 + 16);
      if (v12 != *(v30 + 16))
      {
        break;
      }

      if (v12 && v26 != v30)
      {
        v13 = (v26 + 32);
        v14 = (v30 + 32);
        while (*v13 == *v14)
        {
          ++v13;
          ++v14;
          if (!--v12)
          {
            goto LABEL_11;
          }
        }

        return 0;
      }

LABEL_11:
      v15 = *(&v26 + 1) == *(&v30 + 1) && *v27 == *v31;
      if (!v15 && (sub_1E5A2C114() & 1) == 0 || *&v27[8] != *&v31[8] && (sub_1E5A2C114() & 1) == 0)
      {
        return 0;
      }

      ++v3;
      v16 = 0xEF6E776F646C6F6FLL;
      v17 = 0x436C7566646E694DLL;
      switch(v27[24])
      {
        case 1:
          v16 = 0xE400000000000000;
          v17 = 1701998403;
          break;
        case 2:
          v16 = 0xE700000000000000;
          v18 = 1818458435;
          goto LABEL_28;
        case 3:
          v16 = 0xE500000000000000;
          v17 = 0x65636E6144;
          break;
        case 4:
          v16 = 0xE300000000000000;
          v17 = 7238994;
          break;
        case 5:
          v16 = 0xE700000000000000;
          v18 = 1802264919;
LABEL_28:
          v17 = v18 | 0x676E6900000000;
          break;
        case 6:
          v16 = 0xE400000000000000;
          v17 = 1414089032;
          break;
        case 7:
          v16 = 0xEA0000000000676ELL;
          v17 = 0x69786F626B63696BLL;
          break;
        case 8:
          v16 = 0xEA00000000006E6FLL;
          v17 = 0x697461746964654DLL;
          break;
        case 9:
          v16 = 0xE700000000000000;
          v17 = 0x736574616C6950;
          break;
        case 0xA:
          v16 = 0xE600000000000000;
          v17 = 0x676E69776F52;
          break;
        case 0xB:
          v16 = 0xE800000000000000;
          v17 = 0x6874676E65727453;
          break;
        case 0xC:
          v16 = 0xE90000000000006CLL;
          v17 = 0x6C696D6461657254;
          break;
        case 0xD:
          v16 = 0xE400000000000000;
          v17 = 1634168665;
          break;
        default:
          break;
      }

      v19 = 0x436C7566646E694DLL;
      v20 = 0xEF6E776F646C6F6FLL;
      switch(v31[24])
      {
        case 1:
          v20 = 0xE400000000000000;
          v19 = 1701998403;
          break;
        case 2:
          v20 = 0xE700000000000000;
          v21 = 1818458435;
          goto LABEL_43;
        case 3:
          v20 = 0xE500000000000000;
          v19 = 0x65636E6144;
          break;
        case 4:
          v20 = 0xE300000000000000;
          v19 = 7238994;
          break;
        case 5:
          v20 = 0xE700000000000000;
          v21 = 1802264919;
LABEL_43:
          v19 = v21 | 0x676E6900000000;
          break;
        case 6:
          v20 = 0xE400000000000000;
          v19 = 1414089032;
          break;
        case 7:
          v20 = 0xEA0000000000676ELL;
          v19 = 0x69786F626B63696BLL;
          break;
        case 8:
          v20 = 0xEA00000000006E6FLL;
          v19 = 0x697461746964654DLL;
          break;
        case 9:
          v20 = 0xE700000000000000;
          v19 = 0x736574616C6950;
          break;
        case 0xA:
          v20 = 0xE600000000000000;
          v19 = 0x676E69776F52;
          break;
        case 0xB:
          v20 = 0xE800000000000000;
          v19 = 0x6874676E65727453;
          break;
        case 0xC:
          v20 = 0xE90000000000006CLL;
          v19 = 0x6C696D6461657254;
          break;
        case 0xD:
          v20 = 0xE400000000000000;
          v19 = 1634168665;
          break;
        default:
          break;
      }

      if (v17 == v19 && v16 == v20)
      {
        sub_1E591B3E0(&v26, v25);
        sub_1E591B3E0(&v30, v25);
      }

      else
      {
        v22 = sub_1E5A2C114();
        sub_1E591B3E0(&v26, v25);
        sub_1E591B3E0(&v30, v25);

        if ((v22 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      if (v28 != v32 && (sub_1E5A2C114() & 1) == 0)
      {
LABEL_57:
        sub_1E58C3164(&v30);
        sub_1E58C3164(&v26);
        return 0;
      }

      v23 = sub_1E58BAD74();
      sub_1E58C3164(&v30);
      sub_1E58C3164(&v26);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      if (v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1E595B21C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1E5A2C114() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1E595B2AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E595B308(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE568, &qword_1E5A3A268);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v33 - v6;
  v8 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v14;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v34 = &v33 - v14;
  v35 = v15;
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = (v4 + 48);
  v38 = *(v13 + 72);
  while (1)
  {
    sub_1E595C7F8(v19, v16, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E595C7F8(v20, v11, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v22 = *(v39 + 48);
    sub_1E595C7F8(v16, v7, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E595C7F8(v11, &v7[v22], type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v23 = *v21;
    v24 = v40;
    if ((*v21)(v7, 1, v40) != 1)
    {
      break;
    }

    sub_1E595C860(v11, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E595C860(v16, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    if (v23(&v7[v22], 1, v40) != 1)
    {
      goto LABEL_14;
    }

    sub_1E595C860(v7, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
LABEL_5:
    v20 += v38;
    v19 += v38;
    if (!--v17)
    {
      return 1;
    }
  }

  v25 = v11;
  v26 = v21;
  v27 = v35;
  sub_1E595C7F8(v7, v35, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  v28 = v24;
  v29 = v26;
  if (v23(&v7[v22], 1, v28) != 1)
  {
    v30 = &v7[v22];
    v31 = v36;
    sub_1E5954A64(v30, v36, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v37 = _s18FitnessWorkoutPlan012PersonalizedbC9CandidateV2eeoiySbAC_ACtFZ_0(v27, v31);
    sub_1E595C860(v31, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    v11 = v25;
    sub_1E595C860(v25, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v16 = v34;
    sub_1E595C860(v34, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E595C860(v27, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    sub_1E595C860(v7, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v21 = v29;
    if (!v37)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1E595C860(v25, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  sub_1E595C860(v34, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  sub_1E595C860(v27, type metadata accessor for PersonalizedWorkoutPlanCandidate);
LABEL_14:
  sub_1E5956C0C(v7);
  return 0;
}

uint64_t PersonalizedWorkoutPlanCandidates.workoutPlans.getter()
{
  type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
}

uint64_t PersonalizedWorkoutPlanCandidates.init(workoutPlans:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E5954A64(a2, a3, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  result = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  *(a3 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1E595B850()
{
  if (*v0)
  {
    return 0x5074756F6B726F77;
  }

  else
  {
    return 0x7363697274656DLL;
  }
}

uint64_t sub_1E595B894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5074756F6B726F77 && a2 == 0xEC000000736E616CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E595B974(uint64_t a1)
{
  v2 = sub_1E595BC08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E595B9B0(uint64_t a1)
{
  v2 = sub_1E595BC08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlanCandidates.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE680, &qword_1E5A3A810);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595BC08();
  sub_1E5A2C224();
  v12 = 0;
  type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  sub_1E595C670(&qword_1ECFFE450, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateMetrics);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for PersonalizedWorkoutPlanCandidates(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE690, &qword_1E5A3A818);
    sub_1E595BFCC(&qword_1ECFFE698, &qword_1ECFFE6A0, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateType, MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E595BC08()
{
  result = qword_1ECFFE688;
  if (!qword_1ECFFE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE688);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidates.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE6A8, &qword_1E5A3A820);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E595BC08();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_1E595C670(&qword_1ECFFE480, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateMetrics);
  v14 = v19;
  sub_1E5A2BFE4();
  sub_1E5954A64(v20, v13, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE690, &qword_1E5A3A818);
  v22 = 1;
  sub_1E595BFCC(&qword_1ECFFE6B0, &qword_1ECFFE6B8, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateType, MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1E595C7F8(v13, v17, type metadata accessor for PersonalizedWorkoutPlanCandidates);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E595C860(v13, type metadata accessor for PersonalizedWorkoutPlanCandidates);
}

uint64_t sub_1E595BFCC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE690, &qword_1E5A3A818);
    sub_1E595C670(a2, type metadata accessor for PersonalizedWorkoutPlanCandidateType, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PersonalizedWorkoutPlanCandidates.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  if ((sub_1E5A29E54() & 1) == 0 || (sub_1E595AC4C(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for PersonalizedWorkoutPlanCandidates(0) + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1E595B308(v6, v7);
}

uint64_t PersonalizedWorkoutPlanCandidates.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E6932DE0](*v1);
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  sub_1E5A29E74();
  sub_1E595C670(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5953800(a1, *(v1 + *(v3 + 24)));
  v4 = *(v1 + *(type metadata accessor for PersonalizedWorkoutPlanCandidates(0) + 20));

  return sub_1E59538AC(a1, v4);
}

uint64_t PersonalizedWorkoutPlanCandidates.hashValue.getter()
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v0);
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  sub_1E5A29E74();
  sub_1E595C670(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5953800(v4, *(v0 + *(v1 + 24)));
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  sub_1E59538AC(v4, *(v0 + *(v2 + 20)));
  return sub_1E5A2C204();
}

uint64_t sub_1E595C2F4(uint64_t a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v1);
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  sub_1E5A29E74();
  sub_1E595C670(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5953800(v5, *(v1 + *(v3 + 24)));
  sub_1E59538AC(v5, *(v1 + *(a1 + 20)));
  return sub_1E5A2C204();
}

uint64_t sub_1E595C3D4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E6932DE0](*v2);
  v5 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  sub_1E5A29E74();
  sub_1E595C670(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5953800(a1, *(v2 + *(v5 + 24)));
  v6 = *(v2 + *(a2 + 20));

  return sub_1E59538AC(a1, v6);
}

uint64_t sub_1E595C4A8(uint64_t a1, uint64_t a2)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v2);
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  sub_1E5A29E74();
  sub_1E595C670(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5953800(v6, *(v2 + *(v4 + 24)));
  sub_1E59538AC(v6, *(v2 + *(a2 + 20)));
  return sub_1E5A2C204();
}

uint64_t sub_1E595C584(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  if ((sub_1E5A29E54() & 1) == 0 || (sub_1E595AC4C(*(a1 + *(v6 + 24)), *(a2 + *(v6 + 24))) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_1E595B308(v8, v9);
}

uint64_t sub_1E595C670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E595C6F4()
{
  result = qword_1ECFFE6C0;
  if (!qword_1ECFFE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE6C0);
  }

  return result;
}

unint64_t sub_1E595C74C()
{
  result = qword_1ECFFE6C8;
  if (!qword_1ECFFE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE6C8);
  }

  return result;
}

unint64_t sub_1E595C7A4()
{
  result = qword_1ECFFE6D0;
  if (!qword_1ECFFE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE6D0);
  }

  return result;
}

uint64_t sub_1E595C7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E595C860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActivitySelectionView.init(store:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E595C958(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  v4 = *(v9 + 16) + 1;
  v5 = (v9 + 48);
  while (--v4)
  {
    v6 = v5[1];
    if (*(v5 - 1) != a1 || *v5 != a2)
    {
      v5 += 9;
      if ((sub_1E5A2C114() & 1) == 0)
      {
        continue;
      }
    }

    return v6;
  }

  return 0;
}

uint64_t sub_1E595CA9C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  v4 = v9 + 96;
  v5 = *(v9 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 16);
    if (*(v4 - 56) != a1 || *(v4 - 48) != a2)
    {
      v4 += 72;
      if ((sub_1E5A2C114() & 1) == 0)
      {
        continue;
      }
    }

    return v6;
  }

  return 0;
}

uint64_t sub_1E595CBE4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  if (v30)
  {
    v29[0] = v30;
    v2 = WorkoutPlanSchedule.modalityIdentifiers()();

    v3 = v2 + 56;
    v4 = 1 << v2[32];
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 7);
    v7 = (v4 + 63) >> 6;
    v28 = v2;

    v9 = 0;
    for (i = MEMORY[0x1E69E7CC0]; v6; *(v24 + 48) = v25)
    {
LABEL_11:
      while (1)
      {
        v12 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v13 = (*(v28 + 6) + ((v9 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];
        swift_getKeyPath();

        sub_1E5A2B934();

        v16 = v35;
        v17 = *(v35 + 16);
        if (v17)
        {
          break;
        }

LABEL_6:

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v18 = 32;
      while (1)
      {
        v30 = *(v16 + v18);
        v20 = *(v16 + v18 + 32);
        v19 = *(v16 + v18 + 48);
        v21 = *(v16 + v18 + 16);
        v34 = *(v16 + v18 + 64);
        v32 = v20;
        v33 = v19;
        v31 = v21;
        if (__PAIR128__(v21, *(&v30 + 1)) == __PAIR128__(v14, v15) || (sub_1E5A2C114() & 1) != 0)
        {
          break;
        }

        v18 += 72;
        if (!--v17)
        {
          goto LABEL_6;
        }
      }

      sub_1E591B3E0(&v30, v29);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E58E6CF4(0, *(i + 16) + 1, 1, i);
        i = result;
      }

      v23 = *(i + 16);
      v22 = *(i + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1E58E6CF4((v22 > 1), v23 + 1, 1, i);
        i = result;
      }

      *(i + 16) = v23 + 1;
      v24 = i + 72 * v23;
      *(v24 + 32) = v30;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      *(v24 + 96) = v34;
      *(v24 + 64) = v26;
      *(v24 + 80) = v27;
    }

LABEL_7:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return i;
      }

      v6 = *&v3[8 * v11];
      ++v9;
      if (v6)
      {
        v9 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t ActivitySelectionView.body.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1E5A2BC84();

  v3 = sub_1E5A2BC74();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E85E0];
  v4[2] = v3;
  v4[3] = v5;
  v4[4] = v2;
  v4[5] = v1;

  v6 = sub_1E5A2BC74();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v2;
  v7[5] = v1;
  sub_1E5A2B684();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE6D8, &qword_1E5A3AA38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE6E0, &qword_1E5A3AA40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE6E8, &qword_1E5A3AA48);
  sub_1E58CD164(&qword_1ECFFE6F0, &qword_1ECFFE6D8, &qword_1E5A3AA38, MEMORY[0x1E697D658]);
  sub_1E58CD164(&qword_1ECFFE6F8, &qword_1ECFFE6E0, &qword_1E5A3AA40, MEMORY[0x1E6981F48]);
  sub_1E595E5E8();
  return sub_1E5A2B5E4();
}

uint64_t sub_1E595D0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v75 = a3;
  v67 = sub_1E5A2A6A4();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60[1] = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60[0] = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE730, &qword_1E5A3ABB0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE738, &qword_1E5A3ABB8);
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v61 = v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE740, &qword_1E5A3ABC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v74 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v71 = v60 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE748, &qword_1E5A3ABC8);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v70 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v60 - v19;
  v21 = a1;
  v83 = a1;
  v84 = a2;
  *&v80 = sub_1E595CBE4(v22, v23);

  sub_1E592B124(&v80);

  v83 = v80;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0F0, &unk_1E5A37CB0);
  sub_1E58CD164(&qword_1ECFFE758, &qword_1ECFFE750, &unk_1E5A3ABF0, MEMORY[0x1E69E6338]);
  sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0, MEMORY[0x1E697D658]);
  v24 = sub_1E5A2B6E4();
  v83 = a1;
  v84 = a2;
  v26 = *(sub_1E595CBE4(v24, v25) + 16);

  swift_getKeyPath();
  sub_1E5A2B934();

  v27 = *(v80 + 16);

  if (v26 >= v27)
  {
    v51 = 1;
    v48 = v72;
    v50 = v73;
    v49 = v71;
    v37 = v68;
  }

  else
  {
    sub_1E5A2BC84();

    v28 = sub_1E5A2BC74();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E85E0];
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v21;
    v29[5] = a2;

    v31 = sub_1E5A2BC74();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v30;
    v32[4] = v21;
    v32[5] = a2;
    v33 = sub_1E5A2B684();
    *&v34 = MEMORY[0x1EEE9AC00](v33);
    v80 = v34;
    v81 = v35;
    v82 = v36;
    sub_1E5A2BA84();
    v37 = v68;
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v38 = qword_1EE2D33E0;
    swift_getKeyPath();
    v39 = v38;
    sub_1E5A2B944();

    v76 = sub_1E5A2AF64();
    v77 = v40;
    v78 = v41 & 1;
    v79 = v42;
    sub_1E595EA98();
    v43 = v62;
    sub_1E5A2B5D4();
    v44 = v65;
    sub_1E5A2A694();
    sub_1E58CD164(&qword_1ECFFE770, &qword_1ECFFE730, &qword_1E5A3ABB0, MEMORY[0x1E697D690]);
    v45 = v61;
    v46 = v64;
    v47 = v67;
    sub_1E5A2B0D4();
    (*(v66 + 8))(v44, v47);
    (*(v63 + 8))(v43, v46);
    v49 = v71;
    v48 = v72;
    v50 = v73;
    (*(v72 + 32))(v71, v45, v73);
    v51 = 0;
  }

  (*(v48 + 56))(v49, v51, 1, v50);
  v53 = v69;
  v52 = v70;
  v54 = *(v69 + 16);
  v54(v70, v20, v37);
  v55 = v74;
  sub_1E589EDFC(v49, v74);
  v56 = v75;
  v54(v75, v52, v37);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE760, &qword_1E5A3AC00);
  sub_1E589EDFC(v55, &v56[*(v57 + 48)]);
  sub_1E589EE6C(v49);
  v58 = *(v53 + 8);
  v58(v20, v37);
  sub_1E589EE6C(v55);
  return (v58)(v52, v37);
}

uint64_t sub_1E595DA28@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for EditItem(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5A2B934();

  v6 = &v5[*(v3 + 44)];
  v8 = *v6;
  v7 = *(v6 + 1);

  result = sub_1E58D26E4(v5, type metadata accessor for EditItem);
  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v7)
  {
    v11 = v7;
  }

  *a1 = v10;
  a1[1] = v11;
  return result;
}

uint64_t sub_1E595DB0C(uint64_t *a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *a1;
  v6 = a1[1];
  v8[8] = 1;
  *v4 = 7;
  *(v4 + 1) = v5;
  *(v4 + 2) = v6;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 46) = 0;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();
  return sub_1E58D26E4(v4, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E595DC10(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1E5A2B934();

  v3 = v4;

  sub_1E592B124(&v3);

  v4 = v3;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0F0, &unk_1E5A37CB0);
  sub_1E58CD164(&qword_1ECFFE758, &qword_1ECFFE750, &unk_1E5A3ABF0, MEMORY[0x1E69E6338]);
  sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0, MEMORY[0x1E697D658]);
  return sub_1E5A2B6E4();
}

uint64_t sub_1E595DE3C@<X0>(uint64_t a2@<X8>)
{
  sub_1E58D1C80();

  result = sub_1E5A2AFD4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1E595DEA8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE718, &unk_1E5A3AB30);
  sub_1E595E6AC();
  return sub_1E5A2B504();
}

uint64_t sub_1E595DF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE2D33E0;
  swift_getKeyPath();
  v5 = v4;
  sub_1E5A2B944();

  result = sub_1E5A2AF64();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1E595E0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE728, &qword_1E5A3AB58);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC030, &unk_1E5A2FCC0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v31 - v9);
  v11 = type metadata accessor for EditItem(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5A2B934();

  v15 = &v14[*(v12 + 44)];
  v16 = *v15;
  v17 = v15[1];

  sub_1E58D26E4(v14, type metadata accessor for EditItem);
  if (v17)
  {
    v32 = a1;
    v33 = a2;
    sub_1E595C958(v16, v17);
    v18 = sub_1E5A2B4A4();
    v32 = a1;
    v33 = a2;
    v19 = sub_1E595E808(v16, v17);

    v20 = (v10 + *(v8 + 36));
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC068, &qword_1E5A3AB50) + 28);
    v22 = *MEMORY[0x1E69816E0];
    v23 = sub_1E5A2B4D4();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    *v10 = v18;
    v10[1] = v19;
    sub_1E595E730(v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1E58D1CF0();
  }

  else
  {
    v24 = sub_1E5A2B4A4();
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v25 = qword_1ED026498;
    v26 = (v10 + *(v8 + 36));
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC068, &qword_1E5A3AB50) + 28);
    v28 = *MEMORY[0x1E69816E0];
    v29 = sub_1E5A2B4D4();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    *v10 = v24;
    v10[1] = v25;
    sub_1E595E730(v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1E58D1CF0();
  }

  sub_1E5A2AA74();
  return sub_1E595E7A0(v10);
}

double sub_1E595E47C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EditItem(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5A2B934();

  v10 = &v9[*(v7 + 44)];
  v12 = *v10;
  v11 = v10[1];

  sub_1E58D26E4(v9, type metadata accessor for EditItem);
  if (v11)
  {
    *&v22 = a1;
    *(&v22 + 1) = a2;
    v13 = sub_1E595CA9C(v12, v11);
    v15 = v14;

    *&v19 = v13;
    *(&v19 + 1) = v15;
    *&v20 = 0;
    *(&v20 + 1) = MEMORY[0x1E69E7CC0];
    v21 = 0;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 1;
  }

  sub_1E5A2AA74();
  result = *&v22;
  v17 = v23;
  v18 = v24;
  *a3 = v22;
  *(a3 + 16) = v17;
  *(a3 + 32) = v18;
  return result;
}

unint64_t sub_1E595E5E8()
{
  result = qword_1ECFFE700;
  if (!qword_1ECFFE700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE6E8, &qword_1E5A3AA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE700);
  }

  return result;
}

unint64_t sub_1E595E6AC()
{
  result = qword_1ECFFE720;
  if (!qword_1ECFFE720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE718, &unk_1E5A3AB30);
    sub_1E58D1CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE720);
  }

  return result;
}

uint64_t sub_1E595E730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC030, &unk_1E5A2FCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E595E7A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC030, &unk_1E5A2FCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E595E808(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  v4 = *(v11 + 16) + 1;
  v5 = (v11 + 48);
  do
  {
    if (!--v4)
    {

      goto LABEL_16;
    }

    if (*(v5 - 1) == a1 && *v5 == a2)
    {
      break;
    }

    v5 += 9;
  }

  while ((sub_1E5A2C114() & 1) == 0);

  if (WorkoutPlanCatalogModalityKind.rawValue.getter() == 0x697461746964654DLL && v7 == 0xEA00000000006E6FLL)
  {

LABEL_13:
    if (qword_1ECFFB480 != -1)
    {
      swift_once();
    }

    v9 = &qword_1ED0264A0;
    return *v9;
  }

  v8 = sub_1E5A2C114();

  if (v8)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v9 = &qword_1ED026498;
  return *v9;
}

unint64_t sub_1E595EA98()
{
  result = qword_1ECFFE768;
  if (!qword_1ECFFE768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE748, &qword_1E5A3ABC8);
    sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0, MEMORY[0x1E697D658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE768);
  }

  return result;
}

uint64_t sub_1E595EB68@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1E5A2B4A4();
  *a1 = result;
  return result;
}

uint64_t sub_1E595EBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5A2AA64();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1E5A2AA74();
}

uint64_t sub_1E595ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5A2AA64();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1E5A2AA74();
}

uint64_t ActiveWorkoutPlanWorkoutView.init(store:artworkViewBuilder:primaryActionButtonViewBuilder:secondaryActionButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  swift_storeEnumTagMultiPayload();
  v30[0] = a10;
  v30[1] = a11;
  v30[2] = a12;
  v30[3] = a13;
  v30[4] = a14;
  v30[5] = a15;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, v30);
  v20 = &a9[active[21]];
  *v20 = xmmword_1E5A3AC30;
  *(v20 + 2) = 0x4020000000000000;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = &a9[active[17]];
  *v22 = sub_1E58D2CB8;
  *(v22 + 1) = v21;
  v22[16] = 0;

  sub_1E595F03C(a3, a4, a10);

  v23 = sub_1E595F19C(a5, a6, a10, a11, a12, a13, a14, a15);
  v24 = active[20];
  a7(v23);

  return (*(*(a12 - 8) + 56))(&a9[v24], 0, 1, a12);
}

uint64_t sub_1E595EF94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7B8, qword_1E5A3AD50);
  sub_1E58CD164(&qword_1EE2CFA90, &qword_1ECFFE7B8, qword_1E5A3AD50, MEMORY[0x1E6999B78]);

  return sub_1E5A2A4F4();
}

uint64_t sub_1E595F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  swift_getFunctionTypeMetadata3();
  return sub_1E5A2A034();
}

uint64_t sub_1E595F0E4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  swift_getFunctionTypeMetadata3();
  sub_1E5A2A054();
  sub_1E5A2A044();
  return v2;
}

uint64_t sub_1E595F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = a8;
  v16[8] = a1;
  v16[9] = a2;
  sub_1E5A2BD84();
  swift_getFunctionTypeMetadata1();
  return sub_1E5A2A034();
}

uint64_t (*sub_1E595F270(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  sub_1E5A2BD84();
  swift_getFunctionTypeMetadata1();
  sub_1E5A2A054();
  sub_1E5A2A044();
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 24) = v2;
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = v6;
  return sub_1E596A71C;
}

uint64_t sub_1E595F328()
{
  v0 = sub_1E5A29D24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1E5A2BBA4();
  sub_1E5A29D14();
  return sub_1E5A29D04();
}

uint64_t sub_1E595F3CC(uint64_t a1)
{
  sub_1E595EF94(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v2 > 2u)
  {
    sub_1E5A2A734();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB580, &qword_1E5A30510);
    sub_1E5A2A734();
    *(swift_allocObject() + 16) = xmmword_1E5A2C920;
    sub_1E5A2A724();
  }

  sub_1E596A1D8(&qword_1ECFFB568, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB570, &unk_1E5A2CA80);
  sub_1E58CD164(&qword_1ECFFB578, &qword_1ECFFB570, &unk_1E5A2CA80, MEMORY[0x1E69E6328]);
  return sub_1E5A2BDD4();
}

uint64_t sub_1E595F598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v28 = MEMORY[0x1E699DB38];
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26[1] = MEMORY[0x1E6981460];
  v47 = v4;
  v48 = MEMORY[0x1E6981CD0];
  v49 = OpaqueTypeConformance2;
  v50 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_1E5969788();
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  sub_1E5A2AA84();
  v6 = sub_1E5A2B494();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  v9 = sub_1E5A2A6C4();
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v27 = v26 - v13;
  v33 = v3;
  v34 = *(v32 + 24);
  v35 = v4;
  v36 = *(v32 + 48);
  v37 = v2;
  WitnessTable = swift_getWitnessTable();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7E0, &qword_1E5A3AE28);
  v17 = sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20, MEMORY[0x1E697DB78]);
  OpaqueTypeMetadata2 = v15;
  v44 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v15;
  v44 = MEMORY[0x1E6981CD8];
  v45 = v16;
  v46 = v16;
  v47 = v17;
  v48 = MEMORY[0x1E6981CD0];
  v49 = v18;
  v50 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v41 = WitnessTable;
  v42 = v19;
  v20 = swift_getWitnessTable();
  sub_1E5A2B484();
  sub_1E595EF94(v32);
  swift_getKeyPath();
  sub_1E5A2B944();

  v40 = v20;
  v21 = swift_getWitnessTable();
  MEMORY[0x1E6931F70](&OpaqueTypeMetadata2, v6, &type metadata for ArtworkContainerRelativeFrame, v21);
  (*(v29 + 8))(v8, v6);
  v22 = sub_1E596A2C8();
  v38 = v21;
  v39 = v22;
  swift_getWitnessTable();
  v23 = v27;
  sub_1E58B41DC();
  v24 = *(v30 + 8);
  v24(v11, v9);
  sub_1E58B41DC();
  return (v24)(v23, v9);
}

uint64_t sub_1E595FAE0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v119 = a6;
  v120 = a7;
  v117 = a4;
  v118 = a1;
  v116 = a8;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v94 - v11;
  v108 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = a2;
  v126 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v125 = a2;
  v126 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = MEMORY[0x1E6981CD8];
  v125 = a2;
  v126 = MEMORY[0x1E6981CD8];
  v127 = OpaqueTypeMetadata2;
  v128 = OpaqueTypeMetadata2;
  v17 = MEMORY[0x1E6981CD0];
  v129 = a5;
  v130 = MEMORY[0x1E6981CD0];
  v131 = OpaqueTypeConformance2;
  v132 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v102 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v94 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v125 = a2;
  v126 = v16;
  v127 = OpaqueTypeMetadata2;
  v128 = OpaqueTypeMetadata2;
  v129 = a5;
  v130 = v17;
  v131 = OpaqueTypeConformance2;
  v132 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_1E5969788();
  v103 = v18;
  v125 = v18;
  v126 = v20;
  v98 = v20;
  v97 = v21;
  v127 = v21;
  v128 = v22;
  v96 = v22;
  v23 = sub_1E5A2B5C4();
  v107 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v94 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  v95 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v94 = &v94 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v94 - v30;
  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v33 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v109 = (&v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = v23;
  v111 = v27;
  v35 = sub_1E5A2AA84();
  v113 = *(v35 - 8);
  v114 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v112 = &v94 - v36;
  v125 = a2;
  v126 = a3;
  v110 = a3;
  v127 = v117;
  v128 = a5;
  v129 = v119;
  v130 = v120;
  v37 = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, &v125);
  sub_1E595EF94(v37);
  swift_getKeyPath();
  sub_1E5A2B934();

  if ((*(v33 + 48))(v31, 1, active) == 1)
  {
    sub_1E58BAD14(v31, &qword_1ECFFC2A0, &qword_1E5A30640);
    v38 = [objc_opt_self() tertiarySystemFillColor];
    v123 = sub_1E5A2B474();
    v124 = 256;
    v39 = sub_1E5A2B7A4();
    v109 = &v94;
    MEMORY[0x1EEE9AC00](v39);
    v40 = v110;
    *(&v94 - 8) = a2;
    *(&v94 - 7) = v40;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7E0, &qword_1E5A3AE28);
    v43 = sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20, MEMORY[0x1E697DB78]);
    v125 = v41;
    v126 = v43;
    v44 = swift_getOpaqueTypeConformance2();
    v91 = v44;
    v92 = v44;
    v45 = MEMORY[0x1E6981CD0];
    v89 = v43;
    v90 = MEMORY[0x1E6981CD0];
    v88 = v42;
    v46 = v94;
    v47 = MEMORY[0x1E6981CD8];
    sub_1E5A2B3A4();

    v48 = v45;
    v49 = v115;
    WitnessTable = swift_getWitnessTable();
    v125 = v41;
    v126 = v47;
    v127 = v42;
    v128 = v42;
    v129 = v43;
    v130 = v48;
    v131 = v44;
    v132 = v44;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = v112;
    v53 = v111;
    sub_1E595ECB8(v46, v49, v111, WitnessTable, v51);
    (*(v95 + 8))(v46, v53);
  }

  else
  {
    v54 = v109;
    sub_1E5969FD8(v31, v109);
    v55 = sub_1E595F0E4(v37);
    v56 = *MEMORY[0x1E699DC58];
    v57 = sub_1E5A2A0D4();
    v58 = v101;
    (*(*(v57 - 8) + 104))(v101, v56, v57);
    swift_storeEnumTagMultiPayload();
    v99 = *(type metadata accessor for ActiveWorkoutPlanArtwork(0) + 20);
    v59 = v54;
    v60 = v54 + v99;
    v61 = v106;
    v55(v59, v58, v60);

    sub_1E58BAD14(v58, &qword_1ECFFD7C8, &qword_1E5A35E28);
    v62 = sub_1E5A2B7A4();
    v101 = &v94;
    MEMORY[0x1EEE9AC00](v62);
    v93 = v120;
    MEMORY[0x1EEE9AC00](v63);
    *(&v94 - 8) = a2;
    *(&v94 - 7) = v64;
    v65 = swift_checkMetadataState();
    v91 = OpaqueTypeConformance2;
    v92 = OpaqueTypeConformance2;
    v89 = a5;
    v90 = MEMORY[0x1E6981CD0];
    v88 = v65;
    v66 = v100;
    sub_1E5A2B3A4();
    (*(v108 + 8))(v61, a2);
    v67 = v105;
    v68 = v103;
    sub_1E5A2B2A4();
    (*(v102 + 8))(v66, v68);
    v69 = v115;
    v70 = swift_getWitnessTable();
    v71 = v104;
    sub_1E58B41DC();
    v72 = *(v107 + 8);
    v72(v67, v69);
    sub_1E58B41DC();
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
    v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7E0, &qword_1E5A3AE28);
    v75 = sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20, MEMORY[0x1E697DB78]);
    v125 = v73;
    v126 = v75;
    v76 = swift_getOpaqueTypeConformance2();
    v125 = v73;
    v126 = MEMORY[0x1E6981CD8];
    v127 = v74;
    v128 = v74;
    v129 = v75;
    v77 = MEMORY[0x1E6981CD0];
    v130 = MEMORY[0x1E6981CD0];
    v131 = v76;
    v132 = v76;
    v78 = swift_getOpaqueTypeConformance2();
    v52 = v112;
    sub_1E595EBC0(v67, v69, v111, v70, v78);
    v72(v67, v69);
    v79 = v71;
    v48 = v77;
    v72(v79, v69);
    sub_1E58E7804(v109, type metadata accessor for ActiveWorkoutPlanWorkout);
  }

  v80 = swift_getWitnessTable();
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7E0, &qword_1E5A3AE28);
  v83 = sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20, MEMORY[0x1E697DB78]);
  v125 = v81;
  v126 = v83;
  v84 = swift_getOpaqueTypeConformance2();
  v125 = v81;
  v126 = MEMORY[0x1E6981CD8];
  v127 = v82;
  v128 = v82;
  v129 = v83;
  v130 = v48;
  v131 = v84;
  v132 = v84;
  v85 = swift_getOpaqueTypeConformance2();
  v121 = v80;
  v122 = v85;
  v86 = v114;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v113 + 8))(v52, v86);
}

uint64_t sub_1E596084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a2;
  v17 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1E5A2A094();
  sub_1E5A2B024();
  v16 = a2;
  v17 = a5;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v14 = *(v8 + 8);
  v14(v10, OpaqueTypeMetadata2);
  sub_1E58B41DC();
  return (v14)(v13, OpaqueTypeMetadata2);
}

uint64_t sub_1E59609E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23[0] = a8;
  v23[1] = a2;
  v23[2] = a1;
  v23[3] = a9;
  v24 = a3;
  v25 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v23 - v19;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = v23[0];
  type metadata accessor for ActiveWorkoutPlanWorkoutView(0, &v24);
  sub_1E5A2B024();
  v24 = a3;
  v25 = a6;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v21 = *(v15 + 8);
  v21(v17, OpaqueTypeMetadata2);
  sub_1E58B41DC();
  return (v21)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1E5960BAC(double a1)
{
  sub_1E5A2A094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
  sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20, MEMORY[0x1E697DB78]);
  return sub_1E5A2B024();
}

uint64_t sub_1E5960C68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  v12[5] = a8;
  v12[6] = v8;
  v13 = v9;
  v14 = v10;
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a7;
  type metadata accessor for ActiveWorkoutPlanWorkoutView(0, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
  sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20, MEMORY[0x1E697DB78]);
  return sub_1E5A2B024();
}

uint64_t sub_1E5960D44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v41 = v39;
  v42 = v40;
  v23 = a1[6];
  v35 = v23;
  v36 = MEMORY[0x1E69E6168];
  v22 = a1 + 5;
  v21 = a1[3];
  v33 = v21;
  v34 = MEMORY[0x1E69E6158];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  v3 = a1[4];
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v43 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v4 = sub_1E5A2B604();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = sub_1E5A2A6C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1E5A2AA34();
  *&v14 = a1[2];
  *(&v14 + 1) = v21;
  *&v15 = v3;
  *(&v15 + 1) = *v22;
  v26 = v14;
  v27 = v15;
  v16 = a1[7];
  v28 = v23;
  v29 = v16;
  v30 = v24;
  sub_1E5A2B5F4();
  sub_1E5A2B7F4();
  WitnessTable = swift_getWitnessTable();
  sub_1E5A2B2E4();
  (*(v20 + 8))(v6, v4);
  v31 = WitnessTable;
  v32 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1E58B41DC();
  v17 = *(v8 + 8);
  v17(v10, v7);
  sub_1E58B41DC();
  return (v17)(v13, v7);
}

uint64_t sub_1E596121C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v250 = a7;
  v238 = a2;
  v239 = a5;
  v266 = a1;
  v237 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v12 = sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  v13 = sub_1E5A2B864();
  v214 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v213 = v200 - v14;
  v212 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v211 = v200 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v240 = v200 - v18;
  v319 = a3;
  v320 = MEMORY[0x1E69E6158];
  v321 = a6;
  v322 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  v215 = v12;
  swift_getTupleTypeMetadata2();
  v19 = sub_1E5A2B864();
  v200[1] = swift_getWitnessTable();
  v200[2] = v19;
  v20 = sub_1E5A2B604();
  v257 = v11;
  swift_getTupleTypeMetadata2();
  v21 = sub_1E5A2B864();
  v204 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v203 = v200 - v22;
  v208 = v20;
  v201 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v202 = v200 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v210 = v200 - v26;
  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v270 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v209 = v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = v13;
  v28 = sub_1E5A2AA84();
  v255 = *(v28 - 8);
  v256 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v253 = v200 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v252 = v200 - v31;
  v265 = sub_1E5A2AEB4();
  v264 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v263 = v200 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v228 = v200 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v221 = v200 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v248 = v200 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v200 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v225 = v200 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v262 = v200 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v200 - v47;
  v49 = sub_1E5A29CF4();
  v260 = *(v49 - 8);
  v261 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v222 = v200 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v247 = v200 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = v200 - v54;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7F8, &unk_1E5A3AE30);
  MEMORY[0x1EEE9AC00](v223);
  v246 = v200 - v56;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE800, &qword_1E5A3B6C0);
  MEMORY[0x1EEE9AC00](v227);
  v226 = v200 - v57;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  MEMORY[0x1EEE9AC00](v249);
  v251 = v200 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v224 = v200 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v267 = v200 - v62;
  v319 = v238;
  v205 = a3;
  v206 = a4;
  v320 = a3;
  v321 = a4;
  v322 = v239;
  v207 = a6;
  v323 = a6;
  v324 = v250;
  v63 = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, &v319);
  sub_1E595EF94(v63);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v319 == 1)
  {
    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v235 = 0;
    v236 = v348;
    v233 = v352;
    v234 = v350;
    LOBYTE(v309) = 1;
    LOBYTE(v292) = v349;
    LOBYTE(v328) = v351;
    v229 = 1;
    v230 = v349;
    v231 = v351;
    v232 = v353;
    LOBYTE(v319) = 0;
  }

  else
  {
    v236 = 0;
    v233 = 0;
    v234 = 0;
    v231 = 0;
    v232 = 0;
    v229 = 0;
    v230 = 0;
    v235 = 1;
  }

  sub_1E595EF94(v63);
  swift_getKeyPath();
  sub_1E5A2B934();

  v64 = *(v270 + 48);
  v65 = active;
  v270 += 48;
  v259 = v64;
  v66 = v64(v41, 1, active);
  v268 = v63;
  v254 = v21;
  if (v66 == 1)
  {
    sub_1E58BAD14(v41, &qword_1ECFFC2A0, &qword_1E5A30640);
    v68 = v260;
    v67 = v261;
    v245 = *(v260 + 56);
    v245(v48, 1, 1, v261);
    sub_1E595F328();
    if ((*(v68 + 48))(v48, 1, v67) != 1)
    {
      sub_1E58BAD14(v48, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    }
  }

  else
  {
    v69 = *(v65 + 32);
    v71 = v260;
    v70 = v261;
    (*(v260 + 16))(v48, &v41[v69], v261);
    sub_1E58E7804(v41, type metadata accessor for ActiveWorkoutPlanWorkout);
    v245 = *(v71 + 56);
    v245(v48, 0, 1, v70);
    (*(v71 + 32))(v55, v48, v70);
  }

  v72 = sub_1E5A2AFC4();
  v74 = v73;
  v76 = v75;
  sub_1E5A2AEF4();
  sub_1E5A2AE24();

  v77 = v264;
  v78 = *(v264 + 104);
  v79 = v263;
  v243 = *MEMORY[0x1E6980EA8];
  v80 = v265;
  v244 = v264 + 104;
  v242 = v78;
  v78(v263);
  sub_1E5A2AEE4();

  v81 = *(v77 + 8);
  v264 = v77 + 8;
  v241 = v81;
  v81(v79, v80);
  v82 = sub_1E5A2AFA4();
  v84 = v83;
  LOBYTE(v79) = v85;
  v220 = v86;

  sub_1E58B3C9C(v72, v74, v76 & 1);

  v87 = v246;
  v88 = (v246 + *(v223 + 36));
  v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE808, &qword_1E5A3AE40) + 28);
  v90 = *MEMORY[0x1E6980FD8];
  v91 = sub_1E5A2AF94();
  v92 = *(v91 - 8);
  (*(v92 + 104))(v88 + v89, v90, v91);
  (*(v92 + 56))(v88 + v89, 0, 1, v91);
  *v88 = swift_getKeyPath();
  *v87 = v82;
  *(v87 + 8) = v84;
  *(v87 + 16) = v79 & 1;
  *(v87 + 24) = v220;
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v93 = qword_1ED026498;
  v94 = v226;
  sub_1E58F0054(v87, v226, &qword_1ECFFE7F8, &unk_1E5A3AE30);
  *(v94 + *(v227 + 36)) = v93;
  KeyPath = swift_getKeyPath();
  v96 = v94;
  v97 = v224;
  sub_1E58F0054(v96, v224, &qword_1ECFFE800, &qword_1E5A3B6C0);
  v98 = v97 + *(v249 + 36);
  *v98 = KeyPath;
  *(v98 + 8) = 1;
  *(v98 + 16) = 0;
  sub_1E58F0054(v97, v267, &qword_1ECFFE790, &qword_1E5A3AC88);

  v99 = v268;
  sub_1E595EF94(v268);
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v223 = v354;
  v224 = v356;
  v226 = v359;
  v227 = v358;
  v347 = 1;
  v345 = v355;
  v343 = v357;
  sub_1E595EF94(v99);
  swift_getKeyPath();
  v100 = v248;
  sub_1E5A2B934();

  v101 = active;
  v102 = v259(v100, 1, active);
  v103 = v262;
  v104 = v247;
  if (v102 == 1)
  {
    sub_1E58BAD14(v100, &qword_1ECFFC2A0, &qword_1E5A30640);
    v106 = v260;
    v105 = v261;
    v245(v103, 1, 1, v261);
    sub_1E595F328();
    if ((*(v106 + 48))(v103, 1, v105) != 1)
    {
      sub_1E58BAD14(v103, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    }
  }

  else
  {
    v107 = *(v101 + 24);
    v109 = v260;
    v108 = v261;
    (*(v260 + 16))(v262, v100 + v107, v261);
    sub_1E58E7804(v100, type metadata accessor for ActiveWorkoutPlanWorkout);
    v245(v103, 0, 1, v108);
    (*(v109 + 32))(v104, v103, v108);
  }

  v110 = sub_1E5A2AFC4();
  v112 = v111;
  v114 = v113;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v115 = v263;
  v116 = v265;
  v242(v263, v243, v265);
  sub_1E5A2AEE4();

  v241(v115, v116);
  v117 = sub_1E5A2AFA4();
  v246 = v118;
  v247 = v117;
  LODWORD(v220) = v119;
  v248 = v120;

  sub_1E58B3C9C(v110, v112, v114 & 1);

  v262 = swift_getKeyPath();
  v121 = v268;
  sub_1E595EF94(v268);
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v216 = v360;
  v217 = v362;
  v218 = v365;
  v219 = v364;
  v341 = 1;
  v339 = v361;
  v337 = v363;
  sub_1E595EF94(v121);
  swift_getKeyPath();
  v122 = v221;
  sub_1E5A2B934();

  v123 = active;
  if (v259(v122, 1, active) == 1)
  {
    sub_1E58BAD14(v122, &qword_1ECFFC2A0, &qword_1E5A30640);
    v125 = v260;
    v124 = v261;
    v126 = v225;
    v245(v225, 1, 1, v261);
    sub_1E595F328();
    if ((*(v125 + 48))(v126, 1, v124) != 1)
    {
      sub_1E58BAD14(v126, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    }
  }

  else
  {
    v128 = v260;
    v127 = v261;
    v129 = v122 + *(v123 + 28);
    v130 = v225;
    (*(v260 + 16))(v225, v129, v261);
    sub_1E58E7804(v122, type metadata accessor for ActiveWorkoutPlanWorkout);
    v245(v130, 0, 1, v127);
    (*(v128 + 32))(v222, v130, v127);
  }

  v131 = sub_1E5A2AFC4();
  v133 = v132;
  v135 = v134;
  sub_1E5A2AE14();
  v136 = v263;
  v137 = v265;
  v242(v263, v243, v265);
  sub_1E5A2AEE4();

  v241(v136, v137);
  v138 = sub_1E5A2AFA4();
  v140 = v139;
  v142 = v141;

  sub_1E58B3C9C(v131, v133, v135 & 1);

  LODWORD(v319) = sub_1E5A2ABA4();
  v264 = sub_1E5A2AF84();
  v263 = v143;
  LODWORD(v260) = v144;
  v265 = v145;
  sub_1E58B3C9C(v138, v140, v142 & 1);

  v261 = swift_getKeyPath();
  v146 = v266;
  sub_1E595EF94(v268);
  swift_getKeyPath();
  v147 = v228;
  sub_1E5A2B934();

  v148 = active;
  if (v259(v147, 1, active) == 1)
  {
    sub_1E58BAD14(v147, &qword_1ECFFC2A0, &qword_1E5A30640);
LABEL_23:
    sub_1E595EF94(v268);
    swift_getKeyPath();
    sub_1E5A2B944();

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v168 = v366;
    v169 = v368;
    v170 = v370;
    v171 = v371;
    LOBYTE(v285) = 1;
    LOBYTE(v346[0]) = v367;
    LOBYTE(v344[0]) = v369;
    v335 = v250;
    v172 = v215;
    WitnessTable = swift_getWitnessTable();
    v174 = v240;
    sub_1E58B41DC();
    v319 = 0;
    LOBYTE(v320) = v285;
    *(&v320 + 1) = v280[0];
    HIDWORD(v320) = *(v280 + 3);
    v321 = v168;
    LOBYTE(v322) = v346[0];
    *(&v322 + 1) = v273;
    HIDWORD(v322) = *(&v273 + 3);
    v323 = v169;
    LOBYTE(v324) = v344[0];
    *(&v324 + 1) = v302;
    HIDWORD(v324) = *(&v302 + 3);
    v325 = v170;
    v326 = v171;
    v309 = &v319;
    v175 = v211;
    v176 = v212;
    (*(v212 + 16))(v211, v174, v172);
    v310 = v175;
    v292 = v257;
    v293 = v172;
    v328 = sub_1E594C9F8();
    v329 = WitnessTable;
    v177 = v213;
    sub_1E597DC00(&v309, 2uLL, &v292);
    v178 = *(v176 + 8);
    v178(v175, v172);
    v179 = v254;
    v180 = swift_getWitnessTable();
    v181 = v258;
    v182 = swift_getWitnessTable();
    v167 = v252;
    sub_1E595ECB8(v177, v179, v181, v180, v182);
    (*(v214 + 8))(v177, v181);
    v178(v240, v172);
    goto LABEL_24;
  }

  v149 = v209;
  sub_1E5969FD8(v147, v209);
  if (*(v149 + *(v148 + 44)) != 1)
  {
    sub_1E58E7804(v149, type metadata accessor for ActiveWorkoutPlanWorkout);
    goto LABEL_23;
  }

  sub_1E595EF94(v268);
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2B7E4();
  v150 = sub_1E5A2A5B4();
  v259 = v366;
  v268 = v368;
  v270 = v370;
  active = v371;
  LOBYTE(v285) = 1;
  LOBYTE(v346[0]) = v367;
  LOBYTE(v344[0]) = v369;
  MEMORY[0x1EEE9AC00](v150);
  v152 = v205;
  v151 = v206;
  v200[-8] = v238;
  v200[-7] = v152;
  v200[-6] = v151;
  v153 = v207;
  v200[-5] = v239;
  v200[-4] = v153;
  v200[-3] = v250;
  v200[-2] = v146;
  v200[-1] = v149;
  sub_1E5A2AA24();
  v154 = v202;
  sub_1E5A2B5F4();
  v155 = v208;
  v156 = swift_getWitnessTable();
  v157 = v210;
  sub_1E58B41DC();
  v158 = v201;
  v159 = *(v201 + 8);
  v159(v154, v155);
  v266 = v159;
  v319 = 0;
  LOBYTE(v320) = v285;
  *(&v320 + 1) = v280[0];
  HIDWORD(v320) = *(v280 + 3);
  v321 = v259;
  LOBYTE(v322) = v346[0];
  *(&v322 + 1) = v273;
  HIDWORD(v322) = *(&v273 + 3);
  v323 = v268;
  LOBYTE(v324) = v344[0];
  *(&v324 + 1) = v302;
  HIDWORD(v324) = *(&v302 + 3);
  v325 = v270;
  v326 = active;
  v309 = &v319;
  (*(v158 + 16))(v154, v157, v155);
  v310 = v154;
  v292 = v257;
  v293 = v155;
  v328 = sub_1E594C9F8();
  v329 = v156;
  v160 = v203;
  sub_1E597DC00(&v309, 2uLL, &v292);
  v159(v154, v155);
  v161 = v254;
  v162 = swift_getWitnessTable();
  v163 = v149;
  v164 = v258;
  v165 = swift_getWitnessTable();
  v166 = v252;
  sub_1E595EBC0(v160, v161, v164, v162, v165);
  (*(v204 + 8))(v160, v161);
  v266(v210, v155);
  v167 = v166;
  sub_1E58E7804(v163, type metadata accessor for ActiveWorkoutPlanWorkout);
LABEL_24:
  v319 = 0;
  v320 = v229;
  v321 = v236;
  v322 = v230;
  v323 = v234;
  v324 = v231;
  v325 = v233;
  v326 = v232;
  v327 = v235;
  v328 = &v319;
  v183 = v251;
  sub_1E596A334(v267, v251);
  v309 = 0;
  LOBYTE(v310) = v347;
  *(&v310 + 1) = v346[0];
  HIDWORD(v310) = *(v346 + 3);
  v311 = v223;
  v312 = v345;
  *v313 = v344[0];
  *&v313[3] = *(v344 + 3);
  v314 = v224;
  v315 = v343;
  *v316 = *v342;
  *&v316[3] = *&v342[3];
  v317 = v227;
  v318 = v226;
  v329 = v183;
  v330 = &v309;
  v184 = v247;
  v302 = v247;
  v303 = v246;
  v185 = v220 & 1;
  v304 = v220 & 1;
  LODWORD(v270) = v220 & 1;
  v305 = v248;
  v306 = v262;
  v307 = 2;
  v308 = 0;
  v292 = 0;
  LOBYTE(v293) = v341;
  *(&v293 + 1) = *v340;
  HIDWORD(v293) = *&v340[3];
  v294 = v216;
  v295 = v339;
  *v296 = *v338;
  *&v296[3] = *&v338[3];
  v297 = v217;
  v298 = v337;
  *&v299[3] = *&v336[3];
  *v299 = *v336;
  v300 = v219;
  v301 = v218;
  v331 = &v302;
  v332 = &v292;
  v186 = v264;
  v285 = v264;
  v187 = v263;
  v286 = v263;
  v287 = v260 & 1;
  v188 = v167;
  v189 = v260 & 1;
  v288 = v265;
  v289 = v261;
  v290 = 2;
  v291 = 0;
  v333 = &v285;
  v190 = v253;
  (*(v255 + 16))(v253, v188, v256);
  v334 = v190;
  v191 = v184;
  v192 = v246;
  sub_1E594C9E8(v191, v246, v185);

  sub_1E594C9E8(v186, v187, v189);

  v280[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  v280[1] = v249;
  v193 = v257;
  v280[2] = v257;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v282 = v193;
  v283 = v281;
  v194 = v256;
  v284 = v256;
  v273 = sub_1E596A3A4();
  v274 = sub_1E596A428();
  v195 = sub_1E594C9F8();
  v275 = v195;
  v276 = sub_1E596A650();
  v277 = v195;
  v278 = v276;
  v196 = swift_getWitnessTable();
  v197 = swift_getWitnessTable();
  v271 = v196;
  v272 = v197;
  v279 = swift_getWitnessTable();
  sub_1E597DC00(&v328, 7uLL, v280);
  sub_1E58B3C9C(v186, v187, v189);

  sub_1E58B3C9C(v247, v192, v270);

  v198 = *(v255 + 8);
  v198(v252, v194);
  sub_1E58BAD14(v267, &qword_1ECFFE790, &qword_1E5A3AC88);
  v198(v253, v194);
  sub_1E58B3C9C(v285, v286, v287);

  sub_1E58B3C9C(v302, v303, v304);

  return sub_1E58BAD14(v251, &qword_1ECFFE790, &qword_1E5A3AC88);
}

uint64_t sub_1E596306C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a6;
  v50 = a2;
  v59 = a9;
  v15 = sub_1E5A2BD84();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v58 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = v48 - v18;
  v48[0] = sub_1E5A2BD84();
  v19 = *(v48[0] - 8);
  MEMORY[0x1EEE9AC00](v48[0]);
  v21 = v48 - v20;
  v65 = a4;
  v66 = MEMORY[0x1E69E6158];
  v67 = a7;
  v68 = MEMORY[0x1E69E6168];
  v22 = sub_1E5A2B5C4();
  v53 = sub_1E5A2BD84();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v48 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v51 = v48 - v28;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = v56;
  v48[1] = a7;
  v69 = a7;
  v70 = a8;
  v55 = a8;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, &v65);
  v56 = a1;
  v29 = sub_1E595F270(active);
  v30 = &v50[*(type metadata accessor for ActiveWorkoutPlanWorkout(0) + 20)];
  v32 = *v30;
  v31 = v30[1];
  v29(*v30, v31);

  v33 = *(a4 - 1);
  v34 = 1;
  if ((*(v33 + 48))(v21, 1, a4) == 1)
  {
    a4 = v48[0];
  }

  else
  {
    v65 = v32;
    v66 = v31;

    sub_1E5A2B2A4();

    v34 = 0;
    v19 = v33;
  }

  (*(v19 + 8))(v21, a4);
  (*(*(v22 - 8) + 56))(v26, v34, 1, v22);
  v64[3] = swift_getWitnessTable();
  v35 = v53;
  WitnessTable = swift_getWitnessTable();
  v37 = v51;
  sub_1E58B41DC();
  v38 = v52;
  v50 = *(v52 + 8);
  (v50)(v26, v35);
  v64[2] = v55;
  v39 = v61;
  v40 = swift_getWitnessTable();
  v41 = v57;
  sub_1E58B41DC();
  v42 = v54;
  (*(v38 + 16))(v54, v37, v35);
  v65 = v42;
  v43 = v60;
  v44 = v58;
  (*(v60 + 16))(v58, v41, v39);
  v66 = v44;
  v64[0] = v35;
  v64[1] = v39;
  v62 = WitnessTable;
  v63 = v40;
  sub_1E597DC00(&v65, 2uLL, v64);
  v45 = *(v43 + 8);
  v45(v41, v39);
  v46 = v50;
  (v50)(v37, v35);
  v45(v44, v39);
  return (v46)(v42, v35);
}

uint64_t sub_1E5963600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a1;
  v42 = a2;
  v46 = a6;
  v9 = sub_1E5A2B5B4();
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v38 - v13;
  v14 = sub_1E5A2B604();
  v38 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = sub_1E5A2AA84();
  v44 = *(v20 - 8);
  v45 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v38 - v21;
  sub_1E595EF94(a3);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v49 == 1)
  {
    v22 = sub_1E5A2AA34();
    MEMORY[0x1EEE9AC00](v22);
    *(&v38 - 5) = *(a3 + 16);
    *(&v38 - 8) = *(a3 + 32);
    *(&v38 - 7) = a4;
    *(&v38 - 3) = *(a3 + 40);
    *(&v38 - 4) = *(a3 + 56);
    *(&v38 - 3) = a5;
    v23 = v42;
    *(&v38 - 2) = v41;
    *(&v38 - 1) = v23;
    sub_1E5A2B5F4();
    WitnessTable = swift_getWitnessTable();
    sub_1E58B41DC();
    v25 = *(v38 + 8);
    v25(v16, v14);
    sub_1E58B41DC();
    v26 = swift_getWitnessTable();
    v27 = v43;
    sub_1E595EBC0(v16, v14, v9, WitnessTable, v26);
    v25(v16, v14);
    v25(v19, v14);
  }

  else
  {
    v28 = sub_1E5A2A934();
    MEMORY[0x1EEE9AC00](v28);
    *(&v38 - 5) = *(a3 + 16);
    *(&v38 - 8) = *(a3 + 32);
    *(&v38 - 7) = a4;
    *(&v38 - 3) = *(a3 + 40);
    *(&v38 - 4) = *(a3 + 56);
    *(&v38 - 3) = a5;
    v29 = v42;
    *(&v38 - 2) = v41;
    *(&v38 - 1) = v29;
    sub_1E5A2B5A4();
    v30 = swift_getWitnessTable();
    v31 = v39;
    sub_1E58B41DC();
    v32 = *(v40 + 8);
    v32(v11, v9);
    sub_1E58B41DC();
    v33 = swift_getWitnessTable();
    v27 = v43;
    sub_1E595ECB8(v11, v14, v9, v33, v30);
    v32(v11, v9);
    v32(v31, v9);
  }

  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v47 = v34;
  v48 = v35;
  v36 = v45;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v44 + 8))(v27, v36);
}

uint64_t sub_1E5963B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14(v11);
  sub_1E58B41DC();
  v15 = *(v7 + 8);
  v15(v9, a6);
  sub_1E58B41DC();
  return (v15)(v13, a6);
}

uint64_t ActiveWorkoutPlanWorkoutView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v101 = sub_1E5A2A734();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v96 = v5;
  v97 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC208, &qword_1E5A30408);
  v7 = a1[5];
  v127 = a1[2];
  v6 = v127;
  v128 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v127 = v6;
  v128 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = MEMORY[0x1E6981CD8];
  v127 = v6;
  v128 = MEMORY[0x1E6981CD8];
  v129 = OpaqueTypeMetadata2;
  v130 = OpaqueTypeMetadata2;
  v11 = MEMORY[0x1E6981CD0];
  v131 = v7;
  v132 = MEMORY[0x1E6981CD0];
  v133 = OpaqueTypeConformance2;
  v134 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v94 = v6;
  v127 = v6;
  v128 = v10;
  v129 = OpaqueTypeMetadata2;
  v130 = OpaqueTypeMetadata2;
  v95 = v7;
  v131 = v7;
  v132 = v11;
  v133 = OpaqueTypeConformance2;
  v134 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v15 = sub_1E5969788();
  v127 = v12;
  v128 = v13;
  v129 = v14;
  v130 = v15;
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  v127 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  v128 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v129 = v16;
  v130 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v131 = v16;
  v132 = v130;
  v17 = a1[3];
  v18 = a1[6];
  v106 = a1;
  v92 = v17;
  v123 = v17;
  v124 = MEMORY[0x1E69E6158];
  v93 = v18;
  v125 = v18;
  v126 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  *&v91 = a1[4];
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v133 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2B5B4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7A0, &unk_1E5A3ACA0);
  sub_1E5A2A6C4();
  v105 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v121 = WitnessTable;
  v122 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1E58CD164(&qword_1ECFFE7A8, &qword_1ECFFE7A0, &unk_1E5A3ACA0, MEMORY[0x1E697FD58]);
  v119 = v21;
  v120 = v22;
  v104 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v23 = sub_1E5A2B594();
  v24 = sub_1E5A2A714();
  v103 = MEMORY[0x1E697D680];
  v25 = swift_getWitnessTable();
  v26 = sub_1E596A1D8(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v127 = v23;
  v128 = v24;
  v129 = v25;
  v130 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v127 = v23;
  v128 = v24;
  v129 = v25;
  v130 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v127 = v27;
  v128 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  active = type metadata accessor for ActiveWorkoutPlanWorkout(255);
  v127 = v27;
  v128 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_1E596A1D8(&qword_1ECFFE7B0, type metadata accessor for ActiveWorkoutPlanWorkout, &protocol conformance descriptor for ActiveWorkoutPlanWorkout);
  v127 = v29;
  v128 = active;
  v129 = v31;
  v130 = v32;
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  v33 = sub_1E5A2B734();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC210, &qword_1E5A30410);
  v35 = sub_1E58CD164(&qword_1ECFFC218, &qword_1ECFFC210, &qword_1E5A30410, v103);
  v127 = v34;
  v128 = v24;
  v129 = v35;
  v130 = v26;
  v36 = swift_getOpaqueTypeConformance2();
  v118 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v115 = v36;
  v116 = v37;
  v117 = MEMORY[0x1E6981E60];
  v38 = swift_getWitnessTable();
  v127 = v33;
  v128 = v38;
  swift_getOpaqueTypeMetadata2();
  v127 = v33;
  v128 = v38;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  v39 = sub_1E5A2B494();
  v88 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v84 - v40;
  v42 = sub_1E5A2A6C4();
  v89 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v87 = &v84 - v43;
  v85 = swift_getWitnessTable();
  v114 = v85;
  v90 = v39;
  v86 = swift_getWitnessTable();
  v112 = v86;
  v113 = MEMORY[0x1E69805D0];
  v44 = swift_getWitnessTable();
  v127 = v42;
  v128 = v44;
  v109 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v84 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v84 - v50;
  v102 = v52;
  v105 = sub_1E5A2AA84();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v84 - v53;
  v54 = v106;
  v55 = v107;
  sub_1E595EF94(v106);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v127)
  {
    MEMORY[0x1EEE9AC00](v56);
    *&v57 = v94;
    *(&v57 + 1) = v92;
    v84 = v57;
    *&v58 = v91;
    *(&v58 + 1) = v95;
    v91 = v58;
    *(&v84 - 4) = v57;
    *(&v84 - 3) = v58;
    v59 = v54[7];
    v94 = v51;
    v60 = v93;
    *(&v84 - 4) = v93;
    *(&v84 - 3) = v59;
    *(&v84 - 2) = v55;
    sub_1E5A2B484();
    v92 = v46;
    v61 = v41;
    v62 = v98;
    v63 = *(v98 + 16);
    v95 = v42;
    v64 = v97;
    v63(v97, v55, v54);
    v65 = (*(v62 + 80) + 64) & ~*(v62 + 80);
    v66 = swift_allocObject();
    v67 = v91;
    *(v66 + 16) = v84;
    *(v66 + 32) = v67;
    *(v66 + 48) = v60;
    *(v66 + 56) = v59;
    v68 = v64;
    v42 = v95;
    v69 = v48;
    v70 = v109;
    (*(v62 + 32))(v66 + v65, v68, v54);
    v71 = v87;
    v72 = v90;
    sub_1E5A2B364();

    (*(v88 + 8))(v61, v72);
    v73 = v99;
    sub_1E595F3CC(v54);
    sub_1E5A2B394();
    (*(v100 + 8))(v73, v101);
    (*(v89 + 8))(v71, v42);
    v127 = v42;
    v128 = v70;
    v74 = swift_getOpaqueTypeConformance2();
    v75 = v94;
    v76 = v102;
    sub_1E58B41DC();
    v77 = *(v92 + 8);
    v77(v69, v76);
    v78 = v75;
    sub_1E58B41DC();
    v79 = v103;
    sub_1E595ECB8(v69, MEMORY[0x1E6981E70], v76, MEMORY[0x1E6981E60], v74);
    v77(v69, v76);
    v77(v78, v76);
  }

  else
  {
    v127 = v42;
    v128 = v109;
    v80 = swift_getOpaqueTypeConformance2();
    v79 = v103;
    sub_1E595EBC0(v80, MEMORY[0x1E6981E70], v102, MEMORY[0x1E6981E60], v80);
  }

  v127 = v42;
  v128 = v109;
  v81 = swift_getOpaqueTypeConformance2();
  v110 = MEMORY[0x1E6981E60];
  v111 = v81;
  v82 = v105;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v104 + 8))(v79, v82);
}

uint64_t sub_1E5964CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a7;
  v35 = a6;
  v36 = a4;
  v28 = a3;
  v32 = a1;
  v34 = a8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC208, &qword_1E5A30408);
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = a2;
  v30 = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v63 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E5969788();
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v52 = a3;
  v53 = MEMORY[0x1E69E6158];
  v54 = v35;
  v55 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v62 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2B5B4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7A0, &unk_1E5A3ACA0);
  sub_1E5A2A6C4();
  v27 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v49 = sub_1E58CD164(&qword_1ECFFE7A8, &qword_1ECFFE7A0, &unk_1E5A3ACA0, MEMORY[0x1E697FD58]);
  swift_getWitnessTable();
  sub_1E5A2B594();
  sub_1E5A2A714();
  v26 = MEMORY[0x1E697D680];
  swift_getWitnessTable();
  v12 = sub_1E596A1D8(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ActiveWorkoutPlanWorkout(255);
  swift_getOpaqueTypeConformance2();
  sub_1E596A1D8(&qword_1ECFFE7B0, type metadata accessor for ActiveWorkoutPlanWorkout, &protocol conformance descriptor for ActiveWorkoutPlanWorkout);
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  v13 = sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC210, &qword_1E5A30410);
  v58 = sub_1E58CD164(&qword_1ECFFC218, &qword_1ECFFC210, &qword_1E5A30410, v26);
  v59 = v12;
  v14 = swift_getOpaqueTypeConformance2();
  v47 = swift_getWitnessTable();
  v44 = v14;
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x1E6981E60];
  v15 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56 = v13;
  v57 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = sub_1E5A2B604();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v25 - v21;
  sub_1E5A2AA34();
  v37 = v31;
  v38 = v28;
  v39 = v36;
  v40 = v30;
  v41 = v35;
  v42 = v33;
  v43 = v32;
  sub_1E5A2B5F4();
  swift_getWitnessTable();
  sub_1E58B41DC();
  v23 = *(v17 + 8);
  v23(v19, v16);
  sub_1E58B41DC();
  return (v23)(v22, v16);
}

uint64_t sub_1E596562C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a7;
  v99 = a8;
  v100 = a6;
  v102 = a4;
  v106 = a3;
  v104 = a1;
  v10 = sub_1E5A2BA14();
  v97 = *(v10 - 8);
  v98 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v93 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v92 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v105 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v94 = &v81 - v21;
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC208, &qword_1E5A30408);
  v109 = a2;
  v110 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v109 = a2;
  v110 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = MEMORY[0x1E6981CD8];
  v109 = a2;
  v110 = MEMORY[0x1E6981CD8];
  v103 = a2;
  v111 = OpaqueTypeMetadata2;
  v112 = OpaqueTypeMetadata2;
  v25 = MEMORY[0x1E6981CD0];
  v113 = a5;
  v114 = MEMORY[0x1E6981CD0];
  v90 = a5;
  v115 = OpaqueTypeConformance2;
  v116 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v109 = a2;
  v110 = v24;
  v111 = OpaqueTypeMetadata2;
  v112 = OpaqueTypeMetadata2;
  v113 = a5;
  v114 = v25;
  v115 = OpaqueTypeConformance2;
  v116 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_1E5969788();
  v109 = v26;
  v110 = v27;
  v111 = v28;
  v112 = v29;
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v111 = v30;
  v112 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v113 = v30;
  v114 = v112;
  v108[41] = v106;
  v108[42] = MEMORY[0x1E69E6158];
  v108[43] = v100;
  v108[44] = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v115 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2B5B4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7A0, &unk_1E5A3ACA0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v108[39] = WitnessTable;
  v108[40] = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_1E58CD164(&qword_1ECFFE7A8, &qword_1ECFFE7A0, &unk_1E5A3ACA0, MEMORY[0x1E697FD58]);
  v108[37] = v33;
  v108[38] = v34;
  swift_getWitnessTable();
  v35 = sub_1E5A2B594();
  v36 = sub_1E5A2A714();
  v86 = v36;
  v89 = MEMORY[0x1E697D680];
  v37 = swift_getWitnessTable();
  v38 = sub_1E596A1D8(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v109 = v35;
  v110 = v36;
  v111 = v37;
  v112 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v109 = v35;
  v110 = v36;
  v111 = v37;
  v112 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v109 = v39;
  v110 = v40;
  v87 = MEMORY[0x1E69E3B40];
  v41 = swift_getOpaqueTypeMetadata2();
  active = type metadata accessor for ActiveWorkoutPlanWorkout(255);
  v109 = v39;
  v110 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_1E596A1D8(&qword_1ECFFE7B0, type metadata accessor for ActiveWorkoutPlanWorkout, &protocol conformance descriptor for ActiveWorkoutPlanWorkout);
  v109 = v41;
  v110 = active;
  v111 = v43;
  v112 = v44;
  sub_1E5A2B5C4();
  v81 = sub_1E5A2BD84();
  v45 = sub_1E5A2B734();
  v88 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v81 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC210, &qword_1E5A30410);
  v49 = v91;
  v50 = v104;
  v51 = sub_1E58CD164(&qword_1ECFFC218, &qword_1ECFFC210, &qword_1E5A30410, v89);
  v109 = v48;
  v110 = v86;
  v111 = v51;
  v112 = v38;
  v52 = swift_getOpaqueTypeConformance2();
  v108[36] = swift_getWitnessTable();
  v53 = v81;
  v54 = swift_getWitnessTable();
  v108[33] = v52;
  v108[34] = v54;
  v108[35] = MEMORY[0x1E6981E60];
  v55 = swift_getWitnessTable();
  v89 = v45;
  v109 = v45;
  v110 = v55;
  v84 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v85 = *(v56 - 8);
  v86 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v82 = &v81 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v83 = &v81 - v59;
  v108[2] = v103;
  v108[3] = v106;
  v108[4] = v102;
  v108[5] = v90;
  v108[6] = v100;
  v108[7] = v49;
  v108[8] = v50;
  v107[2] = v103;
  v107[3] = v106;
  v60 = v102;
  v107[4] = v102;
  v107[5] = v90;
  v61 = v90;
  v62 = v100;
  v107[6] = v100;
  v107[7] = v49;
  v107[8] = v50;
  v87 = v47;
  sub_1E59B66BC(sub_1E5969BF0, v108, sub_1E5969C08, v107, v101, v53, v52, v54);
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A303B0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v64 = qword_1EE2D33E0;
  v109 = v103;
  v110 = v106;
  v111 = v60;
  v112 = v61;
  v113 = v62;
  v114 = v49;
  v65 = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, &v109);
  sub_1E595EF94(v65);
  swift_getKeyPath();
  sub_1E5A2B944();

  *(inited + 48) = sub_1E5A2BB64();
  *(inited + 56) = v66;
  v67 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = 0x6973736572706D69;
  v68 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v68;
  strcpy((inited + 128), "impressionType");
  *(inited + 168) = v67;
  *(inited + 143) = -18;
  *(inited + 144) = 0x666C656873;
  *(inited + 152) = 0xE500000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v69 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v69);
  v70 = v94;
  sub_1E5A2B9D4();
  v71 = sub_1E5A2B9E4();
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  v72 = v96;
  sub_1E5A2BA04();
  v73 = v82;
  v74 = v89;
  v75 = v84;
  v76 = v87;
  sub_1E5A2B014();
  (*(v97 + 8))(v72, v98);
  sub_1E58BAD14(v70, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v88 + 8))(v76, v74);
  v109 = v74;
  v110 = v75;
  swift_getOpaqueTypeConformance2();
  v77 = v83;
  v78 = v86;
  sub_1E58B41DC();
  v79 = *(v85 + 8);
  v79(v73, v78);
  sub_1E58B41DC();
  return (v79)(v77, v78);
}

uint64_t sub_1E596649C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v187 = a1;
  v188 = a6;
  v184 = a4;
  v185 = a3;
  v182 = a8;
  v14 = sub_1E5A2BA14();
  v173 = *(v14 - 8);
  v174 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v172 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v171 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1E5A29C74();
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v165 = &v132 - v20;
  v21 = sub_1E5A29CF4();
  v166 = *(v21 - 8);
  v167 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v164 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v160 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v170 = &v132 - v26;
  v186 = sub_1E5A2A714();
  v159 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v158 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = a2;
  v200 = a3;
  v201 = a4;
  v202 = a5;
  v203 = a6;
  v204 = a7;
  v163 = a7;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, &v199);
  v157 = *(active - 8);
  v156 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](active);
  v181 = &v132 - v28;
  v199 = a2;
  v200 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v199 = a2;
  v200 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = MEMORY[0x1E6981CD8];
  v199 = a2;
  v200 = MEMORY[0x1E6981CD8];
  v201 = OpaqueTypeMetadata2;
  v202 = OpaqueTypeMetadata2;
  v32 = MEMORY[0x1E6981CD0];
  v203 = a5;
  v204 = MEMORY[0x1E6981CD0];
  v205 = OpaqueTypeConformance2;
  v206 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeMetadata2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v161 = a2;
  v162 = a5;
  v199 = a2;
  v200 = v31;
  v201 = OpaqueTypeMetadata2;
  v202 = OpaqueTypeMetadata2;
  v203 = a5;
  v204 = v32;
  v205 = OpaqueTypeConformance2;
  v206 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_1E5969788();
  v199 = v33;
  v200 = v34;
  v201 = v35;
  v202 = v36;
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  v199 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  v200 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v201 = v37;
  v202 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v203 = v37;
  v204 = v202;
  v195 = v185;
  v196 = MEMORY[0x1E69E6158];
  v197 = v188;
  v198 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v205 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2B5B4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7A0, &unk_1E5A3ACA0);
  v38 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v193 = WitnessTable;
  v194 = v40;
  v41 = swift_getWitnessTable();
  v42 = sub_1E58CD164(&qword_1ECFFE7A8, &qword_1ECFFE7A0, &unk_1E5A3ACA0, MEMORY[0x1E697FD58]);
  v191 = v41;
  v192 = v42;
  v43 = swift_getWitnessTable();
  v144 = v38;
  v140 = v43;
  v44 = sub_1E5A2B594();
  v142 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v141 = &v132 - v45;
  v46 = swift_getWitnessTable();
  v47 = sub_1E596A1D8(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v48 = v186;
  v199 = v44;
  v200 = v186;
  v201 = v46;
  v202 = v47;
  v49 = swift_getOpaqueTypeMetadata2();
  v154 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v180 = &v132 - v50;
  v143 = v44;
  v199 = v44;
  v200 = v48;
  v138 = v47;
  v139 = v46;
  v201 = v46;
  v202 = v47;
  v51 = swift_getOpaqueTypeConformance2();
  v199 = v49;
  v200 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v152 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v151 = &v132 - v53;
  v54 = type metadata accessor for ActiveWorkoutPlanWorkout(255);
  v155 = v49;
  v199 = v49;
  v200 = v51;
  v150 = v51;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_1E596A1D8(&qword_1ECFFE7B0, type metadata accessor for ActiveWorkoutPlanWorkout, &protocol conformance descriptor for ActiveWorkoutPlanWorkout);
  v153 = v52;
  v199 = v52;
  v200 = v54;
  v148 = v55;
  v201 = v55;
  v202 = v56;
  v145 = v56;
  v57 = sub_1E5A2B5C4();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v149 = &v132 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v146 = &v132 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v147 = &v132 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v137 = &v132 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v132 - v67;
  v69 = *(v54 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v175 = &v132 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v183 = &v132 - v73;
  v74 = sub_1E5A2BD84();
  v178 = *(v74 - 8);
  v179 = v74;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v132 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v176 = &v132 - v78;
  sub_1E595EF94(active);
  swift_getKeyPath();
  sub_1E5A2B934();

  v79 = v69 + 48;
  v80 = *(v69 + 48);
  v177 = v54;
  if (v80(v68, 1, v54) == 1)
  {
    sub_1E58BAD14(v68, &qword_1ECFFC2A0, &qword_1E5A30640);
    (*(v58 + 56))(v76, 1, 1, v57);
    swift_getWitnessTable();
  }

  else
  {
    v134 = v76;
    v135 = v58;
    v136 = v57;
    v81 = v68;
    v82 = v183;
    sub_1E5969FD8(v81, v183);
    v83 = v157;
    (*(v157 + 16))(v181, v187, active);
    sub_1E596A03C(v82, v175);
    v84 = (*(v83 + 80) + 64) & ~*(v83 + 80);
    v85 = (v156 + *(v69 + 80) + v84) & ~*(v69 + 80);
    v86 = swift_allocObject();
    v156 = v79;
    v87 = v86;
    v133 = v80;
    v88 = v161;
    v89 = v162;
    v91 = v184;
    v90 = v185;
    v86[2] = v161;
    v86[3] = v90;
    v86[4] = v91;
    v86[5] = v89;
    v92 = active;
    v93 = v163;
    v86[6] = v188;
    v86[7] = v93;
    (*(v83 + 32))(v86 + v84, v181, v92);
    v94 = sub_1E5969FD8(v175, v87 + v85);
    MEMORY[0x1EEE9AC00](v94);
    *(&v132 - 8) = v88;
    *(&v132 - 7) = v90;
    *(&v132 - 6) = v91;
    *(&v132 - 5) = v89;
    v95 = v187;
    *(&v132 - 4) = v188;
    *(&v132 - 3) = v93;
    *(&v132 - 2) = v95;
    v96 = v141;
    sub_1E5A2B574();
    v97 = v158;
    sub_1E5A2A704();
    v98 = v143;
    v99 = v186;
    sub_1E5A2B0B4();
    (*(v159 + 8))(v97, v99);
    (*(v142 + 8))(v96, v98);
    v100 = v177;

    sub_1E5A2B9B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E5A303B0;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    sub_1E595EF94(active);
    swift_getKeyPath();
    v102 = v137;
    sub_1E5A2B934();

    if (v133(v102, 1, v100) == 1)
    {
      sub_1E58BAD14(v102, &qword_1ECFFC2A0, &qword_1E5A30640);
      v103 = v165;
      v104 = v166;
      v105 = v167;
      (*(v166 + 56))(v165, 1, 1, v167);
      v106 = v164;
      sub_1E5A29CE4();
      v107 = (*(v104 + 48))(v103, 1, v105);
      v108 = v135;
      if (v107 != 1)
      {
        sub_1E58BAD14(v103, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
      }
    }

    else
    {
      v109 = v165;
      v104 = v166;
      v110 = v102 + *(v100 + 24);
      v105 = v167;
      (*(v166 + 16))(v165, v110, v167);
      sub_1E58E7804(v102, type metadata accessor for ActiveWorkoutPlanWorkout);
      (*(v104 + 56))(v109, 0, 1, v105);
      v106 = v164;
      (*(v104 + 32))(v164, v109, v105);
      v108 = v135;
    }

    sub_1E5A29C64();
    (*(v104 + 8))(v106, v105);
    sub_1E596A1D8(&qword_1ECFFE7C8, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    *(inited + 48) = sub_1E5A2BBB4();
    *(inited + 56) = v111;
    v112 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = 0x6973736572706D69;
    v113 = MEMORY[0x1E69E6530];
    *(inited + 88) = 0xEF7865646E496E6FLL;
    *(inited + 96) = 0;
    *(inited + 120) = v113;
    strcpy((inited + 128), "impressionType");
    *(inited + 168) = v112;
    *(inited + 143) = -18;
    *(inited + 144) = 0x74756F6B726F77;
    *(inited + 152) = 0xE700000000000000;
    sub_1E590DF48(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
    swift_arrayDestroy();
    sub_1E5A2B984();
    v114 = MEMORY[0x1E69E7CC0];
    sub_1E590DF48(MEMORY[0x1E69E7CC0]);
    sub_1E590DF48(v114);
    v115 = v170;
    sub_1E5A2B9D4();
    v116 = sub_1E5A2B9E4();
    (*(*(v116 - 8) + 56))(v115, 0, 1, v116);
    v117 = v172;
    sub_1E5A2B9F4();
    v118 = v151;
    v119 = v155;
    v120 = v180;
    sub_1E5A2B014();
    (*(v173 + 8))(v117, v174);
    sub_1E58BAD14(v115, &qword_1ECFFB550, &qword_1E5A304B0);
    (*(v154 + 8))(v120, v119);
    v121 = v146;
    v122 = v183;
    v123 = v153;
    sub_1E5A2B2A4();
    (*(v152 + 8))(v118, v123);
    sub_1E58E7804(v122, type metadata accessor for ActiveWorkoutPlanWorkout);
    v124 = v136;
    swift_getWitnessTable();
    v125 = v147;
    sub_1E58B41DC();
    v126 = *(v108 + 8);
    v126(v121, v124);
    v127 = v149;
    sub_1E58B41DC();
    v126(v125, v124);
    v76 = v134;
    (*(v108 + 32))(v134, v127, v124);
    (*(v108 + 56))(v76, 0, 1, v124);
  }

  v128 = v176;
  sub_1E598D20C(v76, v176);
  v129 = v179;
  v130 = *(v178 + 8);
  v130(v76, v179);
  v190 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (v130)(v128, v129);
}

uint64_t sub_1E5967A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  MEMORY[0x1EEE9AC00](active);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v18 = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, v22);
  sub_1E595EF94(v18);
  v19 = (a2 + *(type metadata accessor for ActiveWorkoutPlanWorkout(0) + 20));
  v20 = v19[1];
  *v17 = *v19;
  v17[1] = v20;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();

  return sub_1E58E7804(v17, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
}

uint64_t sub_1E5967B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a7;
  v39 = a6;
  v40 = a4;
  v33 = a3;
  v36 = a1;
  v38 = a8;
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = a2;
  v34 = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v64 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E5969788();
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v61 = v59;
  v62 = v60;
  v53 = a3;
  v54 = MEMORY[0x1E69E6158];
  v55 = v39;
  v56 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v63 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata2();
  v12 = sub_1E5A2B864();
  WitnessTable = swift_getWitnessTable();
  v32[0] = sub_1E5A2B604();
  v32[1] = sub_1E5A2B5B4();
  v14 = sub_1E5A2AA84();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v32 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7A0, &unk_1E5A3ACA0);
  v18 = sub_1E5A2A6C4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v32 - v23;
  v42 = v35;
  v43 = v33;
  v44 = v40;
  v45 = v34;
  v46 = v39;
  v47 = v37;
  v48 = v36;
  v57 = v35;
  v58 = v33;
  v59 = v40;
  v60 = v34;
  v61 = v39;
  v62 = v37;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, &v57);
  sub_1E5963600(sub_1E596A220, v41, active, v12, WitnessTable, v17);
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v51 = v26;
  v52 = v27;
  v28 = swift_getWitnessTable();
  sub_1E596A238();
  sub_1E5A2B104();
  (*(v15 + 8))(v17, v14);
  v29 = sub_1E58CD164(&qword_1ECFFE7A8, &qword_1ECFFE7A0, &unk_1E5A3ACA0, MEMORY[0x1E697FD58]);
  v49 = v28;
  v50 = v29;
  swift_getWitnessTable();
  sub_1E58B41DC();
  v30 = *(v19 + 8);
  v30(v21, v18);
  sub_1E58B41DC();
  return (v30)(v24, v18);
}

uint64_t sub_1E59682C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X8>)
{
  v64 = a7;
  v60 = a6;
  v62 = a3;
  v71 = a1;
  v69 = a8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
  v87 = v85;
  v88 = v86;
  v91 = a3;
  v92 = MEMORY[0x1E69E6158];
  v93 = a6;
  v94 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v89 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v66 = sub_1E5A2B604();
  v67 = sub_1E5A2A6C4();
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = v57 - v15;
  v83 = a2;
  v84 = a5;
  v61 = MEMORY[0x1E699DB38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = a2;
  v84 = a5;
  v17 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = a2;
  v84 = MEMORY[0x1E6981CD8];
  v19 = MEMORY[0x1E6981CD8];
  v85 = OpaqueTypeMetadata2;
  v86 = OpaqueTypeMetadata2;
  v87 = a5;
  v88 = MEMORY[0x1E6981CD0];
  v20 = MEMORY[0x1E6981CD0];
  v89 = OpaqueTypeConformance2;
  v90 = OpaqueTypeConformance2;
  v57[3] = MEMORY[0x1E6981460];
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v83 = a2;
  v84 = v19;
  v85 = OpaqueTypeMetadata2;
  v86 = OpaqueTypeMetadata2;
  v87 = v17;
  v88 = v20;
  v89 = OpaqueTypeConformance2;
  v90 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_1E5969788();
  v83 = v21;
  v84 = v22;
  v85 = v23;
  v86 = v24;
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  v57[1] = sub_1E5A2AA84();
  v57[2] = sub_1E5A2B494();
  v25 = sub_1E5A2A6C4();
  v58 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v57 - v26;
  v28 = sub_1E5A2A6C4();
  v59 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v70 = v57 - v32;
  v83 = a2;
  v84 = v62;
  v85 = a4;
  v86 = v17;
  v87 = v60;
  v88 = v64;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, &v83);
  sub_1E595F598(active, v27);
  WitnessTable = swift_getWitnessTable();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7D8, &qword_1E5A3AE20);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7E0, &qword_1E5A3AE28);
  v37 = sub_1E58CD164(&qword_1ECFFE7E8, &qword_1ECFFE7D8, &qword_1E5A3AE20, MEMORY[0x1E697DB78]);
  v83 = v35;
  v84 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v83 = v35;
  v84 = MEMORY[0x1E6981CD8];
  v85 = v36;
  v86 = v36;
  v87 = v37;
  v88 = MEMORY[0x1E6981CD0];
  v89 = v38;
  v90 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v81 = WitnessTable;
  v82 = v39;
  v80 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v41 = sub_1E596A2C8();
  v78 = v40;
  v79 = v41;
  v42 = swift_getWitnessTable();
  sub_1E5A2B0A4();
  (*(v58 + 8))(v27, v25);
  v76 = v42;
  v77 = MEMORY[0x1E697F568];
  v62 = swift_getWitnessTable();
  v43 = v30;
  sub_1E58B41DC();
  v44 = v59;
  v45 = *(v59 + 8);
  v61 = v59 + 8;
  v64 = v45;
  v45(v30, v28);
  v46 = v63;
  sub_1E5960D44(active, v63);
  v74 = swift_getWitnessTable();
  v75 = MEMORY[0x1E697EBF8];
  v47 = v67;
  v48 = swift_getWitnessTable();
  v49 = v65;
  v50 = v46;
  sub_1E58B41DC();
  v51 = v68;
  v52 = *(v68 + 8);
  v52(v50, v47);
  v53 = *(v44 + 16);
  v54 = v70;
  v53(v43, v70, v28);
  v83 = v43;
  (*(v51 + 16))(v50, v49, v47);
  v84 = v50;
  v91 = v28;
  v92 = v47;
  v72 = v62;
  v73 = v48;
  sub_1E597DC00(&v83, 2uLL, &v91);
  v52(v49, v47);
  v55 = v64;
  v64(v54, v28);
  v52(v50, v47);
  return v55(v43, v28);
}

uint64_t sub_1E5968C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a7;
  v43 = a3;
  v41 = a1;
  v50 = a8;
  v15 = sub_1E5A2A714();
  v16 = *(v15 - 8);
  v48 = v15;
  v49 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[0] = a2;
  v58[1] = a3;
  v58[2] = a4;
  v58[3] = a5;
  v18 = a4;
  v19 = a5;
  v58[4] = a6;
  v58[5] = a7;
  v20 = a6;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, v58);
  v40 = active;
  v22 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v24 = &v39 - v23;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC210, &qword_1E5A30410);
  v47 = *(v45 - 8);
  v25 = MEMORY[0x1EEE9AC00](v45);
  v42 = &v39 - v26;
  (*(v22 + 16))(v24, a1, active, v25);
  v27 = (*(v22 + 80) + 64) & ~*(v22 + 80);
  v28 = swift_allocObject();
  v29 = v43;
  *(v28 + 2) = a2;
  *(v28 + 3) = v29;
  v30 = v18;
  *(v28 + 4) = v18;
  *(v28 + 5) = v19;
  v31 = v19;
  v32 = v20;
  *(v28 + 6) = v20;
  v33 = v44;
  *(v28 + 7) = v44;
  (*(v22 + 32))(&v28[v27], v24, v40);
  v51 = a2;
  v52 = v29;
  v53 = v30;
  v54 = v31;
  v55 = v32;
  v56 = v33;
  v57 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC238, &qword_1E5A30540);
  sub_1E58E2344();
  v34 = v42;
  sub_1E5A2B574();
  v35 = v46;
  sub_1E5A2A704();
  sub_1E58CD164(&qword_1ECFFC218, &qword_1ECFFC210, &qword_1E5A30410, MEMORY[0x1E697D680]);
  sub_1E596A1D8(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v36 = v45;
  v37 = v48;
  sub_1E5A2B0B4();
  (*(v49 + 8))(v35, v37);
  return (*(v47 + 8))(v34, v36);
}

__n128 sub_1E596901C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a7;
  v25 = a6;
  v28 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC248, &qword_1E5A30548);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC260, &qword_1E5A30550);
  v17 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v19 = &v25 - v18;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = v25;
  v34 = v26;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC268, &qword_1E5A30558);
  sub_1E58E24F8();
  sub_1E5A2B504();
  *&v36 = 0x4000000000000000;
  sub_1E58CD164(&qword_1ECFFC250, &qword_1ECFFC248, &qword_1E5A30548, MEMORY[0x1E697D658]);
  sub_1E58E2454();
  sub_1E5A2B084();
  (*(v14 + 8))(v16, v13);
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v20 = v28;
  (*(v17 + 32))(v28, v19, v27);
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC238, &qword_1E5A30540) + 36);
  v22 = v41;
  *(v21 + 64) = v40;
  *(v21 + 80) = v22;
  *(v21 + 96) = v42;
  v23 = v37;
  *v21 = v36;
  *(v21 + 16) = v23;
  result = v39;
  *(v21 + 32) = v38;
  *(v21 + 48) = result;
  return result;
}

uint64_t sub_1E5969350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a6;
  v36 = a7;
  v34 = a5;
  v37 = a1;
  v12 = sub_1E5A2AEB4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE2D33E0;
  v38[0] = a2;
  v38[1] = a3;
  v38[2] = a4;
  v38[3] = v34;
  v38[4] = v35;
  v38[5] = v36;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, v38);
  sub_1E595EF94(active);
  swift_getKeyPath();
  sub_1E5A2B944();

  v20 = sub_1E5A2AF64();
  v22 = v21;
  v24 = v23;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  (*(v13 + 104))(v15, *MEMORY[0x1E6980EA8], v12);
  sub_1E5A2AEE4();

  (*(v13 + 8))(v15, v12);
  v25 = sub_1E5A2AFA4();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_1E58B3C9C(v20, v22, v24 & 1);

  *a8 = v25;
  *(a8 + 8) = v27;
  *(a8 + 16) = v29 & 1;
  *(a8 + 24) = v31;
  return result;
}

uint64_t sub_1E596965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  MEMORY[0x1EEE9AC00](active);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v17 = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, v19);
  sub_1E595EF94(v17);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  return sub_1E58E7804(v16, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
}

unint64_t sub_1E5969788()
{
  result = qword_1ECFFE778;
  if (!qword_1ECFFE778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
    sub_1E596A1D8(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE778);
  }

  return result;
}

void sub_1E59698A8(uint64_t a1)
{
  sub_1E58CBB84(319);
  if (v3 <= 0x3F)
  {
    v21 = 0;
    v27 = v2;
    sub_1E5969A80(319);
    if (v5 <= 0x3F)
    {
      v22 = 0;
      v28 = v4;
      v6 = *(a1 + 16);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
      swift_getFunctionTypeMetadata3();
      v7 = sub_1E5A2A054();
      if (v8 <= 0x3F)
      {
        v23 = 0;
        v29 = v7;
        v9 = *(a1 + 24);
        sub_1E5A2BD84();
        swift_getFunctionTypeMetadata1();
        v10 = sub_1E5A2A054();
        if (v11 <= 0x3F)
        {
          v24 = 0;
          v30 = v10;
          v12 = *(a1 + 32);
          v13 = sub_1E5A2BD84();
          if (v14 <= 0x3F)
          {
            v25 = 0;
            v31 = v13;
            v15 = *(a1 + 56);
            v18[0] = v6;
            v18[1] = v9;
            v18[2] = v12;
            v19 = *(a1 + 40);
            v20 = v15;
            active = type metadata accessor for ActiveWorkoutPlanWorkoutView.Layout(319, v18);
            if (v17 <= 0x3F)
            {
              v26 = 0;
              v32 = active;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E5969A80(uint64_t a1)
{
  if (!qword_1EE2CFB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7B8, qword_1E5A3AD50);
    sub_1E58CD164(&qword_1EE2CFA90, &qword_1ECFFE7B8, qword_1E5A3AD50, MEMORY[0x1E6999B78]);
    v1 = sub_1E5A2A504();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2CFB40);
    }
  }
}

uint64_t sub_1E5969B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CalendarDay(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CalendarDay(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 24);
  v15[0] = *(v0 + 16);
  v15[1] = v1;
  v2 = *(v0 + 48);
  v14 = *(v0 + 32);
  v16 = v14;
  v17 = v2;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, v15);
  v4 = (*(*(active - 1) + 80) + 64) & ~*(*(active - 1) + 80);
  v5 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E5A2A684();
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  else
  {
  }

  sub_1E58B369C(*(v5 + active[17]), *(v5 + active[17] + 8));
  v7 = active[18];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  swift_getFunctionTypeMetadata3();
  v8 = sub_1E5A2A054();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = active[19];
  sub_1E5A2BD84();
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5A2A054();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = active[20];
  v12 = *(v14 - 8);
  if (!(*(v12 + 48))(v5 + v11, 1, v14))
  {
    (*(v12 + 8))(v5 + v11, v14);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5969EF4(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v8;
  v9 = *(type metadata accessor for ActiveWorkoutPlanWorkoutView(0, v11) - 8);
  return sub_1E596965C(v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80)), v3, v4, v5, v6, v7, v8, a1);
}

uint64_t sub_1E5969FD8(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_1E596A03C(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1E596A0A0()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v13[0] = v0[2];
  v1 = v13[0];
  v13[1] = v2;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v5;
  v13[5] = v6;
  v7 = *(type metadata accessor for ActiveWorkoutPlanWorkoutView(0, v13) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for ActiveWorkoutPlanWorkout(0) - 8);
  v11 = v0 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1E5967A60(v0 + v8, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1E596A1D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E596A238()
{
  result = qword_1ECFFE7D0;
  if (!qword_1ECFFE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE7D0);
  }

  return result;
}

unint64_t sub_1E596A2C8()
{
  result = qword_1ECFFE7F0;
  if (!qword_1ECFFE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE7F0);
  }

  return result;
}

uint64_t sub_1E596A334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E596A3A4()
{
  result = qword_1ECFFE810;
  if (!qword_1ECFFE810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
    sub_1E594C9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE810);
  }

  return result;
}

unint64_t sub_1E596A428()
{
  result = qword_1ECFFE818;
  if (!qword_1ECFFE818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
    sub_1E596A4E0();
    sub_1E58CD164(&qword_1ECFFE838, &qword_1ECFFE840, &unk_1E5A3AEB0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE818);
  }

  return result;
}

unint64_t sub_1E596A4E0()
{
  result = qword_1ECFFE820;
  if (!qword_1ECFFE820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE800, &qword_1E5A3B6C0);
    sub_1E596A598();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE820);
  }

  return result;
}

unint64_t sub_1E596A598()
{
  result = qword_1ECFFE828;
  if (!qword_1ECFFE828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7F8, &unk_1E5A3AE30);
    sub_1E58CD164(&qword_1ECFFE830, &qword_1ECFFE808, &qword_1E5A3AE40, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE828);
  }

  return result;
}

unint64_t sub_1E596A650()
{
  result = qword_1ECFFE848;
  if (!qword_1ECFFE848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
    sub_1E58CD164(&qword_1ECFFE838, &qword_1ECFFE840, &unk_1E5A3AEB0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE848);
  }

  return result;
}

uint64_t sub_1E596A71C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t CreatePersonalizedWorkoutPlanButtonView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E58D2CB8;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t CreatePersonalizedWorkoutPlanButtonView.body.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1E596AC08(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE850, &qword_1E5A3AEC0);
  sub_1E58CD164(&qword_1ECFFE858, &qword_1ECFFE850, &qword_1E5A3AEC0, MEMORY[0x1E697D658]);
  return sub_1E5A2B574();
}

uint64_t sub_1E596A954(uint64_t a1, uint64_t a2, char a3)
{
  PersonalizedWorkoutPlanButtonAction = type metadata accessor for CreatePersonalizedWorkoutPlanButtonAction(0);
  MEMORY[0x1EEE9AC00](PersonalizedWorkoutPlanButtonAction - 8);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE880, &qword_1E5A3AFC8);
  sub_1E58CD164(&qword_1ECFFE888, &qword_1ECFFE880, &qword_1E5A3AFC8, MEMORY[0x1E6999B78]);
  v8[1] = sub_1E5A2A4F4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC140, &qword_1E5A3B010);
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  (*(*(v6 - 8) + 56))(v5, 0, 2, v6);
  sub_1E5A2B954();

  return sub_1E596B088(v5);
}

uint64_t sub_1E596AB54(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE870, &qword_1E5A3AFC0);
  sub_1E596B00C();
  return sub_1E5A2B504();
}

uint64_t sub_1E596AC2C@<X0>(uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE880, &qword_1E5A3AFC8);
  sub_1E58CD164(&qword_1ECFFE888, &qword_1ECFFE880, &qword_1E5A3AFC8, MEMORY[0x1E6999B78]);
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  *a4 = v6;
  *(a4 + 8) = v7;
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E596AD1C@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE880, &qword_1E5A3AFC8);
  sub_1E58CD164(&qword_1ECFFE888, &qword_1ECFFE880, &qword_1E5A3AFC8, MEMORY[0x1E6999B78]);
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v6)
  {
    result = sub_1E5A2B4C4();
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t sub_1E596AE10()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1E596AC08(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE850, &qword_1E5A3AEC0);
  sub_1E58CD164(&qword_1ECFFE858, &qword_1ECFFE850, &qword_1E5A3AEC0, MEMORY[0x1E697D658]);
  return sub_1E5A2B574();
}

uint64_t sub_1E596AF1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E596AF64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t objectdestroy_2Tm()
{
  sub_1E58B369C(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_1E596B00C()
{
  result = qword_1ECFFE878;
  if (!qword_1ECFFE878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE870, &qword_1E5A3AFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE878);
  }

  return result;
}

uint64_t sub_1E596B088(uint64_t a1)
{
  PersonalizedWorkoutPlanButtonAction = type metadata accessor for CreatePersonalizedWorkoutPlanButtonAction(0);
  (*(*(PersonalizedWorkoutPlanButtonAction - 8) + 8))(a1, PersonalizedWorkoutPlanButtonAction);
  return a1;
}

uint64_t WorkoutPlanArtworkVariant.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1954047348;
    v6 = 0x6469576172746C75;
    if (a1 != 8)
    {
      v6 = 1701079415;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x74726F6873;
    if (a1 != 5)
    {
      v7 = 1819042164;
    }

    if (a1 <= 6u)
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
    v1 = 0x72656E6E6162;
    v2 = 2019912806;
    v3 = 0x657263536C6C7566;
    if (a1 != 3)
    {
      v3 = 0x72616C75676572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7265746E6563;
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

uint64_t sub_1E596B210(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = WorkoutPlanArtworkVariant.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == WorkoutPlanArtworkVariant.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E5A2C114();
  }

  return v8 & 1;
}

unint64_t sub_1E596B298@<X0>(Swift::String *a1@<X0>, FitnessWorkoutPlan::WorkoutPlanArtworkVariant_optional *a2@<X8>)
{
  result = _s18FitnessWorkoutPlan0bC14ArtworkVariantO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1E596B2C8@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutPlanArtworkVariant.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E596B3B4()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  WorkoutPlanArtworkVariant.rawValue.getter(v1);
  sub_1E5A2BB74();

  return sub_1E5A2C204();
}

uint64_t sub_1E596B418(uint64_t a1)
{
  WorkoutPlanArtworkVariant.rawValue.getter(*v1);
  sub_1E5A2BB74();
}

uint64_t sub_1E596B46C(uint64_t a1)
{
  v2 = *v1;
  sub_1E5A2C1B4();
  WorkoutPlanArtworkVariant.rawValue.getter(v2);
  sub_1E5A2BB74();

  return sub_1E5A2C204();
}

unint64_t _s18FitnessWorkoutPlan0bC14ArtworkVariantO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5A2BF34();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E596B51C()
{
  result = qword_1ECFFE890;
  if (!qword_1ECFFE890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE898, &qword_1E5A3B0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE890);
  }

  return result;
}

unint64_t sub_1E596B584()
{
  result = qword_1ECFFE8A0;
  if (!qword_1ECFFE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE8A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanArtworkVariant(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutPlanArtworkVariant(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E596B728()
{
  result = qword_1ECFFE8A8;
  if (!qword_1ECFFE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE8A8);
  }

  return result;
}

uint64_t sub_1E596B77C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16[-v1];
  v3 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for EditItem(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  type metadata accessor for ScheduledDayReviewView(0);
  swift_getKeyPath();
  sub_1E5A2B934();

  LODWORD(v6) = v11[*(v6 + 32)];
  sub_1E596F8A8(v11, type metadata accessor for EditItem);
  if (v6 != 7)
  {
    swift_getKeyPath();
    sub_1E5A2B934();

    sub_1E58BABA0(v8, v2, &qword_1ECFFB790, &qword_1E5A2D620);
    sub_1E596F8A8(v8, type metadata accessor for EditItem);
    v12 = type metadata accessor for WorkoutPlanScheduledItem(0);
    (*(*(v12 - 8) + 48))(v2, 1, v12);
    sub_1E58BAD14(v2, &qword_1ECFFB790, &qword_1E5A2D620);
  }

  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE2D33E0;
  swift_getKeyPath();
  v14 = v13;
  sub_1E5A2B944();

  return sub_1E5A2BB64();
}

uint64_t ScheduledDayReviewView.init(store:)@<X0>(uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for ScheduledDayReviewView(0);
  v5 = (a3 + *(v4 + 24));
  sub_1E5A2B514();
  *v5 = v9;
  v5[1] = v10;
  v6 = (a3 + *(v4 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *v6 = result;
  v6[1] = v8;
  return result;
}

uint64_t ScheduledDayReviewView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for ScheduledDayReviewView(0);
  v35 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = v3;
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE8B0, &qword_1E5A3B208);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v38 = v1;
  v41 = v1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE8B8, &qword_1E5A3B210);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE8C0, &qword_1E5A3B218);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE8C8, &qword_1E5A3B220);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE8D0, &qword_1E5A3B228);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE8D8, &qword_1E5A3B230);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE8E0, &qword_1E5A3B238);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE8E8, &qword_1E5A3B240);
  v15 = sub_1E58CD164(&qword_1ECFFE8F0, &qword_1ECFFE8E0, &qword_1E5A3B238, MEMORY[0x1E697CD20]);
  v16 = sub_1E596E890();
  v42 = v13;
  v43 = v14;
  v44 = v15;
  v45 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1E58D1C80();
  v42 = v12;
  v43 = MEMORY[0x1E69E6158];
  v44 = OpaqueTypeConformance2;
  v45 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v42 = v11;
  v43 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_1E58CD164(&qword_1ECFFE970, &qword_1ECFFE8C8, &qword_1E5A3B220, MEMORY[0x1E697C5E0]);
  v42 = v9;
  v43 = v10;
  v44 = v20;
  v45 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A6E4();
  v22 = *MEMORY[0x1E697E728];
  v23 = sub_1E5A2A684();
  (*(*(v23 - 8) + 104))(v5, v22, v23);
  sub_1E596F860(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E58CD164(&qword_1ECFFE978, &qword_1ECFFE8B0, &qword_1E5A3B208, MEMORY[0x1E697C1A8]);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    v25 = v39;
    v26 = v33;
    sub_1E5A2B164();
    sub_1E58BAD14(v5, &qword_1ECFFCE80, &qword_1E5A35BC0);
    (*(v32 + 8))(v8, v26);
    v27 = v37;
    sub_1E596F7F8(v38, v37, type metadata accessor for ScheduledDayReviewView);
    v28 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v29 = swift_allocObject();
    sub_1E596ED6C(v27, v29 + v28);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE980, &qword_1E5A3B278);
    v30 = (v25 + *(result + 36));
    *v30 = sub_1E596EDD0;
    v30[1] = v29;
    v30[2] = 0;
    v30[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E596C170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1E5A2A904();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE8E0, &qword_1E5A3B238);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE8D8, &qword_1E5A3B230);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE8D0, &qword_1E5A3B228);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v30 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE8C0, &qword_1E5A3B218);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v32 = &v30 - v13;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9C0, &qword_1E5A3B320);
  sub_1E596F20C();
  sub_1E5A2AF44();
  v43 = a1;
  sub_1E5A2AA24();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE8E8, &qword_1E5A3B240);
  v28 = sub_1E58CD164(&qword_1ECFFE8F0, &qword_1ECFFE8E0, &qword_1E5A3B238, MEMORY[0x1E697CD20]);
  v29 = sub_1E596E890();
  sub_1E5A2B0E4();
  (*(v31 + 8))(v7, v5);
  v15 = a1;
  v49 = sub_1E596B77C();
  v50 = v16;
  v45 = v5;
  v46 = v14;
  v47 = v28;
  v48 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1E58D1C80();
  v19 = MEMORY[0x1E69E6158];
  sub_1E5A2B184();

  (*(v33 + 8))(v10, v8);
  v21 = v39;
  v20 = v40;
  v22 = v36;
  (*(v39 + 104))(v36, *MEMORY[0x1E697C428], v40);
  v45 = v8;
  v46 = v19;
  v47 = OpaqueTypeConformance2;
  v48 = v18;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v32;
  v25 = v34;
  sub_1E5A2B294();
  (*(v21 + 8))(v22, v20);
  (*(v35 + 8))(v12, v25);
  v42 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE8C8, &qword_1E5A3B220);
  v45 = v25;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1E58CD164(&qword_1ECFFE970, &qword_1ECFFE8C8, &qword_1E5A3B220, MEMORY[0x1E697C5E0]);
  v26 = v37;
  sub_1E5A2B344();
  return (*(v38 + 8))(v24, v26);
}

uint64_t sub_1E596C788@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ScheduledDayReviewView(0);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  v3 = sub_1E5A2A654();
  v24 = v4;
  v25 = v3;
  v5 = sub_1E5A2A654();
  v22 = v6;
  v23 = v5;
  v7 = 0;
  v8 = 0;
  if (sub_1E59A8F90())
  {

    v7 = sub_1E5A2A654();
    v8 = v9;
  }

  if (sub_1E59A8F98())
  {

    v10 = sub_1E5A2A654();
    v20 = v11;
    v21 = v10;
    if ((sub_1E59A8FA0() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
    if ((sub_1E59A8FA0() & 1) == 0)
    {
LABEL_5:
      v12 = 0;
      v13 = 0;
      if ((sub_1E59A8FA8() & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:

      v14 = sub_1E5A2A654();
      v15 = v19;
      if ((sub_1E59A8FB0() & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_11:

      result = sub_1E5A2A654();
      goto LABEL_12;
    }
  }

  v12 = sub_1E5A2A654();
  v13 = v18;
  if (sub_1E59A8FA8())
  {
    goto LABEL_10;
  }

LABEL_6:
  v14 = 0;
  v15 = 0;
  if (sub_1E59A8FB0())
  {
    goto LABEL_11;
  }

LABEL_7:
  result = 0;
  v17 = 0;
LABEL_12:
  *a2 = v25;
  a2[1] = v24;
  a2[2] = v23;
  a2[3] = v22;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v21;
  a2[7] = v20;
  a2[8] = v12;
  a2[9] = v13;
  a2[10] = v14;
  a2[11] = v15;
  a2[12] = result;
  a2[13] = v17;
  return result;
}

uint64_t sub_1E596C978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_1E5A2AA04();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5A2ACA4();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScheduledDayReviewView(0);
  v8 = v7 - 8;
  v51 = *(v7 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE930, &qword_1E5A3B268);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v50 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE910, &unk_1E5A3B250);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v50 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA18, &qword_1E5A3B3B0);
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v50 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE900, &qword_1E5A3B248);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v50 - v16;
  v18 = type metadata accessor for EditItem(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + *(v8 + 28) + 8);
  swift_getKeyPath();
  v53 = v21;
  sub_1E5A2B934();

  sub_1E58BABA0(v20, v17, &qword_1ECFFB790, &qword_1E5A2D620);
  sub_1E596F8A8(v20, type metadata accessor for EditItem);
  v22 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v23 = 1;
  LODWORD(v20) = (*(*(v22 - 8) + 48))(v17, 1, v22);
  sub_1E58BAD14(v17, &qword_1ECFFB790, &qword_1E5A2D620);
  if (v20 != 1)
  {
    sub_1E596F7F8(a1, &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScheduledDayReviewView);
    v24 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v25 = swift_allocObject();
    v26 = sub_1E596ED6C(&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    MEMORY[0x1EEE9AC00](v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA28, &unk_1E5A3B3C0);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA30, &unk_1E5A3C420);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA40, &unk_1E5A3C430);
    v30 = sub_1E596F578();
    v31 = sub_1E596F688();
    v32 = sub_1E596F740();
    v69 = v27;
    v70 = MEMORY[0x1E6981CD8];
    v71 = v28;
    v72 = v29;
    v73 = v30;
    v74 = MEMORY[0x1E6981CD0];
    v75 = v31;
    v76 = v32;
    swift_getOpaqueTypeConformance2();
    sub_1E5A2B574();
    v33 = v55;
    sub_1E5A2AC94();
    sub_1E58CD164(&qword_1ECFFE938, &qword_1ECFFE930, &qword_1E5A3B268, MEMORY[0x1E697D680]);
    sub_1E596F860(&qword_1ECFFE940, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    v34 = v57;
    v35 = v58;
    v36 = v54;
    sub_1E5A2B0B4();
    (*(v56 + 8))(v33, v34);
    (*(v52 + 8))(v11, v36);
    v37 = [objc_opt_self() secondarySystemBackgroundColor];
    v38 = sub_1E5A2B474();
    KeyPath = swift_getKeyPath();
    v69 = v38;
    v40 = sub_1E5A2A5C4();
    v41 = (v35 + *(v59 + 36));
    *v41 = KeyPath;
    v41[1] = v40;
    sub_1E5A2B7A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE918, &qword_1E5A451A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE920, &qword_1E5A3B260);
    sub_1E596EA84();
    sub_1E596EBFC();
    sub_1E596ECB4();
    v42 = v60;
    sub_1E5A2B3A4();
    sub_1E58BAD14(v35, &qword_1ECFFE910, &unk_1E5A3B250);
    swift_getKeyPath();
    sub_1E5A2B944();

    if (v69 >= 3u)
    {
      v43 = 0x4034000000000000;
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_1E5A2ADA4();
    v45 = v64;
    (*(v61 + 32))(v64, v42, v63);
    v46 = v45 + *(v62 + 36);
    *v46 = v44;
    *(v46 + 8) = xmmword_1E5A3B1C0;
    *(v46 + 24) = v43;
    *(v46 + 32) = 0x4032000000000000;
    *(v46 + 40) = 0;
    v47 = v65;
    sub_1E5A2A9F4();
    sub_1E596E950();
    sub_1E5A2B1F4();
    (*(v66 + 8))(v47, v67);
    sub_1E58BAD14(v45, &qword_1ECFFE900, &qword_1E5A3B248);
    v23 = 0;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA20, &qword_1E5A3B3B8);
  return (*(*(v48 - 8) + 56))(v68, v23, 1, v48);
}

uint64_t sub_1E596D2F4()
{
  v1 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE2D33E0;
  type metadata accessor for ScheduledDayReviewView(0);
  swift_getKeyPath();
  v4 = v3;
  sub_1E5A2B944();

  v5 = sub_1E5A2AF64();
  v7 = v6;
  v9 = v8;
  sub_1E5A2B3F4();
  v10 = sub_1E5A2AF84();
  v12 = v11;
  v14 = v13;
  sub_1E58B3C9C(v5, v7, v9 & 1);

  sub_1E5A2AE14();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v15 = sub_1E5A2AFA4();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1E58B3C9C(v10, v12, v14 & 1);

  v22 = sub_1E5A2ADF4();
  sub_1E5A2A424();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v39 = v19 & 1;
  v38 = 0;
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *(&v40[6] + 7) = *&v40[21];
  *(&v40[8] + 7) = *&v40[23];
  *(&v40[10] + 7) = *&v40[25];
  *(&v40[12] + 7) = v41;
  *(v40 + 7) = *&v40[15];
  *(&v40[2] + 7) = *&v40[17];
  *(&v40[4] + 7) = *&v40[19];
  *&v32 = v15;
  *(&v32 + 1) = v17;
  LOBYTE(v33) = v19 & 1;
  *(&v33 + 1) = v21;
  LOBYTE(v34) = v22;
  *(&v34 + 1) = v24;
  *&v35 = v26;
  *(&v35 + 1) = v28;
  *v36 = v30;
  v36[8] = 0;
  *&v36[73] = *&v40[8];
  *&v36[89] = *&v40[10];
  *&v36[105] = *&v40[12];
  *&v36[120] = *(&v41 + 1);
  *&v36[9] = *v40;
  *&v36[25] = *&v40[2];
  *&v36[41] = *&v40[4];
  *&v36[57] = *&v40[6];
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E596F578();
  sub_1E596F688();
  sub_1E596F740();
  sub_1E5A2B3A4();
  v37[8] = *&v36[64];
  v37[9] = *&v36[80];
  v37[10] = *&v36[96];
  v37[11] = *&v36[112];
  v37[4] = *v36;
  v37[5] = *&v36[16];
  v37[6] = *&v36[32];
  v37[7] = *&v36[48];
  v37[0] = v32;
  v37[1] = v33;
  v37[2] = v34;
  v37[3] = v35;
  return sub_1E58BAD14(v37, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E596D780@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2B6A4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = a1[9];
  v34 = a1[8];
  v35 = v10;
  v11 = a1[11];
  v36 = a1[10];
  v37 = v11;
  v12 = a1[5];
  v30 = a1[4];
  v31 = v12;
  v13 = a1[7];
  v32 = a1[6];
  v33 = v13;
  v14 = a1[1];
  v26 = *a1;
  v27 = v14;
  v15 = a1[3];
  v28 = a1[2];
  v29 = v15;
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1E5A2A9B4();
  (*(*(v17 - 8) + 104))(v9, v16, v17);
  sub_1E596F7F8(v9, v6, MEMORY[0x1E6981998]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  sub_1E596F860(&qword_1ECFFEA98, MEMORY[0x1E6981998], MEMORY[0x1E6981978]);
  sub_1E5A2AD54();
  sub_1E596F8A8(v9, MEMORY[0x1E6981998]);
  v18 = v35;
  a2[8] = v34;
  a2[9] = v18;
  v19 = v37;
  a2[10] = v36;
  a2[11] = v19;
  v20 = v31;
  a2[4] = v30;
  a2[5] = v20;
  v21 = v33;
  a2[6] = v32;
  a2[7] = v21;
  v22 = v27;
  *a2 = v26;
  a2[1] = v22;
  v23 = v29;
  a2[2] = v28;
  a2[3] = v23;
  return sub_1E58BABA0(&v26, v25, &qword_1ECFFEA30, &unk_1E5A3C420);
}