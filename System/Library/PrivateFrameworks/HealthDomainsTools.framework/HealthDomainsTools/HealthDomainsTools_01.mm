BOOL sub_251669CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25166CA84(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452590, &qword_251675E10);
  swift_arrayDestroy();
  v5 = sub_251669238(a1, v4);

  v6 = *(v5 + 16);

  return v6 != 0;
}

BOOL isProbablyWorkout(from:requireWorkoutIdentifier:)(uint64_t a1, char a2)
{
  v4 = sub_251673688();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251673708();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v31 = &v30 - v10;
  v11 = sub_2516735D8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251673618();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = sub_25166CA84(&unk_28638F860);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452590, &qword_251675E10);
    swift_arrayDestroy();
    v20 = sub_251669238(a1, v19);

    v21 = *(v20 + 16);

    if (!v21)
    {
      return 0;
    }
  }

  (*(v12 + 16))(v14, a1, v11);
  if ((*(v12 + 88))(v14, v11) != *MEMORY[0x277D5C160])
  {
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  (*(v12 + 96))(v14, v11);
  v22 = v16;
  (*(v16 + 32))(v18, v14, v15);
  sub_2516735F8();
  v23 = sub_251673658();
  (*(v34 + 8))(v6, v35);
  if (!*(v23 + 16))
  {

LABEL_12:
    (*(v22 + 8))(v18, v15);
    return 0;
  }

  v25 = v32;
  v24 = v33;
  v26 = v30;
  (*(v32 + 16))(v30, v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v33);

  v27 = v31;
  (*(v25 + 32))(v31, v26, v24);
  if (!sub_2516736B8())
  {
    (*(v25 + 8))(v27, v24);
    goto LABEL_12;
  }

  sub_251673978();

  (*(v25 + 8))(v27, v24);
  (*(v22 + 8))(v18, v15);
  if (v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525A8, &qword_251675E28);
    if (swift_dynamicCast())
    {
      v28 = *(&v39 + 1) != 0;
    }

    else
    {
      v28 = 0;
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
    }
  }

  else
  {
    sub_251654A84(v36, &qword_27F452598, &qword_251675E18);
    v28 = 0;
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
  }

  sub_251654A84(&v38, &qword_27F4525A0, &qword_251675E20);
  return v28;
}

uint64_t getWorkoutName(from:fallback:)(uint64_t a1, int a2)
{
  v4 = sub_251673848();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  if (!a1)
  {
    return 0;
  }

  if (sub_251673958())
  {
    v11 = sub_251673888();

    if (v11)
    {
      v32 = *(v11 + 16);
      if (v32)
      {
        v27 = v10;
        v28 = a2;
        v13 = 0;
        v31 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v29 = a1;
        v30 = v5 + 16;
        while (1)
        {
          if (v13 >= *(v11 + 16))
          {
            __break(1u);
            return result;
          }

          (*(v5 + 16))(v8, v31 + *(v5 + 72) * v13, v4);
          v14 = sub_251673838();
          v16 = v15 ? v14 : 0;
          v17 = v15 ? v15 : 0xE000000000000000;
          v33 = v16;
          v34 = v17;
          MEMORY[0x28223BE20](v14);
          *(&v26 - 2) = &v33;
          v18 = sub_25166BF48(sub_25166CBCC, (&v26 - 4), &unk_28638F8B0);

          if (v18)
          {
            break;
          }

          ++v13;
          result = (*(v5 + 8))(v8, v4);
          if (v32 == v13)
          {
            goto LABEL_19;
          }
        }

        swift_arrayDestroy();

        v19 = v27;
        (*(v5 + 32))(v27, v8, v4);
        v20 = sub_251673828();
        v22 = v21;
        (*(v5 + 8))(v19, v4);
        if (v20 == 0x7374756F6B726F77 && v22 == 0xE800000000000000 || (v24 = v20, (sub_251674978() & 1) != 0))
        {
LABEL_19:

          LOBYTE(a2) = v28;
          goto LABEL_20;
        }

        return v24;
      }
    }
  }

LABEL_20:
  if (!sub_251673958())
  {
    goto LABEL_25;
  }

  sub_2516737E8();

  if (!v34)
  {
    goto LABEL_25;
  }

  if (v33 == 0x7374756F6B726F77 && v34 == 0xE800000000000000)
  {

LABEL_25:

    return 0;
  }

  v23 = a2;
  v24 = v33;
  v25 = sub_251674978();

  if ((v25 & 1) != 0 || (v23 & 1) == 0)
  {

    return 0;
  }

  return v24;
}

uint64_t getHealthDataTypeName(from:)(uint64_t a1)
{
  v2 = sub_251673848();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  if (!a1)
  {
    return 0;
  }

  result = sub_251673888();
  if (!result)
  {

    swift_arrayDestroy();
    return 0;
  }

  v10 = result;
  v21 = *(result + 16);
  if (!v21)
  {
LABEL_16:

    return 0;
  }

  v19[0] = v8;
  v19[1] = a1;
  v11 = 0;
  v20 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v19[2] = v3 + 16;
  while (v11 < *(v10 + 16))
  {
    (*(v3 + 16))(v6, v20 + *(v3 + 72) * v11, v2);
    v12 = sub_251673838();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v22[0] = v14;
    v22[1] = v15;
    MEMORY[0x28223BE20](v12);
    v19[-2] = v22;
    v16 = sub_25166BF48(sub_25166CEEC, &v19[-4], &unk_28638F8F0);

    if (v16)
    {

      v17 = v19[0];
      (*(v3 + 32))(v19[0], v6, v2);
      v18 = sub_251673828();

      (*(v3 + 8))(v17, v2);
      return v18;
    }

    ++v11;
    result = (*(v3 + 8))(v6, v2);
    if (v21 == v11)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t isExerciseRequest(in:)(uint64_t a1)
{
  v2 = sub_251673848();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  if (!a1)
  {
    goto LABEL_16;
  }

  result = sub_251673888();
  if (!result)
  {
LABEL_15:

LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  v10 = result;
  v24 = *(result + 16);
  if (!v24)
  {
LABEL_14:

    goto LABEL_15;
  }

  v22[0] = v8;
  v22[1] = a1;
  v11 = 0;
  v23 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v22[2] = v3 + 16;
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v3 + 16))(v6, v23 + *(v3 + 72) * v11, v2);
    v12 = sub_251673838();
    v14 = v13 ? v12 : 0;
    v15 = v13 ? v13 : 0xE000000000000000;
    v25[0] = v14;
    v25[1] = v15;
    MEMORY[0x28223BE20](v12);
    v22[-2] = v25;
    v16 = sub_25166BF48(sub_25166CEEC, &v22[-4], &unk_28638F940);

    if (v16)
    {
      break;
    }

    ++v11;
    result = (*(v3 + 8))(v6, v2);
    if (v24 == v11)
    {
      goto LABEL_14;
    }
  }

  sub_25166CBE8(aWorkoutname_2);

  v18 = v22[0];
  (*(v3 + 32))(v22[0], v6, v2);
  v19 = sub_251673828();
  v21 = v20;
  (*(v3 + 8))(v18, v2);
  if (v19 == 0x6573696372657865 && v21 == 0xE800000000000000)
  {

    v17 = 1;
  }

  else
  {
    v17 = sub_251674978();
  }

  return v17 & 1;
}

uint64_t getMeasurementUnit(from:)(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_251673FF8();
  }

  else
  {
    v1 = 0;
  }

  v2 = getMeasurementUnit(from:)(v1);

  return v2;
}

{
  v2 = sub_251673848();
  v46 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v45 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v44 = (v38 - v6);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - v7;
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_251673888();
  if (!result)
  {
    swift_arrayDestroy();
LABEL_28:

    return MEMORY[0x277D84F90];
  }

  v10 = result;
  v38[1] = a1;
  v11 = MEMORY[0x277D84F90];
  v43 = *(result + 16);
  if (!v43)
  {
LABEL_20:
    swift_arrayDestroy();

    v25 = *(v11 + 16);
    if (v25)
    {
      v47[0] = MEMORY[0x277D84F90];
      sub_25166BADC(0, v25, 0);
      v26 = v47[0];
      v27 = *(v46 + 16);
      v28 = *(v46 + 80);
      v42 = v11;
      v29 = v11 + ((v28 + 32) & ~v28);
      v43 = *(v46 + 72);
      v44 = v27;
      v46 += 16;
      v30 = (v46 - 8);
      do
      {
        v31 = v45;
        v44(v45, v29, v2);
        v32 = sub_251673828();
        v34 = v33;
        (*v30)(v31, v2);
        v47[0] = v26;
        v36 = *(v26 + 16);
        v35 = *(v26 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_25166BADC((v35 > 1), v36 + 1, 1);
          v26 = v47[0];
        }

        *(v26 + 16) = v36 + 1;
        v37 = v26 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v29 += v43;
        --v25;
      }

      while (v25);

      return v26;
    }

    goto LABEL_28;
  }

  v12 = 0;
  v39 = (v46 + 8);
  v40 = (v46 + 32);
  v41 = v46 + 16;
  v42 = result;
  while (v12 < *(v10 + 16))
  {
    v13 = v11;
    v14 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v15 = *(v46 + 72);
    (*(v46 + 16))(v8, v10 + v14 + v15 * v12, v2);
    v16 = sub_251673838();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v47[0] = v18;
    v47[1] = v19;
    MEMORY[0x28223BE20](v16);
    v38[-2] = v47;
    v20 = sub_25166BF48(sub_25166CEEC, &v38[-4], &unk_28638F970);

    if (v20)
    {
      v21 = *v40;
      (*v40)(v44, v8, v2);
      v11 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25166BAFC(0, *(v13 + 16) + 1, 1);
        v11 = v48;
      }

      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_25166BAFC((v23 > 1), v24 + 1, 1);
        v11 = v48;
      }

      *(v11 + 16) = v24 + 1;
      result = (v21)(v11 + v14 + v24 * v15, v44, v2);
    }

    else
    {
      result = (*v39)(v8, v2);
      v11 = v13;
    }

    ++v12;
    v10 = v42;
    if (v43 == v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t getAreaType(from:)(uint64_t a1)
{
  v2 = sub_251673848();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  if (!a1)
  {
    return 0;
  }

  if (!sub_251673958() || (v9 = sub_251673A28(), , !v9) || (v10 = sub_251673888(), result = , !v10))
  {
LABEL_15:

    return 0;
  }

  v21 = *(v10 + 16);
  if (!v21)
  {
LABEL_14:

    goto LABEL_15;
  }

  v18 = v8;
  v12 = 0;
  v20 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v19 = 0x8000000251676A40;
  while (v12 < *(v10 + 16))
  {
    (*(v3 + 16))(v6, v20 + *(v3 + 72) * v12, v2);
    v14 = sub_251673838();
    if (v15)
    {
      if (v14 == 0xD000000000000016 && v15 == v19)
      {

LABEL_18:

        v16 = v18;
        (*(v3 + 32))(v18, v6, v2);
        v17 = sub_251673828();

        (*(v3 + 8))(v16, v2);
        return v17;
      }

      v13 = sub_251674978();

      if (v13)
      {
        goto LABEL_18;
      }
    }

    ++v12;
    result = (*(v3 + 8))(v6, v2);
    if (v21 == v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

char *sub_25166B3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525D0, &qword_251675FC0);
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

void *sub_25166B4C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525D8, &qword_251675FC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525C8, &qword_251675FB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25166B60C(uint64_t a1)
{
  v2 = sub_251674758();

  return sub_25166B794(a1, v2);
}

unint64_t sub_25166B650(uint64_t a1)
{
  v2 = sub_2516747C8();

  return sub_25166B858(a1, v2);
}

unint64_t sub_25166B694(uint64_t a1)
{
  v1 = a1;
  sub_2516749F8();
  HealthLogName.rawValue.getter(v1);
  sub_251674638();

  v2 = sub_251674A18();

  return sub_25166B920(v1, v2);
}

unint64_t sub_25166B71C(uint64_t a1, uint64_t a2)
{
  sub_2516749F8();
  sub_251674638();
  v4 = sub_251674A18();

  return sub_25166BA24(a1, a2, v4);
}

unint64_t sub_25166B794(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2516744F8();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_251674768();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25166B858(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25166CE3C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25307E6A0](v9, a1);
      sub_25166CE98(v9);
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

unint64_t sub_25166B920(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = HealthLogName.rawValue.getter(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == HealthLogName.rawValue.getter(a1) && v9 == v10)
      {
        break;
      }

      v12 = sub_251674978();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25166BA24(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_251674978())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_25166BADC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25166BB1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25166BAFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25166BD70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25166BB1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525B8, &qword_251675FA8);
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

void *sub_25166BC28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525D8, &qword_251675FC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525C8, &qword_251675FB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25166BD70(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525C0, &qword_251675FB0);
  v10 = *(sub_251673848() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(sub_251673848() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

uint64_t sub_25166BF48(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25166BFF4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25166C978(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_251674948();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 4];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          *(v13 + 1) = *(v13 - 1);
          v13[4] = v13[1];
          *(v13 - 1) = v11;
          *v13 = v14;
          v13[1] = v15;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525C8, &qword_251675FB8);
      v7 = sub_2516746D8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_25166C160(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25166C160(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25166C964(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_25166C728((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25166B3C0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_25166B3C0((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_25166C728((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
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

uint64_t sub_25166C728(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
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
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

unint64_t sub_25166C98C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525E8, &qword_251675FD8);
    v3 = sub_251674928();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_25166B694(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25166CA84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525E0, &qword_251675FD0);
    v3 = sub_251674928();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25166B71C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _s18HealthDomainsTools22USOIdentifierNamespaceO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_251674938();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25166CC3C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_251674978() & 1;
  }
}

unint64_t sub_25166CC98()
{
  result = qword_27F4525B0;
  if (!qword_27F4525B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4525B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for USOIdentifierNamespace(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for USOIdentifierNamespace(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getWorkoutEntity(from:)()
{
  sub_251673978();
  sub_25166D11C(v6, v4);
  if (v5)
  {
    sub_25166D11C(v4, v3);
    sub_251673AF8();
    if (swift_dynamicCast())
    {

      sub_2516738E8();
LABEL_10:

      sub_25166D18C(v6);
      v0 = v2;
      __swift_destroy_boxed_opaque_existential_0(v3);
      goto LABEL_11;
    }

    sub_251673A78();
    if (swift_dynamicCast() || (sub_251673AB8(), swift_dynamicCast()) || (sub_251673B28(), swift_dynamicCast()))
    {

      sub_251673E18();
      goto LABEL_10;
    }

    sub_251673AE8();
    if (swift_dynamicCast())
    {

      sub_251673A48();
      goto LABEL_10;
    }

    sub_251673B38();
    if (swift_dynamicCast())
    {

      sub_251673D88();
      goto LABEL_10;
    }

    sub_251673B08();
    if (swift_dynamicCast())
    {

      sub_2516737A8();
      goto LABEL_10;
    }

    sub_25166D18C(v6);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_25166D18C(v6);
  }

  v0 = 0;
LABEL_11:
  sub_25166D18C(v4);
  return v0;
}

uint64_t sub_25166D11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452598, &qword_251675E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25166D18C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452598, &qword_251675E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getHealthLogEntity(from:)()
{
  sub_251673978();
  sub_25166D11C(v6, v4);
  if (v5)
  {
    sub_25166D11C(v4, v3);
    sub_251673CD8();
    if (swift_dynamicCast())
    {

      sub_2516738E8();
LABEL_11:

      sub_25166D18C(v6);
      v0 = v2;
      __swift_destroy_boxed_opaque_existential_0(v3);
      goto LABEL_12;
    }

    sub_2516737C8();
    if (swift_dynamicCast())
    {

      sub_251674188();
      goto LABEL_11;
    }

    sub_251673B18();
    if (swift_dynamicCast() || (sub_2516740C8(), swift_dynamicCast()))
    {

      sub_251673A48();
      goto LABEL_11;
    }

    sub_25166D18C(v6);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_25166D18C(v6);
  }

  v0 = 0;
LABEL_12:
  sub_25166D18C(v4);
  return v0;
}

uint64_t getAppEntity(from:)()
{
  sub_251673978();
  sub_25166D11C(v6, v4);
  if (v5)
  {
    sub_25166D11C(v4, v3);
    sub_251673AF8();
    if (swift_dynamicCast())
    {

      sub_2516738E8();
      goto LABEL_10;
    }

    sub_251673A78();
    if (swift_dynamicCast() || (sub_251673AB8(), swift_dynamicCast()) || (sub_251673B28(), swift_dynamicCast()))
    {

      sub_251673E18();
      goto LABEL_10;
    }

    sub_251673AE8();
    if (swift_dynamicCast())
    {

      sub_251673A48();
      goto LABEL_10;
    }

    sub_251673B38();
    if (swift_dynamicCast())
    {

      sub_251673D88();
      goto LABEL_10;
    }

    sub_251673B08();
    if (swift_dynamicCast())
    {

      sub_2516737A8();
LABEL_10:

      if (v2)
      {
        v0 = sub_251673878();

        sub_25166D18C(v6);
      }

      else
      {
        sub_25166D18C(v6);

        v0 = 0;
      }

      goto LABEL_13;
    }

    sub_2516739E8();
    if (swift_dynamicCast())
    {

      sub_2516737A8();

      sub_25166D18C(v6);
      v0 = v2;
LABEL_13:
      __swift_destroy_boxed_opaque_existential_0(v3);
      goto LABEL_14;
    }

    sub_25166D18C(v6);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_25166D18C(v6);
  }

  v0 = 0;
LABEL_14:
  sub_25166D18C(v4);
  return v0;
}

uint64_t sub_25166D620(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525F0, &qword_251675FE8);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = v25 - v4;
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v25[1] = v1;
    v36 = MEMORY[0x277D84F90];
    sub_251674878();
    v7 = a1 + 64;
    result = sub_2516747B8();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v26 = a1 + 72;
    v27 = v10;
    v28 = a1 + 64;
    v29 = v5;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v32 = 1 << v8;
      v33 = v8 >> 6;
      v31 = v9;
      v12 = *(*(a1 + 48) + 16 * v8 + 8);
      v34 = *(*(a1 + 56) + 16 * v8);
      v35 = v12;
      sub_251674448();
      swift_allocObject();

      sub_251674438();
      v13 = v30;
      sub_251674628();
      v14 = sub_2516743F8();
      v15 = a1;
      v16 = *(*(v14 - 8) + 56);
      v16(v13, 0, 1, v14);
      sub_251674418();

      sub_251654A84(v13, &qword_27F4525F0, &qword_251675FE8);
      sub_251674628();
      v16(v13, 0, 1, v14);
      a1 = v15;
      sub_251674408();

      sub_251654A84(v13, &qword_27F4525F0, &qword_251675FE8);
      sub_251674428();

      sub_251674858();
      sub_251674888();
      sub_251674898();
      result = sub_251674868();
      v11 = 1 << *(v15 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v7 = v28;
      v17 = v29;
      v18 = *(v28 + 8 * v33);
      if ((v18 & v32) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v10) = v27;
      if (v27 != *(v15 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v33 << 6;
        v21 = v33 + 1;
        v22 = (v26 + 8 * v33);
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_2516605BC(v8, v27, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_2516605BC(v8, v27, 0);
      }

LABEL_4:
      v9 = v31 + 1;
      v8 = v11;
      if (v31 + 1 == v17)
      {
        return v36;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

id getApplicationState(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_251674568();
  MEMORY[0x28223BE20](v4);
  v5 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v6 = sub_25166E444(a1, a2, 0);
  v7 = [v6 applicationState];

  return v7;
}

id sub_25166DCE0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = getApplicationState(_:)(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ([v4 isValid])
  {
    v6 = [v5 *a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t HealthApps.app.getter(uint64_t a1)
{
  v1 = a1;
  sub_251674478();
  HealthApps.rawValue.getter(v1);
  return sub_251674458();
}

unint64_t HealthApps.rawValue.getter(char a1)
{
  result = 0x6C7070612E6D6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 7:
      return result;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD00000000000003FLL;
      break;
    default:
      result = 0xD00000000000002ALL;
      break;
  }

  return result;
}

uint64_t HealthApps.sirikitApp.getter(char a1)
{
  sub_2516743E8();
  v2 = HealthApps.rawValue.getter(a1);
  return SirikitApp.init(_:)(v2, v3);
}

uint64_t SirikitApp.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525F0, &qword_251675FE8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_251674478();

  sub_251674458();
  v5 = sub_251673548();

  if (v5 && (v6 = [v5 appNameMap], v5, v6))
  {
    v7 = sub_2516745B8();

    sub_25166D620(v7);

    sub_2516743C8();
    swift_allocObject();
    sub_2516743B8();
    sub_251674628();

    v8 = sub_2516743F8();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    sub_2516743A8();

    sub_251654A84(v4, &qword_27F4525F0, &qword_251675FE8);
    sub_251674398();

    return sub_2516743D8();
  }

  else
  {

    return 0;
  }
}

id sub_25166E1C4(char a1, SEL *a2)
{
  v3 = HealthApps.rawValue.getter(a1);
  v5 = getApplicationState(_:)(v3, v4);

  if (!v5)
  {
    return 0;
  }

  if ([v5 isValid])
  {
    v6 = [v5 *a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_25166E248(char *a1, char *a2)
{
  v2 = *a2;
  v3 = HealthApps.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == HealthApps.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251674978();
  }

  return v8 & 1;
}

uint64_t sub_25166E2D0()
{
  v1 = *v0;
  sub_2516749F8();
  HealthApps.rawValue.getter(v1);
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_25166E334(uint64_t a1)
{
  HealthApps.rawValue.getter(*v1);
  sub_251674638();
}

uint64_t sub_25166E388(uint64_t a1)
{
  v2 = *v1;
  sub_2516749F8();
  HealthApps.rawValue.getter(v2);
  sub_251674638();

  return sub_251674A18();
}

unint64_t sub_25166E3E8@<X0>(Swift::String *a1@<X0>, HealthDomainsTools::HealthApps_optional *a2@<X8>)
{
  result = _s18HealthDomainsTools0A4AppsO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_25166E418@<X0>(unint64_t *a1@<X8>)
{
  result = HealthApps.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_25166E444(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2516745F8();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2516731C8();

    swift_willThrow();
  }

  return v6;
}

unint64_t _s18HealthDomainsTools0A4AppsO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_251674938();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25166E570()
{
  result = qword_27F4525F8;
  if (!qword_27F4525F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4525F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthApps(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthApps(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t LaunchAppFlow.init(app:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  result = sub_2516733E8();
  *(a2 + 40) = v2;
  return result;
}

uint64_t LaunchAppFlow.init(aceService:app:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_251654C4C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

id sub_25166E770()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
  HealthApps.rawValue.getter(*(v0 + 40));
  v2 = sub_2516745F8();

  [v1 setLaunchId_];

  __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  v3 = v1;
  sub_251673588();
  if (v4)
  {
    v5 = sub_2516745F8();
  }

  else
  {
    v5 = 0;
  }

  [v3 setRefId_];

  return v3;
}

uint64_t LaunchAppFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  sub_25166E8A8();

  return sub_251673318();
}

unint64_t sub_25166E8A8()
{
  result = qword_27F452600;
  if (!qword_27F452600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452600);
  }

  return result;
}

uint64_t LaunchAppFlow.execute()(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_251674568();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25166E9D4, 0, 0);
}

uint64_t sub_25166E9D4()
{
  v28 = v0;
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = __swift_project_value_buffer(v2, static Logger.common);
  *(v0 + 248) = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 256) = v6;
  *(v0 + 264) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  sub_25166F374(v4, v0 + 16);
  v7 = sub_251674548();
  v8 = sub_251674718();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 240);
  v11 = *(v0 + 208);
  v12 = *(v0 + 216);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    v15 = HealthApps.rawValue.getter(*(v0 + 56));
    v17 = v16;
    sub_25166F3AC(v0 + 16);
    v18 = sub_25165445C(v15, v17, &v27);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_251650000, v7, v8, "Launching app : %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x25307EDE0](v14, -1, -1);
    MEMORY[0x25307EDE0](v13, -1, -1);
  }

  else
  {

    sub_25166F3AC(v0 + 16);
  }

  v19 = *(v12 + 8);
  v19(v10, v11);
  *(v0 + 272) = v19;
  v20 = *(v0 + 200);
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v23 = sub_25166E770();
  *(v0 + 280) = v23;
  v24 = swift_task_alloc();
  *(v0 + 288) = v24;
  v25 = sub_251655B9C();
  *v24 = v0;
  v24[1] = sub_25166EC6C;

  return MEMORY[0x2821BB6A0](v23, v21, v25, v22);
}

uint64_t sub_25166EC6C(void *a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_25166EF88;
  }

  else
  {
    v6 = *(v4 + 280);

    v5 = sub_25166ED98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25166ED98()
{
  v18 = v0;
  v1 = *(v0 + 200);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 248), *(v0 + 208));
  sub_25166F374(v1, v0 + 112);
  v2 = sub_251674548();
  v3 = sub_251674718();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 272);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  if (v4)
  {
    v16 = *(v0 + 272);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = HealthApps.rawValue.getter(*(v0 + 152));
    v12 = v11;
    sub_25166F3AC(v0 + 112);
    v13 = sub_25165445C(v10, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_251650000, v2, v3, "App launch submitted : %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25307EDE0](v9, -1, -1);
    MEMORY[0x25307EDE0](v8, -1, -1);

    v16(v6, v7);
  }

  else
  {

    sub_25166F3AC(v0 + 112);
    v5(v6, v7);
  }

  sub_251673518();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25166EF88()
{
  v45 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);

  v2(v4, v3, v5);
  sub_25166F374(v6, v0 + 64);
  v7 = v1;
  v8 = sub_251674548();
  v9 = sub_251674728();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 296);
    v41 = *(v0 + 224);
    v42 = *(v0 + 272);
    v11 = *(v0 + 208);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44 = v13;
    *v12 = 136315394;
    v14 = HealthApps.rawValue.getter(*(v0 + 104));
    v16 = v15;
    sub_25166F3AC(v0 + 64);
    v17 = sub_25165445C(v14, v16, &v44);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v0 + 184) = v10;
    v18 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523C0, &qword_2516762D0);
    v19 = sub_251674618();
    v21 = sub_25165445C(v19, v20, &v44);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_251650000, v8, v9, "Error launching app %s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25307EDE0](v13, -1, -1);
    MEMORY[0x25307EDE0](v12, -1, -1);

    v42(v41, v11);
  }

  else
  {
    v22 = *(v0 + 296);
    v23 = *(v0 + 272);
    v24 = *(v0 + 224);
    v25 = *(v0 + 208);

    sub_25166F3AC(v0 + 64);
    v23(v24, v25);
  }

  v26 = *(v0 + 200);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 248), *(v0 + 208));
  sub_25166F374(v26, v0 + 112);
  v27 = sub_251674548();
  v28 = sub_251674718();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 272);
  v31 = *(v0 + 232);
  v32 = *(v0 + 208);
  if (v29)
  {
    v43 = *(v0 + 272);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = v34;
    *v33 = 136315138;
    v35 = HealthApps.rawValue.getter(*(v0 + 152));
    v37 = v36;
    sub_25166F3AC(v0 + 112);
    v38 = sub_25165445C(v35, v37, &v44);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_251650000, v27, v28, "App launch submitted : %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x25307EDE0](v34, -1, -1);
    MEMORY[0x25307EDE0](v33, -1, -1);

    v43(v31, v32);
  }

  else
  {

    sub_25166F3AC(v0 + 112);
    v30(v31, v32);
  }

  sub_251673518();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_25166F3E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2516558DC;

  return LaunchAppFlow.execute()(a1);
}

uint64_t SACommandFlow.init(closure:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  sub_2516733E8();
  sub_251670164(v7, a2);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_251673588();
  v5 = a1(v4);

  result = __swift_destroy_boxed_opaque_existential_0(v7);
  a2[5] = v5;
  return result;
}

uint64_t SACommandFlow.init(aceService:closure:)@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  sub_251670164(a1, a3);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v6 = sub_251673588();
  v7 = a2(v6);

  result = __swift_destroy_boxed_opaque_existential_0(a1);
  a3[5] = v7;
  return result;
}

uint64_t SACommandFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  sub_2516701C8();

  return sub_251673318();
}

uint64_t SACommandFlow.execute()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_251674568();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25166F6DC, 0, 0);
}

uint64_t sub_25166F6DC()
{
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v2, static Logger.common);
  v0[12] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[13] = v5;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_251674548();
  v7 = sub_251674718();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_251650000, v6, v7, "Sending command", v8, 2u);
    MEMORY[0x25307EDE0](v8, -1, -1);
  }

  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[6];

  v13 = *(v11 + 8);
  v0[15] = v13;
  v13(v9, v10);
  v15 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v15);
  v16 = v12[5];
  v17 = swift_task_alloc();
  v0[16] = v17;
  v18 = sub_251655B9C();
  *v17 = v0;
  v17[1] = sub_25166F8D0;

  return MEMORY[0x2821BB6A0](v16, v15, v18, v14);
}

uint64_t sub_25166F8D0(void *a1)
{
  *(*v2 + 136) = v1;

  if (v1)
  {
    v4 = sub_25166FB2C;
  }

  else
  {

    v4 = sub_25166F9EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25166F9EC()
{
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 56));
  v1 = sub_251674548();
  v2 = sub_251674718();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_251650000, v1, v2, "command submitted", v3, 2u);
    MEMORY[0x25307EDE0](v3, -1, -1);
  }

  v4 = *(v0 + 120);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  v4(v5, v6);
  sub_251673518();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25166FB2C()
{
  v1 = *(v0 + 136);
  (*(v0 + 104))(*(v0 + 72), *(v0 + 96), *(v0 + 56));
  v2 = v1;
  v3 = sub_251674548();
  v4 = sub_251674728();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 136);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_251650000, v3, v4, "Error sending command %@", v7, 0xCu);
    sub_251660554(v8);
    MEMORY[0x25307EDE0](v8, -1, -1);
    MEMORY[0x25307EDE0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 120))(*(v0 + 72), *(v0 + 56));
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 56));
  v11 = sub_251674548();
  v12 = sub_251674718();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_251650000, v11, v12, "command submitted", v13, 2u);
    MEMORY[0x25307EDE0](v13, -1, -1);
  }

  v14 = *(v0 + 120);
  v15 = *(v0 + 80);
  v16 = *(v0 + 56);

  v14(v15, v16);
  sub_251673518();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_25166FD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_251657F64;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_25166FE34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2516702E4;

  return SACommandFlow.execute()(a1);
}

uint64_t closeAppFlow(app:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  sub_2516733E8();
  sub_251670164(v8, a2);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_251673588();
  v6 = sub_25166FF60(v4, v5, v2);

  result = __swift_destroy_boxed_opaque_existential_0(v8);
  a2[5] = v6;
  return result;
}

id sub_25166FF60(uint64_t a1, void *a2, char a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D47198]) init];
  HealthApps.rawValue.getter(a3);
  v6 = sub_2516745F8();

  [v5 setAppBundleId_];

  v7 = sub_2516745F8();
  [v5 setSceneId_];

  v8 = v5;
  if (a2)
  {
    a2 = sub_2516745F8();
  }

  [v5 setRefId_];

  return v5;
}

uint64_t openAppFlow(app:)@<X0>(void *a3@<X8>)
{
  sub_2516733E8();
  sub_251670164(v11, a3);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_251673588();
  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
  v7 = sub_2516745F8();
  [v6 setLaunchId_];

  v8 = v6;
  if (v5)
  {
    v9 = sub_2516745F8();
  }

  else
  {
    v9 = 0;
  }

  [v6 setRefId_];

  result = __swift_destroy_boxed_opaque_existential_0(v11);
  a3[5] = v6;
  return result;
}

uint64_t sub_251670164(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2516701C8()
{
  result = qword_27F452608;
  if (!qword_27F452608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452608);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251670230(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_251670278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static UsoEntity_common_WorkoutInstructor.builder(name:)(uint64_t a1, uint64_t a2)
{
  sub_251674178();
  swift_allocObject();
  v3 = sub_251674168();
  if (a2)
  {
    sub_251674158();
  }

  return v3;
}

uint64_t static UsoEntity_common_WorkoutInstructor.with(name:)(uint64_t a1, uint64_t a2)
{
  sub_251674178();
  swift_allocObject();
  v3 = sub_251674168();
  if (a2)
  {
    sub_251674158();
  }

  MEMORY[0x25307D850](v3);
  sub_251673E38();
  sub_251673A18();

  return v5;
}

uint64_t OutputFlow.init(templatingResult:snippets:flowConfig:rrEntities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for OutputFlow(0);
  v11 = v10[7];
  sub_251655A40(a1, a5);
  *(a5 + v10[5]) = a2;
  sub_251670164(a3, a5 + v10[6]);
  *(a5 + v11) = a4;
  sub_2516744D8();
  v12 = sub_2516744C8();
  __swift_destroy_boxed_opaque_existential_0(a3);
  result = sub_251654A84(a1, &qword_27F4523B8, qword_251675280);
  *(a5 + v10[8]) = v12;
  return result;
}

uint64_t type metadata accessor for OutputFlow(uint64_t a1)
{
  result = qword_27F452618;
  if (!qword_27F452618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OutputFlow.execute(completion:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = sub_251673538();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251674568();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452610, qword_251676238);
  MEMORY[0x28223BE20](v11 - 8);
  v36 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_251673558();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251655A40(v3, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251654A84(v15, &qword_27F4523B8, qword_251675280);
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v7, static Logger.common);
    swift_beginAccess();
    (*(v8 + 16))(v10, v20, v7);
    v21 = sub_251674548();
    v22 = sub_251674728();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_251650000, v21, v22, "Received error in TemplatingResult", v23, 2u);
      MEMORY[0x25307EDE0](v23, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    sub_251673518();
    v39(v6);
    return (*(v37 + 8))(v6, v38);
  }

  else
  {
    v37 = v17;
    v38 = v16;
    (*(v17 + 32))(v19, v15, v16);
    v25 = type metadata accessor for OutputFlow(0);
    v26 = (v3 + *(v25 + 24));
    v27 = v26[3];
    v28 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v28 + 8))(v41, v27, v28);
    __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_251673408();
    sub_2516734B8();
    swift_allocObject();
    sub_2516734A8();
    __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_251673408();
    v29 = sub_251673498();

    __swift_destroy_boxed_opaque_existential_0(v41);
    if (*(v3 + *(v25 + 28)))
    {
      v30 = sub_251674588();
      v31 = v36;
      (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
      sub_2516744B8();
      sub_251654A84(v31, &qword_27F452610, qword_251676238);
    }

    v32 = v26[3];
    v33 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v32);
    (*(v33 + 16))(v41, v32, v33);
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v34 = swift_allocObject();
    v35 = v40;
    *(v34 + 16) = v39;
    *(v34 + 24) = v35;
    sub_251663748(0, &qword_27F4523C8, 0x277D471B0);

    sub_251673578();

    (*(v37 + 8))(v19, v38);
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }
}

uint64_t sub_251670B2C(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_251673538();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673518();
  a2(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t OutputFlow.getReferenceResolutionClient_ForTesting()()
{
  type metadata accessor for OutputFlow(0);
}

uint64_t sub_251670C3C(uint64_t a1, char a2)
{
  v3 = sub_251674568();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v3, static Logger.common);
    swift_beginAccess();
    (*(v4 + 16))(v7, v8, v3);
    v9 = sub_251674548();
    v10 = sub_251674728();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_251650000, v9, v10, "Failed to donate entities to Siri Reference Resolution", v11, 2u);
      MEMORY[0x25307EDE0](v11, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_251670DEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251670E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251670F1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_251670FE0(uint64_t a1)
{
  sub_2516710AC(319);
  if (v1 <= 0x3F)
  {
    sub_251671128(319);
    if (v2 <= 0x3F)
    {
      sub_251671190();
      if (v3 <= 0x3F)
      {
        sub_2516711F4(319);
        if (v4 <= 0x3F)
        {
          sub_2516744D8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2516710AC(uint64_t a1)
{
  if (!qword_27F452628)
  {
    sub_251673558();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4523C0, &qword_2516762D0);
    v1 = sub_251674A28();
    if (!v2)
    {
      atomic_store(v1, &qword_27F452628);
    }
  }
}

void sub_251671128(uint64_t a1)
{
  if (!qword_27F452630)
  {
    sub_251663748(255, &qword_27F452638, 0x277D47140);
    v1 = sub_2516746F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F452630);
    }
  }
}

unint64_t sub_251671190()
{
  result = qword_27F452640;
  if (!qword_27F452640)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F452640);
  }

  return result;
}

void sub_2516711F4(uint64_t a1)
{
  if (!qword_27F452648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F452650, qword_2516762D8);
    v1 = sub_251674798();
    if (!v2)
    {
      atomic_store(v1, &qword_27F452648);
    }
  }
}

uint64_t AppPunchOutFlow.init(aceService:url:instrumentationTask:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v9 = sub_2516731E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  sub_251670164(a1, a5);
  v13 = type metadata accessor for AppPunchOutFlow(0);
  v14 = *(v10 + 16);
  v14(a5 + v13[5], a2, v9);
  v15 = (a5 + v13[6]);
  v16 = v28;
  *v15 = a3;
  v15[1] = v16;
  sub_251663748(0, &qword_27F452658, 0x277D479F0);
  sub_251670164(a1, v30);
  v17 = a2;
  v14(v12, a2, v9);
  v18 = SAUIAppPunchOut.init(aceService:url:)(v30, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452660, &qword_251676330);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251676320;
  v20 = sub_251674608();
  v21 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = sub_251674608();
  *(v19 + 88) = v21;
  *(v19 + 64) = v23;
  *(v19 + 72) = v24;
  v25 = sub_2516746A8();

  [v18 setLaunchOptions_];

  (*(v10 + 8))(v17, v9);
  result = __swift_destroy_boxed_opaque_existential_0(v29);
  *(a5 + v13[7]) = v18;
  return result;
}

uint64_t type metadata accessor for AppPunchOutFlow(uint64_t a1)
{
  result = qword_27F452678;
  if (!qword_27F452678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppPunchOutFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452668, qword_251676338);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = v34 - v5;
  v6 = sub_2516734C8();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppPunchOutFlow(0);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251674568();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static Logger.common);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  sub_251671A60(v2, v10);
  v16 = sub_251674548();
  v17 = sub_251674718();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v2;
    v20 = v19;
    v43[0] = v19;
    *v18 = 136315138;
    sub_2516731E8();
    v35 = v8;
    sub_251671C40();
    v21 = sub_251674958();
    v23 = v22;
    sub_251671AC4(v10);
    v24 = sub_25165445C(v21, v23, v43);
    v8 = v35;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_251650000, v16, v17, "Punching out to: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = v20;
    v3 = v36;
    MEMORY[0x25307EDE0](v25, -1, -1);
    MEMORY[0x25307EDE0](v18, -1, -1);
  }

  else
  {

    sub_251671AC4(v10);
  }

  (*(v12 + 8))(v14, v11);
  v26 = (v3 + *(v8 + 24));
  if (v26[1])
  {
    v35 = *v26;

    sub_251673388();
    v36 = v43[4];
    v34[1] = __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    sub_2516733D8();
    (*(v37 + 104))(v39, *MEMORY[0x277D5BBA8], v38);
    v27 = *MEMORY[0x277D5B948];
    v28 = sub_2516733A8();
    v29 = *(v28 - 8);
    v30 = v40;
    (*(v29 + 104))(v40, v27, v28);
    (*(v29 + 56))(v30, 0, 1, v28);
    sub_2516733B8();
    sub_251673398();

    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v31 = swift_allocObject();
  v32 = v42;
  *(v31 + 16) = v41;
  *(v31 + 24) = v32;
  sub_251663748(0, &qword_27F4523C8, 0x277D471B0);

  sub_251673578();
}

uint64_t sub_251671A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPunchOutFlow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251671AC4(uint64_t a1)
{
  v2 = type metadata accessor for AppPunchOutFlow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251671B20(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_251673538();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673518();
  a2(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_251671BFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_251671C40()
{
  result = qword_27F452670;
  if (!qword_27F452670)
  {
    sub_2516731E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452670);
  }

  return result;
}

uint64_t sub_251671CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2516731E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251671D6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2516731E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_251671E10(uint64_t a1)
{
  sub_251671ED4();
  if (v1 <= 0x3F)
  {
    sub_2516731E8();
    if (v2 <= 0x3F)
    {
      sub_251671F38();
      if (v3 <= 0x3F)
      {
        sub_251663748(319, &qword_27F452658, 0x277D479F0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_251671ED4()
{
  result = qword_27F452688;
  if (!qword_27F452688)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F452688);
  }

  return result;
}

void sub_251671F38()
{
  if (!qword_27F452690)
  {
    v0 = sub_251674798();
    if (!v1)
    {
      atomic_store(v0, &qword_27F452690);
    }
  }
}

uint64_t SequenceFlow.flows.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t SequenceFlow.__allocating_init(aceService:flows:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_251655CC8(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t SequenceFlow.init(aceService:flows:)(__int128 *a1, uint64_t a2)
{
  sub_251655CC8(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t SequenceFlow.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2516733F8();
  *(v2 + 56) = a1;
  return v2;
}

uint64_t SequenceFlow.init(with:)(uint64_t a1)
{
  sub_2516733F8();
  sub_251655CC8(&v4, v1 + 16);
  *(v1 + 56) = a1;
  return v1;
}

uint64_t SequenceFlow.execute(completion:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_251673538();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251674568();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v3 + 56);
  if (v14 >> 62)
  {
    if (sub_251674918())
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_251673518();
    goto LABEL_13;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  v24 = a2;
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, static Logger.common);
  swift_beginAccess();
  (*(v11 + 16))(v13, v15, v10);

  v16 = sub_251674548();
  v17 = sub_251674718();
  if (os_log_type_enabled(v16, v17))
  {
    v23 = a1;
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    v19 = *(v3 + 56);
    if (v19 >> 62)
    {
      v20 = sub_251674918();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v20;

    _os_log_impl(&dword_251650000, v16, v17, "Flows remaining : %ld", v18, 0xCu);
    MEMORY[0x25307EDE0](v18, -1, -1);

    a1 = v23;
  }

  else
  {
  }

  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  sub_2516724BC();
  swift_endAccess();
  sub_251673508();

LABEL_13:
  a1(v9);
  return (*(v7 + 8))(v9, v6);
}

void sub_2516724BC()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_251674918())
  {
    if (sub_251674918())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x25307E6F0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_251674918();
LABEL_13:
      if (v3)
      {
        sub_25167281C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t SequenceFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t SequenceFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_251672620(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SequenceFlow();

  return sub_251673358();
}

uint64_t sub_25167267C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_251674918();
LABEL_9:
  result = sub_251674838();
  *v2 = result;
  return result;
}

uint64_t sub_25167271C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_251673308();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_251674918();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_251674918();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_25167281C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_251674918();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_251674918();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_25167267C(result, 1);

  return sub_25167271C(v5, v3, 0);
}

uint64_t static UsoEntity_common_Workout.builder(workoutName:goalDefinedValue:goalUnitType:goalValue:areaType:sequenceLabel:usoAssociatedAppIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56 = a1;
  v57 = a8;
  v46 = a7;
  v51 = a6;
  v52 = a4;
  v50 = a3;
  v48 = a5;
  v49 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v45 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v59 = sub_251673AC8();
  v54 = *(v59 - 8);
  v19 = MEMORY[0x28223BE20](v59);
  v43 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v53 = &v42 - v21;
  v22 = sub_251673848();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673CB8();
  swift_allocObject();
  v26 = sub_251673CA8();
  sub_251673DC8();
  swift_allocObject();
  v58 = sub_251673DB8();
  if (a2)
  {
    sub_2516739D8();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v27 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v23 + 8))(v25, v22);
    v60 = v27;
    sub_251673868();
  }

  v47 = v25;
  v55 = v23;
  v56 = v22;
  if (v57)
  {
    _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(v46, v57);
    sub_251673D98();
  }

  sub_251673C78();

  v57 = sub_251658E48(v50, v52, v48, v51 & 1);
  sub_251673C88();
  sub_251654A14(v49, v18);
  v28 = v54;
  v29 = *(v54 + 48);
  if (v29(v18, 1, v59) == 1)
  {
    sub_25165ECFC(v18);
    v31 = v55;
    v30 = v56;
    if (!a11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v52 = v26;
  v32 = *(v28 + 32);
  v33 = v53;
  v34 = v59;
  v32(v53, v18, v59);
  v35 = v45;
  (*(v28 + 16))(v45, v33, v34);
  (*(v28 + 56))(v35, 0, 1, v34);
  sub_251673F18();
  swift_allocObject();
  sub_251673F08();
  v36 = v44;
  sub_251654A14(v35, v44);
  if (v29(v36, 1, v34) == 1)
  {
    sub_25165ECFC(v35);
    v35 = v36;
  }

  else
  {
    v37 = v43;
    v38 = v59;
    v32(v43, v36, v59);
    sub_251673EF8();
    (*(v28 + 8))(v37, v38);
  }

  v31 = v55;
  v30 = v56;
  sub_25165ECFC(v35);

  v26 = v52;
  sub_2516739F8();

  (*(v28 + 8))(v53, v59);
  if (a11)
  {
LABEL_12:
    sub_251673A68();
    swift_allocObject();
    sub_251673A58();
    sub_2516739D8();
    swift_allocObject();

    v39 = sub_2516739C8();
    v40 = v47;
    sub_251673818();
    sub_2516737D8();
    (*(v31 + 8))(v40, v30);
    v60 = v39;
    sub_251673868();

    sub_251673A08();
  }

LABEL_13:

  return v26;
}

uint64_t static UsoEntity_common_Workout.builder(name:goal:healthLog:workoutClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_251673CB8();
  swift_allocObject();
  v12 = sub_251673CA8();
  if (a2)
  {
    sub_251673C98();
  }

  if (a3)
  {

    sub_251673C88();
  }

  if (a5)
  {

    sub_251673C78();
  }

  if (a7)
  {

    sub_251673C68();
  }

  return v12;
}

uint64_t static UsoEntity_common_Workout.with(name:goal:healthLog:workoutClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_251673CB8();
  swift_allocObject();
  v12 = sub_251673CA8();
  if (a2)
  {
    sub_251673C98();
  }

  if (a3)
  {

    sub_251673C88();
  }

  if (a5)
  {

    sub_251673C78();
  }

  if (a7)
  {

    sub_251673C68();
  }

  MEMORY[0x25307D850](v12);
  sub_251673968();
  sub_251673A18();

  return v14;
}