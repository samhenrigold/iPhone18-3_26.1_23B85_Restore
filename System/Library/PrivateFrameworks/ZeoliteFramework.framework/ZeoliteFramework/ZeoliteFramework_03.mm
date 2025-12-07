void sub_2751FF28C(uint64_t *a1@<X8>)
{
  v2 = 0x726F736E6574;
  if (*v1)
  {
    v2 = 0x78697274616DLL;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t calculatePercentilesOfMeanTopK(_:percentiles:)(uint64_t a1, char *a2, __n128 a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = sub_2751FF748(0, 100, 10);
  }

  v5 = *(a1 + 16);
  v6._rawValue = MEMORY[0x277D84F90];
  if (v5)
  {
    v42 = MEMORY[0x277D84F90];
    a3;
    sub_2751E1344(0, v5, 0);
    v8 = 0;
    v9 = a1 + 32;
    rawValue = v42;
    do
    {
      v11._rawValue = *(v9 + 16 * v8);
      v7;
      v12;
      v13 = calculatePercentiles(_:percentiles:)(v11, &unk_2883F8A40);
      v15 = 0.0;
      v16 = 0;
      if (v13)
      {
        if (!*(v13 + 16))
        {
          __break(1u);
        }

        v16 = *(v13 + 32);
      }

      v17 = *(v11._rawValue + 2);
      if (v17)
      {
        v18 = *(v11._rawValue + 8);
        v19 = v17 - 1;
        if (v17 == 1)
        {
          v15 = *(v11._rawValue + 8);
        }

        else
        {
          v20 = (v11._rawValue + 36);
          v21 = (v11._rawValue + 36);
          v22 = v17 - 1;
          v15 = *(v11._rawValue + 8);
          do
          {
            v23 = *v21++;
            v24 = v23;
            if (v23 < v15)
            {
              v15 = v24;
            }

            --v22;
          }

          while (v22);
          do
          {
            v25 = *v20++;
            v14.n128_f32[0] = v25;
            if (v18 < v25)
            {
              v18 = v14.n128_f32[0];
            }

            --v19;
          }

          while (v19);
        }
      }

      else
      {
        v18 = 0.0;
      }

      LODWORD(__C) = 2143289344;
      v14;
      vDSP_meanv(v11._rawValue + 8, 1, &__C, v17);
      v26 = __C;

      __C = v11._rawValue;
      v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
      sub_2751FFC00(&qword_2809AD370, &qword_2809AD1F0, &qword_27520DE80, MEMORY[0x277D83210]);
      sub_27520B6A8();
      v29 = v28;

      swift_bridgeObjectRelease_n();
      v42 = rawValue;
      v31 = rawValue[2];
      v30 = rawValue[3];
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_2751E1344((v30 > 1), v31 + 1, 1);
        rawValue = v42;
      }

      ++v8;
      rawValue[2] = v32;
      v33 = rawValue + 5 * v31;
      v33[8] = v15;
      v33[9] = v18;
      *(v33 + 10) = v26;
      *(v33 + 11) = v29;
      *(v33 + 12) = v16;
    }

    while (v8 != v5);
  }

  else
  {
    v32 = *(MEMORY[0x277D84F90] + 16);
    a3;
    rawValue = v6._rawValue;
    if (!v32)
    {
      goto LABEL_29;
    }
  }

  v42 = v6._rawValue;
  sub_2751E09A4(0, v32, 0);
  v6._rawValue = v42;
  v34 = v42[2];
  v35 = 40;
  do
  {
    v36 = *(rawValue + v35);
    v42 = v6._rawValue;
    v37 = *(v6._rawValue + 3);
    if (v34 >= v37 >> 1)
    {
      sub_2751E09A4((v37 > 1), v34 + 1, 1);
      v6._rawValue = v42;
    }

    *(v6._rawValue + 2) = v34 + 1;
    *(v6._rawValue + v34 + 8) = v36;
    v35 += 20;
    ++v34;
    --v32;
  }

  while (v32);
LABEL_29:
  v38 = calculatePercentiles(_:percentiles:)(v6, v4);

  if (v38)
  {

    v39 = sub_2751FF990(v4, v38);

    return v39;
  }

  else
  {
    result = sub_27520C028();
    __break(1u);
  }

  return result;
}

char *sub_2751FF748(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_2751FFDEC(a1, a2, a3);
  v24 = MEMORY[0x277D84F90];
  result = sub_2751E09A4(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_44;
  }

  result = v24;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!v6)
  {
    goto LABEL_22;
  }

  v11 = v5;
  while (1)
  {
    v12 = v11 <= a2;
    if (a3 > 0)
    {
      v12 = v11 >= a2;
    }

    if (!v12)
    {
      v10 = !__OFADD__(v11, a3);
      if (__OFADD__(v11, a3))
      {
        v9 = 0x8000000000000000;
      }

      else
      {
        v9 = 0;
      }

      if (__OFADD__(v11, a3))
      {
        v5 = ((v11 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v5 = v11 + a3;
      }

      goto LABEL_19;
    }

    if (v8 & 1 | (v11 != a2))
    {
      break;
    }

    if (!v10 && v9 == 0x8000000000000000)
    {
      goto LABEL_43;
    }

    v8 = 1;
    v5 = a2;
LABEL_19:
    v25 = result;
    v14 = *(result + 2);
    v13 = *(result + 3);
    if (v14 >= v13 >> 1)
    {
      v22 = v9;
      v20 = v10;
      sub_2751E09A4((v13 > 1), v14 + 1, 1);
      v10 = v20;
      v9 = v22;
      result = v25;
    }

    *(result + 2) = v14 + 1;
    *&result[4 * v14 + 32] = v11;
    v11 = v5;
    if (!--v6)
    {
      while (1)
      {
LABEL_22:
        v15 = v5 <= a2;
        if (a3 > 0)
        {
          v15 = v5 >= a2;
        }

        if (v15)
        {
          if ((v5 != a2) | v8 & 1 || !v10 && v9 == 0x8000000000000000)
          {
            return result;
          }

          v8 = 1;
          v16 = v5;
        }

        else
        {
          v17 = __OFADD__(v5, a3);
          if (v17)
          {
            v16 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v5 + a3;
          }

          if (v17)
          {
            v9 = 0x8000000000000000;
          }

          else
          {
            v9 = 0;
          }

          v10 = !v17;
        }

        v26 = result;
        v19 = *(result + 2);
        v18 = *(result + 3);
        if (v19 >= v18 >> 1)
        {
          v23 = v9;
          v21 = v10;
          sub_2751E09A4((v18 > 1), v19 + 1, 1);
          v10 = v21;
          v9 = v23;
          result = v26;
        }

        *(result + 2) = v19 + 1;
        *&result[4 * v19 + 32] = v5;
        v5 = v16;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_2751FF990(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x277D84F90];
  sub_2751E1324(0, v6, 0);
  result = v29;
  v28 = v4;
  v26 = a1;
  v27 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v30 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v25 = v12;
        sub_2751E1324((v15 > 1), v16 + 1, 1);
        v12 = v25;
        result = v30;
      }

      *(result + 16) = v16 + 1;
      v17 = result + 8 * v16;
      --v11;
      *(v17 + 32) = v13;
      *(v17 + 36) = v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v28 > v12)
  {
    while (v6 < v28)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v19 = *(v26 + 32 + 4 * v6);
        v20 = *(v27 + 32 + 4 * v6);
        v31 = result;
        v22 = *(result + 16);
        v21 = *(result + 24);
        if (v22 >= v21 >> 1)
        {
          v24 = v12;
          sub_2751E1324((v21 > 1), v22 + 1, 1);
          v12 = v24;
          result = v31;
        }

        *(result + 16) = v22 + 1;
        v23 = result + 8 * v22;
        *(v23 + 32) = v19;
        *(v23 + 36) = v20;
        ++v6;
        if (v18 != v28)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unint64_t sub_2751FFB68()
{
  result = qword_2809ADD28;
  if (!qword_2809ADD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD28);
  }

  return result;
}

uint64_t sub_2751FFC00(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of NearestNeighborsScorer.score(_:topK:skipFirst:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2751E38EC;

  return v13(a1, a2, a3, a4, a5);
}

unint64_t sub_2751FFD98()
{
  result = qword_2809ADD40;
  if (!qword_2809ADD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD40);
  }

  return result;
}

uint64_t sub_2751FFDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = a1 <= a2;
    if (a3 > 0)
    {
      v9 = a1 >= a2;
    }

    if (v9)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v8 = __OFADD__(a1, a3);
      a1 += a3;
      if (v8)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v8;
    }

    v8 = __OFADD__(result++, 1);
  }

  while (!v8);
  __break(1u);
  return result;
}

uint64_t sub_2751FFE94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275209608(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_27520C1D8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (*(v12 + 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADD68, &qword_27520F0F8);
      v8 = sub_27520BCF8();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_2751E7ABC(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

float static DistanceHelper.distanceL2(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_distancesq((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  return sqrtf(__C);
}

float sub_275200074(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_distancesq((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  return __C;
}

float static DistanceHelper.distanceL2Squared(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_distancesq((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  return __C;
}

float sub_275200174(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_dotpr((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  v5 = __C;
  __C = NAN;
  vDSP_dotpr((a1 + 32), 1, (a1 + 32), 1, &__C, v2);
  v6 = __C;
  __C = NAN;
  vDSP_dotpr((a2 + 32), 1, (a2 + 32), 1, &__C, v2);
  return 1.0 - (v5 / sqrtf(v6 * __C));
}

float static DistanceHelper.distanceCosine(_:_:)(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_dotpr((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  v5 = __C;
  __C = NAN;
  vDSP_dotpr((a1 + 32), 1, (a1 + 32), 1, &__C, v2);
  v6 = __C;
  __C = NAN;
  vDSP_dotpr((a2 + 32), 1, (a2 + 32), 1, &__C, v2);
  return 1.0 - (v5 / sqrtf(v6 * __C));
}

ZeoliteFramework::DistanceMetric_optional __swiftcall DistanceMetric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27520C088();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DistanceMetric.rawValue.getter()
{
  v1 = 12620;
  v2 = 0x657261757153324CLL;
  if (*v0 != 2)
  {
    v2 = 0x6944656E69736F43;
  }

  if (*v0)
  {
    v1 = 12876;
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

uint64_t sub_27520045C()
{
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_275200518(uint64_t a1)
{
  sub_27520BBD8();
}

uint64_t sub_2752005C0(uint64_t a1)
{
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

void sub_275200684(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 12620;
  v4 = 0xE900000000000064;
  v5 = 0x657261757153324CLL;
  if (*v1 != 2)
  {
    v5 = 0x6944656E69736F43;
    v4 = 0xEE0065636E617473;
  }

  if (*v1)
  {
    v3 = 12876;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2752007D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  v4;
}

uint64_t DistanceHelper.__allocating_init(points:metric:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  DistanceHelper.init(points:metric:)(a1, a2, v5);
  return v4;
}

uint64_t DistanceHelper.init(points:metric:)(uint64_t a1, char *a2, __n128 a3)
{
  v4 = *a2;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 48) = MEMORY[0x277D84F90];
  *(v3 + 56) = v5;
  *(v3 + 16) = v4;
  *(v3 + 40) = a1;
  *(v3 + 24) = off_2883FA4A0[v4];
  *(v3 + 32) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a3;
    _s16ZeoliteFramework14DistanceHelperC17buildDistancesLIL6pointsSaySaySfGGAG_tFZ_0(v7);
    v9 = v8;

    *(v3 + 56) = v9;

    v10 = sub_27520BCF8();
    *(v10 + 16) = v6;
    memset_pattern16((v10 + 32), &unk_27520F100, 4 * v6);
    swift_beginAccess();
    *(v3 + 48) = v10;
  }

  return v3;
}

char *sub_275200998()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    v1;
    sub_2751E1364(0, v3, 0);
    v5 = 0;
    v4 = v12;
    v6 = *(v2 + 16);
    while (v6 != v5)
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_11;
      }

      v7 = *(v2 + 4 * v5 + 32);
      v12 = v4;
      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      if (v9 >= v8 >> 1)
      {
        sub_2751E1364((v8 > 1), v9 + 1, 1);
        v4 = v12;
      }

      v10 = &v4[16 * v9];
      *(v10 + 4) = v5;
      *(v4 + 2) = v9 + 1;
      *(v10 + 10) = v7;
      if (v3 == ++v5)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    MEMORY[0x277C6DB10](v3);

    __break(1u);
  }

  else
  {
LABEL_9:
    v12 = v4;
    v1;
    sub_2751FFE94(&v12);

    return v12;
  }

  return result;
}

uint64_t sub_275200AF0()
{
  v1 = _s16ZeoliteFramework14DistanceHelperC12computeNorms6pointsSaySfGSayAFG_tFZ_0(*(v0 + 40));
  swift_beginAccess();
  *(v0 + 48) = v1;
}

void sub_275200B44()
{
  v17 = *(v0 + 40);
  v1 = *(v17 + 16);
  if (v1 != 1)
  {
    if (v1)
    {
      v2 = v0;
      v3 = v17 + 32;
      for (i = 1; i != v1; ++i)
      {
        if (i >= *(v17 + 16))
        {
          goto LABEL_20;
        }

        v5 = 0;
        v6 = i + 1;
        do
        {
          v7 = *(v2 + 24);
          v8 = *(v3 + 8 * i);
          v9 = *(v3 + 8 * v5);

          v10;
          v11;
          v12 = v7(v8, v9);

          v13 = *(v2 + 56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 56) = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_2751E3B40(v13);
            *(v2 + 56) = v13;
          }

          if (i >= v13[2])
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          v15 = v13[i + 4];
          v16 = swift_isUniquelyReferenced_nonNull_native();
          v13[i + 4] = v15;
          if ((v16 & 1) == 0)
          {
            v15 = sub_2751E3B04(v15);
            v13[i + 4] = v15;
          }

          if (v5 >= *(v15 + 16))
          {
            goto LABEL_18;
          }

          *(v15 + 4 * v5 + 32) = v12;
          *(v2 + 56) = v13;
          ++v5;
        }

        while (i != v5);
        if (v6 == v1)
        {
          return;
        }
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }
}

int64_t sub_275200CE0(int64_t result, int64_t a2)
{
  v3 = *(v2 + 56);
  v4 = *(v3 + 16);
  if (v4 > result && v4 > a2)
  {
    v6 = result == a2;
    if (result >= a2)
    {
      goto LABEL_12;
    }

    if (a2 < 0)
    {
      __break(1u);
    }

    else if ((result & 0x8000000000000000) == 0)
    {
      v3 = *(v3 + 8 * a2 + 32);
      v7 = *(v3 + 16);
      v6 = v7 == result;
      if (v7 > result)
      {
        return result;
      }

      __break(1u);
LABEL_12:
      if (v6)
      {
        return result;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          v8 = *(v3 + 8 * result + 32);
          result = a2;
          if (*(v8 + 16) > a2)
          {
            return result;
          }

LABEL_21:
          __break(1u);
          return result;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_275200D70(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  v8 = *(*(v3 + 48) + 16);
  if (v8 > a1 && v8 > a2)
  {
    if (a3)
    {
      if ((a1 & 0x8000000000000000) == 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          return result;
        }

        goto LABEL_16;
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (a1 < 0)
    {
      goto LABEL_15;
    }

    if (a2 < 0)
    {
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

void *DistanceHelper.deinit()
{

  return v0;
}

uint64_t DistanceHelper.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_275200EAC(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (*(*a3 + 16) == v4)
  {
    if (*a1)
    {
      vDSP_vabs((v3 + 32), 1, *a1, 1, v4);
      *a2 = *(v3 + 16);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

float _s16ZeoliteFramework14DistanceHelperC10distanceL1ySfSaySfG_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = a2;
  __C = a1;
  v2 = *(a1 + 16);
  p_C = &__C;
  v12 = &v8;
  __C = sub_275209434(v2, sub_2752014F4);
  v3 = *(__C + 16);
  v10 = &__C;
  v4 = sub_275209434(v3, sub_275201544);

  v5 = *(v4 + 16);
  LODWORD(__C) = 2143289344;
  vDSP_sve((v4 + 32), 1, &__C, v5);
  v6 = *&__C;

  return v6;
}

void _s16ZeoliteFramework14DistanceHelperC17buildDistancesLIL6pointsSaySaySfGGAG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_8:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
  v2 = sub_27520BCF8();
  *(v2 + 16) = v1;
  memset_pattern16((v2 + 32), &unk_27A645D20, 8 * v1);
  if (v1 != 1)
  {
    v3 = (v2 + 40);
    v4 = 1;
    for (i = 4; ; i += 4)
    {
      v6 = sub_27520BCF8();
      *(v6 + 16) = v4;
      memset_pattern16((v6 + 32), &unk_27520F100, i);
      if (v4 >= *(v2 + 16))
      {
        break;
      }

      ++v4;
      *v3++ = v6;

      if (v1 == v4)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t _s16ZeoliteFramework14DistanceHelperC12computeNorms6pointsSaySfGSayAFG_tFZ_0(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2751D198C(0, v1, 0, MEMORY[0x277D84F90]);
  v5 = (a1 + 32);
  do
  {
    v6 = *v5;
    v7 = *(*v5 + 16);
    __C = NAN;
    v4;
    vDSP_dotpr((v6 + 32), 1, (v6 + 32), 1, &__C, v7);
    v8 = __C;

    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_2751D198C(v9 > 1, v10 + 1, 1, v3);
    }

    v4.n128_f32[0] = sqrtf(v8);
    *(v3 + 16) = v10 + 1;
    *(v3 + 4 * v10 + 32) = v4.n128_u32[0];
    ++v5;
    --v1;
  }

  while (v1);
  return v3;
}

unint64_t sub_275201238()
{
  result = qword_2809ADD48;
  if (!qword_2809ADD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD48);
  }

  return result;
}

unint64_t sub_275201290()
{
  result = qword_2809ADD50;
  if (!qword_2809ADD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809ADD58, &qword_27520EFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD50);
  }

  return result;
}

uint64_t sub_2752012F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
  return v4;
}

unint64_t sub_2752014A0()
{
  result = qword_2809ADD60;
  if (!qword_2809ADD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD60);
  }

  return result;
}

Swift::Bool __swiftcall pairwiseCosineSimilarity(matrix1:matrix1RowCount:matrix1ColumnCount:matrix2:matrix2RowCount:matrix2ColumnCount:resultMatrix:)(Swift::OpaquePointer matrix1, Swift::Int matrix1RowCount, Swift::Int matrix1ColumnCount, Swift::OpaquePointer matrix2, Swift::Int matrix2RowCount, Swift::Int matrix2ColumnCount, Swift::OpaquePointer *resultMatrix)
{
  if (matrix1ColumnCount != matrix2ColumnCount)
  {
    if (qword_2809AD190 == -1)
    {
LABEL_11:
      v21 = sub_27520BAB8();
      __swift_project_value_buffer(v21, qword_2809B38E8);
      v22 = sub_27520BA98();
      v23 = sub_27520BEF8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2751CF000, v22, v23, "Matrix 1 and Matrix 2 must have the same column count.", v24, 2u);
        MEMORY[0x277C6DCC0](v24, -1, -1);
      }

      goto LABEL_14;
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  v14 = normalizeMatrix(_:rowCount:columnCount:)(matrix1._rawValue, matrix1RowCount, matrix1ColumnCount, v7);
  v16 = normalizeMatrix(_:rowCount:columnCount:)(matrix2._rawValue, matrix2RowCount, matrix1ColumnCount, v15);
  v17 = matrix1ColumnCount * matrix2RowCount;
  if ((matrix1ColumnCount * matrix2RowCount) >> 64 != (matrix1ColumnCount * matrix2RowCount) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v16;
  if (v17)
  {
    v19 = sub_27520BCF8();
    *(v19 + 16) = v17;
    memset_pattern16((v19 + 32), &unk_27520DD80, 4 * v17);
    if (((matrix1ColumnCount | matrix2RowCount) & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v19 = MEMORY[0x277D84F90];
  if ((matrix1ColumnCount | matrix2RowCount) < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  vDSP_mtrans((v18 + 32), 1, (v19 + 32), 1, matrix1ColumnCount, matrix2RowCount);

  if ((matrix1ColumnCount | matrix1RowCount) < 0)
  {
LABEL_20:
    __break(1u);
    return v16;
  }

  rawValue = resultMatrix->_rawValue;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    rawValue = sub_2751D198C(0, *(rawValue + 16), 0, rawValue);
  }

  resultMatrix->_rawValue = rawValue;
  vDSP_mmul((v14 + 32), 1, (v19 + 32), 1, (rawValue + 32), 1, matrix1RowCount, matrix2RowCount, matrix1ColumnCount);

LABEL_14:
  LOBYTE(v16) = matrix1ColumnCount == matrix2ColumnCount;
  return v16;
}

Swift::Void __swiftcall multiplyMatrices(matrix1:matrix1RowCount:matrix1ColumnCount:matrix2:matrix2RowCount:matrix2ColumnCount:resultMatrix:)(Swift::OpaquePointer matrix1, Swift::Int matrix1RowCount, Swift::Int matrix1ColumnCount, Swift::OpaquePointer matrix2, Swift::Int matrix2RowCount, Swift::Int matrix2ColumnCount, Swift::OpaquePointer *resultMatrix)
{
  if ((matrix1ColumnCount | matrix1RowCount | matrix2ColumnCount) < 0)
  {
    __break(1u);
  }

  else
  {
    rawValue = resultMatrix->_rawValue;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      rawValue = sub_2751D198C(0, *(rawValue + 16), 0, rawValue);
    }

    resultMatrix->_rawValue = rawValue;
    vDSP_mmul(matrix1._rawValue + 8, 1, matrix2._rawValue + 8, 1, (rawValue + 32), 1, matrix1RowCount, matrix2ColumnCount, matrix1ColumnCount);
  }
}

Swift::Void __swiftcall transposeMatrix(matrix:rowCount:columnCount:transposed:)(Swift::OpaquePointer matrix, Swift::Int rowCount, Swift::Int columnCount, Swift::OpaquePointer *transposed)
{
  if ((columnCount | rowCount) < 0)
  {
    __break(1u);
  }

  else
  {
    rawValue = transposed->_rawValue;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      rawValue = sub_2751D198C(0, *(rawValue + 16), 0, rawValue);
    }

    transposed->_rawValue = rawValue;

    vDSP_mtrans(matrix._rawValue + 8, 1, (rawValue + 32), 1, columnCount, rowCount);
  }
}

uint64_t sub_275201964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_27520B698();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    return sub_27520B678();
  }

  return result;
}

void sub_275201A28(vDSP_Length **a1, const float *a2, uint64_t a3, vDSP_Length a4)
{
  if (a2)
  {
    v4 = *a1;
    if (*a1)
    {
      v7 = sub_27520B6B8();
      vDSP_vsorti(a2, v4, 0, a4, v7);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t normalizeMatrix(_:rowCount:columnCount:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = MEMORY[0x277D84F90];
  if (a3 < 0)
  {
    goto LABEL_33;
  }

  if (a3)
  {
    v7 = sub_27520BCF8();
    *(v7 + 16) = a3;
    memset_pattern16((v7 + 32), &unk_27520F110, 4 * a3);
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = MEMORY[0x277D84F90];
  if (a2 < 0)
  {
    goto LABEL_23;
  }

LABEL_4:
  if (a2)
  {
    v8 = 0;
    v9 = *(a1 + 16);
    while (1)
    {
      v12 = v8 * a3;
      if ((v8 * a3) >> 64 != (v8 * a3) >> 63)
      {
        break;
      }

      if (v9 < v12)
      {
        goto LABEL_26;
      }

      if (v12 < 0)
      {
        goto LABEL_27;
      }

      if (!a3 || (v13 = v9, v9 - v12 >= a3))
      {
        v13 = v12 + a3;
        if (__OFADD__(v12, a3))
        {
          goto LABEL_31;
        }
      }

      if (v13 < v12)
      {
        goto LABEL_28;
      }

      if (v9 < v13)
      {
        goto LABEL_29;
      }

      v14 = v13 - v12;
      if (v13 - v12 < 0)
      {
        goto LABEL_30;
      }

      __C = NAN;
      v15 = (a1 + 32 + 4 * v12);
      a4;
      vDSP_svesq(v15, 1, &__C, v14);
      v16 = sqrtf(__C);
      if (v16 > 0.0)
      {
        if (v14 != *(v7 + 16))
        {
          goto LABEL_32;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2751E3B04(v7);
        }

        v20 = v16;
        vDSP_vsdiv(v15, 1, &v20, (v7 + 32), 1, v14);
        v11 = v10;
        sub_2751DBD78(v11);
      }

      ++v8;

      if (a2 == v8)
      {

        return v19;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

LABEL_24:

  return MEMORY[0x277D84F90];
}

uint64_t ExtractedMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_27520B878();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExtractedMessage.sender.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 20));
  v2;
  return v1;
}

uint64_t type metadata accessor for ExtractedMessage(uint64_t a1)
{
  result = qword_2809ADE20;
  if (!qword_2809ADE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExtractedMessage.toList.getter()
{
  type metadata accessor for ExtractedMessage(0);

  return v0;
}

uint64_t ExtractedMessage.ccList.getter()
{
  type metadata accessor for ExtractedMessage(0);

  return v0;
}

uint64_t ExtractedMessage.bccList.getter()
{
  type metadata accessor for ExtractedMessage(0);

  return v0;
}

uint64_t ExtractedMessage.subject.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 36));
  v2;
  return v1;
}

uint64_t ExtractedMessage.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 40));
  v2;
  return v1;
}

uint64_t ExtractedMessage.autoSubmitted.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 48));
  v2;
  return v1;
}

uint64_t ExtractedMessage.messageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 52));
  v2;
  return v1;
}

uint64_t ExtractedMessage.inReplyTo.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 56));
  v2;
  return v1;
}

int *ExtractedMessage.init(date:sender:toList:subject:body:isToMe:isRead:isDeleted:isReplied:isForwarded:isJunk:conversationId:autoSubmitted:messageID:inReplyTo:ccList:bccList:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v30 = sub_27520B878();
  (*(*(v30 - 8) + 32))(a9, a1, v30);
  result = type metadata accessor for ExtractedMessage(0);
  v32 = (a9 + result[5]);
  *v32 = a2;
  v32[1] = a3;
  *(a9 + result[6]) = a4;
  *(a9 + result[7]) = a24;
  *(a9 + result[8]) = a25;
  v33 = (a9 + result[9]);
  *v33 = a5;
  v33[1] = a6;
  v34 = (a9 + result[10]);
  *v34 = a7;
  v34[1] = a8;
  if (a17)
  {
    v35 = 0;
  }

  else
  {
    v35 = a16;
  }

  *(a9 + result[11]) = v35;
  v36 = (a9 + result[12]);
  *v36 = a18;
  v36[1] = a19;
  v37 = (a9 + result[13]);
  *v37 = a20;
  v37[1] = a21;
  v38 = (a9 + result[14]);
  *v38 = a22;
  v38[1] = a23;
  *(a9 + result[15]) = a10;
  *(a9 + result[16]) = a11;
  *(a9 + result[17]) = a12;
  *(a9 + result[18]) = a13;
  *(a9 + result[19]) = a14;
  *(a9 + result[20]) = a15;
  return result;
}

uint64_t sub_2752022C4(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x7265646E6573;
      break;
    case 2:
      result = 0x7473694C6F74;
      break;
    case 3:
      result = 0x7473694C6363;
      break;
    case 4:
      result = 0x7473694C636362;
      break;
    case 5:
      result = 0x7463656A627573;
      break;
    case 6:
      result = 2036625250;
      break;
    case 7:
      result = 0x61737265766E6F63;
      break;
    case 8:
      result = 0x6D6275536F747561;
      break;
    case 9:
      result = 0x496567617373656DLL;
      break;
    case 10:
      result = 0x54796C7065526E69;
      break;
    case 11:
      result = 0x654D6F547369;
      break;
    case 12:
      result = 0x646165527369;
      break;
    case 13:
      result = 0x6574656C65447369;
      break;
    case 14:
      result = 0x65696C7065527369;
      break;
    case 15:
      result = 0x726177726F467369;
      break;
    case 16:
      result = 0x6B6E754A7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752024D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2752055B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27520250C(uint64_t a1)
{
  v2 = sub_275202A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275202548(uint64_t a1)
{
  v2 = sub_275202A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADD70, &qword_27520F120);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275202A68();
  sub_27520C2B8();
  LOBYTE(v13) = 0;
  sub_27520B878();
  sub_275203D80(&qword_2809ADD80, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_27520C1A8();
  if (!v2)
  {
    v9 = type metadata accessor for ExtractedMessage(0);
    LOBYTE(v13) = 1;
    sub_27520C168();
    v13 = *(v3 + v9[6]);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADD88, &qword_27520F128);
    sub_27520349C(&qword_2809ADD90, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_27520C1A8();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    sub_27520C1A8();
    v13 = *(v3 + v9[8]);
    v12 = 4;
    sub_27520C1A8();
    LOBYTE(v13) = 5;
    sub_27520C168();
    LOBYTE(v13) = 6;
    sub_27520C168();
    LOBYTE(v13) = 7;
    sub_27520C1B8();
    LOBYTE(v13) = 8;
    sub_27520C138();
    LOBYTE(v13) = 9;
    sub_27520C138();
    LOBYTE(v13) = 10;
    sub_27520C138();
    LOBYTE(v13) = 11;
    sub_27520C178();
    LOBYTE(v13) = 12;
    sub_27520C178();
    LOBYTE(v13) = 13;
    sub_27520C178();
    LOBYTE(v13) = 14;
    sub_27520C178();
    LOBYTE(v13) = 15;
    sub_27520C178();
    LOBYTE(v13) = 16;
    sub_27520C178();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_275202A68()
{
  result = qword_2809ADD78;
  if (!qword_2809ADD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD78);
  }

  return result;
}

uint64_t ExtractedMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_27520B878();
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADD98, &qword_27520F130);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v7 = v36 - v6;
  v8 = type metadata accessor for ExtractedMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275202A68();
  v44 = v7;
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v10;
  v39 = a1;
  v37 = v8;
  LOBYTE(v47) = 0;
  sub_275203D80(&qword_2809ADDA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v11 = v42;
  sub_27520C108();
  v12 = *(v41 + 32);
  v13 = v38;
  v42 = v4;
  v12(v38, v11);
  LOBYTE(v47) = 1;
  v14 = sub_27520C0C8();
  v15 = v37;
  v16 = &v13[v37[5]];
  *v16 = v14;
  v16[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADD88, &qword_27520F128);
  v46 = 2;
  sub_27520349C(&qword_2809ADDA8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v36[1] = 0;
  sub_27520C108();
  *&v13[v15[6]] = v47;
  v46 = 3;
  sub_27520C108();
  *&v13[v15[7]] = v47;
  v46 = 4;
  sub_27520C108();
  *&v13[v15[8]] = v47;
  LOBYTE(v47) = 5;
  v18 = sub_27520C0C8();
  v19 = &v13[v15[9]];
  *v19 = v18;
  v19[1] = v20;
  LOBYTE(v47) = 6;
  v21 = sub_27520C0C8();
  v22 = &v13[v15[10]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v47) = 7;
  *&v38[v15[11]] = sub_27520C118();
  LOBYTE(v47) = 8;
  v24 = sub_27520C098();
  v25 = &v38[v37[12]];
  *v25 = v24;
  v25[1] = v26;
  LOBYTE(v47) = 9;
  v27 = sub_27520C098();
  v28 = &v38[v37[13]];
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v47) = 10;
  v30 = sub_27520C098();
  v31 = &v38[v37[14]];
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v47) = 11;
  v38[v37[15]] = sub_27520C0D8() & 1;
  LOBYTE(v47) = 12;
  v38[v37[16]] = sub_27520C0D8() & 1;
  LOBYTE(v47) = 13;
  v38[v37[17]] = sub_27520C0D8() & 1;
  LOBYTE(v47) = 14;
  v38[v37[18]] = sub_27520C0D8() & 1;
  LOBYTE(v47) = 15;
  v38[v37[19]] = sub_27520C0D8() & 1;
  LOBYTE(v47) = 16;
  v33 = sub_27520C0D8();
  (*(v43 + 8))(v44, v45);
  v34 = v38;
  v38[v37[20]] = v33 & 1;
  sub_275203508(v34, v40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_27520356C(v34);
}

uint64_t sub_27520349C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809ADD88, &qword_27520F128);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275203508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27520356C(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExtractedConversation.conversationText.getter(__n128 a1)
{
  v2 = *(v1 + 24);
  a1;
  return v2;
}

uint64_t ExtractedConversation.init(conversationId:count:messages:conversationText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_275203650()
{
  v1 = 0x61737265766E6F63;
  v2 = 0x736567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x746E756F63;
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

uint64_t sub_2752036D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_275205AF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_275203700(uint64_t a1)
{
  v2 = sub_2752039E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27520373C(uint64_t a1)
{
  v2 = sub_2752039E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedConversation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADDB0, &qword_27520F138);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v13 = v1[2];
  v14 = v8;
  v12[1] = v1[4];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752039E4();
  sub_27520C2B8();
  v19 = 0;
  sub_27520C1B8();
  if (!v2)
  {
    v11 = v13;
    v18 = 1;
    sub_27520C198();
    v15 = v11;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADDC0, &qword_27520F140);
    sub_275203CE4(&qword_2809ADDC8, &qword_2809ADDD0, &protocol conformance descriptor for ExtractedMessage, MEMORY[0x277D83948]);
    sub_27520C1A8();
    v16 = 3;
    sub_27520C168();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2752039E4()
{
  result = qword_2809ADDB8;
  if (!qword_2809ADDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADDB8);
  }

  return result;
}

uint64_t ExtractedConversation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADDD8, &qword_27520F148);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752039E4();
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v9 = sub_27520C118();
  v26 = 1;
  v22 = sub_27520C0F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADDC0, &qword_27520F140);
  v25 = 2;
  sub_275203CE4(&qword_2809ADDE0, &qword_2809ADDE8, &protocol conformance descriptor for ExtractedMessage, MEMORY[0x277D83978]);
  sub_27520C108();
  v10 = v23;
  v24 = 3;
  v11 = sub_27520C0C8();
  v13 = v12;
  v14 = *(v6 + 8);
  v21 = v11;
  v15.n128_f64[0] = v14(v8, v5);
  v16 = v21;
  v17 = v22;
  *a2 = v9;
  a2[1] = v17;
  a2[2] = v10;
  a2[3] = v16;
  a2[4] = v13;
  v15;
  v18;
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_275203CE4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809ADDC0, &qword_27520F140);
    sub_275203D80(a2, type metadata accessor for ExtractedMessage, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275203D80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ConversationEmbedding.embeddingModel.getter(__n128 a1)
{
  v2 = *(v1 + 16);
  a1;
  return v2;
}

uint64_t ConversationEmbedding.init(conversationId:embedding:embeddingModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_275203E44()
{
  if (*v0)
  {
    return 0x6E69646465626D65;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_275203EBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_275205C60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_275203EF0(uint64_t a1)
{
  v2 = sub_275204160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275203F2C(uint64_t a1)
{
  v2 = sub_275204160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationEmbedding.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADDF0, &unk_27520F150);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[1] = v1[2];
  v12 = v8;
  v11[0] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275204160();
  sub_27520C2B8();
  v16 = 0;
  sub_27520C1B8();
  if (!v2)
  {
    v13 = v12;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
    sub_2751D7154(&qword_2809AD328, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    sub_27520C1A8();
    v14 = 2;
    sub_27520C138();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_275204160()
{
  result = qword_2809ADDF8;
  if (!qword_2809ADDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADDF8);
  }

  return result;
}

uint64_t ConversationEmbedding.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADE00, &qword_27520F160);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275204160();
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v9 = sub_27520C118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
  v19 = 1;
  sub_2751D7154(&qword_2809AD338, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
  sub_27520C108();
  v17[0] = v17[1];
  v18 = 2;
  v10 = sub_27520C098();
  v12 = v11;
  v13.n128_f64[0] = (*(v6 + 8))(v8, v5);
  v14 = v17[0];
  *a2 = v9;
  a2[1] = v14;
  a2[2] = v10;
  a2[3] = v12;
  v13;
  v15;
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ExtractedItem.text.getter(__n128 a1)
{
  v2 = *(v1 + 8);
  a1;
  return v2;
}

uint64_t ExtractedItem.init(itemId:text:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2752044A4()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x64496D657469;
  }
}

uint64_t sub_2752044D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496D657469 && a2 == 0xE600000000000000;
  if (v6 || (sub_27520C218() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27520C218();

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

uint64_t sub_2752045AC(uint64_t a1)
{
  v2 = sub_2752047B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752045E8(uint64_t a1)
{
  v2 = sub_2752047B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADE08, &qword_27520F168);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752047B4();
  sub_27520C2B8();
  v12 = 0;
  sub_27520C1B8();
  if (!v2)
  {
    v11 = 1;
    sub_27520C168();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2752047B4()
{
  result = qword_2809ADE10;
  if (!qword_2809ADE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE10);
  }

  return result;
}

uint64_t ExtractedItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADE18, &qword_27520F170);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752047B4();
  sub_27520C2A8();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_27520C118();
    v15 = 1;
    v11 = sub_27520C0C8();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2752049F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27520B878();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_275204AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_27520B878();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_275204B84(uint64_t a1)
{
  sub_27520B878();
  if (v1 <= 0x3F)
  {
    sub_275204C98(319, &qword_2809ADE30, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_275204C98(319, &qword_2809ADE38, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275204C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_275204D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_275204D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275204DA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_275204DE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_275204E38(uint64_t a1, int a2)
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

uint64_t sub_275204E80(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ConversationEmbedding.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationEmbedding.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtractedMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExtractedMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_275205194()
{
  result = qword_2809ADE40;
  if (!qword_2809ADE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE40);
  }

  return result;
}

unint64_t sub_2752051EC()
{
  result = qword_2809ADE48;
  if (!qword_2809ADE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE48);
  }

  return result;
}

unint64_t sub_275205244()
{
  result = qword_2809ADE50;
  if (!qword_2809ADE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE50);
  }

  return result;
}

unint64_t sub_27520529C()
{
  result = qword_2809ADE58;
  if (!qword_2809ADE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE58);
  }

  return result;
}

unint64_t sub_2752052F4()
{
  result = qword_2809ADE60;
  if (!qword_2809ADE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE60);
  }

  return result;
}

unint64_t sub_27520534C()
{
  result = qword_2809ADE68;
  if (!qword_2809ADE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE68);
  }

  return result;
}

unint64_t sub_2752053A4()
{
  result = qword_2809ADE70;
  if (!qword_2809ADE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE70);
  }

  return result;
}

unint64_t sub_2752053FC()
{
  result = qword_2809ADE78;
  if (!qword_2809ADE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE78);
  }

  return result;
}

unint64_t sub_275205454()
{
  result = qword_2809ADE80;
  if (!qword_2809ADE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE80);
  }

  return result;
}

unint64_t sub_2752054AC()
{
  result = qword_2809ADE88;
  if (!qword_2809ADE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE88);
  }

  return result;
}

unint64_t sub_275205504()
{
  result = qword_2809ADE90;
  if (!qword_2809ADE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE90);
  }

  return result;
}

unint64_t sub_27520555C()
{
  result = qword_2809ADE98;
  if (!qword_2809ADE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADE98);
  }

  return result;
}

uint64_t sub_2752055B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473694C6F74 && a2 == 0xE600000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694C6363 && a2 == 0xE600000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473694C636362 && a2 == 0xE700000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974 || (sub_27520C218() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6275536F747561 && a2 == 0xED00006465747469 || (sub_27520C218() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_27520C218() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x54796C7065526E69 && a2 == 0xE90000000000006FLL || (sub_27520C218() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x654D6F547369 && a2 == 0xE600000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x646165527369 && a2 == 0xE600000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6574656C65447369 && a2 == 0xE900000000000064 || (sub_27520C218() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65696C7065527369 && a2 == 0xE900000000000064 || (sub_27520C218() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x726177726F467369 && a2 == 0xEB00000000646564 || (sub_27520C218() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6B6E754A7369 && a2 == 0xE600000000000000)
  {

    return 16;
  }

  else
  {
    v6 = sub_27520C218();

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

uint64_t sub_275205AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000027520FF90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_27520C218();

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

uint64_t sub_275205C60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067 || (sub_27520C218() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEE006C65646F4D67)
  {

    return 2;
  }

  else
  {
    v6 = sub_27520C218();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t BallTree.Node.left.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t BallTree.Node.right.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t BallTree.Node.storedIndices.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_275205EBC(uint64_t a1)
{
  v2 = sub_2752061DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275205EF8(uint64_t a1)
{
  v2 = sub_2752061DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BallTree.Node.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEA0, &unk_27520F880);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v15 = *(v1 + 32);
  v14[3] = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_2752061DC();
  sub_27520C2B8();
  v23 = 0;
  sub_27520C198();
  if (!v2)
  {
    v22 = 1;
    sub_27520C188();
    v21 = 2;
    sub_27520C148();
    v20 = 3;
    sub_27520C148();
    v19 = v8;
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD350, &qword_27520CBA0);
    sub_2751D7754(&qword_2809AD358, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    sub_27520C158();
  }

  return (*(v5 + 8))(v7, v12);
}

unint64_t sub_2752061DC()
{
  result = qword_2809ADEA8;
  if (!qword_2809ADEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADEA8);
  }

  return result;
}

uint64_t BallTree.Node.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEB0, &qword_27520F890);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2752061DC();
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_27520C0F8();
  v28 = 1;
  sub_27520C0E8();
  v11 = v10;
  v27 = 2;
  v12 = sub_27520C0A8();
  v23 = v13;
  v14 = v12;
  v26 = 3;
  v15 = sub_27520C0A8();
  v22 = v16;
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD350, &qword_27520CBA0);
  v24 = 4;
  sub_2751D7754(&qword_2809AD368, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
  sub_27520C0B8();
  v17.n128_f64[0] = (*(v6 + 8))(v8, v5);
  v18 = v25;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = v23 & 1;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22 & 1;
  *(a2 + 48) = v18;
  v17;
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2752065D0@<X0>(char *a2@<X8>)
{
  v3 = sub_27520C088();

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

uint64_t sub_275206630@<X0>(char *a3@<X8>)
{
  v4 = sub_27520C088();

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

uint64_t sub_275206694(uint64_t a1)
{
  v2 = sub_27520B0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752066D0(uint64_t a1)
{
  v2 = sub_27520B0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BallTree.__allocating_init(points:metric:maxNodePoints:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BallTree.init(points:metric:maxNodePoints:)(a1, a2, a3);
  return v6;
}

uint64_t BallTree.init(points:metric:maxNodePoints:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 24) = MEMORY[0x277D84F90];
  *(v3 + 32) = v5;
  *(v3 + 40) = 16;
  *(v3 + 16) = v4;
  *(v3 + 48) = *(&off_2883FAAE0 + v4);
  *(v3 + 56) = 0;
  if (*(a1 + 16))
  {
    swift_beginAccess();
    *(v3 + 24) = a1;
    v8;
    swift_beginAccess();
    *(v3 + 40) = a3;
    v9 = *(v3 + 48);
    v10 = *(v3 + 56);

    v12 = sub_27520A430(a1, v9, v11, v10, a3);

    swift_beginAccess();
    *(v3 + 32) = v12;
  }

  return v3;
}

unint64_t BallTree.search(query:k:)(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  swift_beginAccess();
  if (*(*(v3 + 3) + 16))
  {
    v9 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      goto LABEL_287;
    }

    v4 = sub_2751D0E64(0, v9 & ~(v9 >> 63), 0, MEMORY[0x277D84F90]);
    v10 = *(v3 + 6);
    v3 = *(v3 + 7);
    swift_beginAccess();
    v9 = *(v6 + 4);
    if (!*(v9 + 16))
    {
      goto LABEL_288;
    }

    v9 = *(v9 + 32);
    if (v9 < 0)
    {
      goto LABEL_289;
    }

    v11 = *(v6 + 3);
    if (v9 >= *(v11 + 16))
    {
      goto LABEL_290;
    }

    v2 = *(v11 + 8 * v9 + 32);

    v12;
    v5 = v10(a1, v2);

    v9 = *(v6 + 4);
    if (!*(v9 + 16))
    {
      goto LABEL_291;
    }

    if ((v5 - *(v9 + 40)) > 0.0)
    {
      v5 = v5 - *(v9 + 40);
    }

    else
    {
      v5 = 0.0;
    }

    v8 = sub_2751D0E64(0, 1, 1, MEMORY[0x277D84F90]);
    v2 = *(v8 + 2);
    v9 = *(v8 + 3);
    v3 = (v2 + 1);
    if (v2 >= v9 >> 1)
    {
      goto LABEL_292;
    }

LABEL_11:
    *(v8 + 2) = v3;
    v14 = &v8[16 * v2];
    *(v14 + 4) = 0;
    *(v14 + 10) = v5;
    v190 = v6;
    v193 = a2;
    while (1)
    {
      v16 = &v8[16 * (v3 - 1)];
      v17 = *(v16 + 4);
      v18 = *(v16 + 10);
      *(v8 + 2) = v3 - 1;
      v9 = *(v4 + 16);
      if (v9 == a2)
      {
        if (!a2)
        {
          goto LABEL_278;
        }

        v9 = *(v4 + 32);
        if (v9 < 0)
        {
          goto LABEL_279;
        }

        v19 = *(v6 + 3);
        if (v9 >= *(v19 + 16))
        {
          goto LABEL_280;
        }

        v20 = *(v6 + 6);
        v3 = *(v6 + 7);
        v2 = *(v19 + 8 * v9 + 32);
        v21 = v8;

        v22;
        v23 = v20(a1, v2);

        v8 = v21;
        if (v23 <= v18)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = 2139095040;
        v23 = INFINITY;
        if (v18 == INFINITY)
        {
          goto LABEL_14;
        }
      }

      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_281;
      }

      v9 = *(v6 + 4);
      if (v17 >= *(v9 + 16))
      {
        goto LABEL_282;
      }

      v24 = v9 + 56 * v17;
      v25 = *(v24 + 32);
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_283;
      }

      v9 = *(v6 + 3);
      if (v25 >= *(v9 + 16))
      {
        goto LABEL_284;
      }

      v26 = *(v24 + 40);
      v187 = *(v24 + 48);
      v185 = v8;
      v186 = *(v24 + 64);
      v188 = *(v24 + 72);
      v189 = *(v24 + 56);
      v27 = *(v6 + 6);
      v2 = *(v9 + 8 * v25 + 32);
      v204 = *(v24 + 80);
      v13;

      v28;
      v5 = v27(a1, v2);

      if (v5 < v23)
      {
        break;
      }

      v3 = v204;
LABEL_51:
      if (v3)
      {
        v44 = *(v3 + 2);
        if (v44)
        {
          v210 = MEMORY[0x277D84F90];
          v29;
          v3 = &v210;
          sub_2751E1264(0, v44, 0);
          v45 = v210;
          a2 = 32;
          while (1)
          {
            v9 = v204;
            v46 = *&v204[a2];
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_269;
            }

            v9 = *(v6 + 3);
            if (v46 >= *(v9 + 16))
            {
              break;
            }

            v47 = *(v6 + 6);
            v3 = *(v6 + 7);
            v48 = *(v9 + 8 * v46 + 32);

            v49;
            v50 = v47(a1, v48);

            v210 = v45;
            v2 = *(v45 + 16);
            v51 = *(v45 + 24);
            if (v2 >= v51 >> 1)
            {
              v3 = &v210;
              sub_2751E1264((v51 > 1), v2 + 1, 1);
              v45 = v210;
            }

            *(v45 + 16) = v2 + 1;
            v52 = v45 + 16 * v2;
            *(v52 + 32) = v46;
            *(v52 + 40) = v50;
            a2 += 8;
            if (!--v44)
            {
              v3 = v204;

              goto LABEL_61;
            }
          }

LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          v8 = sub_2751D0E64((v9 > 1), v3, 1, v8);
          goto LABEL_11;
        }

        v45 = MEMORY[0x277D84F90];
LABEL_61:
        v191 = *(v45 + 16);
        if (v191)
        {
          v53 = 0;
          v192 = v45 + 32;
          while (1)
          {
            v195 = v53;
            v55 = v192 + 16 * v53;
            v2 = *v55;
            v56 = *(v55 + 8);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_2751D0E64(0, *(v4 + 16) + 1, 1, v4);
            }

            a2 = *(v4 + 16);
            v57 = *(v4 + 24);
            v58 = a2 + 1;
            if (a2 >= v57 >> 1)
            {
              v4 = sub_2751D0E64((v57 > 1), a2 + 1, 1, v4);
            }

            *(v4 + 16) = v58;
            v6 = (v4 + 32);
            v59 = v4 + 32 + 16 * a2;
            *v59 = v2;
            *(v59 + 8) = v56;
            if (a2 < 0x3F)
            {
              if (!a2)
              {
                goto LABEL_213;
              }

              goto LABEL_75;
            }

            v60 = 58 - __clz(v58);
            v61 = -1 << v60;
            v62 = v58 >> v60;
            if ((v58 & ~v61) != 0)
            {
              ++v62;
            }

            if (v62 <= a2)
            {
              break;
            }

LABEL_75:
            v63 = -1;
            v64 = 1;
            do
            {
              v65 = v63;
              v66 = v6;
              do
              {
                v67 = v66[6];
                if (v67 >= v66[2])
                {
                  break;
                }

                v68 = *(v66 + 2);
                *(v66 + 1) = *v66;
                *v66 = v68;
                v66[2] = v67;
                v66 -= 4;
                v136 = __CFADD__(v65++, 1);
              }

              while (!v136);
              v6 += 16;
              --v63;
              v37 = v64++ == a2;
            }

            while (!v37);
LABEL_213:
            v9 = *(v4 + 16);
            if (v9 <= v193)
            {
              v6 = v190;
              v54 = v195;
            }

            else
            {
              v6 = v190;
              if (!v9)
              {
                goto LABEL_285;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_2751E3B54(v4);
              }

              v54 = v195;
              v9 = *(v4 + 16);
              if (!v9)
              {
                goto LABEL_286;
              }

              *(v4 + 16) = v9 - 1;
            }

            v53 = v54 + 1;
            if (v53 == v191)
            {
              goto LABEL_219;
            }
          }

          v196 = v62;
          v2 = v58 >> 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
          v69 = sub_27520BCF8();
          v70 = 0;
          *(v69 + 16) = v2;
          __dst = (v69 + 32);
          v198 = v4 + 72;
          v200 = v4 + 40;
          v9 = v4 + 24;
          v184 = v4 + 24;
          v3 = MEMORY[0x277D84F90];
          v203 = v4;
          while (2)
          {
            v71 = v70++;
            if (v70 > a2)
            {
              goto LABEL_97;
            }

            v72 = *(v200 + 16 * v70);
            v9 = 16 * v71;
            v73 = *(v200 + 16 * v71);
            v74 = (v198 + 16 * v71);
            do
            {
              if (a2 == v70)
              {
                v70 = a2 + 1;
                if (v72 >= v73)
                {
                  goto LABEL_97;
                }

                goto LABEL_91;
              }

              ++v70;
              v75 = *v74 >= *(v74 - 4);
              v74 += 4;
            }

            while ((((v72 < v73) ^ v75) & 1) != 0);
            if (v72 >= v73)
            {
              goto LABEL_97;
            }

LABEL_91:
            if (v70 < v71)
            {
              goto LABEL_275;
            }

            if (v71 < v70)
            {
              v76 = 16 * v70;
              v77 = v70;
              v78 = v71;
              do
              {
                if (v78 != --v77)
                {
                  v79 = v4 + v76;
                  v80 = *(v4 + v9 + 32);
                  v81 = *(v4 + v9 + 40);
                  *(v4 + v9 + 32) = *(v4 + v76 + 16);
                  *(v79 + 16) = v80;
                  *(v79 + 24) = v81;
                }

                ++v78;
                v76 -= 16;
                v9 += 16;
              }

              while (v78 < v77);
            }

LABEL_97:
            if (v70 <= a2)
            {
              v9 = v70 - v71;
              if (__OFSUB__(v70, v71))
              {
                goto LABEL_272;
              }

              if (v9 < v196)
              {
                v9 = v71 + v196;
                if (__OFADD__(v71, v196))
                {
                  goto LABEL_276;
                }

                if (v9 >= a2 + 1)
                {
                  v9 = a2 + 1;
                }

                if (v9 < v71)
                {
                  goto LABEL_277;
                }

                if (v70 != v9)
                {
                  v82 = v71 - v70;
                  v83 = v184 + 16 * v70;
                  do
                  {
                    v84 = v83;
                    v85 = v82;
                    do
                    {
                      v86 = *(v84 + 16);
                      if (v86 >= *v84)
                      {
                        break;
                      }

                      v87 = *(v84 + 8);
                      *(v84 + 8) = *(v84 - 8);
                      *(v84 - 8) = v87;
                      *v84 = v86;
                      v84 -= 16;
                      v136 = __CFADD__(v85++, 1);
                    }

                    while (!v136);
                    ++v70;
                    --v82;
                    v83 += 16;
                  }

                  while (v70 != v9);
                  v70 = v9;
                }
              }
            }

            if (v70 < v71)
            {
              goto LABEL_271;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2751D08B8(0, *(v3 + 2) + 1, 1, v3);
            }

            v2 = *(v3 + 2);
            v88 = *(v3 + 3);
            v4 = v2 + 1;
            if (v2 >= v88 >> 1)
            {
              v3 = sub_2751D08B8((v88 > 1), v2 + 1, 1, v3);
            }

            *(v3 + 2) = v4;
            v9 = &v3[16 * v2];
            *(v9 + 32) = v71;
            *(v9 + 40) = v70;
            if (v2)
            {
              while (2)
              {
                v89 = v4 - 1;
                if (v4 >= 4)
                {
                  v9 = &v3[16 * v4 + 32];
                  v93 = *(v9 - 64);
                  v94 = *(v9 - 56);
                  v98 = __OFSUB__(v94, v93);
                  v95 = v94 - v93;
                  if (v98)
                  {
                    goto LABEL_258;
                  }

                  v97 = *(v9 - 48);
                  v96 = *(v9 - 40);
                  v98 = __OFSUB__(v96, v97);
                  v9 = v96 - v97;
                  v92 = v98;
                  if (v98)
                  {
                    goto LABEL_259;
                  }

                  v99 = &v3[16 * v4];
                  v101 = *v99;
                  v100 = *(v99 + 1);
                  v98 = __OFSUB__(v100, v101);
                  v102 = v100 - v101;
                  if (v98)
                  {
                    goto LABEL_261;
                  }

                  v98 = __OFADD__(v9, v102);
                  v103 = v9 + v102;
                  if (v98)
                  {
                    goto LABEL_264;
                  }

                  if (v103 >= v95)
                  {
                    v119 = &v3[16 * v89 + 32];
                    v121 = *v119;
                    v120 = *(v119 + 1);
                    v98 = __OFSUB__(v120, v121);
                    v122 = v120 - v121;
                    if (v98)
                    {
                      goto LABEL_268;
                    }

                    if (v9 < v122)
                    {
                      v89 = v4 - 2;
                    }
                  }

                  else
                  {
LABEL_132:
                    if (v92)
                    {
                      goto LABEL_260;
                    }

                    v104 = &v3[16 * v4];
                    v106 = *v104;
                    v105 = *(v104 + 1);
                    v107 = __OFSUB__(v105, v106);
                    v108 = v105 - v106;
                    v109 = v107;
                    if (v107)
                    {
                      goto LABEL_263;
                    }

                    v110 = &v3[16 * v89 + 32];
                    v112 = *v110;
                    v111 = *(v110 + 1);
                    v98 = __OFSUB__(v111, v112);
                    v113 = v111 - v112;
                    if (v98)
                    {
                      goto LABEL_266;
                    }

                    if (__OFADD__(v108, v113))
                    {
                      goto LABEL_267;
                    }

                    if (v108 + v113 < v9)
                    {
                      goto LABEL_146;
                    }

                    if (v9 < v113)
                    {
                      v89 = v4 - 2;
                    }
                  }
                }

                else
                {
                  if (v4 == 3)
                  {
                    v90 = *(v3 + 4);
                    v91 = *(v3 + 5);
                    v98 = __OFSUB__(v91, v90);
                    v9 = v91 - v90;
                    v92 = v98;
                    goto LABEL_132;
                  }

                  v114 = &v3[16 * v4];
                  v115 = *v114;
                  v9 = *(v114 + 1);
                  v98 = __OFSUB__(v9, v115);
                  v108 = v9 - v115;
                  v109 = v98;
LABEL_146:
                  if (v109)
                  {
                    goto LABEL_262;
                  }

                  v116 = &v3[16 * v89];
                  v118 = *(v116 + 4);
                  v117 = *(v116 + 5);
                  v98 = __OFSUB__(v117, v118);
                  v9 = v117 - v118;
                  if (v98)
                  {
                    goto LABEL_265;
                  }

                  if (v9 < v108)
                  {
                    break;
                  }
                }

                v123 = v89 - 1;
                if (v89 - 1 >= v4)
                {
                  __break(1u);
LABEL_256:
                  __break(1u);
LABEL_257:
                  __break(1u);
LABEL_258:
                  __break(1u);
LABEL_259:
                  __break(1u);
LABEL_260:
                  __break(1u);
LABEL_261:
                  __break(1u);
LABEL_262:
                  __break(1u);
LABEL_263:
                  __break(1u);
LABEL_264:
                  __break(1u);
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
LABEL_268:
                  __break(1u);
LABEL_269:
                  __break(1u);
                  goto LABEL_270;
                }

                v4 = *&v3[16 * v123 + 32];
                v124 = &v3[16 * v89 + 32];
                v2 = *(v124 + 1);
                sub_2751EDBB0(&v6[16 * v4], &v6[16 * *v124], &v6[16 * v2], __dst);
                if (v2 < v4)
                {
                  goto LABEL_256;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v3 = sub_2751F3A50(v3);
                }

                v9 = *(v3 + 2);
                if (v123 >= v9)
                {
                  goto LABEL_257;
                }

                v125 = &v3[16 * v123];
                *(v125 + 4) = v4;
                *(v125 + 5) = v2;
                v210 = v3;
                sub_2751F39C4(v89);
                v3 = v210;
                v4 = *(v210 + 16);
                if (v4 <= 1)
                {
                  break;
                }

                continue;
              }
            }

            v4 = v203;
            if (v70 <= a2)
            {
              continue;
            }

            break;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_2751F3A50(v3);
          }

          v210 = v3;
          v126 = *(v3 + 2);
          if (v126 < 2)
          {
LABEL_212:

            *(v69 + 16) = 0;

            v3 = v204;
            goto LABEL_213;
          }

          v194 = v69;
          while (2)
          {
            v127 = *&v3[16 * v126];
            v197 = v126 - 1;
            v199 = v126;
            v128 = &v3[16 * v126 - 16];
            v129 = *(v128 + 4);
            v201 = *(v128 + 5);
            v202 = v127;
            v130 = &v6[16 * v127];
            v131 = 16 * v129;
            v132 = &v6[16 * v129];
            v133 = &v6[16 * v201];
            a2 = 16 * v129 - 16 * v127;
            v134 = 16 * v201 - 16 * v129;
            v207[0] = v130;
            v135 = __dst;
            v209[0] = __dst;
            if (a2 >= v134)
            {
              if (__dst != v132 || __dst >= v133)
              {
                memmove(__dst, &v6[16 * v129], 16 * v201 - 16 * v129);
                v133 = &v6[16 * v201];
              }

              v139 = v134 + 32;
              v69 = v194;
              v140 = (v194 + v134 + 32);
              v150 = v201;
              if (v134 < 1)
              {
                v2 = v202;
              }

              else
              {
                v2 = v202;
LABEL_185:
                v141 = 0;
                v142 = v194 + v139;
                v143 = v140;
                v144 = v139;
                while (v130 < v132)
                {
                  v145 = (v133 + v141);
                  v146 = (v133 + v141 - 16);
                  v147 = v142 + v141;
                  if (*(v142 + v141 - 8) < *(v132 - 2))
                  {
                    v148 = v132 - 4;
                    v139 += v141;
                    v140 = v143;
                    v133 = v133 + v141 - 16;
                    v37 = v145 == v132;
                    v132 -= 4;
                    if (!v37)
                    {
                      *v146 = *v148;
                      v132 = v148;
                      v140 = v143;
                      v133 = v146;
                    }

                    goto LABEL_185;
                  }

                  if (v146 != (v147 - 16) || v146 >= v147)
                  {
                    *v146 = *(v147 - 16);
                  }

                  v144 -= 16;
                  v143 = (v194 + v144);
                  v141 -= 16;
                  if ((v139 + v141 + 16) <= 0x30)
                  {
                    v140 = (v194 + v139 + v141);
                    break;
                  }
                }
              }

              v207[0] = v132;
              v208 = v140;
            }

            else
            {
              v136 = __dst != v130 || __dst >= v132;
              if (v136)
              {
                memmove(__dst, &v6[16 * v127], 16 * v129 - 16 * v127);
                v133 = &v6[16 * v201];
              }

              v208 = __dst + a2;
              v137 = a2 < 1 || 16 * v201 <= v131;
              v2 = v202;
              if (!v137)
              {
                v149 = __dst;
                v69 = v194;
                v150 = v201;
                while (v132[2] < *(v149 + 8))
                {
                  v151 = v132;
                  v37 = v130 == v132;
                  v132 += 4;
                  if (!v37)
                  {
                    goto LABEL_200;
                  }

LABEL_201:
                  v130 += 16;
                  if (v149 >= __dst + a2 || v132 >= v133)
                  {
                    goto LABEL_203;
                  }
                }

                v135 = (v149 + 16);
                v151 = v149;
                v37 = v130 == v149;
                v149 += 16;
                if (v37)
                {
                  goto LABEL_201;
                }

LABEL_200:
                *v130 = *v151;
                goto LABEL_201;
              }

              v69 = v194;
              v150 = v201;
LABEL_203:
              v209[0] = v135;
              v207[0] = v130;
            }

            sub_2751F3A64(v207, v209, &v208);
            v4 = v203;
            if (v150 < v2)
            {
              goto LABEL_273;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2751F3A50(v3);
            }

            v9 = v199 - 2;
            if ((v199 - 2) >= *(v3 + 2))
            {
              goto LABEL_274;
            }

            v152 = &v3[16 * v199];
            *v152 = v2;
            v152[1] = v150;
            v210 = v3;
            sub_2751F39C4(v197);
            v3 = v210;
            v126 = *(v210 + 16);
            if (v126 <= 1)
            {
              goto LABEL_212;
            }

            continue;
          }
        }

LABEL_219:
      }

      if (v18 > (v5 - v26))
      {
        v153 = v18;
      }

      else
      {
        v153 = v5 - v26;
      }

      v25 = MEMORY[0x277D84F90];
      if ((v189 & 1) == 0)
      {
        if ((v187 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);

          *(v25 + 16) = 0;

          __break(1u);
          return result;
        }

        v154 = *(v6 + 4);
        if (v187 >= *(v154 + 16))
        {
          goto LABEL_294;
        }

        v155 = *(v154 + 56 * v187 + 32);
        if ((v155 & 0x8000000000000000) != 0)
        {
          goto LABEL_296;
        }

        v156 = *(v6 + 3);
        if (v155 >= *(v156 + 16))
        {
          goto LABEL_298;
        }

        v157 = *(v156 + 8 * v155 + 32);
        v158 = *(v6 + 6);
        v29.n128_f32[0] = v5 - v26;
        v29;

        v5 = v158(a1, v157);

        v25 = sub_2751D0E64(0, 1, 1, MEMORY[0x277D84F90]);
        v160 = *(v25 + 16);
        v159 = *(v25 + 24);
        if (v160 >= v159 >> 1)
        {
          v25 = sub_2751D0E64((v159 > 1), v160 + 1, 1, v25);
        }

        *(v25 + 16) = v160 + 1;
        v161 = v25 + 16 * v160;
        *(v161 + 32) = v187;
        *(v161 + 40) = v5;
      }

      if ((v188 & 1) == 0)
      {
        if ((v186 & 0x8000000000000000) != 0)
        {
          goto LABEL_295;
        }

        v163 = *(v6 + 4);
        if (v186 >= *(v163 + 16))
        {
          goto LABEL_297;
        }

        v164 = *(v163 + 56 * v186 + 32);
        if ((v164 & 0x8000000000000000) != 0)
        {
          goto LABEL_299;
        }

        v165 = *(v6 + 3);
        if (v164 >= *(v165 + 16))
        {
          goto LABEL_300;
        }

        v166 = *(v165 + 8 * v164 + 32);
        v167 = *(v6 + 6);
        v162;

        v5 = v167(a1, v166);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2751D0E64(0, *(v25 + 16) + 1, 1, v25);
        }

        v169 = *(v25 + 16);
        v168 = *(v25 + 24);
        v170 = v186;
        if (v169 >= v168 >> 1)
        {
          v182 = sub_2751D0E64((v168 > 1), v169 + 1, 1, v25);
          v170 = v186;
          v25 = v182;
        }

        *(v25 + 16) = v169 + 1;
        v171 = v25 + 16 * v169;
        *(v171 + 32) = v170;
        *(v171 + 40) = v5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_2751E3B54(v25);
      }

      v172 = *(v25 + 16);
      v173 = (v25 + 32);
      v210 = v25 + 32;
      v211 = v172;
      sub_275208740(&v210);
      v174 = *(v25 + 16);
      if (v174)
      {
        v15 = v185;
        v175 = *(v185 + 2);
        v176 = 16 * v175;
        do
        {
          v178 = *v173;
          v173 += 2;
          v177 = v178;
          v179 = *(v15 + 3);
          v180 = v175 + 1;
          if (v175 >= v179 >> 1)
          {
            v15 = sub_2751D0E64((v179 > 1), v175 + 1, 1, v15);
          }

          *(v15 + 2) = v180;
          v181 = &v15[v176];
          *(v181 + 4) = v177;
          *(v181 + 10) = v153;
          v176 += 16;
          v175 = v180;
          --v174;
        }

        while (v174);
      }

      else
      {
        v15 = v185;
      }

      v2 = v15;

      v8 = v2;
      a2 = v193;
LABEL_14:
      v3 = *(v8 + 2);
      if (!v3)
      {

        return v4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2751D0E64(0, *(v4 + 16) + 1, 1, v4);
    }

    v2 = *(v4 + 16);
    v30 = *(v4 + 24);
    v31 = v2 + 1;
    if (v2 >= v30 >> 1)
    {
      v4 = sub_2751D0E64((v30 > 1), v2 + 1, 1, v4);
    }

    *(v4 + 16) = v31;
    v32 = v4 + 32;
    v33 = v4 + 32 + 16 * v2;
    *v33 = v25;
    *(v33 + 8) = v5;
    v210 = v4 + 32;
    v211 = v2 + 1;
    v34 = sub_27520C1D8();
    if (v34 <= v2)
    {
      v25 = v34;
      v41 = (v31 >> 1);
      if (v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v2 = sub_27520BCF8();
        *(v2 + 16) = v41;
      }

      else
      {
        v2 = MEMORY[0x277D84F90];
      }

      v207[0] = (v2 + 32);
      v207[1] = v41;
      sub_2751ED610(v207, v209, &v210, v25);
      *(v2 + 16) = 0;
    }

    else if (v2)
    {
      v35 = -1;
      v36 = 1;
      v3 = v204;
      do
      {
        v38 = v35;
        v39 = v32;
        do
        {
          v29.n128_u32[0] = *(v39 + 24);
          if (v29.n128_f32[0] >= *(v39 + 8))
          {
            break;
          }

          v40 = *(v39 + 16);
          *(v39 + 16) = *v39;
          *v39 = v40;
          *(v39 + 8) = v29.n128_u32[0];
          v39 -= 16;
          v136 = __CFADD__(v38++, 1);
        }

        while (!v136);
        v32 += 16;
        --v35;
        v37 = v36++ == v2;
      }

      while (!v37);
LABEL_46:
      v42 = *(v4 + 16);
      if (v42 > a2)
      {
        if (!v42)
        {
          goto LABEL_301;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = *(v4 + 16);
          if (!v43)
          {
            goto LABEL_251;
          }
        }

        else
        {
          v4 = sub_2751E3B54(v4);
          v43 = *(v4 + 16);
          if (!v43)
          {
LABEL_251:
            __break(1u);
            return MEMORY[0x277D84F90];
          }
        }

        *(v4 + 16) = v43 - 1;
      }

      goto LABEL_51;
    }

    v3 = v204;
    goto LABEL_46;
  }

  return MEMORY[0x277D84F90];
}

char *BallTree.search(query:radius:sorted:)(uint64_t a1, char a2, float a3)
{
  v4 = v3;
  v81 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v7 = v3[3];
  v8 = *(v7 + 16);
  v72 = MEMORY[0x277D84F90];
  if (!v8 || a3 <= 0.0)
  {
    return v72;
  }

  v9 = v3[6];
  swift_beginAccess();
  v10 = v3[4];
  if (!*(v10 + 16))
  {
    goto LABEL_66;
  }

  v11 = *(v10 + 32);
  if (v11 >= v8)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  v12 = *(v7 + 8 * v11 + 32);

  v13;
  v14 = v9(a1, v12);

  v15 = v3[4];
  if (!*(v15 + 16))
  {
    goto LABEL_68;
  }

  v72 = MEMORY[0x277D84F90];
  if ((v14 - *(v15 + 40)) > a3)
  {
    return v72;
  }

  v71 = a2;
  v16 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
  inited = swift_initStackObject();
  v18 = xmmword_27520DD90;
  *(inited + 16) = xmmword_27520DD90;
  *(inited + 32) = 0;
  v19 = 1;
  while (2)
  {
    v20 = v19 - 1;
    v21 = *(inited + 8 * (v19 - 1) + 32);
    *(inited + 16) = v20;
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    v22 = v4[4];
    if (v21 >= *(v22 + 16))
    {
      goto LABEL_63;
    }

    v23 = v22 + 56 * v21;
    v24 = *(v23 + 32);
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    v25 = v4[3];
    if (v24 >= *(v25 + 16))
    {
      goto LABEL_65;
    }

    v26 = *(v23 + 40);
    v75 = *(v23 + 48);
    v27 = *(v23 + 64);
    v76 = *(v23 + 56);
    v77 = *(v23 + 72);
    v28 = *(v23 + 80);
    v29 = v4[6];
    v30 = *(v25 + 8 * v24 + 32);
    v18;

    v31;
    v32 = v29(a1, v30);

    v33.n128_f32[0] = v32 - v26;
    if ((v32 - v26) > a3)
    {

      goto LABEL_9;
    }

    if (v32 <= a3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2751D0E64(0, *(v16 + 2) + 1, 1, v16);
      }

      v35 = *(v16 + 2);
      v34 = *(v16 + 3);
      if (v35 >= v34 >> 1)
      {
        v16 = sub_2751D0E64((v34 > 1), v35 + 1, 1, v16);
      }

      *(v16 + 2) = v35 + 1;
      v36 = &v16[16 * v35];
      *(v36 + 4) = v24;
      *(v36 + 10) = v32;
    }

    if (!v28)
    {
      goto LABEL_48;
    }

    v73 = v27;
    v74 = inited;
    v37 = *(v28 + 16);
    if (!v37)
    {
      v38 = MEMORY[0x277D84F90];
      v49 = *(MEMORY[0x277D84F90] + 16);
      if (v49)
      {
        goto LABEL_30;
      }

LABEL_39:
      v51 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }

    v79 = MEMORY[0x277D84F90];
    v33;
    sub_2751E1264(0, v37, 0);
    v38 = v79;
    v39 = 32;
    do
    {
      v40 = *(v28 + v39);
      if ((v40 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v41 = v4[3];
      if (v40 >= *(v41 + 16))
      {
        goto LABEL_61;
      }

      v42 = v4[6];
      v43 = *(v41 + 8 * v40 + 32);

      v44;
      v45 = v42(a1, v43);

      v47 = *(v79 + 16);
      v46 = *(v79 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2751E1264((v46 > 1), v47 + 1, 1);
      }

      *(v79 + 16) = v47 + 1;
      v48 = v79 + 16 * v47;
      *(v48 + 32) = v40;
      *(v48 + 40) = v45;
      v39 += 8;
      --v37;
    }

    while (v37);

    v49 = *(v79 + 16);
    if (!v49)
    {
      goto LABEL_39;
    }

LABEL_30:
    v50 = (v38 + 40);
    v51 = MEMORY[0x277D84F90];
    do
    {
      v55 = *v50;
      if (*v50 <= a3)
      {
        v56 = *(v50 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2751E1264(0, *(v51 + 16) + 1, 1);
        }

        v53 = *(v51 + 16);
        v52 = *(v51 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_2751E1264((v52 > 1), v53 + 1, 1);
        }

        *(v51 + 16) = v53 + 1;
        v54 = v51 + 16 * v53;
        *(v54 + 32) = v56;
        *(v54 + 40) = v55;
      }

      v50 += 4;
      --v49;
    }

    while (v49);
LABEL_40:

    v57 = *(v51 + 16);
    if (v57)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2751D0E64(0, *(v16 + 2) + 1, 1, v16);
      }

      v58 = *(v16 + 2);
      v59 = 16 * v58;
      v60 = (v51 + 40);
      do
      {
        v61 = *(v60 - 1);
        v62 = *v60;
        v63 = *(v16 + 3);
        v64 = v58 + 1;
        if (v58 >= v63 >> 1)
        {
          v16 = sub_2751D0E64((v63 > 1), v58 + 1, 1, v16);
        }

        *(v16 + 2) = v64;
        v65 = &v16[v59];
        *(v65 + 4) = v61;
        *(v65 + 10) = v62;
        v59 += 16;
        v60 += 4;
        v58 = v64;
        --v57;
      }

      while (v57);
    }

    v27 = v73;
    inited = v74;
LABEL_48:
    if ((v76 & 1) == 0)
    {
      v67 = *(inited + 16);
      v66 = *(inited + 24);
      if (v67 >= v66 >> 1)
      {
        inited = sub_2751D09BC((v66 > 1), v67 + 1, 1, inited);
      }

      *(inited + 16) = v67 + 1;
      *(inited + 8 * v67 + 32) = v75;
    }

    if ((v77 & 1) == 0)
    {
      v69 = *(inited + 16);
      v68 = *(inited + 24);
      if (v69 >= v68 >> 1)
      {
        inited = sub_2751D09BC((v68 > 1), v69 + 1, 1, inited);
      }

      *(inited + 16) = v69 + 1;
      *(inited + 8 * v69 + 32) = v27;
    }

LABEL_9:
    v19 = *(inited + 16);
    if (v19)
    {
      continue;
    }

    break;
  }

  v80 = v16;
  if (v71)
  {
    sub_2751EFE98(&v80);
  }

  return v80;
}

unint64_t *sub_275208074(unint64_t *result, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(a3 + 16);
  if (v4 >= v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(a3 + 32 + 8 * v4);
  if (*(v6 + 16) <= a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*a2 >= v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(a3 + 32 + 8 * *a2);
  if (*(v7 + 16) > a4)
  {
    return (*(v7 + 4 * a4 + 32) < *(v6 + 4 * a4 + 32));
  }

LABEL_13:
  __break(1u);
  return result;
}

void *BallTree.deinit()
{

  return v0;
}

uint64_t BallTree.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t BallTree.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEB8, &qword_27520F898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27520B0EC();
  sub_27520C2B8();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  sub_2751ED1DC();
  sub_27520C1A8();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 32);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEC8, &qword_27520F8A0);
    sub_27520B194(&qword_2809ADED0, sub_27520B140, MEMORY[0x277D83948]);
    sub_27520C1A8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BallTree.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  BallTree.init(from:)(a1);
  return v2;
}

uint64_t *BallTree.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEE0, &qword_27520F8A8);
  v15 = *(v5 - 8);
  v16 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = MEMORY[0x277D84F90];
  *(v1 + 24) = MEMORY[0x277D84F90];
  *(v1 + 32) = v8;
  v9 = (v1 + 32);
  *(v1 + 40) = 16;
  *(v1 + 48) = sub_2751F08E0;
  *(v1 + 56) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27520B0EC();
  sub_27520C2A8();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v15;
    LOBYTE(v18) = 0;
    sub_2751ED230();
    v11 = v16;
    sub_27520C108();
    *(v1 + 16) = v17[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADEC8, &qword_27520F8A0);
    LOBYTE(v17[0]) = 1;
    sub_27520B194(&qword_2809ADEE8, sub_27520B20C, MEMORY[0x277D83978]);
    sub_27520C108();
    (*(v10 + 8))(v7, v11);
    v13 = v18;
    swift_beginAccess();
    *v9 = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t *sub_2752086C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = BallTree.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_275208740(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27520C1D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v6 = sub_27520BCF8();
        *(v6 + 16) = v5;
      }

      v16[0] = v6 + 32;
      v16[1] = v5;
      sub_2751E7ABC(v16, v17, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v2 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v2 >= 2)
  {
    v7 = *a1;
    v8 = *a1 + 16;
    v9 = -1;
    for (i = 1; i != v2; ++i)
    {
      v11 = v9;
      v12 = v8;
      do
      {
        v13 = *(v12 + 8);
        if (*(v12 - 8) >= v13)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_20;
        }

        v14 = *v12;
        *v12 = *(v12 - 16);
        *(v12 - 8) = v13;
        *(v12 - 16) = v14;
        v12 -= 16;
      }

      while (!__CFADD__(v11++, 1));
      v8 += 16;
      --v9;
    }
  }

  return result;
}

void *sub_275208894(void *result, uint64_t a2, uint64_t a3, float a4)
{
  v5 = result[1];
  v4 = result[2];
  v7 = __OFADD__(v4, v5);
  v6 = v4 + v5;
  if (!v7)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, *result);
      if (v6 < *result || (v6 -= *result, !v7))
      {
LABEL_9:
        v8 = a2 + 16 * v6;
        *v8 = a3;
        *(v8 + 8) = a4;
        v9 = result[1];
        v7 = __OFADD__(v9, 1);
        v10 = v9 + 1;
        if (!v7)
        {
          result[1] = v10;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 < 0)
    {
      v7 = __OFADD__(v6, *result);
      v6 += *result;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_275208910(void *result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, __n128 a6)
{
  v7 = result[1];
  v6 = result[2];
  v9 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v9)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v8, *result);
      if (v8 < *result || (v8 -= *result, !v9))
      {
LABEL_9:
        v10 = a2 + 24 * v8;
        *v10 = a3;
        *(v10 + 8) = a4;
        *(v10 + 16) = a5 & 1;
        *(v10 + 17) = HIBYTE(a5) & 1;
        v11 = result[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          result[1] = v12;
          return a6;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v8 < 0)
    {
      v9 = __OFADD__(v8, *result);
      v8 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

char *sub_27520899C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F8, &qword_27520C9D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_275208AA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADF58, &unk_27520FCF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD4F8, qword_27520D690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275208BFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A0, &unk_27520FCD0);
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

char *sub_275208D30(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_275208E2C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7C0, &qword_27520DE60);
  v10 = *(sub_27520BA38() - 8);
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
  v15 = *(sub_27520BA38() - 8);
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

char *sub_275209004(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1D0, &unk_27520DE70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_275209108(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADF48, &qword_27520FCA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_27520920C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809ADF50, &unk_27520FCB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

char *sub_27520933C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

uint64_t sub_275209434(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_27520BCF8();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_275209538(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  if (*(a1 + 16) == v3)
  {
    if (*(a2 + 16) == v3)
    {
      if (*a3)
      {
LABEL_8:
        JUMPOUT(0x277C6DE60);
      }

LABEL_7:
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

uint64_t sub_275209678(uint64_t __dst, char *__src, char *a3, char *a4, uint64_t a5, unint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = &__src[-__dst];
  v12 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v12 = &__src[-__dst];
  }

  v13 = v12 >> 3;
  v14 = a3 - __src;
  v15 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v15 = a3 - __src;
  }

  v16 = v15 >> 3;
  if (v13 < v15 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v13 <= a4)
    {
      v17 = a5;
      __dst = memmove(a4, __dst, 8 * v13);
      a5 = v17;
    }

    v18 = &v7[8 * v13];
    if (v11 >= 8 && v9 < v8)
    {
      v19 = a5 + 32;
      while (1)
      {
        v20 = *v9;
        if ((*v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v21 = *(a5 + 16);
        if (v20 >= v21)
        {
          goto LABEL_56;
        }

        if ((a6 & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        v22 = *(v19 + 8 * v20);
        if (*(v22 + 16) <= a6)
        {
          goto LABEL_60;
        }

        if (*v7 >= v21)
        {
          goto LABEL_63;
        }

        v23 = *(v19 + 8 * *v7);
        if (*(v23 + 16) <= a6)
        {
          goto LABEL_64;
        }

        if (*(v23 + 4 * a6 + 32) >= *(v22 + 4 * a6 + 32))
        {
          break;
        }

        v24 = v10 == v9;
        v9 += 8;
        if (!v24)
        {
          goto LABEL_23;
        }

LABEL_24:
        v10 += 8;
        if (v7 >= v18 || v9 >= v8)
        {
          goto LABEL_26;
        }
      }

      v20 = *v7;
      v24 = v10 == v7;
      v7 += 8;
      if (v24)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v10 = v20;
      goto LABEL_24;
    }

LABEL_26:
    v9 = v10;
    goto LABEL_50;
  }

  if (a4 != __src || &__src[8 * v16] <= a4)
  {
    v25 = a5;
    __dst = memmove(a4, __src, 8 * v16);
    a5 = v25;
  }

  v18 = &v7[8 * v16];
  if (v14 < 8 || v9 <= v10)
  {
LABEL_50:
    v35 = v18 - v7 + (v18 - v7 < 0 ? 7uLL : 0);
    if (v9 != v7 || v9 >= &v7[v35 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v9, v7, 8 * (v35 >> 3));
    }

    return 1;
  }

  v26 = a5 + 32;
LABEL_33:
  v27 = v9 - 8;
  v8 -= 8;
  v28 = v18;
  while (1)
  {
    v30 = *(v28 - 8);
    v28 -= 8;
    v29 = v30;
    if ((v30 & 0x8000000000000000) != 0)
    {
      break;
    }

    v31 = *(a5 + 16);
    if (v29 >= v31)
    {
      goto LABEL_57;
    }

    if ((a6 & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    v32 = *(v26 + 8 * v29);
    if (*(v32 + 16) <= a6)
    {
      goto LABEL_61;
    }

    v33 = *v27;
    if (*v27 >= v31)
    {
      goto LABEL_62;
    }

    v34 = *(v26 + 8 * v33);
    if (*(v34 + 16) <= a6)
    {
      goto LABEL_65;
    }

    if (*(v34 + 4 * a6 + 32) < *(v32 + 4 * a6 + 32))
    {
      if (v8 + 8 != v9)
      {
        *v8 = v33;
      }

      if (v18 <= v7 || (v9 -= 8, v27 <= v10))
      {
        v9 = v27;
        goto LABEL_50;
      }

      goto LABEL_33;
    }

    if (v8 + 8 != v18)
    {
      *v8 = v29;
    }

    v8 -= 8;
    v18 = v28;
    if (v28 <= v7)
    {
      v18 = v28;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return __dst;
}

uint64_t sub_27520995C(char *a1, char *a2, uint64_t *a3, uint64_t a4, unint64_t a5, __n128 a6)
{
  v7 = v6;
  v8 = a1;
  v9 = *a1;
  a6;
  v29 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v29 = sub_2751F3A50(v29);
  }

  v24 = v8;
  *v8 = v29;
  v11 = v29 + 16;
  v12 = *(v29 + 2);
  if (v12 < 2)
  {
LABEL_9:

    *v24 = v29;
    return 1;
  }

  else
  {
    while (1)
    {
      v13 = *a3;
      if (!*a3)
      {
        break;
      }

      v14 = v7;
      v15 = &v29[16 * v12];
      v16 = *v15;
      v17 = v11;
      v18 = &v11[16 * v12];
      v19 = *(v18 + 1);
      __dst = (v13 + 8 * *v15);
      v20 = (v13 + 8 * *v18);
      v8 = (v13 + 8 * v19);
      v10;
      sub_275209678(__dst, v20, v8, a2, a4, a5);
      v7 = v14;

      if (v14)
      {
        *v24 = v29;

        return 1;
      }

      if (v19 < v16)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v21 = *v17;
      if (v12 - 2 >= *v17)
      {
        goto LABEL_13;
      }

      *v15 = v16;
      *(v15 + 1) = v19;
      v22 = v21 - v12;
      if (v21 < v12)
      {
        goto LABEL_14;
      }

      v11 = v17;
      v12 = v21 - 1;
      memmove(v18, v18 + 16, 16 * v22);
      *v17 = v12;
      if (v12 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v24 = v29;
    __break(1u);
  }

  return result;
}

uint64_t sub_275209B04(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v8 = a5;
  v110 = MEMORY[0x277D84F90];
  v9 = a3[1];
  if (v9 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_102:
    v96 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    v42;
    sub_27520995C(&v110, v96, a3, v8, a6, v97);
    if (v7)
    {
LABEL_104:

LABEL_105:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  v100 = a5 + 32;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v104 = v8;
  while (1)
  {
    if (v10 + 1 >= v9)
    {
      v9 = v10 + 1;
      v17 = v100;
      v18 = a6;
      goto LABEL_28;
    }

    v12 = *a3;
    v13 = *(*a3 + 8 * (v10 + 1));
    v108 = *(*a3 + 8 * v10);
    v109 = v13;
    v14 = sub_275208074(&v109, &v108, v8, a6);
    if (v7)
    {
      goto LABEL_105;
    }

    v15 = v10 + 2;
    v16 = (v12 + 8 * v10 + 16);
    v17 = v100;
    v18 = a6;
    do
    {
      if (v9 == v15)
      {
        goto LABEL_17;
      }

      v19 = *v16;
      if ((*v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v20 = *(v8 + 16);
      if (v19 >= v20)
      {
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
LABEL_123:
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
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      if ((a6 & 0x8000000000000000) != 0)
      {
        goto LABEL_114;
      }

      v21 = *(v100 + 8 * v19);
      if (*(v21 + 16) <= a6)
      {
        goto LABEL_115;
      }

      v22 = *(v16 - 1);
      if (v22 >= v20)
      {
        goto LABEL_116;
      }

      v23 = *(v100 + 8 * v22);
      if (*(v23 + 16) <= a6)
      {
        goto LABEL_117;
      }

      ++v15;
      ++v16;
    }

    while (((v14 ^ (*(v23 + 4 * a6 + 32) >= *(v21 + 4 * a6 + 32))) & 1) != 0);
    v9 = v15 - 1;
LABEL_17:
    if (v14)
    {
      break;
    }

LABEL_28:
    v29 = a3[1];
    if (v9 < v29)
    {
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_134;
      }

      if (v9 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_135;
        }

        if (v10 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v10 + a4;
        }

        if (v30 < v10)
        {
          goto LABEL_136;
        }

        if (v9 != v30)
        {
          if (v18 < 0)
          {
            goto LABEL_138;
          }

          v31 = *a3;
          v32 = *(v8 + 16);
          v33 = *a3 + 8 * v9 - 8;
          v34 = v10 - v9;
          do
          {
            v35 = *(v31 + 8 * v9);
            v36 = v34;
            v37 = v33;
            do
            {
              if (v35 >= v32)
              {
                __break(1u);
LABEL_109:
                __break(1u);
LABEL_110:
                __break(1u);
LABEL_111:
                __break(1u);
LABEL_112:
                __break(1u);
                goto LABEL_113;
              }

              v38 = *(v17 + 8 * v35);
              if (*(v38 + 16) <= v18)
              {
                goto LABEL_109;
              }

              v39 = *v37;
              if (*v37 >= v32)
              {
                goto LABEL_110;
              }

              v40 = *(v17 + 8 * v39);
              if (*(v40 + 16) <= v18)
              {
                goto LABEL_111;
              }

              if (*(v40 + 4 * v18 + 32) >= *(v38 + 4 * v18 + 32))
              {
                break;
              }

              if (!v31)
              {
                goto LABEL_139;
              }

              *v37 = v35;
              v37[1] = v39;
              --v37;
            }

            while (!__CFADD__(v36++, 1));
            ++v9;
            v33 += 8;
            --v34;
          }

          while (v9 != v30);
          v9 = v30;
        }
      }
    }

    if (v9 < v10)
    {
      goto LABEL_133;
    }

    v102 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2751D08B8(0, *(v11 + 2) + 1, 1, v11);
    }

    v44 = *(v11 + 2);
    v43 = *(v11 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v11 = sub_2751D08B8((v43 > 1), v44 + 1, 1, v11);
    }

    *(v11 + 2) = v45;
    v46 = v11 + 32;
    v47 = &v11[16 * v44 + 32];
    *v47 = v10;
    *(v47 + 1) = v9;
    v110 = v11;
    v103 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      v107 = v7;
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          v53 = &v46[16 * v45];
          v54 = *(v53 - 8);
          v55 = *(v53 - 7);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_122;
          }

          v58 = *(v53 - 6);
          v57 = *(v53 - 5);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_123;
          }

          v60 = &v11[16 * v45];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_125;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_128;
          }

          if (v64 >= v56)
          {
            v82 = &v46[16 * v48];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_132;
            }

            if (v51 < v85)
            {
              v48 = v45 - 2;
            }

            goto LABEL_93;
          }
        }

        else
        {
          if (v45 != 3)
          {
            v75 = &v11[16 * v45];
            v77 = *v75;
            v76 = *(v75 + 1);
            v59 = __OFSUB__(v76, v77);
            v69 = v76 - v77;
            v70 = v59;
LABEL_86:
            if (v70)
            {
              goto LABEL_126;
            }

            v78 = &v46[16 * v48];
            v80 = *v78;
            v79 = *(v78 + 1);
            v59 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v59)
            {
              goto LABEL_129;
            }

            if (v81 < v69)
            {
              goto LABEL_3;
            }

            goto LABEL_93;
          }

          v49 = *(v11 + 4);
          v50 = *(v11 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
        }

        if (v52)
        {
          goto LABEL_124;
        }

        v65 = &v11[16 * v45];
        v67 = *v65;
        v66 = *(v65 + 1);
        v68 = __OFSUB__(v66, v67);
        v69 = v66 - v67;
        v70 = v68;
        if (v68)
        {
          goto LABEL_127;
        }

        v71 = &v46[16 * v48];
        v73 = *v71;
        v72 = *(v71 + 1);
        v59 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v59)
        {
          goto LABEL_130;
        }

        if (__OFADD__(v69, v74))
        {
          goto LABEL_131;
        }

        if (v69 + v74 < v51)
        {
          goto LABEL_86;
        }

        if (v51 < v74)
        {
          v48 = v45 - 2;
        }

LABEL_93:
        if (v48 - 1 >= v45)
        {
          goto LABEL_118;
        }

        v86 = *a3;
        if (!*a3)
        {
          goto LABEL_140;
        }

        v87 = &v46[16 * v48 - 16];
        v88 = *v87;
        v89 = v48;
        v90 = &v46[16 * v48];
        v91 = *(v90 + 1);
        v92 = v86 + 8 * *v87;
        v93 = (v86 + 8 * *v90);
        v94 = (v86 + 8 * v91);
        v42;
        sub_275209678(v92, v93, v94, v103, v104, a6);
        if (v107)
        {
          goto LABEL_104;
        }

        if (v91 < v88)
        {
          goto LABEL_119;
        }

        v95 = *(v11 + 2);
        if (v89 > v95)
        {
          goto LABEL_120;
        }

        *v87 = v88;
        *(v87 + 1) = v91;
        if (v89 >= v95)
        {
          goto LABEL_121;
        }

        v45 = v95 - 1;
        memmove(v90, v90 + 16, 16 * (v95 - 1 - v89));
        *(v11 + 2) = v95 - 1;
        v46 = v11 + 32;
        if (v95 <= 2)
        {
LABEL_3:
          v110 = v11;
          v7 = v107;
          break;
        }
      }
    }

    v9 = a3[1];
    v10 = v102;
    v8 = v104;
    if (v102 >= v9)
    {
      goto LABEL_102;
    }
  }

  if (v9 >= v10)
  {
    if (v10 < v9)
    {
      v24 = v9 - 1;
      v25 = v10;
      while (1)
      {
        if (v25 != v24)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_141;
          }

          v26 = *(v28 + 8 * v25);
          *(v28 + 8 * v25) = *(v28 + 8 * v24);
          *(v28 + 8 * v24) = v26;
        }

        if (++v25 >= v24--)
        {
          goto LABEL_28;
        }
      }
    }

    goto LABEL_28;
  }

LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_140:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_141:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_142:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_143:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_27520A180(uint64_t *a1, uint64_t a2, int64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_27520C1D8();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v9 = result;
      v10 = v6 / 2;
      if (v6 <= 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v11 = sub_27520BCF8();
        *(v11 + 16) = v10;
      }

      v24[0] = (v11 + 32);
      v24[1] = v10;
      v8;
      sub_275209B04(v24, v25, a1, v9, a2, a3);

      *(v11 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 <= 1)
    {
      return swift_bridgeObjectRelease_n();
    }

    v12 = *a1;
    result = v8;
    if (a3 < 0)
    {
      goto LABEL_30;
    }

    v13 = a2 + 32;
    v14 = *(a2 + 16);
    v15 = -1;
    v16 = 1;
    v17 = v12;
LABEL_13:
    v18 = *(v12 + 8 * v16);
    v19 = v15;
    v20 = v17;
    while (v18 < v14)
    {
      v21 = *(v13 + 8 * v18);
      if (*(v21 + 16) <= a3)
      {
        goto LABEL_25;
      }

      v22 = *v20;
      if (*v20 >= v14)
      {
        goto LABEL_26;
      }

      result = *(v13 + 8 * v22);
      if (*(result + 16) <= a3)
      {
        goto LABEL_27;
      }

      if (*(result + 4 * a3 + 32) < *(v21 + 4 * a3 + 32))
      {
        if (!v12)
        {
          goto LABEL_31;
        }

        *v20 = v18;
        v20[1] = v22;
        --v20;
        if (!__CFADD__(v19++, 1))
        {
          continue;
        }
      }

      ++v16;
      ++v17;
      --v15;
      if (v16 == v6)
      {
        return swift_bridgeObjectRelease_n();
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_27520A37C(char **a1, uint64_t a2, int64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_275209640(v6);
  }

  v8 = *(v6 + 2);
  v10[0] = (v6 + 32);
  v10[1] = v8;
  v7;
  sub_27520A180(v10, a2, a3);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

char *sub_27520A430(uint64_t a1, float (*a2)(uint64_t, uint64_t), __n128 a3, uint64_t a4, uint64_t a5)
{
  v145 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = a5 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v141 = a1 + 32;
    v128 = *(a1 + 32);
    a3;
    v9 = *sub_27520BA78();
    v144 = v9;
    v10 = sub_2751E3A6C(v5, 0);
    if (sub_2751E3B7C(__I, (v10 + 4), v5, 0, v5) != v5)
    {
      goto LABEL_150;
    }

    v11 = v9[3];
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v9[2] < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2751D2CB4(isUniquelyReferenced_nonNull_native, v12, 0);
      v9 = v144;
    }

    sub_275208910(v9 + 2, (v9 + 5), v10, 0, 257, v14);

    if (v9[3])
    {
      v125 = a1;
      do
      {
        v15 = v144;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2751D26A4();
          v15 = v144;
        }

        v17 = v15[4];
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_139;
        }

        v19 = &v15[3 * v17];
        v21 = v19[5];
        v20 = v19[6];
        v22 = *(v19 + 56);
        v23 = *(v19 + 57);
        v24 = v15[3];
        if (v18 >= v15[2])
        {
          v18 = 0;
        }

        v15[4] = v18;
        if (__OFSUB__(v24, 1))
        {
          goto LABEL_140;
        }

        v15[3] = v24 - 1;
        v25 = v21[2];
        if (v25)
        {
          v136 = v20;
          v135 = v23;
          v139 = v22;
          if (v25 <= a5)
          {
            v31 = v21[4];
            v32 = v25 - 1;
            if (v25 == 1)
            {
              v33 = 0;
              v34 = 0.0;
            }

            else
            {
              v134 = v15;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
              v33 = swift_allocObject();
              v35 = _swift_stdlib_malloc_size(v33);
              v36 = v35 - 32;
              if (v35 < 32)
              {
                v36 = v35 - 25;
              }

              v33[2] = v32;
              v33[3] = 2 * (v36 >> 3);
              memcpy(v33 + 4, v21 + 5, 8 * v32);
              v38 = v21[2];
              v129 = v31;
              if (v38)
              {
                __I[0] = MEMORY[0x277D84F90];
                v37;
                sub_2751E09A4(0, v38, 0);
                if (v31 < 0)
                {
                  goto LABEL_148;
                }

                if (v31 >= v5)
                {
                  goto LABEL_149;
                }

                v138 = v6;
                v40 = v31;
                v41 = __I[0];
                v42 = *(v141 + 8 * v40);
                v43 = 4;
                do
                {
                  v44 = v21[v43];
                  if (v44 >= v5)
                  {
                    goto LABEL_138;
                  }

                  v45 = *(v141 + 8 * v44);
                  v39;
                  v46;
                  v47 = a2(v42, v45);

                  __I[0] = v41;
                  v49 = *(v41 + 16);
                  v48 = *(v41 + 24);
                  if (v49 >= v48 >> 1)
                  {
                    sub_2751E09A4((v48 > 1), v49 + 1, 1);
                    v41 = __I[0];
                  }

                  *(v41 + 16) = v49 + 1;
                  *(v41 + 4 * v49 + 32) = v47;
                  ++v43;
                  --v38;
                }

                while (v38);

                v6 = v138;
              }

              else
              {
                v41 = MEMORY[0x277D84F90];
              }

              v111 = *(v41 + 16);
              v15 = v134;
              if (v111)
              {
                v34 = *(v41 + 32);
                v112 = v111 - 1;
                if (v112)
                {
                  v113 = (v41 + 36);
                  do
                  {
                    v114 = *v113++;
                    v115 = v114;
                    if (v34 < v114)
                    {
                      v34 = v115;
                    }

                    --v112;
                  }

                  while (v112);
                }
              }

              else
              {
                v34 = 0.0;
              }

              v31 = v129;
            }

            v116 = *(v6 + 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_2751D10AC(0, v116 + 1, 1, v6);
            }

            v118 = *(v6 + 2);
            v117 = *(v6 + 3);
            if (v118 >= v117 >> 1)
            {
              v6 = sub_2751D10AC((v117 > 1), v118 + 1, 1, v6);
            }

            *(v6 + 2) = v118 + 1;
            v119 = v6 + 32;
            v120 = &v6[56 * v118 + 32];
            *v120 = v31;
            *(v120 + 8) = v34;
            *(v120 + 16) = 0;
            *(v120 + 24) = 1;
            *(v120 + 32) = 0;
            *(v120 + 40) = 1;
            *(v120 + 48) = v33;

            if ((v139 & 1) == 0)
            {
              if (v135)
              {
                if ((v136 & 0x8000000000000000) != 0)
                {
                  goto LABEL_152;
                }

                if (v136 >= *(v6 + 2))
                {
                  goto LABEL_154;
                }

                v121 = &v119[56 * v136];
                *(v121 + 2) = v116;
                v121[24] = 0;
              }

              else
              {
                if ((v136 & 0x8000000000000000) != 0)
                {
                  goto LABEL_153;
                }

                if (v136 >= *(v6 + 2))
                {
                  goto LABEL_155;
                }

                v122 = &v119[56 * v136];
                *(v122 + 4) = v116;
                v122[40] = 0;
              }
            }
          }

          else
          {
            v133 = v15;
            v26 = *(v128 + 16);
            v137 = v6;
            if (!v26)
            {
              v16;
              v28 = MEMORY[0x277D84F90];
              v27 = MEMORY[0x277D84F90];
LABEL_39:
              v50 = 0;
              v51 = v27;
              v52 = v28;
              while (v50 < v21[2])
              {
                v53 = v21[v50 + 4];
                if (v53 >= v5)
                {
                  goto LABEL_132;
                }

                v54 = *(v141 + 8 * v53);
                v55 = *(v51 + 16);
                if (v55 != *(v54 + 16))
                {
                  goto LABEL_133;
                }

                v30;
                if (v55)
                {
                  v27 = sub_27520BCF8();
                  *(v27 + 16) = v55;
                  v56 = *(v54 + 16);
                  v57 = *(v51 + 16);
                }

                else
                {
                  v57 = 0;
                  v56 = 0;
                  v27 = MEMORY[0x277D84F90];
                }

                if (v56 >= v57)
                {
                  v56 = v57;
                }

                if (v55 >= v56)
                {
                  v58 = v56;
                }

                else
                {
                  v58 = v55;
                }

                vDSP_vmin((v51 + 32), 1, (v54 + 32), 1, (v27 + 32), 1, v58);
                v59 = *(v51 + 16);
                if (v55 < v59)
                {
                  goto LABEL_134;
                }

                *(v27 + 16) = v59;

                v60 = *(v52 + 16);
                if (v60 != *(v54 + 16))
                {
                  goto LABEL_135;
                }

                if (v60)
                {
                  v28 = sub_27520BCF8();
                  *(v28 + 16) = v60;
                  v61 = *(v54 + 16);
                  v62 = *(v52 + 16);
                }

                else
                {
                  v62 = 0;
                  v61 = 0;
                  v28 = MEMORY[0x277D84F90];
                }

                if (v61 >= v62)
                {
                  v61 = v62;
                }

                if (v60 >= v61)
                {
                  v63 = v61;
                }

                else
                {
                  v63 = v60;
                }

                vDSP_vmax((v52 + 32), 1, (v54 + 32), 1, (v28 + 32), 1, v63);
                v64 = *(v52 + 16);
                if (v60 < v64)
                {
                  goto LABEL_136;
                }

                ++v50;
                *(v28 + 16) = v64;

                v51 = v27;
                v52 = v28;
                if (v25 == v50)
                {
                  goto LABEL_63;
                }
              }

              __break(1u);
LABEL_132:
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            v27 = sub_27520BCF8();
            *(v27 + 16) = v26;
            memset_pattern16((v27 + 32), &unk_27520F100, 4 * v26);
            v28 = sub_27520BCF8();
            *(v28 + 16) = v26;
            memset_pattern16((v28 + 32), &unk_27520F870, 4 * v26);
            v25 = v21[2];
            v29;
            if (v25)
            {
              goto LABEL_39;
            }

LABEL_63:

            __I[0] = v28;
            __C[0] = v27;
            v65 = MEMORY[0x28223BE20](*(v28 + 16));
            v66 = sub_275209434(v65, sub_27520B618);

            __I[0] = v66;
            v67 = MEMORY[0x28223BE20](*(v66 + 16));
            v68 = sub_275209434(v67, sub_275201544);

            v69 = *(v68 + 16);
            LODWORD(__C[0]) = 2143289344;
            __I[0] = 0;
            vDSP_maxvi((v68 + 32), 1, __C, __I, v69);
            v70 = __I[0];

            if (v70 < 0)
            {
              goto LABEL_141;
            }

            __I[0] = v21;
            swift_bridgeObjectRetain_n();
            v71;
            sub_27520A37C(__I, v125, v70);

            v73 = __I[0];
            v74 = *(__I[0] + 16);
            if (!v74)
            {
              goto LABEL_142;
            }

            v75 = __I[0] + 32;
            v76 = *(__I[0] + 32 + 8 * (v74 >> 1));
            if (v76 >= v5)
            {
              goto LABEL_143;
            }

            v131 = v74 >> 1;
            v77 = v21[2];
            v130 = *(__I[0] + 32 + 8 * (v74 >> 1));
            if (v77)
            {
              v126 = __I[0] + 32;
              v127 = *(__I[0] + 16);
              v78 = *(v141 + 8 * v76);
              __I[0] = MEMORY[0x277D84F90];
              v72;

              v79;
              sub_2751E09A4(0, v77, 0);
              v81 = __I[0];
              v82 = 4;
              do
              {
                v83 = v21[v82];
                if (v83 >= v5)
                {
                  goto LABEL_137;
                }

                v84 = *(v141 + 8 * v83);
                v80;
                v85 = a2(v78, v84);

                __I[0] = v81;
                v87 = *(v81 + 16);
                v86 = *(v81 + 24);
                if (v87 >= v86 >> 1)
                {
                  sub_2751E09A4((v86 > 1), v87 + 1, 1);
                  v81 = __I[0];
                }

                *(v81 + 16) = v87 + 1;
                *(v81 + 4 * v87 + 32) = v85;
                ++v82;
                --v77;
              }

              while (v77);

              v6 = v137;
              v74 = v127;
              v75 = v126;
            }

            else
            {

              v81 = MEMORY[0x277D84F90];
            }

            __I[0] = v81;
            v88;
            sub_2751D0780(__I);

            v89 = *(__I[0] + 16);
            if (v89)
            {
              v90 = *(__I[0] + 4 * v89 + 28);
            }

            else
            {
              v90 = 2139095040;
            }

            v91 = *(v73 + 16);
            if (v91 < v131)
            {
              goto LABEL_144;
            }

            if (v91 == v131)
            {

              v94 = v131;
              v93 = v73;
            }

            else
            {
              sub_2751ECFE8(v73, v75, 0, v74 | 1);
              v93 = v92;
              v94 = *(v73 + 16);
            }

            if (v94 <= v131 || v94 < v74)
            {
              goto LABEL_145;
            }

            if (*(v73 + 16) != v74 - (v131 + 1))
            {
              sub_2751ECFE8(v73, v75, v131 + 1, (2 * v74) | 1);
              v73 = v123;
            }

            v95 = *(v6 + 2);
            v96 = v73;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_2751D10AC(0, v95 + 1, 1, v6);
            }

            v98 = *(v6 + 2);
            v97 = *(v6 + 3);
            if (v98 >= v97 >> 1)
            {
              v6 = sub_2751D10AC((v97 > 1), v98 + 1, 1, v6);
            }

            *(v6 + 2) = v98 + 1;
            v99 = v6 + 32;
            v100 = &v6[56 * v98 + 32];
            *v100 = v130;
            *(v100 + 8) = v90;
            *(v100 + 16) = 0;
            *(v100 + 24) = 1;
            *(v100 + 32) = 0;
            *(v100 + 40) = 1;
            *(v100 + 48) = 0;

            if ((v139 & 1) == 0)
            {
              if (v135)
              {
                if ((v136 & 0x8000000000000000) != 0)
                {
                  goto LABEL_157;
                }

                if (v136 >= *(v6 + 2))
                {
                  goto LABEL_159;
                }

                v101 = &v99[56 * v136 + 16];
              }

              else
              {
                if ((v136 & 0x8000000000000000) != 0)
                {
                  goto LABEL_156;
                }

                if (v136 >= *(v6 + 2))
                {
                  goto LABEL_158;
                }

                v101 = &v99[56 * v136 + 32];
              }

              *v101 = v95;
              *(v101 + 8) = 0;
            }

            v102 = v133[3];
            v103 = v102 + 1;
            if (__OFADD__(v102, 1))
            {
              goto LABEL_146;
            }

            v104 = v144;
            v105 = swift_isUniquelyReferenced_nonNull_native();
            if (v104[2] < v103 || (v105 & 1) == 0)
            {
              sub_2751D2CB4(v105, v103, 0);
              v104 = v144;
            }

            sub_275208910(v104 + 2, (v104 + 5), v93, v95, 256, v106);

            v107 = v104[3];
            v108 = v107 + 1;
            if (__OFADD__(v107, 1))
            {
              goto LABEL_147;
            }

            v109 = swift_isUniquelyReferenced_nonNull_native();
            if (v104[2] < v108 || (v109 & 1) == 0)
            {
              sub_2751D2CB4(v109, v108, 0);
            }

            v15 = v144;
            sub_275208910(v144 + 2, (v144 + 5), v96, v95, 0, v110);
          }
        }

        else
        {
        }
      }

      while (v15[3]);
    }
  }

  return v6;
}

unint64_t sub_27520B0EC()
{
  result = qword_2809ADEC0;
  if (!qword_2809ADEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADEC0);
  }

  return result;
}

unint64_t sub_27520B140()
{
  result = qword_2809ADED8;
  if (!qword_2809ADED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADED8);
  }

  return result;
}

uint64_t sub_27520B194(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809ADEC8, &qword_27520F8A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27520B20C()
{
  result = qword_2809ADEF0;
  if (!qword_2809ADEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADEF0);
  }

  return result;
}

uint64_t sub_27520B26C(uint64_t a1)
{
  result = sub_27520B344(&qword_2809ADEF8, &protocol conformance descriptor for BallTree);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27520B2DC(uint64_t a1)
{
  *(a1 + 8) = sub_27520B344(&qword_2809ADF00, &protocol conformance descriptor for BallTree);
  result = sub_27520B344(&qword_2809ADF08, &protocol conformance descriptor for BallTree);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_27520B344(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BallTree();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27520B40C()
{
  result = qword_2809ADF10;
  if (!qword_2809ADF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF10);
  }

  return result;
}

unint64_t sub_27520B464()
{
  result = qword_2809ADF18;
  if (!qword_2809ADF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF18);
  }

  return result;
}

unint64_t sub_27520B4BC()
{
  result = qword_2809ADF20;
  if (!qword_2809ADF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF20);
  }

  return result;
}

unint64_t sub_27520B514()
{
  result = qword_2809ADF28;
  if (!qword_2809ADF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF28);
  }

  return result;
}

unint64_t sub_27520B56C()
{
  result = qword_2809ADF30;
  if (!qword_2809ADF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF30);
  }

  return result;
}

unint64_t sub_27520B5C4()
{
  result = qword_2809ADF38;
  if (!qword_2809ADF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADF38);
  }

  return result;
}